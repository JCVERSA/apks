package defpackage;

import android.util.Log;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.database.PlayListFolderItem;
import com.transsion.dbdata.source.DataSourceScope;
import com.transsion.dbdata.source.data.repository.delegate.AudioRepositoryDelegate;
import com.transsion.dbdata.source.data.repository.delegate.VideoRepositoryDelegate;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.a;

public final class o78 implements wv4 {
    public final Map a = ky5.h(abb.a(xk8.d.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return o78.f((xk8) obj);
        }
    }));
    public final Map b = a.p(abb.a(xk8.k.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return o78.g((xk8) obj);
        }
    }), abb.a(xk8.s.class, new e74() {
        @Override
        public final Object invoke(Object obj) {
            return o78.h((xk8) obj);
        }
    }));

    public static final Pair f(xk8 xk8Var) {
        y45.j(xk8Var, "input");
        xk8.d dVar = (xk8.d) xk8Var;
        return dVar.c() ? AudioRepositoryDelegate.INSTANCE.queryAllPlayList() : VideoRepositoryDelegate.INSTANCE.queryAllPlayList(dVar.b(), dVar.a());
    }

    public static final PlayListFolderItem g(xk8 xk8Var) {
        y45.j(xk8Var, "input");
        return ((xk8.k) xk8Var).a() ? AudioRepositoryDelegate.INSTANCE.queryFavoritePlayListItem() : VideoRepositoryDelegate.INSTANCE.queryFavoritePlayListItem();
    }

    public static final PlayListFolderItem h(xk8 xk8Var) {
        y45.j(xk8Var, "input");
        AudioRepositoryDelegate audioRepositoryDelegate = AudioRepositoryDelegate.INSTANCE;
        ubc.a(xk8Var);
        return audioRepositoryDelegate.queryPlayListItem(null);
    }

    @Override
    public Pair b(DataSourceScope dataSourceScope, xl8 xl8Var) {
        Pair pair;
        y45.j(dataSourceScope, "scope");
        y45.j(xl8Var, Progress.REQUEST);
        e74 e74Var = (e74) this.a.get(xl8Var.a().getClass());
        if (e74Var != null && (pair = (Pair) e74Var.invoke(xl8Var.a())) != null) {
            return pair;
        }
        Log.w("PlayListQueryEngine", "queryBatch unhandled action type: " + xl8Var.a().getClass().getName());
        return null;
    }

    @Override
    public PlayListFolderItem a(DataSourceScope dataSourceScope, xl8 xl8Var) {
        PlayListFolderItem playListFolderItem;
        y45.j(dataSourceScope, "scope");
        y45.j(xl8Var, Progress.REQUEST);
        e74 e74Var = (e74) this.b.get(xl8Var.a().getClass());
        if (e74Var != null && (playListFolderItem = (PlayListFolderItem) e74Var.invoke(xl8Var.a())) != null) {
            return playListFolderItem;
        }
        Log.w("PlayListQueryEngine", "querySingle unhandled action type: " + xl8Var.a().getClass().getName());
        return null;
    }
}
