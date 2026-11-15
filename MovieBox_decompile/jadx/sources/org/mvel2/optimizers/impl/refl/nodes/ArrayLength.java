package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Array;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

public class ArrayLength extends BaseAccessor {
    @Override
    public Class getKnownEgressType() {
        return Integer.class;
    }

    @Override
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        AccessorNode accessorNode = this.nextNode;
        return accessorNode != null ? accessorNode.getValue(Integer.valueOf(Array.getLength(obj)), obj2, variableResolverFactory) : Integer.valueOf(Array.getLength(obj));
    }

    @Override
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return null;
    }
}
