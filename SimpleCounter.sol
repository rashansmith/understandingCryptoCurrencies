pragma solidity ^0.4.0;

/*Notes:
  owner - ehtereum address (can be used to track person who initiated contract)
  
  msg.sender - sender of message
  
  msg.value - how much ether someone has sent to you 
  can be used as a way to charge people to use
  
  payable - charge people for using your function
  
  require - like an assertion
  
*/

// contract is similar to class keyword
contract SimpleCounter {
    int256 counter;  // state variable
    address owner; 
    //string description = "A simple counter";
    
    constructor() public {
        counter = 0;
    }
    
    // view - constant function, does not change state
    function getCounter() view returns(int) {
        return counter; 
        owner = msg.sender;
    }
    
    function increment() payable public {
        // require(msg.value > 0.1 ether);
        counter += 1;
    }
    
    function decrement() public {
        counter -= 1;
    }
    
    // function can only be executed by owner
    function reset() public {
        require(msg.sender == owner);
        counter = 0;
    }
    
}
