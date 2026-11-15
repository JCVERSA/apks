package org.mvel2.optimizers.impl.refl.nodes;

import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

public class Notify implements AccessorNode {
    private String name;
    private AccessorNode nextNode;

    public Notify(String str) {
        this.name = str;
    }

    @Override
    public Class getKnownEgressType() {
        return Object.class;
    }

    @Override
    public AccessorNode getNextNode() {
        return this.nextNode;
    }

    @Override
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        yz.a.c(obj, this.name, variableResolverFactory);
        return this.nextNode.getValue(obj, obj2, variableResolverFactory);
    }

    @Override
    public AccessorNode setNextNode(AccessorNode accessorNode) {
        this.nextNode = accessorNode;
        return accessorNode;
    }

    @Override
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        yz.a.d(obj, this.name, variableResolverFactory, obj3);
        return this.nextNode.setValue(obj, obj2, variableResolverFactory, obj3);
    }
}
