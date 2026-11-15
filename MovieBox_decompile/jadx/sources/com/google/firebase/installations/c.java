package com.google.firebase.installations;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.installations.local.PersistedInstallation;
import com.google.firebase.installations.remote.InstallationResponse;
import com.google.firebase.installations.remote.TokenResult;
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
import ob.u;

public class c implements lc.e {

    private static final Object f31059m = new Object();

    private static final ThreadFactory f31060n = new a();

    private final com.google.firebase.f f31061a;

    private final com.google.firebase.installations.remote.c f31062b;

    private final PersistedInstallation f31063c;

    private final h f31064d;

    private final u f31065e;

    private final lc.g f31066f;

    private final Object f31067g;

    private final ExecutorService f31068h;

    private final Executor f31069i;

    private String f31070j;

    private Set f31071k;

    private final List f31072l;

    class a implements ThreadFactory {

        private final AtomicInteger f31073a = new AtomicInteger(1);

        a() {
        }

        @Override
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, String.format("firebase-installations-executor-%d", Integer.valueOf(this.f31073a.getAndIncrement())));
        }
    }

    static class b {

        static final int[] f31074a;

        static final int[] f31075b;

        static {
            int[] iArr = new int[TokenResult.ResponseCode.values().length];
            f31075b = iArr;
            try {
                iArr[TokenResult.ResponseCode.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f31075b[TokenResult.ResponseCode.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f31075b[TokenResult.ResponseCode.AUTH_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[InstallationResponse.ResponseCode.values().length];
            f31074a = iArr2;
            try {
                iArr2[InstallationResponse.ResponseCode.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f31074a[InstallationResponse.ResponseCode.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    c(final com.google.firebase.f fVar, kc.b bVar, ExecutorService executorService, Executor executor) {
        this(executorService, executor, fVar, new com.google.firebase.installations.remote.c(fVar.k(), bVar), new PersistedInstallation(fVar), h.c(), new u(new kc.b() {
            @Override
            public final Object get() {
                return com.google.firebase.installations.c.y(fVar);
            }
        }), new lc.g());
    }

    private String A(com.google.firebase.installations.local.b bVar) {
        if ((!this.f31061a.m().equals("CHIME_ANDROID_SDK") && !this.f31061a.u()) || !bVar.m()) {
            return this.f31066f.a();
        }
        String strF = o().f();
        return TextUtils.isEmpty(strF) ? this.f31066f.a() : strF;
    }

    private com.google.firebase.installations.local.b B(com.google.firebase.installations.local.b bVar) throws FirebaseInstallationsException {
        InstallationResponse installationResponseD = this.f31062b.d(l(), bVar.d(), t(), m(), (bVar.d() == null || bVar.d().length() != 11) ? null : o().i());
        int i10 = b.f31074a[installationResponseD.e().ordinal()];
        if (i10 == 1) {
            return bVar.s(installationResponseD.c(), installationResponseD.d(), this.f31064d.b(), installationResponseD.b().c(), installationResponseD.b().d());
        }
        if (i10 == 2) {
            return bVar.q("BAD CONFIG");
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
    }

    private void C(Exception exc) {
        synchronized (this.f31067g) {
            try {
                Iterator it = this.f31072l.iterator();
                while (it.hasNext()) {
                    if (((g) it.next()).a(exc)) {
                        it.remove();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void D(com.google.firebase.installations.local.b bVar) {
        synchronized (this.f31067g) {
            try {
                Iterator it = this.f31072l.iterator();
                while (it.hasNext()) {
                    if (((g) it.next()).b(bVar)) {
                        it.remove();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private synchronized void E(String str) {
        this.f31070j = str;
    }

    private synchronized void F(com.google.firebase.installations.local.b bVar, com.google.firebase.installations.local.b bVar2) {
        if (this.f31071k.size() != 0 && !TextUtils.equals(bVar.d(), bVar2.d())) {
            Iterator it = this.f31071k.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                bVar2.d();
                throw null;
            }
        }
    }

    private Task f() {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        h(new d(this.f31064d, taskCompletionSource));
        return taskCompletionSource.getTask();
    }

    private Task g() {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        h(new e(taskCompletionSource));
        return taskCompletionSource.getTask();
    }

    private void h(g gVar) {
        synchronized (this.f31067g) {
            this.f31072l.add(gVar);
        }
    }

    public void v(boolean z10) {
        com.google.firebase.installations.local.b bVarB;
        com.google.firebase.installations.local.b bVarR = r();
        try {
            if (bVarR.i() || bVarR.l()) {
                bVarB = B(bVarR);
            } else {
                if (!z10 && !this.f31064d.f(bVarR)) {
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
        } catch (FirebaseInstallationsException e10) {
            C(e10);
        }
    }

    public final void x(final boolean z10) {
        com.google.firebase.installations.local.b bVarS = s();
        if (z10) {
            bVarS = bVarS.p();
        }
        D(bVarS);
        this.f31069i.execute(new Runnable() {
            @Override
            public final void run() {
                this.f65680a.v(z10);
            }
        });
    }

    private com.google.firebase.installations.local.b k(com.google.firebase.installations.local.b bVar) throws FirebaseInstallationsException {
        TokenResult tokenResultE = this.f31062b.e(l(), bVar.d(), t(), bVar.f());
        int i10 = b.f31075b[tokenResultE.b().ordinal()];
        if (i10 == 1) {
            return bVar.o(tokenResultE.c(), tokenResultE.d(), this.f31064d.b());
        }
        if (i10 == 2) {
            return bVar.q("BAD CONFIG");
        }
        if (i10 != 3) {
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
        }
        E(null);
        return bVar.r();
    }

    private synchronized String n() {
        return this.f31070j;
    }

    private mc.a o() {
        return (mc.a) this.f31065e.get();
    }

    public static c p() {
        return q(com.google.firebase.f.l());
    }

    public static c q(com.google.firebase.f fVar) {
        Preconditions.checkArgument(fVar != null, "Null is not a valid value of FirebaseApp.");
        return (c) fVar.j(lc.e.class);
    }

    private com.google.firebase.installations.local.b r() {
        com.google.firebase.installations.local.b bVarD;
        synchronized (f31059m) {
            try {
                com.google.firebase.installations.b bVarA = com.google.firebase.installations.b.a(this.f31061a.k(), "generatefid.lock");
                try {
                    bVarD = this.f31063c.d();
                    if (bVarA != null) {
                        bVarA.b();
                    }
                } catch (Throwable th2) {
                    if (bVarA != null) {
                        bVarA.b();
                    }
                    throw th2;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return bVarD;
    }

    private com.google.firebase.installations.local.b s() {
        com.google.firebase.installations.local.b bVarD;
        synchronized (f31059m) {
            try {
                com.google.firebase.installations.b bVarA = com.google.firebase.installations.b.a(this.f31061a.k(), "generatefid.lock");
                try {
                    bVarD = this.f31063c.d();
                    if (bVarD.j()) {
                        bVarD = this.f31063c.b(bVarD.t(A(bVarD)));
                    }
                    if (bVarA != null) {
                        bVarA.b();
                    }
                } catch (Throwable th2) {
                    if (bVarA != null) {
                        bVarA.b();
                    }
                    throw th2;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return bVarD;
    }

    private void u(com.google.firebase.installations.local.b bVar) {
        synchronized (f31059m) {
            try {
                com.google.firebase.installations.b bVarA = com.google.firebase.installations.b.a(this.f31061a.k(), "generatefid.lock");
                try {
                    this.f31063c.b(bVar);
                    if (bVarA != null) {
                        bVarA.b();
                    }
                } catch (Throwable th2) {
                    if (bVarA != null) {
                        bVarA.b();
                    }
                    throw th2;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public void w() {
        x(false);
    }

    public static mc.a y(com.google.firebase.f fVar) {
        return new mc.a(fVar);
    }

    private void z() {
        Preconditions.checkNotEmpty(m(), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        Preconditions.checkNotEmpty(t(), "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        Preconditions.checkNotEmpty(l(), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        Preconditions.checkArgument(h.h(m()), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        Preconditions.checkArgument(h.g(l()), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    @Override
    public Task a(final boolean z10) {
        z();
        Task taskF = f();
        this.f31068h.execute(new Runnable() {
            @Override
            public final void run() {
                this.f65678a.x(z10);
            }
        });
        return taskF;
    }

    @Override
    public Task getId() {
        z();
        String strN = n();
        if (strN != null) {
            return Tasks.forResult(strN);
        }
        Task taskG = g();
        this.f31068h.execute(new Runnable() {
            @Override
            public final void run() {
                this.f65677a.w();
            }
        });
        return taskG;
    }

    String l() {
        return this.f31061a.n().b();
    }

    String m() {
        return this.f31061a.n().c();
    }

    String t() {
        return this.f31061a.n().e();
    }

    c(ExecutorService executorService, Executor executor, com.google.firebase.f fVar, com.google.firebase.installations.remote.c cVar, PersistedInstallation persistedInstallation, h hVar, u uVar, lc.g gVar) {
        this.f31067g = new Object();
        this.f31071k = new HashSet();
        this.f31072l = new ArrayList();
        this.f31061a = fVar;
        this.f31062b = cVar;
        this.f31063c = persistedInstallation;
        this.f31064d = hVar;
        this.f31065e = uVar;
        this.f31066f = gVar;
        this.f31068h = executorService;
        this.f31069i = executor;
    }
}
