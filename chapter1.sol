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