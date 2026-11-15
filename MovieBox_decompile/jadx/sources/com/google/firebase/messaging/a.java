package com.google.firebase.messaging;

import androidx.core.app.NotificationCompat;
import com.google.firebase.messaging.reporting.MessagingClientEvent;
import com.hisavana.common.tracking.TrackingKey;

public final class a implements ec.a {

    public static final ec.a f31191a = new a();

    private static final class C0420a implements dc.c {

        static final C0420a f31192a = new C0420a();

        private static final dc.b f31193b = dc.b.a("projectNumber").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        private static final dc.b f31194c = dc.b.a("messageId").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

        private static final dc.b f31195d = dc.b.a("instanceId").b(com.google.firebase.encoders.proto.a.b().c(3).a()).a();

        private static final dc.b f31196e = dc.b.a("messageType").b(com.google.firebase.encoders.proto.a.b().c(4).a()).a();

        private static final dc.b f31197f = dc.b.a("sdkPlatform").b(com.google.firebase.encoders.proto.a.b().c(5).a()).a();

        private static final dc.b f31198g = dc.b.a("packageName").b(com.google.firebase.encoders.proto.a.b().c(6).a()).a();

        private static final dc.b f31199h = dc.b.a("collapseKey").b(com.google.firebase.encoders.proto.a.b().c(7).a()).a();

        private static final dc.b f31200i = dc.b.a(TrackingKey.PRIORITY).b(com.google.firebase.encoders.proto.a.b().c(8).a()).a();

        private static final dc.b f31201j = dc.b.a("ttl").b(com.google.firebase.encoders.proto.a.b().c(9).a()).a();

        private static final dc.b f31202k = dc.b.a("topic").b(com.google.firebase.encoders.proto.a.b().c(10).a()).a();

        private static final dc.b f31203l = dc.b.a("bulkId").b(com.google.firebase.encoders.proto.a.b().c(11).a()).a();

        private static final dc.b f31204m = dc.b.a(NotificationCompat.CATEGORY_EVENT).b(com.google.firebase.encoders.proto.a.b().c(12).a()).a();

        private static final dc.b f31205n = dc.b.a("analyticsLabel").b(com.google.firebase.encoders.proto.a.b().c(13).a()).a();

        private static final dc.b f31206o = dc.b.a("campaignId").b(com.google.firebase.encoders.proto.a.b().c(14).a()).a();

        private static final dc.b f31207p = dc.b.a("composerLabel").b(com.google.firebase.encoders.proto.a.b().c(15).a()).a();

        private C0420a() {
        }

        @Override
        public void a(MessagingClientEvent messagingClientEvent, dc.d dVar) {
            dVar.d(f31193b, messagingClientEvent.l());
            dVar.a(f31194c, messagingClientEvent.h());
            dVar.a(f31195d, messagingClientEvent.g());
            dVar.a(f31196e, messagingClientEvent.i());
            dVar.a(f31197f, messagingClientEvent.m());
            dVar.a(f31198g, messagingClientEvent.j());
            dVar.a(f31199h, messagingClientEvent.d());
            dVar.e(f31200i, messagingClientEvent.k());
            dVar.e(f31201j, messagingClientEvent.o());
            dVar.a(f31202k, messagingClientEvent.n());
            dVar.d(f31203l, messagingClientEvent.b());
            dVar.a(f31204m, messagingClientEvent.f());
            dVar.a(f31205n, messagingClientEvent.a());
            dVar.d(f31206o, messagingClientEvent.c());
            dVar.a(f31207p, messagingClientEvent.e());
        }
    }

    private static final class b implements dc.c {

        static final b f31208a = new b();

        private static final dc.b f31209b = dc.b.a("messagingClientEvent").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        private b() {
        }

        @Override
        public void a(pc.a aVar, dc.d dVar) {
            dVar.a(f31209b, aVar.a());
        }
    }

    private static final class c implements dc.c {

        static final c f31210a = new c();

        private static final dc.b f31211b = dc.b.d("messagingClientEventExtension");

        private c() {
        }

        @Override
        public void a(Object obj, Object obj2) {
            android.support.v4.media.session.c.a(obj);
            b(null, (dc.d) obj2);
        }

        public void b(l0 l0Var, dc.d dVar) {
            throw null;
        }
    }

    private a() {
    }

    @Override
    public void a(ec.b bVar) {
        bVar.a(l0.class, c.f31210a);
        bVar.a(pc.a.class, b.f31208a);
        bVar.a(MessagingClientEvent.class, C0420a.f31192a);
    }
}
