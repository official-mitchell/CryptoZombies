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
