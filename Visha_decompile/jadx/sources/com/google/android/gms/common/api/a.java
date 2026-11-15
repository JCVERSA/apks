package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.IAccountAccessor;
import defpackage.ay0;
import defpackage.bf1;
import defpackage.bzd;
import defpackage.qe7;
import defpackage.wd8;
import java.util.Set;

public final class a {
    public final AbstractC0089a a;
    public final g b;
    public final String c;

    public static abstract class AbstractC0089a extends e {
        public f a(Context context, Looper looper, ay0 ay0Var, Object obj, bf1 bf1Var, qe7 qe7Var) {
            throw new UnsupportedOperationException("buildClient must be implemented");
        }

        public f b(Context context, Looper looper, ay0 ay0Var, Object obj, com.google.android.gms.common.api.c.a aVar, com.google.android.gms.common.api.c.b bVar) {
            return a(context, looper, ay0Var, obj, aVar, bVar);
        }
    }

    public interface b {
    }

    public static class c {
    }

    public interface d {
        public static final C0090a w6 = new C0090a(null);

        public static final class C0090a implements d {
            public C0090a(bzd bzdVar) {
            }
        }
    }

    public static abstract class e {
    }

    public interface f extends b {
        Set a();

        void connect(com.google.android.gms.common.internal.a.c cVar);

        void disconnect();

        void disconnect(String str);

        Feature[] getAvailableFeatures();

        String getEndpointPackageName();

        String getLastDisconnectMessage();

        int getMinApkVersion();

        void getRemoteService(IAccountAccessor iAccountAccessor, Set set);

        boolean isConnected();

        boolean isConnecting();

        void onUserSignOut(com.google.android.gms.common.internal.a.e eVar);

        boolean requiresGooglePlayServices();

        boolean requiresSignIn();
    }

    public static final class g extends c {
    }

    public a(String str, AbstractC0089a abstractC0089a, g gVar) {
        wd8.m(abstractC0089a, "Cannot construct an Api with a null ClientBuilder");
        wd8.m(gVar, "Cannot construct an Api with a null ClientKey");
        this.c = str;
        this.a = abstractC0089a;
        this.b = gVar;
    }

    public final AbstractC0089a a() {
        return this.a;
    }

    public final c b() {
        return this.b;
    }

    public final String c() {
        return this.c;
    }
}
