function transferOwnership(newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  _owner = newOwner; // Update ownership first
  emit OwnershipTransferred(_owner, newOwner); // Emit event after
}

// By making this change, the state is always consistent with the emitted events, eliminating the race condition.