//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title file uploader
/// @author idarshilmistry
/// @notice This might be buggy

contract FilecoinIntegration {
    /// @dev Variables and mappings

    /// @dev the information we take from the uploder
    struct FileDetails {
        bytes32 dealId;
        address owner;
        string projectTitle;
        uint8 kloc;
        bytes fileData;
    }

    /// @dev this guy would store all the files ever uploaded by some dude
    mapping(address => mapping(uint32 => FileDetails)) private files;
    /// @dev this guys facilitates above concept and can be seen as a trophy ofsorts
    mapping(address => uint32) private uploadCounter;

    /// @dev events
    event FileUploaded(address indexed user, bytes32 dealId);

    /// @devfunctions

    /// @param details it takes filedetails, the struct
    /// @notice this guy would just initiate the process another function would be called by it
    /// @dev add  the return stmt and the evnt
    function initiateFile(FileDetails memory details) public {
        uint32 newId = uploadCounter[msg.sender] + 1;
        files[msg.sender][newId] = details;
    }

    function upload(FileDetails calldata details) private returns (bool) {}

    /// @dev viev/pure functions
}
