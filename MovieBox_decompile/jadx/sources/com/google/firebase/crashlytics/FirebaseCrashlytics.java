package com.google.firebase.crashlytics;

import android.content.Context;
import android.content.pm.PackageManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.common.d0;
import com.google.firebase.crashlytics.internal.common.g0;
import com.google.firebase.crashlytics.internal.common.k;
import com.google.firebase.crashlytics.internal.common.x;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import com.google.firebase.f;
import com.google.firebase.sessions.api.FirebaseSessionsDependencies;
import java.util.List;
import java.util.concurrent.ExecutorService;
import kc.a;
import lc.e;
import qb.d;
import qb.g;
import qb.l;
import wb.b;

public class FirebaseCrashlytics {

    final x f30307a;

    private FirebaseCrashlytics(x xVar) {
        this.f30307a = xVar;
    }

    static FirebaseCrashlytics b(f fVar, e eVar, a aVar, a aVar2, a aVar3, ExecutorService executorService, ExecutorService executorService2, ExecutorService executorService3) {
        Context contextK = fVar.k();
        String packageName = contextK.getPackageName();
        g.f().g("Initializing Firebase Crashlytics " + x.q() + " for " + packageName);
        CrashlyticsWorkers crashlyticsWorkers = new CrashlyticsWorkers(executorService, executorService2);
        xb.g gVar = new xb.g(contextK);
        d0 d0Var = new d0(fVar);
        g0 g0Var = new g0(contextK, packageName, eVar, d0Var);
        d dVar = new d(aVar);
        pb.d dVar2 = new pb.d(aVar2);
        k kVar = new k(d0Var, gVar);
        FirebaseSessionsDependencies.e(kVar);
        x xVar = new x(fVar, g0Var, dVar, d0Var, dVar2.e(), dVar2.d(), gVar, kVar, new l(aVar3), crashlyticsWorkers);
        String strC = fVar.n().c();
        String strM = CommonUtils.m(contextK);
        List<com.google.firebase.crashlytics.internal.common.e> listJ = CommonUtils.j(contextK);
        g.f().b("Mapping file ID is: " + strM);
        for (com.google.firebase.crashlytics.internal.common.e eVar2 : listJ) {
            g.f().b(String.format("Build id for %s on %s: %s", eVar2.c(), eVar2.a(), eVar2.b()));
        }
        try {
            com.google.firebase.crashlytics.internal.common.a aVarA = com.google.firebase.crashlytics.internal.common.a.a(contextK, g0Var, strC, strM, listJ, new qb.f(contextK));
            g.f().i("Installer package name is: " + aVarA.f30315d);
            com.google.firebase.crashlytics.internal.settings.e eVarL = com.google.firebase.crashlytics.internal.settings.e.l(contextK, strC, g0Var, new b(), aVarA.f30317f, aVarA.f30318g, gVar, d0Var);
            eVarL.o(crashlyticsWorkers).addOnFailureListener(executorService3, new OnFailureListener() {
                @Override
                public final void onFailure(Exception exc) {
                    FirebaseCrashlytics.c(exc);
                }
            });
            if (xVar.F(aVarA, eVarL)) {
                xVar.o(eVarL);
            }
            return new FirebaseCrashlytics(xVar);
        } catch (PackageManager.NameNotFoundException e10) {
            g.f().e("Error retrieving app package info.", e10);
            return null;
        }
    }

    public static void c(Exception exc) {
        g.f().e("Error fetching settings.", exc);
    }

    @NonNull
    public static FirebaseCrashlytics getInstance() {
        FirebaseCrashlytics firebaseCrashlytics = (FirebaseCrashlytics) f.l().j(FirebaseCrashlytics.class);
        if (firebaseCrashlytics != null) {
            return firebaseCrashlytics;
        }
        throw new NullPointerException("FirebaseCrashlytics component is not present.");
    }

    @NonNull
    public Task<Boolean> checkForUnsentReports() {
        return this.f30307a.j();
    }

    public void deleteUnsentReports() {
        this.f30307a.k();
    }

    public boolean didCrashOnPreviousExecution() {
        return this.f30307a.l();
    }

    public boolean isCrashlyticsCollectionEnabled() {
        return this.f30307a.s();
    }

    public void log(@NonNull String str) {
        this.f30307a.B(str);
    }

    public void recordException(@NonNull Throwable th2) {
        if (th2 == null) {
            g.f().k("A null value was passed to recordException. Ignoring.");
        } else {
            this.f30307a.C(th2);
        }
    }

    public void sendUnsentReports() {
        this.f30307a.G();
    }

    public void setCrashlyticsCollectionEnabled(boolean z10) {
        this.f30307a.H(Boolean.valueOf(z10));
    }

    public void setCustomKey(@NonNull String str, boolean z10) {
        this.f30307a.I(str, Boolean.toString(z10));
    }

    public void setCustomKeys(@NonNull pb.g gVar) {
        throw null;
    }

    public void setUserId(@NonNull String str) {
        this.f30307a.J(str);
    }

    public void setCrashlyticsCollectionEnabled(@Nullable Boolean bool) {
        this.f30307a.H(bool);
    }

    public void setCustomKey(@NonNull String str, double d10) {
        this.f30307a.I(str, Double.toString(d10));
    }

    public void setCustomKey(@NonNull String str, float f10) {
        this.f30307a.I(str, Float.toString(f10));
    }

    public void setCustomKey(@NonNull String str, int i10) {
        this.f30307a.I(str, Integer.toString(i10));
    }

    public void setCustomKey(@NonNull String str, long j10) {
        this.f30307a.I(str, Long.toString(j10));
    }

    public void setCustomKey(@NonNull String str, @NonNull String str2) {
        this.f30307a.I(str, str2);
    }
}
