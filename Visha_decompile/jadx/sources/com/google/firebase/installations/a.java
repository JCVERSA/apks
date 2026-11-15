package com.google.firebase.installations;

import android.text.TextUtils;
import com.google.firebase.installations.a;
import com.google.firebase.installations.local.PersistedInstallation;
import com.google.firebase.installations.remote.InstallationResponse;
import com.google.firebase.installations.remote.TokenResult;
import com.google.firebase.installations.remote.c;
import defpackage.jx9;
import defpackage.kw3;
import defpackage.pe4;
import defpackage.pj8;
import defpackage.pn8;
import defpackage.rl1;
import defpackage.sx4;
import defpackage.tf4;
import defpackage.ubc;
import defpackage.vlb;
import defpackage.wd8;
import defpackage.xda;
import defpackage.zda;
import defpackage.zi5;
import defpackage.zv3;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public class a implements kw3 {
    public static final Object m = new Object();
    public static final ThreadFactory n = new ThreadFactoryC0112a();
    public final zv3 a;
    public final c b;
    public final PersistedInstallation c;
    public final vlb d;
    public final zi5 e;
    public final pn8 f;
    public final Object g;
    public final ExecutorService h;
    public final Executor i;
    public String j;
    public Set k;
    public final List l;

    public class ThreadFactoryC0112a implements ThreadFactory {
        public final AtomicInteger b = new AtomicInteger(1);

        @Override
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, String.format("firebase-installations-executor-%d", Integer.valueOf(this.b.getAndIncrement())));
        }
    }

    public static class b {
        public static final int[] a;
        public static final int[] b;

        static {
            int[] iArr = new int[TokenResult.ResponseCode.values().length];
            b = iArr;
            try {
                iArr[TokenResult.ResponseCode.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[TokenResult.ResponseCode.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[TokenResult.ResponseCode.AUTH_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[InstallationResponse.ResponseCode.values().length];
            a = iArr2;
            try {
                iArr2[InstallationResponse.ResponseCode.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[InstallationResponse.ResponseCode.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public a(final zv3 zv3Var, pj8 pj8Var, ExecutorService executorService, Executor executor) {
        this(executorService, executor, zv3Var, new c(zv3Var.j(), pj8Var), new PersistedInstallation(zv3Var), vlb.c(), new zi5(new pj8() {
            @Override
            public final Object get() {
                return a.y(zv3Var);
            }
        }), new pn8());
    }

    public static a p() {
        return q(zv3.k());
    }

    public static a q(zv3 zv3Var) {
        wd8.b(zv3Var != null, "Null is not a valid value of FirebaseApp.");
        return (a) zv3Var.i(kw3.class);
    }

    public static sx4 y(zv3 zv3Var) {
        return new sx4(zv3Var);
    }

    public final String A(com.google.firebase.installations.local.b bVar) {
        if ((!this.a.l().equals("CHIME_ANDROID_SDK") && !this.a.t()) || !bVar.m()) {
            return this.f.a();
        }
        String strF = o().f();
        return TextUtils.isEmpty(strF) ? this.f.a() : strF;
    }

    public final com.google.firebase.installations.local.b B(com.google.firebase.installations.local.b bVar) throws FirebaseInstallationsException {
        InstallationResponse installationResponseD = this.b.d(l(), bVar.d(), t(), m(), (bVar.d() == null || bVar.d().length() != 11) ? null : o().i());
        int i = b.a[installationResponseD.e().ordinal()];
        if (i == 1) {
            return bVar.s(installationResponseD.c(), installationResponseD.d(), this.d.b(), installationResponseD.b().c(), installationResponseD.b().d());
        }
        if (i == 2) {
            return bVar.q("BAD CONFIG");
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
    }

    public final void C(Exception exc) {
        synchronized (this.g) {
            try {
                Iterator it = this.l.iterator();
                while (it.hasNext()) {
                    if (((jx9) it.next()).a(exc)) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void D(com.google.firebase.installations.local.b bVar) {
        synchronized (this.g) {
            try {
                Iterator it = this.l.iterator();
                while (it.hasNext()) {
                    if (((jx9) it.next()).b(bVar)) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void E(String str) {
        this.j = str;
    }

    public final synchronized void F(com.google.firebase.installations.local.b bVar, com.google.firebase.installations.local.b bVar2) {
        if (this.k.size() != 0 && !TextUtils.equals(bVar.d(), bVar2.d())) {
            Iterator it = this.k.iterator();
            if (it.hasNext()) {
                ubc.a(it.next());
                bVar2.d();
                throw null;
            }
        }
    }

    @Override
    public xda a(final boolean z) {
        z();
        xda xdaVarF = f();
        this.h.execute(new Runnable() {
            @Override
            public final void run() {
                this.b.x(z);
            }
        });
        return xdaVarF;
    }

    public final xda f() {
        zda zdaVar = new zda();
        h(new pe4(this.d, zdaVar));
        return zdaVar.a();
    }

    public final xda g() {
        zda zdaVar = new zda();
        h(new tf4(zdaVar));
        return zdaVar.a();
    }

    @Override
    public xda getId() {
        z();
        String strN = n();
        if (strN != null) {
            return com.google.android.gms.tasks.a.e(strN);
        }
        xda xdaVarG = g();
        this.h.execute(new Runnable() {
            @Override
            public final void run() {
                this.b.w();
            }
        });
        return xdaVarG;
    }

    public final void h(jx9 jx9Var) {
        synchronized (this.g) {
            this.l.add(jx9Var);
        }
    }

    public final void v(boolean z) {
        com.google.firebase.installations.local.b bVarB;
        com.google.firebase.installations.local.b bVarR = r();
        try {
            if (bVarR.i() || bVarR.l()) {
                bVarB = B(bVarR);
            } else {
                if (!z && !this.d.f(bVarR)) {
                    return;
                }
                bVarB = k(bVarR);
            }
            u(bVarB);
            F(bVarR, bVarB);
            if (bVarB.k()) {
                E(bVarB.d());
            }
            if (bVarB.i()) {
                C(new FirebaseInstallationsException(FirebaseInstallationsException.Status.BAD_CONFIG));
            } else if (bVarB.j()) {
                C(new IOException("Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."));
            } else {
                D(bVarB);
            }
        } catch (FirebaseInstallationsException e) {
            C(e);
        }
    }

    public final void x(final boolean z) {
        com.google.firebase.installations.local.b bVarS = s();
        if (z) {
            bVarS = bVarS.p();
        }
        D(bVarS);
        this.i.execute(new Runnable() {
            @Override
            public final void run() {
                this.b.v(z);
            }
        });
    }

    public final com.google.firebase.installations.local.b k(com.google.firebase.installations.local.b bVar) throws FirebaseInstallationsException {
        TokenResult tokenResultE = this.b.e(l(), bVar.d(), t(), bVar.f());
        int i = b.b[tokenResultE.b().ordinal()];
        if (i == 1) {
            return bVar.o(tokenResultE.c(), tokenResultE.d(), this.d.b());
        }
        if (i == 2) {
            return bVar.q("BAD CONFIG");
        }
        if (i != 3) {
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
        }
        E(null);
        return bVar.r();
    }

    public String l() {
        return this.a.m().b();
    }

    public String m() {
        return this.a.m().c();
    }

    public final synchronized String n() {
        return this.j;
    }

    public final sx4 o() {
        return (sx4) this.e.get();
    }

    public final com.google.firebase.installations.local.b r() {
        com.google.firebase.installations.local.b bVarD;
        synchronized (m) {
            try {
                rl1 rl1VarA = rl1.a(this.a.j(), "generatefid.lock");
                try {
                    bVarD = this.c.d();
                    if (rl1VarA != null) {
                        rl1VarA.b();
                    }
                } catch (Throwable th) {
                    if (rl1VarA != null) {
                        rl1VarA.b();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return bVarD;
    }

    public final com.google.firebase.installations.local.b s() {
        com.google.firebase.installations.local.b bVarD;
        synchronized (m) {
            try {
                rl1 rl1VarA = rl1.a(this.a.j(), "generatefid.lock");
                try {
                    bVarD = this.c.d();
                    if (bVarD.j()) {
                        bVarD = this.c.b(bVarD.t(A(bVarD)));
                    }
                    if (rl1VarA != null) {
                        rl1VarA.b();
                    }
                } catch (Throwable th) {
                    if (rl1VarA != null) {
                        rl1VarA.b();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return bVarD;
    }

    public String t() {
        return this.a.m().e();
    }

    public final void u(com.google.firebase.installations.local.b bVar) {
        synchronized (m) {
            try {
                rl1 rl1VarA = rl1.a(this.a.j(), "generatefid.lock");
                try {
                    this.c.b(bVar);
                    if (rl1VarA != null) {
                        rl1VarA.b();
                    }
                } catch (Throwable th) {
                    if (rl1VarA != null) {
                        rl1VarA.b();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void w() {
        x(false);
    }

    public final void z() {
        wd8.g(m(), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        wd8.g(t(), "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        wd8.g(l(), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        wd8.b(vlb.h(m()), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        wd8.b(vlb.g(l()), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    public a(ExecutorService executorService, Executor executor, zv3 zv3Var, c cVar, PersistedInstallation persistedInstallation, vlb vlbVar, zi5 zi5Var, pn8 pn8Var) {
        this.g = new Object();
        this.k = new HashSet();
        this.l = new ArrayList();
        this.a = zv3Var;
        this.b = cVar;
        this.c = persistedInstallation;
        this.d = vlbVar;
        this.e = zi5Var;
        this.f = pn8Var;
        this.h = executorService;
        this.i = executor;
    }
}
