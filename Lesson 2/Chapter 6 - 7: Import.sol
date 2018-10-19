/* 

CHAPTER 6 - Imports

Use the "import" keyword followed by "./contracthere.sol";

contract newContract is SomeOtherContract {

}

*/


pragma solidity ^0.4.19;

// put import statement here

####
import "./zombiefactory.sol";
####

contract ZombieFeeding is ZombieFactory {

}


/*

CHAPTER 7 - Storage vs Memory

Storage are variables stored permanently on the blockchain.

Memory variables are temporary and erased between external function calls.

It's the difference between a computer's hard disk and RAM.

Wow just learned what memory is. An SSD drive is composed of all these memory chips. Replaced the platter disk system. 
It's much cheaper to upgrade RAM and buy a larger harddrive for permanent storage than buy a comptuer with those parts.
duh

*/


/*

State variables (declared outside of functions) are by default storage and written permanently to the blockchain,
while variables declared inside functions are memory and disappear when the function call ends.


contract SandwichFactory {
  struct Sandwich {
    string name;
    string status;
  }

  Sandwich[] sandwiches;

  function eatSandwich(uint _index) public {
    // Sandwich mySandwich = sandwiches[_index];

    // ^ Seems pretty straightforward, but solidity will give you a warning
    // telling you that you should explicitly declare `storage` or `memory` here.

    // So instead, you should declare with the `storage` keyword, like:
    Sandwich storage mySandwich = sandwiches[_index];
    // ...in which case `mySandwich` is a pointer to `sandwiches[_index]`
    // in storage, and...
    mySandwich.status = "Eaten!";
    // ...this will permanently change `sandwiches[_index]` on the blockchain.

    // If you just want a copy, you can use `memory`:
    Sandwich memory anotherSandwich = sandwiches[_index + 1];
    // ...in which case `anotherSandwich` will simply be a copy of the 
    // data in memory, and...
    anotherSandwich.status = "Eaten!";
    // ...will just modify the temporary variable and have no effect 
    // on `sandwiches[_index + 1]`. But you can do this:
    sandwiches[_index + 1] = anotherSandwich;
    // ...if you want to copy the changes back into blockchain storage.
  }
}

*/

/*

pragma solidity ^0.4.19;
import "./zombiefactory.sol";
contract ZombieFeeding is ZombieFactory {
    

    function feedAndMultiply(uint _zombieId, uint _targetDna) public {
        require(msg.sender == zombieToOwner[_zombieId]);
        Zombie storage myZombie = zombies[_zombieId];
        }

#### Had some trouble remembering syntax for the require line on the 2nd line. But this basically makes sure that
msg.sender equals the zombi'es owner

#### the local Zombie became a storage point


*/

