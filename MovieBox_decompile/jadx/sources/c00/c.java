package c00;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.mvel2.integration.VariableResolverFactory;

public class c implements org.mvel2.compiler.a {

    private org.mvel2.compiler.a[] f16378a;

    public c(org.mvel2.compiler.a[] aVarArr) {
        this.f16378a = aVarArr;
    }

    public org.mvel2.compiler.a[] b() {
        return this.f16378a;
    }

    @Override
    public Class getKnownEgressType() {
        return List.class;
    }

    @Override
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        Object[] objArr = new Object[b().length];
        for (int i10 = 0; i10 < b().length; i10++) {
            objArr[i10] = b()[i10].getValue(obj, obj2, variableResolverFactory);
        }
        return new ArrayList(Arrays.asList(objArr));
    }

    @Override
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return null;
    }
}
