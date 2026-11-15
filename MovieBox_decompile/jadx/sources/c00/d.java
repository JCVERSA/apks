package c00;

import java.util.HashMap;
import java.util.Map;
import org.mvel2.integration.VariableResolverFactory;

public class d implements org.mvel2.compiler.a {

    private org.mvel2.compiler.a[] f16379a;

    private org.mvel2.compiler.a[] f16380b;

    private int f16381c;

    public d(org.mvel2.compiler.a[] aVarArr, org.mvel2.compiler.a[] aVarArr2) {
        this.f16379a = aVarArr;
        this.f16381c = aVarArr.length;
        this.f16380b = aVarArr2;
    }

    @Override
    public Class getKnownEgressType() {
        return Map.class;
    }

    @Override
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        HashMap map = new HashMap(this.f16381c * 2);
        int i10 = this.f16381c;
        while (true) {
            i10--;
            if (i10 == -1) {
                return map;
            }
            map.put(this.f16379a[i10].getValue(obj, obj2, variableResolverFactory), this.f16380b[i10].getValue(obj, obj2, variableResolverFactory));
        }
    }

    @Override
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return null;
    }
}
