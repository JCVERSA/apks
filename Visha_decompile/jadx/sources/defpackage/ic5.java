package defpackage;

import com.lzy.okgo.model.Progress;
import java.util.List;
import kotlinx.serialization.descriptors.a;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.internal.b;
import org.mozilla.javascript.ES6Iterator;

public final class ic5 extends b {
    public final JsonObject k;
    public final List l;
    public final int m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ic5(u95 u95Var, JsonObject jsonObject) {
        super(u95Var, jsonObject, null, null, 12, null);
        y45.j(u95Var, "json");
        y45.j(jsonObject, ES6Iterator.VALUE_PROPERTY);
        this.k = jsonObject;
        List listB1 = i81.b1(s0().keySet());
        this.l = listB1;
        this.m = listB1.size() * 2;
        this.n = -1;
    }

    @Override
    public String a0(a aVar, int i) {
        y45.j(aVar, "descriptor");
        return (String) this.l.get(i / 2);
    }

    @Override
    public void c(a aVar) {
        y45.j(aVar, "descriptor");
    }

    @Override
    public kotlinx.serialization.json.b e0(String str) {
        y45.j(str, Progress.TAG);
        return this.n % 2 == 0 ? la5.c(str) : (kotlinx.serialization.json.b) kotlin.collections.a.m(s0(), str);
    }

    @Override
    public int v(a aVar) {
        y45.j(aVar, "descriptor");
        int i = this.n;
        if (i >= this.m - 1) {
            return -1;
        }
        int i2 = i + 1;
        this.n = i2;
        return i2;
    }

    @Override
    public JsonObject s0() {
        return this.k;
    }
}
