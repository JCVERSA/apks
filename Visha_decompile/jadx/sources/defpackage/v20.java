package defpackage;

import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;

public final class v20 implements ze1 {
    public static final ze1 a = new v20();

    public static final class a implements yb7 {
        public static final a a = new a();
        public static final vp3 b = vp3.a("window").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();
        public static final vp3 c = vp3.a("logSourceMetrics").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();
        public static final vp3 d = vp3.a("globalMetrics").b(com.google.firebase.encoders.proto.a.b().c(3).a()).a();
        public static final vp3 e = vp3.a("appNamespace").b(com.google.firebase.encoders.proto.a.b().c(4).a()).a();

        @Override
        public void a(zx0 zx0Var, zb7 zb7Var) {
            zb7Var.e(b, zx0Var.d());
            zb7Var.e(c, zx0Var.c());
            zb7Var.e(d, zx0Var.b());
            zb7Var.e(e, zx0Var.a());
        }
    }

    public static final class b implements yb7 {
        public static final b a = new b();
        public static final vp3 b = vp3.a("storageMetrics").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        @Override
        public void a(oi4 oi4Var, zb7 zb7Var) {
            zb7Var.e(b, oi4Var.a());
        }
    }

    public static final class c implements yb7 {
        public static final c a = new c();
        public static final vp3 b = vp3.a("eventsDroppedCount").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();
        public static final vp3 c = vp3.a("reason").b(com.google.firebase.encoders.proto.a.b().c(3).a()).a();

        @Override
        public void a(LogEventDropped logEventDropped, zb7 zb7Var) {
            zb7Var.d(b, logEventDropped.a());
            zb7Var.e(c, logEventDropped.b());
        }
    }

    public static final class d implements yb7 {
        public static final d a = new d();
        public static final vp3 b = vp3.a("logSource").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();
        public static final vp3 c = vp3.a("logEventDropped").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

        @Override
        public void a(zp5 zp5Var, zb7 zb7Var) {
            zb7Var.e(b, zp5Var.b());
            zb7Var.e(c, zp5Var.a());
        }
    }

    public static final class e implements yb7 {
        public static final e a = new e();
        public static final vp3 b = vp3.d("clientMetrics");

        @Override
        public void a(Object obj, Object obj2) {
            ubc.a(obj);
            b(null, (zb7) obj2);
        }

        public void b(ej8 ej8Var, zb7 zb7Var) {
            throw null;
        }
    }

    public static final class f implements yb7 {
        public static final f a = new f();
        public static final vp3 b = vp3.a("currentCacheSizeBytes").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();
        public static final vp3 c = vp3.a("maxCacheSizeBytes").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

        @Override
        public void a(wx9 wx9Var, zb7 zb7Var) {
            zb7Var.d(b, wx9Var.a());
            zb7Var.d(c, wx9Var.b());
        }
    }

    public static final class g implements yb7 {
        public static final g a = new g();
        public static final vp3 b = vp3.a("startMs").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();
        public static final vp3 c = vp3.a("endMs").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

        @Override
        public void a(xna xnaVar, zb7 zb7Var) {
            zb7Var.d(b, xnaVar.b());
            zb7Var.d(c, xnaVar.a());
        }
    }

    @Override
    public void a(fa3 fa3Var) {
        fa3Var.a(ej8.class, e.a);
        fa3Var.a(zx0.class, a.a);
        fa3Var.a(xna.class, g.a);
        fa3Var.a(zp5.class, d.a);
        fa3Var.a(LogEventDropped.class, c.a);
        fa3Var.a(oi4.class, b.a);
        fa3Var.a(wx9.class, f.a);
    }
}
