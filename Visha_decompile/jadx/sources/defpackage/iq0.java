package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.Map;

public class iq0 implements kga {
    public final zy4 b;
    public kga c;

    public iq0(zy4 zy4Var, kga kgaVar) {
        y45.j(zy4Var, "cacheProvider");
        y45.j(kgaVar, "fallbackProvider");
        this.b = zy4Var;
        this.c = kgaVar;
    }

    @Override
    public ac5 get(String str) {
        y45.j(str, "templateId");
        ac5 ac5Var = this.b.get(str);
        if (ac5Var != null) {
            return ac5Var;
        }
        ac5 ac5Var2 = (ac5) this.c.get(str);
        if (ac5Var2 == null) {
            return null;
        }
        this.b.c(str, ac5Var2);
        return ac5Var2;
    }

    public void c(Map map) {
        y45.j(map, "parsed");
        for (Map.Entry entry : map.entrySet()) {
            this.b.c((String) entry.getKey(), (ac5) entry.getValue());
        }
    }

    public void d(Map map) {
        y45.j(map, TypedValues.AttributesType.S_TARGET);
        this.b.d(map);
    }
}
