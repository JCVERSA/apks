package defpackage;

import android.util.Log;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.source.DataSourceScope;
import com.transsion.dbdata.source.data.repository.delegate.MediaBucketDelegate;
import kotlin.Pair;

public final class wb6 implements wv4 {

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
        xk8 xk8VarA = xl8Var.a();
        if (!(xk8VarA instanceof xk8.h)) {
            return null;
        }
        int i = a.a[dataSourceScope.ordinal()];
        if (i == 1) {
            return MediaBucketDelegate.INSTANCE.queryVideoBucketList((xk8.h) xk8VarA);
        }
        if (i == 2) {
            return MediaBucketDelegate.INSTANCE.queryAudioBucketList((xk8.h) xk8VarA);
        }
        Log.w("PlayListElementQueryEngine", "queryBatch unhandled action type: " + xl8Var.a().getClass().getName());
        return null;
    }

    @Override
    public MediaBucket a(DataSourceScope dataSourceScope, xl8 xl8Var) {
        return (MediaBucket) wv4.a.a(this, dataSourceScope, xl8Var);
    }
}
