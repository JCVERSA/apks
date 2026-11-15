package defpackage;

import io.appmetrica.analytics.BuildConfig;
import java.util.Map;

public final class sfc {
    public static final sfc a = new sfc();
    public static final Map b;
    public static final h c;

    public static final class a extends tfc {
        public static final a c = new a();

        public a() {
            super("inherited", false);
        }
    }

    public static final class b extends tfc {
        public static final b c = new b();

        public b() {
            super("internal", false);
        }
    }

    public static final class c extends tfc {
        public static final c c = new c();

        public c() {
            super("invisible_fake", false);
        }
    }

    public static final class d extends tfc {
        public static final d c = new d();

        public d() {
            super("local", false);
        }
    }

    public static final class e extends tfc {
        public static final e c = new e();

        public e() {
            super("private", false);
        }
    }

    public static final class f extends tfc {
        public static final f c = new f();

        public f() {
            super("private_to_this", false);
        }

        @Override
        public String b() {
            return "private/*private to this*/";
        }
    }

    public static final class g extends tfc {
        public static final g c = new g();

        public g() {
            super("protected", true);
        }
    }

    public static final class h extends tfc {
        public static final h c = new h();

        public h() {
            super(BuildConfig.SDK_BUILD_FLAVOR, true);
        }
    }

    public static final class i extends tfc {
        public static final i c = new i();

        public i() {
            super("unknown", false);
        }
    }

    static {
        Map mapE = ky5.e();
        mapE.put(f.c, 0);
        mapE.put(e.c, 0);
        mapE.put(b.c, 1);
        mapE.put(g.c, 1);
        h hVar = h.c;
        mapE.put(hVar, 2);
        b = ky5.d(mapE);
        c = hVar;
    }

    public final Integer a(tfc tfcVar, tfc tfcVar2) {
        y45.j(tfcVar, "first");
        y45.j(tfcVar2, "second");
        if (tfcVar == tfcVar2) {
            return 0;
        }
        Map map = b;
        Integer num = (Integer) map.get(tfcVar);
        Integer num2 = (Integer) map.get(tfcVar2);
        if (num == null || num2 == null || y45.e(num, num2)) {
            return null;
        }
        return Integer.valueOf(num.intValue() - num2.intValue());
    }

    public final boolean b(tfc tfcVar) {
        y45.j(tfcVar, "visibility");
        return tfcVar == e.c || tfcVar == f.c;
    }
}
