package defpackage;

import android.content.Context;
import androidx.p004lifecycle.LiveData;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.source.DataSourceScope;
import com.transsion.dbdata.source.data.cache.MediaCombineCacheManager;
import com.transsion.dbdata.source.data.repository.SystemAudioQueryRepository;
import java.util.List;
import kotlin.LazyThreadSafetyMode;
import kotlin.Pair;
import kotlin.b;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class we6 {
    public static final a a = new a(null);
    public static final yi5 b = b.b(LazyThreadSafetyMode.SYNCHRONIZED, new c74() {
        @Override
        public final Object invoke() {
            return we6.o();
        }
    });

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final we6 a() {
            return b();
        }

        public final we6 b() {
            return (we6) we6.b.getValue();
        }

        public final void c() {
            SystemAudioQueryRepository.INSTANCE.invalidateCachedSingleQueries();
        }

        public a() {
        }
    }

    public static final we6 e() {
        return a.a();
    }

    public static final void i() {
        a.c();
    }

    public static final we6 o() {
        return new we6();
    }

    public List c(DataSourceScope dataSourceScope, g82 g82Var) {
        y45.j(dataSourceScope, "scope");
        y45.j(g82Var, Progress.REQUEST);
        return f82.a.b(dataSourceScope, g82Var);
    }

    public int d(DataSourceScope dataSourceScope, g82 g82Var) {
        y45.j(dataSourceScope, "scope");
        y45.j(g82Var, Progress.REQUEST);
        return f82.a.c(dataSourceScope, g82Var);
    }

    public final void f(Context context) {
        y45.j(context, "context");
        ge6.a.n(context);
        MediaCombineCacheManager.INSTANCE.getInstance().init();
    }

    public List g(DataSourceScope dataSourceScope, e15 e15Var) {
        y45.j(dataSourceScope, "scope");
        y45.j(e15Var, Progress.REQUEST);
        return d15.a.c(dataSourceScope, e15Var);
    }

    public int h(DataSourceScope dataSourceScope, e15 e15Var) {
        y45.j(dataSourceScope, "scope");
        y45.j(e15Var, Progress.REQUEST);
        return d15.a.d(dataSourceScope, e15Var);
    }

    public final boolean j(String str) {
        y45.j(str, "path");
        return MediaCombineCacheManager.INSTANCE.getInstance().isAudioFavorite(str);
    }

    public final boolean k(MediaItem mediaItem, boolean z) {
        y45.j(mediaItem, "item");
        return MediaCombineCacheManager.INSTANCE.getInstance().isRecentAdd(mediaItem, z);
    }

    public final boolean l(MediaItem mediaItem, boolean z) {
        y45.j(mediaItem, "item");
        return MediaCombineCacheManager.INSTANCE.getInstance().isRecentAddOther(mediaItem, z);
    }

    public final boolean m(String str) {
        y45.j(str, "path");
        return MediaCombineCacheManager.INSTANCE.getInstance().isVideoFavorite(str);
    }

    public final void n() {
        ge6.a.t();
    }

    public Pair p(DataSourceScope dataSourceScope, xl8 xl8Var) {
        y45.j(dataSourceScope, "scope");
        y45.j(xl8Var, Progress.REQUEST);
        return wl8.a.e(dataSourceScope, xl8Var);
    }

    public LiveData q(DataSourceScope dataSourceScope, sl8 sl8Var) {
        y45.j(dataSourceScope, "scope");
        y45.j(sl8Var, Progress.REQUEST);
        return wl8.a.f(dataSourceScope, sl8Var);
    }

    public Object r(DataSourceScope dataSourceScope, xl8 xl8Var) {
        y45.j(dataSourceScope, "scope");
        y45.j(xl8Var, Progress.REQUEST);
        return wl8.a.g(dataSourceScope, xl8Var);
    }

    public final void s(int i, boolean z) {
        MediaCombineCacheManager.INSTANCE.getInstance().recordPreviewedId(i, z);
    }

    public final void t(List list, boolean z) {
        MediaCombineCacheManager.INSTANCE.getInstance().recordPreviewedId((List<? extends MediaItem>) list, z);
    }

    public int u(DataSourceScope dataSourceScope, ahb ahbVar) {
        y45.j(dataSourceScope, "scope");
        y45.j(ahbVar, Progress.REQUEST);
        return zgb.a.d(dataSourceScope, ahbVar);
    }
}
