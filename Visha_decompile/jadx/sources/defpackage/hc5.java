package defpackage;

import com.lzy.okgo.model.Progress;
import kotlinx.serialization.json.a;
import kotlinx.serialization.json.b;
import org.mozilla.javascript.ES6Iterator;

public final class hc5 extends e3 {
    public final a f;
    public final int g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hc5(u95 u95Var, a aVar) {
        super(u95Var, aVar, null);
        y45.j(u95Var, "json");
        y45.j(aVar, ES6Iterator.VALUE_PROPERTY);
        this.f = aVar;
        this.g = s0().size();
        this.h = -1;
    }

    @Override
    public String a0(kotlinx.serialization.descriptors.a aVar, int i) {
        y45.j(aVar, "descriptor");
        return String.valueOf(i);
    }

    @Override
    public b e0(String str) {
        y45.j(str, Progress.TAG);
        return s0().get(Integer.parseInt(str));
    }

    @Override
    public a s0() {
        return this.f;
    }

    @Override
    public int v(kotlinx.serialization.descriptors.a aVar) {
        y45.j(aVar, "descriptor");
        int i = this.h;
        if (i >= this.g - 1) {
            return -1;
        }
        int i2 = i + 1;
        this.h = i2;
        return i2;
    }
}
