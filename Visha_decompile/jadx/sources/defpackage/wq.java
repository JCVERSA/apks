package defpackage;

import com.lzy.okgo.model.Progress;
import java.util.List;
import kotlin.b;

public final class wq implements fv4 {
    public final yi5 a = b.a(new c74() {
        @Override
        public final Object invoke() {
            return wq.e();
        }
    });

    public static final uq e() {
        return new uq();
    }

    @Override
    public int a(e15 e15Var) {
        y45.j(e15Var, Progress.REQUEST);
        return d().a(e15Var);
    }

    @Override
    public List b(e15 e15Var) {
        y45.j(e15Var, Progress.REQUEST);
        return d().b(e15Var);
    }

    public final ev4 d() {
        return (ev4) this.a.getValue();
    }
}
