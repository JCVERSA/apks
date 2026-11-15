package defpackage;

import androidx.media3.exoplayer.upstream.CmcdData;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class dv9 {
    public static final a a = new a(null);
    public static iw4 b = new b();

    public static final class a {

        public static final class C0339a {
            public static final C0339a a = new C0339a();
            public static final dv9 b = new dv9(null);

            public final dv9 a() {
                return b;
            }
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final dv9 a() {
            return C0339a.a.a();
        }

        public final void b(iw4 iw4Var) {
            y45.j(iw4Var, CmcdData.OBJECT_TYPE_INIT_SEGMENT);
            dv9.b = iw4Var;
        }

        public a() {
        }
    }

    public static final class b implements iw4 {
        @Override
        public boolean a() {
            return false;
        }

        @Override
        public boolean b() {
            return false;
        }
    }

    public dv9(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean a() {
        return b.b();
    }

    public final boolean b() {
        return b.a();
    }

    public dv9() {
    }
}
