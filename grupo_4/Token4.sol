pragma solidity 0.5.4;

contract Token4 {
    // By Solange Gueiros

    using SafeMath for uint256;
    //By OpenZeppelin

    mapping (address => uint256) private _balances;
    mapping (address => mapping (address => uint256)) private _allowed;
    uint256 private _totalSupply;
    string private _name;
    string private _symbol;
    uint8 private _decimals;

    constructor () public {
        _name = "Token 4";
        _symbol = "TK4";
        _decimals = 2;
        uint256 initialSupply_ = 1000000 * (10 ** uint256(_decimals));
        _mint(msg.sender, initialSupply_);
    }


    function name() public view returns (string memory) {
        return _name;
    }

    function symbol() public view returns (string memory) {
        return _symbol;
    }

    function decimals() public view returns (uint8) {
        return _decimals;
    }

    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }

    function balanceOf(address owner) public view returns (uint256) {
        return _balances[owner];
    }

    function transfer(address to, uint256 value) public returns (bool) {
        _transfer(msg.sender, to, value);
        return true;
    }

    function mint(address to, uint256 value) public returns (bool) {
        _mint(to, value);
        return true;
    }

    function burn(uint256 value) public returns (bool) {
        _burn(msg.sender, value);
        return true;
    }

    event Transfer(address indexed from, address indexed to, uint256 value);
    
    function _transfer(address from, address to, uint256 value) internal {
        require(to != address(0));

        _balances[from] = _balances[from].sub(value);
        _balances[to] = _balances[to].add(value);
        emit Transfer(from, to, value);
    }

    function _mint(address account, uint256 value) internal {
        require(account != address(0));

        _totalSupply = _totalSupply.add(value);
        _balances[account] = _balances[account].add(value);
        emit Transfer(address(0), account, value);
    }

    function _burn(address _account, uint256 _amount) internal {
        require(_account != address(0), "Address must not be zero");
        require(_amount <= _balances[_account], "Insuficient funds");

        _totalSupply = _totalSupply.sub(_amount);
        _balances[_account] = _balances[_account].sub(_amount);
        emit Transfer(_account, address(0), _amount);
    }

}

library SafeMath {
    //By OpenZeppelin

    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b);
        return c;
    }

    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0);
        uint256 c = a / b;
        return c;
    }

    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a);
        uint256 c = a - b;
        return c;
    }

    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a);
        return c;
    }

    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b != 0);
        return a % b;
    }
}