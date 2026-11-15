package defpackage;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class um6 extends vec {
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
    }

    @Override
    public boolean b() {
        return true;
    }

    @Override
    public boolean c() {
        return true;
    }

    @Override
    public List dependencies() {
        return c;
    }

    @Override
    public Void create(Context context) {
        km6.a.a().a();
        return null;
    }
}
