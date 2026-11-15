package org.mvel2.optimizers.impl.refl.nodes;

import java.util.List;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

public class ListAccessor implements AccessorNode {
    private int index;
    private AccessorNode nextNode;

    public ListAccessor() {
    }

    public int getIndex() {
        return this.index;
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
        AccessorNode accessorNode = this.nextNode;
        return accessorNode != null ? accessorNode.getValue(((List) obj).get(this.index), obj2, variableResolverFactory) : ((List) obj).get(this.index);
    }

    public void setIndex(int i10) {
        this.index = i10;
    }

    @Override
    public AccessorNode setNextNode(AccessorNode accessorNode) {
        this.nextNode = accessorNode;
        return accessorNode;
    }

    @Override
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        AccessorNode accessorNode = this.nextNode;
        if (accessorNode != null) {
            return accessorNode.setValue(((List) obj).get(this.index), obj2, variableResolverFactory, obj3);
        }
        ((List) obj).set(this.index, obj3);
        return obj3;
    }

    public String toString() {
        return "Array Accessor -> [" + this.index + "]";
    }

    public ListAccessor(int i10) {
        this.index = i10;
    }
}
