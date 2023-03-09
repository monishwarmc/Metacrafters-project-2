//SPDX-License-Identifier: UNLICENSED

pragma solidity^ 0.8.17;

contract errorHandle {
    uint a;
    uint b;
    uint c;
    uint d;

    constructor(uint _a, uint _b, uint _c, uint _d){
        a = _a;
        b = _b;
        c = _c;
        d = _d;
    }

    modifier value {
        require(a > 0, "a cannot be 0");
        require(b > 0, "b cannot be 0");
        require(c > 0, "c cannot be 0");
        require(d > 0, "d cannot be 0");
        _;
    }
    uint private sum;
    function add() public value returns (uint){
        assert(a==b || b==c || c==d || d==a);
        sum = a+b+c+d;
        if(sum > 100){
            revert ("numbers should not add upto 100");
        }
        return (sum);
    }
}