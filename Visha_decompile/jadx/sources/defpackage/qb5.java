package defpackage;

import com.lzy.okgo.model.Progress;
import kotlinx.serialization.descriptors.a;
import kotlinx.serialization.json.b;
import org.mozilla.javascript.ES6Iterator;

public final class qb5 extends e3 {
    public final b f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qb5(u95 u95Var, b bVar) {
        super(u95Var, bVar, null);
        y45.j(u95Var, "json");
        y45.j(bVar, ES6Iterator.VALUE_PROPERTY);
        this.f = bVar;
        X("primitive");
    }

    @Override
    public b e0(String str) {
        y45.j(str, Progress.TAG);
        if (str == "primitive") {
            return s0();
        }
        throw new IllegalArgumentException("This input can only handle primitives with 'primitive' tag");
    }

    @Override
    public b s0() {
        return this.f;
    }

    @Override
    public int v(a aVar) {
        y45.j(aVar, "descriptor");
        return 0;
    }
}
