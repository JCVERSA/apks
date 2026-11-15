package defpackage;

import android.util.Log;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.database.PlayListMediaItem;
import com.transsion.dbdata.source.DataSourceScope;
import com.transsion.dbdata.source.data.repository.delegate.AudioRepositoryDelegate;
import com.transsion.dbdata.source.data.repository.delegate.VideoRepositoryDelegate;
import kotlin.Pair;

public final class c48 implements wv4 {

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[DataSourceScope.values().length];
            try {
                iArr[DataSourceScope.VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DataSourceScope.AUDIO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    @Override
    public Pair b(DataSourceScope dataSourceScope, xl8 xl8Var) {
        y45.j(dataSourceScope, "scope");
        y45.j(xl8Var, Progress.REQUEST);
        Log.w("PlayListElementQueryEngine", "queryBatch unhandled action type: " + xl8Var.a().getClass().getName());
        return null;
    }

    @Override
    public PlayListMediaItem a(DataSourceScope dataSourceScope, xl8 xl8Var) {
        y45.j(dataSourceScope, "scope");
        y45.j(xl8Var, Progress.REQUEST);
        xk8 xk8VarA = xl8Var.a();
        if (!(xk8VarA instanceof xk8.t)) {
            return null;
        }
        int i = a.a[dataSourceScope.ordinal()];
        if (i == 1) {
            return VideoRepositoryDelegate.INSTANCE.queryPlayMediaListItem((xk8.t) xk8VarA);
        }
        if (i == 2) {
            return AudioRepositoryDelegate.INSTANCE.queryPlayMediaListItem((xk8.t) xk8VarA);
        }
        Log.w("PlayListElementQueryEngine", "querySingle unhandled action type: " + xl8Var.a().getClass().getName());
        return null;
    }
}
