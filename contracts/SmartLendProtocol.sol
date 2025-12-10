// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @notice Interface of the SmartLendProtocol implementation.
/// @dev Adjust constructor signature to match your SmartLendProtocol.sol.
interface ISmartLendProtocol {
    // example: constructor(address _admin, address _collateralToken, address _oracle);
}

contract SmartLendProtocolDeployer {
    event SmartLendProtocolDeployed(address indexed protocol, address indexed deployer);

    /// @notice Deploy a new SmartLendProtocol instance.
    /// @dev Replace parameters and the `new SmartLendProtocol(...)` call
    ///      to match your real constructor.
    function deploySmartLendProtocol(
        address admin,
        address collateralToken,
        address priceOracle
    ) external returns (address) {
        require(admin != address(0), "Invalid admin");
        require(collateralToken != address(0), "Invalid collateral token");
        require(priceOracle != address(0), "Invalid oracle");

        SmartLendProtocol protocol = new SmartLendProtocol(
            admin,
            collateralToken,
            priceOracle
        );

        emit SmartLendProtocolDeployed(address(protocol), msg.sender);
        return address(protocol);
    }
}

/// @dev Stub for the real SmartLendProtocol contract.
/// In your project, delete this and instead:
/// `import "./SmartLendProtocol.sol";`
contract SmartLendProtocol {
    address public admin;
    address public collateralToken;
    address public priceOracle;

    constructor(
        address _admin,
        address _collateralToken,
        address _priceOracle
    ) {
        admin = _admin;
        collateralToken = _collateralToken;
        priceOracle = _priceOracle;
    }
}
