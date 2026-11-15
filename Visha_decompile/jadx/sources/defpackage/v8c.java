package defpackage;

import android.util.Log;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.source.data.repository.delegate.VideoRepositoryDelegate;
import java.util.Map;
import kotlin.collections.a;

public final class v8c implements uw4 {
    public final Map a = a.p(abb.a(ngb.d.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(v8c.f((ngb) obj));
        }
    }), abb.a(ngb.e.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(v8c.g((ngb) obj));
        }
    }), abb.a(ngb.g.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(v8c.h((ngb) obj));
        }
    }), abb.a(ngb.f.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(v8c.i((ngb) obj));
        }
    }));

    public static final int f(ngb ngbVar) {
        y45.j(ngbVar, "input");
        return VideoRepositoryDelegate.INSTANCE.updatePlayListName((ngb.d) ngbVar);
    }

    public static final int g(ngb ngbVar) {
        y45.j(ngbVar, "input");
        return VideoRepositoryDelegate.INSTANCE.updateMediaItemName((ngb.e) ngbVar);
    }

    public static final int h(ngb ngbVar) {
        y45.j(ngbVar, "input");
        return VideoRepositoryDelegate.INSTANCE.updatePlayRecord((ngb.g) ngbVar);
    }

    public static final int i(ngb ngbVar) {
        y45.j(ngbVar, "input");
        return VideoRepositoryDelegate.INSTANCE.updateVideoConvertingAudio((ngb.f) ngbVar);
    }

    @Override
    public int a(ahb ahbVar) {
        y45.j(ahbVar, Progress.REQUEST);
        e74 e74Var = (e74) this.a.get(ahbVar.a().getClass());
        if (e74Var != null) {
            return ((Number) e74Var.invoke(ahbVar.a())).intValue();
        }
        Log.w("VideoUpdateEngine", "Unhandled SingleAction type: " + ahbVar.a().getClass().getName());
        return -1;
    }
}
