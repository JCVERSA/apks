package com.cloud.tmc.kernel.bridge.extension.bind;

import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.node.Scope;

public class NodeBinder implements Binder<BindingNode, Node> {
    private Node sourceNode;

    public NodeBinder(Node node) {
        this.sourceNode = node;
    }

    private Node findDataScopeNode(Class<? extends Scope> cls, Node node) {
        Class scopeType;
        if (node == null || !(node instanceof Scope) || (scopeType = ((Scope) node).getScopeType()) == null) {
            return null;
        }
        return scopeType.equals(cls) ? node : findDataScopeNode(cls, node.getParentNode());
    }

    @Override
    public Node bind(Class<Node> cls, BindingNode bindingNode) throws BindException {
        Node nodeFindDataScopeNode = findDataScopeNode(bindingNode.value(), this.sourceNode);
        if (nodeFindDataScopeNode == null) {
            return null;
        }
        return nodeFindDataScopeNode;
    }
}
