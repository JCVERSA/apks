package defpackage;

import androidx.p004lifecycle.LiveData;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.source.DataSourceScope;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Pair;
import kotlin.b;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class ac0 implements ku4 {
    public static final a c = new a(null);
    public final ConcurrentHashMap a = new ConcurrentHashMap();
    public final yi5 b = b.a(new c74() {
        @Override
        public final Object invoke() {
            return ac0.i();
        }
    });

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public static final dn5 i() {
        return new dn5();
    }

    @Override
    public Object a(DataSourceScope dataSourceScope, xl8 xl8Var) {
        y45.j(dataSourceScope, "scope");
        y45.j(xl8Var, Progress.REQUEST);
        wv4 wv4VarG = g(xl8Var.b());
        if (wv4VarG != null) {
            return wv4VarG.a(dataSourceScope, xl8Var);
        }
        return null;
    }

    @Override
    public Pair b(DataSourceScope dataSourceScope, xl8 xl8Var) {
        y45.j(dataSourceScope, "scope");
        y45.j(xl8Var, Progress.REQUEST);
        wv4 wv4VarG = g(xl8Var.b());
        if (wv4VarG != null) {
            return wv4VarG.b(dataSourceScope, xl8Var);
        }
        return null;
    }

    @Override
    public LiveData c(DataSourceScope dataSourceScope, sl8 sl8Var) {
        y45.j(dataSourceScope, "scope");
        y45.j(sl8Var, Progress.REQUEST);
        Class clsB = sl8Var.b();
        if (d().contains(clsB)) {
            return h().c(sl8Var);
        }
        vmb.i("CombineMediaQueryProvider", "clazz(" + clsB.getSimpleName() + ") is not supported by query batch livedata provider");
        return ku4.a.a(this, dataSourceScope, sl8Var);
    }

    public wv4 g(Class cls) {
        y45.j(cls, "clazz");
        if (!e().contains(cls)) {
            vmb.i("CombineMediaQueryProvider", "clazz(" + cls.getSimpleName() + ") is not supported query engine by this provider");
            return null;
        }
        wv4 wv4Var = (wv4) this.a.get(cls);
        if (wv4Var == null) {
            vmb.i("CombineMediaQueryProvider", "QueryEngine not found for clazz: " + cls.getSimpleName());
            return null;
        }
        vmb.a("CombineMediaQueryProvider", "found QueryEngine for clazz: " + cls.getSimpleName());
        return wv4Var;
    }

    public final dn5 h() {
        return (dn5) this.b.getValue();
    }

    public void j(Class cls, wv4 wv4Var) {
        y45.j(cls, "clazz");
        y45.j(wv4Var, "engine");
        if (!e().contains(cls)) {
            vmb.i("CombineMediaQueryProvider", "clazz(" + cls.getSimpleName() + ") is not supported by query provider");
            return;
        }
        if (((wv4) this.a.get(cls)) != null) {
            vmb.i("CombineMediaQueryProvider", "replacing existing query engine for clazz: " + cls.getSimpleName());
        }
        this.a.put(cls, wv4Var);
        vmb.e("CombineMediaQueryProvider", "query engine registered successfully for clazz: " + cls.getSimpleName());
    }
}
