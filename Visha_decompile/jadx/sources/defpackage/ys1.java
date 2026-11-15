package defpackage;

import android.content.Context;
import android.util.Log;
import com.transsion.dbdata.database.MediaRoomDatabase;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class ys1 extends vec {
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
        arrayList.add(lw5.class);
        arrayList.add(aq5.class);
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
    public Void create(Context context) {
        try {
            MediaRoomDatabase.INSTANCE.d();
            if (context == null) {
                return null;
            }
            v00.b(context);
            return null;
        } catch (Throwable th) {
            Log.e("DatabaseInitTask", "DatabaseInitTask create failed: " + th.getMessage(), th);
            return null;
        }
    }
}
