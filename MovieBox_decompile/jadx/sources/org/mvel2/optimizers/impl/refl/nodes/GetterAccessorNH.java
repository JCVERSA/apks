package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Method;
import org.mvel2.CompileException;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.d;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;
import yz.c;

public class GetterAccessorNH implements AccessorNode {
    public static final Object[] EMPTY = new Object[0];
    private final Method method;
    private AccessorNode nextNode;
    private c nullHandler;

    public GetterAccessorNH(Method method, c cVar) {
        this.method = method;
    }

    private Object executeOverrideTarget(Method method, Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        try {
            return nullHandle(method.getName(), method.invoke(obj, EMPTY), obj, obj2, variableResolverFactory);
        } catch (Exception e10) {
            throw new RuntimeException("unable to invoke method", e10);
        }
    }

    private Object nullHandle(String str, Object obj, Object obj2, Object obj3, VariableResolverFactory variableResolverFactory) {
        if (obj != null) {
            AccessorNode accessorNode = this.nextNode;
            return accessorNode != null ? accessorNode.getValue(obj, obj3, variableResolverFactory) : obj;
        }
        this.nextNode.getClass();
        throw null;
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
        Method methodL;
        try {
            return nullHandle(this.method.getName(), this.method.invoke(obj, EMPTY), obj, obj2, variableResolverFactory);
        } catch (IllegalArgumentException unused) {
            if (obj != null && this.method.getDeclaringClass() != obj.getClass() && (methodL = m.L(EMPTY, this.method.getName(), obj.getClass(), obj.getClass().getMethods(), true)) != null) {
                return executeOverrideTarget(methodL, obj, obj2, variableResolverFactory);
            }
            return nullHandle(this.method.getName(), d.v(this.method.getName() + "()", obj), obj, obj2, variableResolverFactory);
        } catch (Exception e10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("cannot invoke getter: ");
            sb2.append(this.method.getName());
            sb2.append(" [declr.class: ");
            sb2.append(this.method.getDeclaringClass().getName());
            sb2.append("; act.class: ");
            sb2.append(obj != null ? obj.getClass().getName() : "null");
            sb2.append("]");
            throw new RuntimeException(sb2.toString(), e10);
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
            try {
                Object objInvoke = this.method.invoke(obj, EMPTY);
                if (objInvoke != null) {
                    return this.nextNode.setValue(objInvoke, obj2, variableResolverFactory, obj3);
                }
                this.method.getName();
                throw null;
            } catch (Exception e10) {
                throw new RuntimeException("error " + this.method.getName() + ": " + e10.getClass().getName() + ":" + e10.getMessage(), e10);
            }
        } catch (IllegalArgumentException unused) {
            Object objV = d.v(this.method.getName() + "()", obj);
            if (objV != null) {
                return this.nextNode.setValue(objV, obj2, variableResolverFactory, obj3);
            }
            this.method.getName();
            throw null;
        } catch (CompileException e11) {
            throw e11;
        }
    }

    public String toString() {
        return this.method.getDeclaringClass().getName() + "." + this.method.getName();
    }
}
