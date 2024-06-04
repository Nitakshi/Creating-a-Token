// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // public variables here
    string public token_Name = "CipherToken";
    string public token_Abbrv= "CPT";
    uint public TotalSupply = 0;

    // mapping variable here
    mapping(address => uint ) public _Balances;

    // mint function
    function mint(address Address, uint Value) public {
        TotalSupply += Value;
        _Balances[Address] += Value;
    }

    // burn function
     function burn(address Address, uint Value) public {
        if(_Balances[Address] >= Value){
            TotalSupply -= Value;
            _Balances[Address] -= Value;
        }
       
    }

}
