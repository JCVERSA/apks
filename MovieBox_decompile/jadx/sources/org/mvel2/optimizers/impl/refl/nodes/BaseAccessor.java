package org.mvel2.optimizers.impl.refl.nodes;

import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

public abstract class BaseAccessor implements AccessorNode {
    protected AccessorNode nextNode;

    @Override
    public abstract Class getKnownEgressType();

    @Override
    public AccessorNode getNextNode() {
        return this.nextNode;
    }

    @Override
    public abstract Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory);

    @Override
    public AccessorNode setNextNode(AccessorNode accessorNode) {
        this.nextNode = accessorNode;
        return accessorNode;
    }

    @Override
    public abstract Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3);
}
