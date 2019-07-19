// bfs

function TreeNode(val){
  this.val = val;
  this.left = this.right = null;
}

function levelOrder(root){
  const res = [];

  function helper(node, depth){
    if (!node) return;

    if (!res[depth]){
      res[depth] = [];
    }

    res[depth].push(node.val);
    helper(node.left, depth + 1);
    helper(node.right, depth + 1);
  }

  helper(root, 0);
  return res;
}
