pragma solidity ^0.8.0;

contract Store {
    string public storedData;

    event myEventTest(string eventOutput);

    function set(string memory text) public {
        storedData = text;
        emit myEventTest(text);
    }

    function get() public view returns (string memory) {
        return storedData;
    }
}
