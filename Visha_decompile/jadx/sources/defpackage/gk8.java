package defpackage;

import android.view.View;
import com.lzy.okgo.model.Progress;
import java.util.concurrent.ConcurrentHashMap;

public final class gk8 implements cdc {
    public final ConcurrentHashMap a = new ConcurrentHashMap();

    @Override
    public View a(String str) {
        y45.j(str, Progress.TAG);
        View viewA = ((hcc) emb.b(this.a, str, null, 2, null)).a();
        y45.h(viewA, "null cannot be cast to non-null type T of com.yandex.div.internal.viewpool.PseudoViewPool.obtain");
        return viewA;
    }

    @Override
    public void b(String str, int i) {
        y45.j(str, Progress.TAG);
    }

    @Override
    public void c(String str, hcc hccVar, int i) {
        y45.j(str, Progress.TAG);
        y45.j(hccVar, "factory");
        this.a.put(str, hccVar);
    }
}
