package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.Map;

public final class zy4 implements kga {
    public final Map b = w71.b();

    @Override
    public ac5 get(String str) {
        y45.j(str, "templateId");
        return (ac5) this.b.get(str);
    }

    public final void c(String str, ac5 ac5Var) {
        y45.j(str, "templateId");
        y45.j(ac5Var, "jsonTemplate");
        this.b.put(str, ac5Var);
    }

    public final void d(Map map) {
        y45.j(map, TypedValues.AttributesType.S_TARGET);
        map.putAll(this.b);
    }
}
