package c00;

import java.lang.reflect.Array;
import org.mvel2.integration.VariableResolverFactory;

public class a implements org.mvel2.compiler.a {

    public org.mvel2.compiler.a[] f16375a;

    private Class f16376b;

    public a(org.mvel2.compiler.a[] aVarArr, Class cls) {
        this.f16375a = aVarArr;
        this.f16376b = cls;
    }

    @Override
    public Class getKnownEgressType() {
        return this.f16376b;
    }

    @Override
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        int i10 = 0;
        if (Object.class.equals(this.f16376b)) {
            int length = this.f16375a.length;
            Object[] objArr = new Object[length];
            while (i10 < length) {
                objArr[i10] = this.f16375a[i10].getValue(obj, obj2, variableResolverFactory);
                i10++;
            }
            return objArr;
        }
        Object objNewInstance = Array.newInstance((Class<?>) this.f16376b, this.f16375a.length);
        while (true) {
            org.mvel2.compiler.a[] aVarArr = this.f16375a;
            if (i10 >= aVarArr.length) {
                return objNewInstance;
            }
            Array.set(objNewInstance, i10, aVarArr[i10].getValue(obj, obj2, variableResolverFactory));
            i10++;
        }
    }

    @Override
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return null;
    }
}
