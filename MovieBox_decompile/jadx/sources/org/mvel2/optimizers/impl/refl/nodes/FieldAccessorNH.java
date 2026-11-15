package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Field;
import org.mvel2.b;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;
import yz.c;

public class FieldAccessorNH implements AccessorNode {
    private boolean coercionRequired = false;
    private Field field;
    private AccessorNode nextNode;
    private c nullHandler;

    public FieldAccessorNH(Field field, c cVar) {
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
            Object obj3 = this.field.get(obj);
            if (obj3 != null) {
                AccessorNode accessorNode = this.nextNode;
                return accessorNode != null ? accessorNode.getValue(obj3, obj2, variableResolverFactory) : obj3;
            }
            this.field.getName();
            throw null;
        } catch (Exception e10) {
            throw new RuntimeException("unable to access field", e10);
        }
    }

    public void setField(Field field) {
        this.field = field;
    }

    @Override
    public AccessorNode setNextNode(AccessorNode accessorNode) {
        this.nextNode = accessorNode;
        return accessorNode;
    }

    @Override
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        boolean z10 = this.coercionRequired;
        try {
            AccessorNode accessorNode = this.nextNode;
            if (accessorNode != null) {
                return accessorNode.setValue(obj, obj2, variableResolverFactory, obj3);
            }
            if (!z10) {
                this.field.set(obj, obj3);
                return obj3;
            }
            Field field = this.field;
            Object objB = b.b(obj, field.getClass());
            field.set(obj, objB);
            return objB;
        } catch (IllegalArgumentException e10) {
            if (z10) {
                throw new RuntimeException("unable to bind property", e10);
            }
            this.coercionRequired = true;
            return setValue(obj, obj2, variableResolverFactory, obj3);
        } catch (Exception e11) {
            throw new RuntimeException("unable to access field", e11);
        }
    }
}
