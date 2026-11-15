package defpackage;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class rf {
    public static final a h = new a(null);
    public static volatile rf i;
    public final String a;
    public List b;
    public List c;
    public List d;
    public List e;
    public final Object f;
    public final Object g;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final rf a() {
            rf rfVar = rf.i;
            if (rfVar == null) {
                synchronized (this) {
                    rfVar = rf.i;
                    if (rfVar == null) {
                        rfVar = new rf(null);
                        rf.i = rfVar;
                    }
                }
            }
            return rfVar;
        }

        public a() {
        }
    }

    public rf(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final List c() {
        return this.e;
    }

    public final synchronized List d(Context context) {
        y45.j(context, "context");
        try {
            List listW = ao.d.a().w();
            y45.h(listW, "null cannot be cast to non-null type kotlin.collections.MutableList<com.transsion.dbdata.database.AudioAlbum>");
            this.e = ccb.c(listW);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ArrayList();
    }

    public rf() {
        this.a = "ApplicationDataPreLoadManager";
        this.b = new ArrayList();
        this.c = new ArrayList();
        this.d = new ArrayList();
        this.f = new Object();
        this.g = new Object();
    }
}
