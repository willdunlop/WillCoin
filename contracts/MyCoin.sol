pragma solidity ^0.4.19;

contract MyCoin {
  string public name;
  string public symbol;
  uint8 public decimal;
  uint256 public totalSupply;

  /**
  * this mapping equates to:
  * balance: { publicWalletAddress: balanceValue }
  */
  mapping(address => uint256) public balance;

  function MyCoin(
      string coinName,
      string sym,
      uint8 decimalPoint,
      uint256 initSupply
    ) public {
      name = coinName;
      symbol = sym;
      decimal = decimalPoint;
      totalSupply = initSupply;

      balance[msg.sender] = initSupply;
    }

    function transfer(address _to, uint256 _value) public {
      if(_to == address(0x0)) revert();
      if(balance[msg.sender] < _value) revert();

      balance[msg.sender] -= _value;
      balance[_to] += _value;

      //  Transfer(msg.sender, _to, _value);
    }

    function burn(uint256 _value) public returns (bool) {
      if(balance[msg.sender] < _value) revert();

      balance[msg.sender] -= _value;
      totalSupply -= _value;

      //  Burn(msg.sender, _value);
    }

    function checkBalance() public view returns (uint256) {
      return balance[msg.sender];
    }

    function currencyDetails() public view returns (
        string coinName,
        string sym,
        uint8 decimalPoint,
        uint256 totSupply
      ) {
        coinName = name;
        sym = symbol;
        decimalPoint = decimal;
        totSupply = totalSupply;
      }
}
