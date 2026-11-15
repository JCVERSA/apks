package org.mvel2.optimizers.impl.refl.nodes;

import java.lang.reflect.Array;
import org.mvel2.b;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;

public abstract class InvokableAccessor extends BaseAccessor {
    protected boolean coercionNeeded = false;
    protected int length;
    protected Class[] parameterTypes;
    protected ExecutableStatement[] parms;

    protected Object[] executeAndCoerce(Class[] clsArr, Object obj, VariableResolverFactory variableResolverFactory, boolean z10) {
        int i10;
        Object objNewInstance;
        Object[] objArr = new Object[this.length];
        int i11 = 0;
        while (true) {
            i10 = this.length;
            if (i11 >= i10 || (z10 && i11 >= i10 - 1)) {
                break;
            }
            objArr[i11] = b.b(this.parms[i11].getValue(obj, variableResolverFactory), clsArr[i11]);
            i11++;
        }
        if (z10) {
            Class<?> componentType = clsArr[i10 - 1].getComponentType();
            ExecutableStatement[] executableStatementArr = this.parms;
            if (executableStatementArr == null) {
                objNewInstance = Array.newInstance(componentType, 0);
            } else {
                Object objNewInstance2 = Array.newInstance(componentType, (executableStatementArr.length - this.length) + 1);
                int i12 = this.length - 1;
                while (true) {
                    ExecutableStatement[] executableStatementArr2 = this.parms;
                    if (i12 >= executableStatementArr2.length) {
                        break;
                    }
                    Array.set(objNewInstance2, (i12 - this.length) + 1, b.b(executableStatementArr2[i12].getValue(obj, variableResolverFactory), componentType));
                    i12++;
                }
                objNewInstance = objNewInstance2;
            }
            objArr[this.length - 1] = objNewInstance;
        }
        return objArr;
    }

    @Override
    public abstract Class getKnownEgressType();

    public Class[] getParameterTypes() {
        return this.parameterTypes;
    }

    @Override
    public abstract Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory);

    @Override
    public abstract Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3);
}
