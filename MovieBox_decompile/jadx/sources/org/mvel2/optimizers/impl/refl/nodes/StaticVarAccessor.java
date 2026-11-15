package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Field;
import org.mvel2.OptimizationFailure;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

public class StaticVarAccessor implements AccessorNode {
    Field field;
    private AccessorNode nextNode;

    public StaticVarAccessor(Field field) {
        this.field = field;
    }

    public Field getField() {
        return this.field;
    }

    @Override
    public Class getKnownEgressType() {
        return this.field.getClass();
    }

    @Override
    public AccessorNode getNextNode() {
        return this.nextNode;
    }

    @Override
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        try {
            AccessorNode accessorNode = this.nextNode;
            return accessorNode != null ? accessorNode.getValue(this.field.get(null), obj2, variableResolverFactory) : this.field.get(null);
        } catch (Exception e10) {
            throw new OptimizationFailure("unable to access static field", e10);
        }
    }

    @Override
    public AccessorNode setNextNode(AccessorNode accessorNode) {
        this.nextNode = accessorNode;
        return accessorNode;
    }

    @Override
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        try {
            AccessorNode accessorNode = this.nextNode;
            if (accessorNode != null) {
                return accessorNode.setValue(this.field.get(null), obj2, variableResolverFactory, obj3);
            }
            this.field.set(null, obj3);
            return obj3;
        } catch (Exception e10) {
            throw new RuntimeException("error accessing static variable", e10);
        }
    }
}
