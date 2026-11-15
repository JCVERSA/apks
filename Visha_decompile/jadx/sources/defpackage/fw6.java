package defpackage;

import android.content.Context;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.database.MusicVideoDatabase;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class fw6 extends vec {
    public static final a b = new a(null);
    public static final List c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        c = arrayList;
        arrayList.add(zz4.class);
        arrayList.add(v06.class);
        arrayList.add(aq5.class);
    }

    public static final zfb j(Context context) {
        List listA = du4.a.a(ao.d.a(), null, 1, null);
        int i = 0;
        if (!(listA instanceof Collection) || !listA.isEmpty()) {
            Iterator it = listA.iterator();
            while (it.hasNext()) {
                if (((AudioItem) it.next()).isMusicVideo && (i = i + 1) < 0) {
                    y71.t();
                }
            }
        }
        s06.b(i);
        rf.h.a().d(context);
        return zfb.a;
    }

    @Override
    public boolean b() {
        return false;
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public List dependencies() {
        return c;
    }

    @Override
    public Void create(final Context context) {
        if (context != null) {
            MusicVideoDatabase.c = context;
            bx9.H(0L, 1, null);
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            bx9.a.A(new c74() {
                @Override
                public final Object invoke() {
                    return fw6.j(context);
                }
            });
        }
        return null;
    }
}
