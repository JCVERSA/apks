package defpackage;

import com.lzy.okgo.model.Progress;
import com.transsion.livecaption.constant.ICode;
import com.transsion.playercommon.subtitle.model.AILaunageConfig;
import java.util.List;

public final class wr9 implements jw4 {
    @Override
    public void a(String str, AILaunageConfig aILaunageConfig, s74 s74Var) {
        y45.j(str, ICode.CALL.CALL_KEY_CONTENT);
        y45.j(aILaunageConfig, "config");
        h0.i.a().t(str, aILaunageConfig, s74Var);
    }

    @Override
    public void b(AILaunageConfig aILaunageConfig, boolean z) {
    }

    @Override
    public void c(List list) {
        y45.j(list, "list");
    }

    @Override
    public void d(AILaunageConfig aILaunageConfig, boolean z) {
        y45.j(aILaunageConfig, "config");
        h0.i.a().D(null, aILaunageConfig);
    }

    @Override
    public void e(String str) {
    }

    @Override
    public void f(zt4 zt4Var) {
    }

    @Override
    public void g(e74 e74Var, hw4 hw4Var) {
        h0.i.a().B(e74Var, hw4Var);
    }

    @Override
    public void h(String str) {
    }

    @Override
    public void i(AILaunageConfig aILaunageConfig, boolean z) {
    }

    @Override
    public void j(String str) {
        y45.j(str, Progress.TAG);
        h0.i.a().w(str);
    }

    @Override
    public void k(e74 e74Var, AILaunageConfig aILaunageConfig, String str) {
        y45.j(aILaunageConfig, "config");
        y45.j(str, Progress.TAG);
        h0.i.a().p(e74Var, aILaunageConfig, str);
    }

    @Override
    public List l() {
        return h0.i.a().n();
    }

    @Override
    public boolean m() {
        return h0.i.a().s();
    }

    @Override
    public void stop() {
        h0.i.a().C();
    }
}
