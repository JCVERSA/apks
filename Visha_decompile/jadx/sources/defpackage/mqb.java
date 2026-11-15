package defpackage;

import com.lzy.okgo.model.Progress;
import java.util.List;
import kotlin.b;

public final class mqb implements tu4 {
    public final yi5 a = b.a(new c74() {
        @Override
        public final Object invoke() {
            return mqb.e();
        }
    });

    public static final kqb e() {
        return new kqb();
    }

    @Override
    public int a(g82 g82Var) {
        y45.j(g82Var, Progress.REQUEST);
        return d().a(g82Var);
    }

    @Override
    public List b(g82 g82Var) {
        y45.j(g82Var, Progress.REQUEST);
        return d().b(g82Var);
    }

    public final su4 d() {
        return (su4) this.a.getValue();
    }
}
