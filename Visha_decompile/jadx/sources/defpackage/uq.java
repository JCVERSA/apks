package defpackage;

import android.util.Log;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.source.data.repository.delegate.AudioRepositoryDelegate;
import java.util.List;
import java.util.Map;
import kotlin.collections.a;

public final class uq implements ev4 {
    public final Map a = a.p(abb.a(b15.e.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(uq.k((b15) obj));
        }
    }), abb.a(b15.f.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(uq.l((b15) obj));
        }
    }), abb.a(b15.j.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(uq.m((b15) obj));
        }
    }), abb.a(b15.d.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(uq.n((b15) obj));
        }
    }), abb.a(b15.a.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(uq.o((b15) obj));
        }
    }), abb.a(b15.b.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Integer.valueOf(uq.p((b15) obj));
        }
    }));
    public final Map b = ky5.h(abb.a(b15.g.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return uq.j((b15) obj);
        }
    }));

    public static final List j(b15 b15Var) {
        y45.j(b15Var, "input");
        return AudioRepositoryDelegate.INSTANCE.addPlayListElements((b15.g) b15Var);
    }

    public static final int k(b15 b15Var) {
        y45.j(b15Var, "input");
        return AudioRepositoryDelegate.INSTANCE.createPlayList((b15.e) b15Var);
    }

    public static final int l(b15 b15Var) {
        y45.j(b15Var, "input");
        return AudioRepositoryDelegate.INSTANCE.addPlayListElement((b15.f) b15Var);
    }

    public static final int m(b15 b15Var) {
        y45.j(b15Var, "input");
        return AudioRepositoryDelegate.INSTANCE.addAudioMV((b15.j) b15Var);
    }

    public static final int n(b15 b15Var) {
        y45.j(b15Var, "input");
        return AudioRepositoryDelegate.INSTANCE.smartUpdatePlayCount((b15.d) b15Var);
    }

    public static final int o(b15 b15Var) {
        y45.j(b15Var, "input");
        return AudioRepositoryDelegate.INSTANCE.addAudioConvertedElement((b15.a) b15Var);
    }

    public static final int p(b15 b15Var) {
        y45.j(b15Var, "input");
        return AudioRepositoryDelegate.INSTANCE.insertLyricOffset((b15.b) b15Var);
    }

    @Override
    public int a(e15 e15Var) {
        y45.j(e15Var, Progress.REQUEST);
        e74 e74Var = (e74) this.a.get(e15Var.a().getClass());
        if (e74Var != null) {
            return ((Number) e74Var.invoke(e15Var.a())).intValue();
        }
        Log.w("AudioInsertEngine", "Unhandled action type: " + e15Var.a().getClass().getName());
        return -1;
    }

    @Override
    public List b(e15 e15Var) {
        List list;
        y45.j(e15Var, Progress.REQUEST);
        e74 e74Var = (e74) this.b.get(e15Var.a().getClass());
        if (e74Var != null && (list = (List) e74Var.invoke(e15Var.a())) != null) {
            return list;
        }
        Log.w("AudioInsertEngine", "Unhandled BatchAction type: " + e15Var.a().getClass().getName());
        return y71.k();
    }
}
