package defpackage;

import com.lzy.okgo.model.Progress;
import com.transsion.livecaption.constant.ICode;
import com.transsion.playercommon.subtitle.middleware.SubtitleNexusFlowManager;
import com.transsion.playercommon.subtitle.model.AILaunageConfig;
import java.util.ArrayList;
import java.util.List;

public final class w07 implements jw4 {
    public final ArrayList a = new ArrayList();

    @Override
    public void a(String str, AILaunageConfig aILaunageConfig, s74 s74Var) {
        y45.j(str, ICode.CALL.CALL_KEY_CONTENT);
        y45.j(aILaunageConfig, "config");
    }

    @Override
    public void b(AILaunageConfig aILaunageConfig, boolean z) {
        if (aILaunageConfig == null) {
            return;
        }
        SubtitleNexusFlowManager.f.a().n(aILaunageConfig, z);
    }

    @Override
    public void c(List list) {
        y45.j(list, "list");
        this.a.clear();
        this.a.addAll(list);
    }

    @Override
    public void d(AILaunageConfig aILaunageConfig, boolean z) {
        y45.j(aILaunageConfig, "config");
        i(aILaunageConfig, z);
    }

    @Override
    public void e(String str) {
        SubtitleNexusFlowManager.f.a().l(str);
    }

    @Override
    public void f(zt4 zt4Var) {
        SubtitleNexusFlowManager.f.a().m(zt4Var);
    }

    @Override
    public void g(e74 e74Var, hw4 hw4Var) {
    }

    @Override
    public void h(String str) {
        SubtitleNexusFlowManager.f.a().j(str);
    }

    @Override
    public void i(AILaunageConfig aILaunageConfig, boolean z) {
        if (aILaunageConfig == null) {
            return;
        }
        SubtitleNexusFlowManager.f.a().p(aILaunageConfig, z);
    }

    @Override
    public void j(String str) {
        y45.j(str, Progress.TAG);
        SubtitleNexusFlowManager.f.a().k(str);
    }

    @Override
    public void k(e74 e74Var, AILaunageConfig aILaunageConfig, String str) {
        y45.j(aILaunageConfig, "config");
        y45.j(str, Progress.TAG);
    }

    @Override
    public List l() {
        return this.a;
    }

    @Override
    public boolean m() {
        return SubtitleNexusFlowManager.f.a().i();
    }

    @Override
    public void stop() {
        SubtitleNexusFlowManager.f.a().o();
    }
}
