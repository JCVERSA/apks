package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Method;
import org.mvel2.b;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

public class DynamicSetterAccessor implements AccessorNode {
    public static final Object[] EMPTY = new Object[0];
    private final Method method;
    private Class targetType;

    public DynamicSetterAccessor(Method method) {
        this.method = method;
        this.targetType = method.getParameterTypes()[0];
    }

    @Override
    public Class getKnownEgressType() {
        return this.targetType;
    }

    public Method getMethod() {
        return this.method;
    }

    @Override
    public AccessorNode getNextNode() {
        return null;
    }

    @Override
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return null;
    }

    @Override
    public AccessorNode setNextNode(AccessorNode accessorNode) {
        return null;
    }

    @Override
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        try {
            return this.method.invoke(obj, b.b(obj3, this.targetType));
        } catch (Exception e10) {
            throw new RuntimeException("error binding property", e10);
        }
    }

    public String toString() {
        return this.method.getDeclaringClass().getName() + "." + this.method.getName();
    }
}
