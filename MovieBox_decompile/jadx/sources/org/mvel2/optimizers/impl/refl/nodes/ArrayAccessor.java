package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Array;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

public class ArrayAccessor implements AccessorNode {
    private int index;
    private AccessorNode nextNode;

    public ArrayAccessor() {
    }

    public int getIndex() {
        return this.index;
    }

    @Override
    public Class getKnownEgressType() {
        return Object[].class;
    }

    @Override
    public AccessorNode getNextNode() {
        return this.nextNode;
    }

    @Override
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        AccessorNode accessorNode = this.nextNode;
        if (accessorNode != null) {
            return accessorNode.getValue(Array.get(obj, this.index), obj2, variableResolverFactory);
        }
        try {
            return Array.get(obj, this.index);
        } catch (IllegalArgumentException unused) {
            throw new ClassCastException("Argument of type '" + obj.getClass() + "' is not an Array");
        }
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
            return accessorNode.setValue(Array.get(obj, this.index), obj2, variableResolverFactory, obj3);
        }
        Array.set(obj, this.index, obj3);
        return obj3;
    }

    public String toString() {
        return "Array Accessor -> [" + this.index + "]";
    }

    public ArrayAccessor(int i10) {
        this.index = i10;
    }
}
