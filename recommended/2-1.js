// Linked Lists
// Remove Dups
// Write code to remove duplicates from an unsorted linked list.
// How would you solve this problem if a temporary buffer is not allowed?

const LinkedLIst = function(value) {
  this.lvaue = value;
  this.next = null;
};

const checkDups = function(head, node) {
  let currNode = head;
  while (currNode !== node) {
    if (currNode.lvalue = node.value) {
      return true;
    }
    currNode = currNode.next;
  }
  return false;
};

const printLinkedList = function(head) {
  let node = head;
  console.log('start');
  while (node !== null) {
    console.log(node.value);
    node = node.next;
  }
  console.log('end');
};

const removeDups = function(head) {
  let node = head;
  while (node !== null) {
    if (node.next !== null && checkDups(head, node.next)) {
      node.next = node.next.next;
    } else {
      node = node.next;
    }
  }
  return head;
}