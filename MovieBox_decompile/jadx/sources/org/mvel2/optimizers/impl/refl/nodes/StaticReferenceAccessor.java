package org.mvel2.optimizers.impl.refl.nodes;

import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

public class StaticReferenceAccessor implements AccessorNode {
    Object literal;
    private AccessorNode nextNode;

    public StaticReferenceAccessor() {
    }

    @Override
    public Class getKnownEgressType() {
        return this.literal.getClass();
    }

    public Object getLiteral() {
        return this.literal;
    }

    @Override
    public AccessorNode getNextNode() {
        return this.nextNode;
    }

    @Override
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        AccessorNode accessorNode = this.nextNode;
        return accessorNode != null ? accessorNode.getValue(this.literal, obj2, variableResolverFactory) : this.literal;
    }

    public void setLiteral(Object obj) {
        this.literal = obj;
    }

    @Override
    public AccessorNode setNextNode(AccessorNode accessorNode) {
        this.nextNode = accessorNode;
        return accessorNode;
    }

    @Override
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return this.nextNode.setValue(this.literal, obj2, variableResolverFactory, obj3);
    }

    public StaticReferenceAccessor(Object obj) {
        this.literal = obj;
    }
}
