package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Constructor;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;

public class ConstructorAccessor extends InvokableAccessor {
    private Constructor constructor;

    public ConstructorAccessor(Constructor constructor, ExecutableStatement[] executableStatementArr) {
        this.constructor = constructor;
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        this.parameterTypes = parameterTypes;
        this.length = parameterTypes.length;
        this.parms = executableStatementArr;
    }

    private Object[] executeAll(Object obj, VariableResolverFactory variableResolverFactory) {
        int i10 = this.length;
        if (i10 == 0) {
            return GetterAccessor.EMPTY;
        }
        Object[] objArr = new Object[i10];
        for (int i11 = 0; i11 < this.length; i11++) {
            objArr[i11] = this.parms[i11].getValue(obj, variableResolverFactory);
        }
        return objArr;
    }

    public Constructor getConstructor() {
        return this.constructor;
    }

    @Override
    public Class getKnownEgressType() {
        return this.constructor.getClass();
    }

    public ExecutableStatement[] getParameters() {
        return this.parms;
    }

    @Override
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        try {
            if (!this.coercionNeeded) {
                try {
                    AccessorNode accessorNode = this.nextNode;
                    return accessorNode != null ? accessorNode.getValue(this.constructor.newInstance(executeAll(obj2, variableResolverFactory)), obj2, variableResolverFactory) : this.constructor.newInstance(executeAll(obj2, variableResolverFactory));
                } catch (IllegalArgumentException unused) {
                    this.coercionNeeded = true;
                    return getValue(obj, obj2, variableResolverFactory);
                }
            }
            AccessorNode accessorNode2 = this.nextNode;
            if (accessorNode2 != null) {
                Constructor constructor = this.constructor;
                return accessorNode2.getValue(constructor.newInstance(executeAndCoerce(this.parameterTypes, obj2, variableResolverFactory, constructor.isVarArgs())), obj2, variableResolverFactory);
            }
            Constructor constructor2 = this.constructor;
            return constructor2.newInstance(executeAndCoerce(this.parameterTypes, obj2, variableResolverFactory, constructor2.isVarArgs()));
        } catch (Exception e10) {
            throw new RuntimeException("cannot construct object", e10);
        }
    }

    @Override
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return null;
    }
}
