package defpackage;

import android.app.Activity;
import android.content.Context;
import androidx.media3.exoplayer.upstream.CmcdData;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class s45 {
    public static final a a = new a(null);
    public static gv4 b = new b();

    public static final class a {

        public static final class C0449a {
            public static final C0449a a = new C0449a();
            public static final s45 b = new s45(null);

            public final s45 a() {
                return b;
            }
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final s45 a() {
            return C0449a.a.a();
        }

        public final void b(gv4 gv4Var) {
            y45.j(gv4Var, CmcdData.OBJECT_TYPE_INIT_SEGMENT);
            s45.b = gv4Var;
        }

        public a() {
        }
    }

    public static final class b implements gv4 {
        @Override
        public void a(Activity activity) {
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
        public void d(Context context, boolean z) {
            y45.j(context, "context");
        }
    }

    public s45(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean a() {
        return b.b();
    }

    public final boolean b() {
        return b.c();
    }

    public final void c(Activity activity) {
        b.a(activity);
    }

    public final void d(Context context, boolean z) {
        y45.j(context, "context");
        b.d(context, z);
    }

    public s45() {
    }
}
