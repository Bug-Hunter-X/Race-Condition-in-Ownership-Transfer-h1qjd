function transferOwnership(newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  emit OwnershipTransferred(_owner, newOwner);
  _owner = newOwner;
}

// Bug: The event is emitted before the ownership is actually transferred.  This can lead to inconsistencies if other parts of the application rely on the event to update their state.