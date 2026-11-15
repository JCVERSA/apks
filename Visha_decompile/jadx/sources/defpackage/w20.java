package defpackage;

import androidx.core.app.NotificationCompat;
import com.google.firebase.messaging.reporting.MessagingClientEvent;

public final class w20 implements ze1 {
    public static final ze1 a = new w20();

    public static final class a implements yb7 {
        public static final a a = new a();
        public static final vp3 b = vp3.a("projectNumber").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();
        public static final vp3 c = vp3.a("messageId").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();
        public static final vp3 d = vp3.a("instanceId").b(com.google.firebase.encoders.proto.a.b().c(3).a()).a();
        public static final vp3 e = vp3.a("messageType").b(com.google.firebase.encoders.proto.a.b().c(4).a()).a();
        public static final vp3 f = vp3.a("sdkPlatform").b(com.google.firebase.encoders.proto.a.b().c(5).a()).a();
        public static final vp3 g = vp3.a("packageName").b(com.google.firebase.encoders.proto.a.b().c(6).a()).a();
        public static final vp3 h = vp3.a("collapseKey").b(com.google.firebase.encoders.proto.a.b().c(7).a()).a();
        public static final vp3 i = vp3.a("priority").b(com.google.firebase.encoders.proto.a.b().c(8).a()).a();
        public static final vp3 j = vp3.a("ttl").b(com.google.firebase.encoders.proto.a.b().c(9).a()).a();
        public static final vp3 k = vp3.a("topic").b(com.google.firebase.encoders.proto.a.b().c(10).a()).a();
        public static final vp3 l = vp3.a("bulkId").b(com.google.firebase.encoders.proto.a.b().c(11).a()).a();
        public static final vp3 m = vp3.a(NotificationCompat.CATEGORY_EVENT).b(com.google.firebase.encoders.proto.a.b().c(12).a()).a();
        public static final vp3 n = vp3.a("analyticsLabel").b(com.google.firebase.encoders.proto.a.b().c(13).a()).a();
        public static final vp3 o = vp3.a("campaignId").b(com.google.firebase.encoders.proto.a.b().c(14).a()).a();
        public static final vp3 p = vp3.a("composerLabel").b(com.google.firebase.encoders.proto.a.b().c(15).a()).a();

        @Override
        public void a(MessagingClientEvent messagingClientEvent, zb7 zb7Var) {
            zb7Var.d(b, messagingClientEvent.l());
            zb7Var.e(c, messagingClientEvent.h());
            zb7Var.e(d, messagingClientEvent.g());
            zb7Var.e(e, messagingClientEvent.i());
            zb7Var.e(f, messagingClientEvent.m());
            zb7Var.e(g, messagingClientEvent.j());
            zb7Var.e(h, messagingClientEvent.d());
            zb7Var.c(i, messagingClientEvent.k());
            zb7Var.c(j, messagingClientEvent.o());
            zb7Var.e(k, messagingClientEvent.n());
            zb7Var.d(l, messagingClientEvent.b());
            zb7Var.e(m, messagingClientEvent.f());
            zb7Var.e(n, messagingClientEvent.a());
            zb7Var.d(o, messagingClientEvent.c());
            zb7Var.e(p, messagingClientEvent.e());
        }
    }

    public static final class b implements yb7 {
        public static final b a = new b();
        public static final vp3 b = vp3.a("messagingClientEvent").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        @Override
        public void a(xn6 xn6Var, zb7 zb7Var) {
            zb7Var.e(b, xn6Var.a());
        }
    }

    public static final class c implements yb7 {
        public static final c a = new c();
        public static final vp3 b = vp3.d("messagingClientEventExtension");

        @Override
        public void a(Object obj, Object obj2) {
            ubc.a(obj);
            b(null, (zb7) obj2);
        }

        public void b(dj8 dj8Var, zb7 zb7Var) {
            throw null;
        }
    }

    @Override
    public void a(fa3 fa3Var) {
        fa3Var.a(dj8.class, c.a);
        fa3Var.a(xn6.class, b.a);
        fa3Var.a(MessagingClientEvent.class, a.a);
    }
}
