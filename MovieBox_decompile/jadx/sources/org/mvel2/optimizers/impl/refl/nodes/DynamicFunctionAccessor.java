package org.mvel2.optimizers.impl.refl.nodes;

import org.mvel2.ast.Function;
import org.mvel2.ast.b;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;

public class DynamicFunctionAccessor extends BaseAccessor {
    private org.mvel2.compiler.a[] parameters;

    public DynamicFunctionAccessor(org.mvel2.compiler.a[] aVarArr) {
        this.parameters = aVarArr;
    }

    @Override
    public Class getKnownEgressType() {
        return Object.class;
    }

    @Override
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        Object[] objArr;
        Function functionB = obj instanceof b ? ((b) obj).b() : (Function) obj;
        org.mvel2.compiler.a[] aVarArr = this.parameters;
        if (aVarArr == null || aVarArr.length == 0) {
            objArr = null;
        } else {
            int length = aVarArr.length;
            objArr = new Object[length];
            for (int i10 = 0; i10 < length; i10++) {
                objArr[i10] = this.parameters[i10].getValue(obj, obj2, variableResolverFactory);
            }
        }
        AccessorNode accessorNode = this.nextNode;
        return accessorNode != null ? accessorNode.getValue(functionB.call(obj, obj2, variableResolverFactory, objArr), obj2, variableResolverFactory) : functionB.call(obj, obj2, variableResolverFactory, objArr);
    }

    @Override
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        throw new RuntimeException("can't write to function");
    }
}
