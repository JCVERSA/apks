package com.google.firebase.crashlytics.ndk;

import android.content.Context;

class c implements qb.a {

    private static c f30959e;

    private final com.google.firebase.crashlytics.ndk.a f30960a;

    private boolean f30961b;

    private String f30962c;

    private a f30963d;

    interface a {
        void a();
    }

    c(com.google.firebase.crashlytics.ndk.a aVar, boolean z10) {
        this.f30960a = aVar;
        this.f30961b = z10;
    }

    static c f(Context context, boolean z10) {
        c cVar = new c(new com.google.firebase.crashlytics.ndk.a(context, new JniNativeApi(context), new xb.g(context)), z10);
        f30959e = cVar;
        return cVar;
    }

    public void g(String str, String str2, long j10, ub.e eVar) {
        qb.g.f().b("Initializing native session: " + str);
        if (this.f30960a.k(str, str2, j10, eVar)) {
            return;
        }
        qb.g.f().k("Failed to initialize Crashlytics NDK for session " + str);
    }

    @Override
    public qb.h a(String str) {
        return new g(this.f30960a.d(str));
    }

    @Override
    public boolean b() {
        String str = this.f30962c;
        return str != null && d(str);
    }

    @Override
    public synchronized void c(final String str, final String str2, final long j10, final ub.e eVar) {
        this.f30962c = str;
        a aVar = new a() {
            @Override
            public final void a() {
                this.f30954a.g(str, str2, j10, eVar);
            }
        };
        this.f30963d = aVar;
        if (this.f30961b) {
            aVar.a();
        }
    }

    @Override
    public boolean d(String str) {
        return this.f30960a.j(str);
    }
}
