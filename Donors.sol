// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Donors{
     mapping (address => uint) public Balanceof;
     mapping (address => uint) public paymentOf;
     mapping (address => uint)  public donationsBy;

     address payable public owener;
     uint public balance;
     uint public withdrawn;
     uint public  totalDonations;
     uint public totalWithdrawls;

     event Donations(
        uint id,
        address indexed from,
        uint amount,
        uint timestamp
     );

      event Withdrawl(
        uint id,
        address indexed to,
        uint amount,
        uint timestamp
     );
     // type casting the owner of the contract to be able to pay 
       constructor(){
        owner = payable(msg.sender);
       }
         function donate() payable public {
            require(msg.value > 0, "Insufficient payment");
            paymentOf[msg.sender] += msg.value;
            Donations[msg.sender]++;
            balance += msg.value;
            totalDonations++;

            emit Donations(total Donations, msg.sender,msg.value,block.timestamp);
         }
         function withdrawl(uint amount)  public returns (bool) {
           require(msg.sender == owner, "Unauthorized,Perssonel");
           require(balance >= amount, "Insufficent Balance");
           balance -= amount;
           withdrawl+=amount;  
           totalWithdrawl++;
           // to be able the contract t be able to have full experession for the owner to send contract
           owner.transfer(amount);
           emit Withdrawl(totalWithdrawls, owner, amount, block.timestamp);
           return true;
         }

   

}