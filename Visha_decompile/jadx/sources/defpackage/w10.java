package defpackage;

import android.util.Log;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.source.data.repository.delegate.AudioRepositoryDelegate;
import java.util.Map;
import kotlin.collections.a;

public final class w10 implements uw4 {
    public final Map a = a.p(abb.a(ngb.d.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(w10.f((ngb) obj));
        }
    }), abb.a(ngb.e.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(w10.g((ngb) obj));
        }
    }), abb.a(ngb.a.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(w10.h((ngb) obj));
        }
    }), abb.a(ngb.b.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(w10.i((ngb) obj));
        }
    }));

    public static final int f(ngb ngbVar) {
        y45.j(ngbVar, "input");
        return AudioRepositoryDelegate.INSTANCE.updatePlayListName((ngb.d) ngbVar);
    }

    public static final int g(ngb ngbVar) {
        y45.j(ngbVar, "input");
        return AudioRepositoryDelegate.INSTANCE.updateSystemMediaItemName((ngb.e) ngbVar);
    }

    public static final int h(ngb ngbVar) {
        y45.j(ngbVar, "input");
        AudioRepositoryDelegate audioRepositoryDelegate = AudioRepositoryDelegate.INSTANCE;
        ubc.a(ngbVar);
        return audioRepositoryDelegate.updatePlayRecord(null);
    }

    public static final int i(ngb ngbVar) {
        y45.j(ngbVar, "input");
        return AudioRepositoryDelegate.INSTANCE.upsertMediaDataMissingSingle((ngb.b) ngbVar);
    }

    @Override
    public int a(ahb ahbVar) {
        y45.j(ahbVar, Progress.REQUEST);
        e74 e74Var = (e74) this.a.get(ahbVar.a().getClass());
        if (e74Var != null) {
            return ((Number) e74Var.invoke(ahbVar.a())).intValue();
        }
        Log.w("AudioUpdateEngine", "Unhandled action type: " + ahbVar.a().getClass().getName());
        return -1;
    }
}
