# Race Condition in Ownership Transfer

This repository demonstrates a common race condition that can occur in DApps when an event is emitted before a state change is fully complete.  This specific example is in a simple ownership transfer function in Solidity.

The bug is that the `OwnershipTransferred` event is emitted *before* the `_owner` variable is updated. This means that an external observer might see the event, but the internal state might still reflect the old owner for a brief period. This is a race condition; it opens a window for a malicious actor to exploit this inconsistency.

The solution shows how to fix this by ordering the event emission after the state change. 