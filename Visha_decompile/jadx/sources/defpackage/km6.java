package defpackage;

import androidx.media3.exoplayer.upstream.CmcdData;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class km6 {
    public static final a a = new a(null);
    public static kv4 b = new b();

    public static final class a {

        public static final class C0368a {
            public static final C0368a a = new C0368a();
            public static final km6 b = new km6(null);

            public final km6 a() {
                return b;
            }
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final km6 a() {
            return C0368a.a.a();
        }

        public final void b(kv4 kv4Var) {
            y45.j(kv4Var, CmcdData.OBJECT_TYPE_INIT_SEGMENT);
            km6.b = kv4Var;
        }

        public a() {
        }
    }

    public static final class b implements kv4 {
        @Override
        public void a() {
        }

        @Override
        public void b() {
        }

        @Override
        public void c() {
        }
    }

    public km6(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final void a() {
        b.b();
    }

    public final void b() {
        b.c();
    }

    public final void c() {
        b.a();
    }

    public km6() {
    }
}
