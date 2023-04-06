// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

contract Identity {
    string name;
    uint age;

    constructor() public {
        name = "Pandit";
        age = 25;
    }

    function getName() public view returns (string memory) {
        return name;
    }

    function getAge() public view returns (uint) {
        return age;
    }

    function setAge() public {
        age = age + 1;
    }
}

// State Veriables in solidity

contract State {
    uint public age;

    constructor() public {
        age = 15;
    }
}

// Local variables

contract Local {
    function store() public pure returns (uint) {
        uint age = 25;
        return age;
    }
}

// Local variables declared inside functions and are kept on the stack not on storage
// dont cost gas
// there are some types that reference the storage by default
// memory keyword cant be used at contract level 

// contract local {
//     uint age = 10;

//     function getter () public view returns (uint) {
//         return age;
//     }
//     function setter (uint newage) public {
//         age = newage;
//     }
// }

// Function in Solidity

// When you call a setter function it creates a transaction that needs to be mined and costs gas because it changes the blockchain. Vice-versa for getter function.

//When you declare a public state variable a getter function is automatically created 
// By default variable visibility is private.


// View vs Pure in Solidity

contract local {
    uint age = 10;

    function getter () public view returns (uint) {
        return age;
    }
    // function setter (uint newage) public {
    //     age = newage;
    // }


}

// constructor in solidity 
contract loc {
    uint public count;

constructor() {
    count = 0;
}
}

// integers in solidity 

// contract pandit {
//     //  int8 count = 127 // valid range -128 to 127


// }

// range
// int 8 = -128 to 127                  uint8 = 0 to 255
// int16 = -32768 to +32767             uint16 = 0 to 65535
//  -2^(n-1) to 2^(n-1)-1               0 to 2^(n) -1


// part 17 

contract part 17 {
uint public money = 255;
function setter() public{
    money = money +1;

}
}

// loops in solidity
