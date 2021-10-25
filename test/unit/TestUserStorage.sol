// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.5.10 <0.9.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../../contracts/users/UserStorage.sol";

contract TestUserStorage {
  function testCreateFirstUser() public {
    // Get the deployed contract
    UserStorage _storage = UserStorage(DeployedAddresses.UserStorage());

    uint _expectedId = 1;

    Assert.equal(_storage.createUser("kara"), _expectedId, "Should create user with ID 1");
  }
}