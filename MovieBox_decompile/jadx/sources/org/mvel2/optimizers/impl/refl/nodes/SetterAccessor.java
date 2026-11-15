package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Method;
import org.mvel2.b;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;
import org.mvel2.util.n;

public class SetterAccessor implements AccessorNode {
    static final boolean $assertionsDisabled = false;
    public static final Object[] EMPTY = new Object[0];
    private boolean coercionRequired = false;
    private final Method method;
    private AccessorNode nextNode;
    private boolean primitive;
    private Class<?> targetType;

    public SetterAccessor(Method method) {
        this.method = method;
        Class<?> cls = method.getParameterTypes()[0];
        this.targetType = cls;
        this.primitive = cls.isPrimitive();
    }

    private Object executeOverrideTarget(Method method, Object obj, Object obj2) {
        try {
            return method.invoke(obj, b.b(obj2, this.targetType));
        } catch (Exception e10) {
            throw new RuntimeException("unable to invoke method", e10);
        }
    }

    @Override
    public Class getKnownEgressType() {
        return this.method.getReturnType();
    }

    public Method getMethod() {
        return this.method;
    }

    @Override
    public AccessorNode getNextNode() {
        return this.nextNode;
    }

    @Override
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return null;
    }

    @Override
    public AccessorNode setNextNode(AccessorNode accessorNode) {
        this.nextNode = accessorNode;
        return accessorNode;
    }

    @Override
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        Method methodL;
        boolean z10 = this.coercionRequired;
        try {
            if (z10) {
                return this.method.invoke(obj, b.b(obj3, this.targetType));
            }
            return this.method.invoke(obj, (obj3 == null && this.primitive) ? n.g(this.targetType) : obj3);
        } catch (IllegalArgumentException e10) {
            if (obj != null && this.method.getDeclaringClass() != obj.getClass() && (methodL = m.L(EMPTY, this.method.getName(), obj.getClass(), obj.getClass().getMethods(), true)) != null) {
                return executeOverrideTarget(methodL, obj, obj3);
            }
            if (z10) {
                throw new RuntimeException("unable to bind property", e10);
            }
            this.coercionRequired = true;
            return setValue(obj, obj2, variableResolverFactory, obj3);
        } catch (Exception e11) {
            throw new RuntimeException("error calling method: " + this.method.getDeclaringClass().getName() + "." + this.method.getName(), e11);
        }
    }

    public String toString() {
        return this.method.getDeclaringClass().getName() + "." + this.method.getName();
    }
}
