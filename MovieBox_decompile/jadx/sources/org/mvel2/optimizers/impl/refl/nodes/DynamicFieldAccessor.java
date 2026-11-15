package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Field;
import org.mvel2.b;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

public class DynamicFieldAccessor implements AccessorNode {
    private Field field;
    private AccessorNode nextNode;
    private Class targetType;

    public DynamicFieldAccessor() {
    }

    public Field getField() {
        return this.field;
    }

    @Override
    public Class getKnownEgressType() {
        return this.targetType;
    }

    @Override
    public AccessorNode getNextNode() {
        return this.nextNode;
    }

    @Override
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        try {
            AccessorNode accessorNode = this.nextNode;
            return accessorNode != null ? accessorNode.getValue(this.field.get(obj), obj2, variableResolverFactory) : this.field.get(obj);
        } catch (Exception e10) {
            throw new RuntimeException("unable to access field", e10);
        }
    }

    public void setField(Field field) {
        this.field = field;
        this.targetType = field.getType();
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
                return accessorNode.setValue(this.field.get(obj), obj2, variableResolverFactory, obj3);
            }
            this.field.set(obj, b.b(obj3, this.targetType));
            return obj3;
        } catch (Exception e10) {
            throw new RuntimeException("unable to access field", e10);
        }
    }

    public DynamicFieldAccessor(Field field) {
        setField(field);
    }
}
