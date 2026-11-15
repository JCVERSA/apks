package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzcb;
import com.google.android.gms.internal.measurement.zzcf;
import com.google.android.gms.internal.measurement.zzci;
import com.google.android.gms.internal.measurement.zzck;
import com.google.android.gms.internal.measurement.zzcl;
import defpackage.c9j;
import defpackage.kti;
import defpackage.r2j;
import defpackage.wd8;
import java.util.Map;

@DynamiteApi
public class AppMeasurementDynamiteService extends zzcb {

    @VisibleForTesting
    e zza = null;

    @GuardedBy("listenerMap")
    private final Map zzb = new ArrayMap();

    private final void zzb() {
        if (this.zza == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }

    private final void zzc(zzcf zzcfVar, String str) {
        zzb();
        this.zza.N().H(zzcfVar, str);
    }

    @Override
    public void beginAdUnitExposure(@NonNull String str, long j) throws RemoteException {
        zzb();
        this.zza.y().k(str, j);
    }

    @Override
    public void clearConditionalUserProperty(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle) throws RemoteException {
        zzb();
        this.zza.I().n(str, str2, bundle);
    }

    @Override
    public void clearMeasurementEnabled(long j) throws RemoteException {
        zzb();
        this.zza.I().H(null);
    }

    @Override
    public void endAdUnitExposure(@NonNull String str, long j) throws RemoteException {
        zzb();
        this.zza.y().l(str, j);
    }

    @Override
    public void generateEventId(zzcf zzcfVar) throws RemoteException {
        zzb();
        long jP0 = this.zza.N().p0();
        zzb();
        this.zza.N().G(zzcfVar, jP0);
    }

    @Override
    public void getAppInstanceId(zzcf zzcfVar) throws RemoteException {
        zzb();
        this.zza.a().w(new zzi(this, zzcfVar));
    }

    @Override
    public void getCachedAppInstanceId(zzcf zzcfVar) throws RemoteException {
        zzb();
        zzc(zzcfVar, this.zza.I().U());
    }

    @Override
    public void getConditionalUserProperties(String str, String str2, zzcf zzcfVar) throws RemoteException {
        zzb();
        this.zza.a().w(new zzm(this, zzcfVar, str, str2));
    }

    @Override
    public void getCurrentScreenClass(zzcf zzcfVar) throws RemoteException {
        zzb();
        zzc(zzcfVar, this.zza.I().V());
    }

    @Override
    public void getCurrentScreenName(zzcf zzcfVar) throws RemoteException {
        zzb();
        zzc(zzcfVar, this.zza.I().W());
    }

    @Override
    public void getGmpAppId(zzcf zzcfVar) throws RemoteException {
        String strA;
        zzb();
        g gVarI = this.zza.I();
        if (gVarI.a.O() != null) {
            strA = gVarI.a.O();
        } else {
            try {
                strA = r2j.a(gVarI.a.e(), "google_app_id", gVarI.a.R());
            } catch (IllegalStateException e) {
                gVarI.a.b().q().b("getGoogleAppId failed with exception", e);
                strA = null;
            }
        }
        zzc(zzcfVar, strA);
    }

    @Override
    public void getMaxUserProperties(String str, zzcf zzcfVar) throws RemoteException {
        zzb();
        this.zza.I().P(str);
        zzb();
        this.zza.N().F(zzcfVar, 25);
    }

    @Override
    public void getTestFlag(zzcf zzcfVar, int i) throws RemoteException {
        zzb();
        if (i == 0) {
            this.zza.N().H(zzcfVar, this.zza.I().X());
            return;
        }
        if (i == 1) {
            this.zza.N().G(zzcfVar, this.zza.I().T().longValue());
            return;
        }
        if (i != 2) {
            if (i == 3) {
                this.zza.N().F(zzcfVar, this.zza.I().S().intValue());
                return;
            } else {
                if (i != 4) {
                    return;
                }
                this.zza.N().B(zzcfVar, this.zza.I().Q().booleanValue());
                return;
            }
        }
        c9j c9jVarN = this.zza.N();
        double dDoubleValue = this.zza.I().R().doubleValue();
        Bundle bundle = new Bundle();
        bundle.putDouble("r", dDoubleValue);
        try {
            zzcfVar.zzd(bundle);
        } catch (RemoteException e) {
            c9jVarN.a.b().v().b("Error returning double value to wrapper", e);
        }
    }

    @Override
    public void getUserProperties(String str, String str2, boolean z, zzcf zzcfVar) throws RemoteException {
        zzb();
        this.zza.a().w(new zzk(this, zzcfVar, str, str2, z));
    }

    @Override
    public void initForTests(@NonNull Map map) throws RemoteException {
        zzb();
    }

    @Override
    public void initialize(IObjectWrapper iObjectWrapper, zzcl zzclVar, long j) throws RemoteException {
        e eVar = this.zza;
        if (eVar == null) {
            this.zza = e.H((Context) wd8.l((Context) ObjectWrapper.unwrap(iObjectWrapper)), zzclVar, Long.valueOf(j));
        } else {
            eVar.b().v().a("Attempting to initialize multiple times");
        }
    }

    @Override
    public void isDataCollectionEnabled(zzcf zzcfVar) throws RemoteException {
        zzb();
        this.zza.a().w(new zzn(this, zzcfVar));
    }

    @Override
    public void logEvent(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle, boolean z, boolean z2, long j) throws RemoteException {
        zzb();
        this.zza.I().r(str, str2, bundle, z, z2, j);
    }

    @Override
    public void logEventAndBundle(String str, String str2, Bundle bundle, zzcf zzcfVar, long j) throws RemoteException {
        zzb();
        wd8.f(str2);
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", "app");
        this.zza.a().w(new zzj(this, zzcfVar, new zzaw(str2, new zzau(bundle), "app", j), str));
    }

    @Override
    public void logHealthData(int i, @NonNull String str, @NonNull IObjectWrapper iObjectWrapper, @NonNull IObjectWrapper iObjectWrapper2, @NonNull IObjectWrapper iObjectWrapper3) throws RemoteException {
        zzb();
        this.zza.b().E(i, true, false, str, iObjectWrapper == null ? null : ObjectWrapper.unwrap(iObjectWrapper), iObjectWrapper2 == null ? null : ObjectWrapper.unwrap(iObjectWrapper2), iObjectWrapper3 != null ? ObjectWrapper.unwrap(iObjectWrapper3) : null);
    }

    @Override
    public void onActivityCreated(@NonNull IObjectWrapper iObjectWrapper, @NonNull Bundle bundle, long j) throws RemoteException {
        zzb();
        f fVar = this.zza.I().c;
        if (fVar != null) {
            this.zza.I().o();
            fVar.onActivityCreated((Activity) ObjectWrapper.unwrap(iObjectWrapper), bundle);
        }
    }

    @Override
    public void onActivityDestroyed(@NonNull IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzb();
        f fVar = this.zza.I().c;
        if (fVar != null) {
            this.zza.I().o();
            fVar.onActivityDestroyed((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override
    public void onActivityPaused(@NonNull IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzb();
        f fVar = this.zza.I().c;
        if (fVar != null) {
            this.zza.I().o();
            fVar.onActivityPaused((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override
    public void onActivityResumed(@NonNull IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzb();
        f fVar = this.zza.I().c;
        if (fVar != null) {
            this.zza.I().o();
            fVar.onActivityResumed((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override
    public void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, zzcf zzcfVar, long j) throws RemoteException {
        zzb();
        f fVar = this.zza.I().c;
        Bundle bundle = new Bundle();
        if (fVar != null) {
            this.zza.I().o();
            fVar.onActivitySaveInstanceState((Activity) ObjectWrapper.unwrap(iObjectWrapper), bundle);
        }
        try {
            zzcfVar.zzd(bundle);
        } catch (RemoteException e) {
            this.zza.b().v().b("Error returning bundle value to wrapper", e);
        }
    }

    @Override
    public void onActivityStarted(@NonNull IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzb();
        if (this.zza.I().c != null) {
            this.zza.I().o();
        }
    }

    @Override
    public void onActivityStopped(@NonNull IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzb();
        if (this.zza.I().c != null) {
            this.zza.I().o();
        }
    }

    @Override
    public void performAction(Bundle bundle, zzcf zzcfVar, long j) throws RemoteException {
        zzb();
        zzcfVar.zzd(null);
    }

    @Override
    public void registerOnMeasurementEventListener(zzci zzciVar) throws RemoteException {
        kti mVar;
        zzb();
        synchronized (this.zzb) {
            try {
                mVar = (kti) this.zzb.get(Integer.valueOf(zzciVar.zzd()));
                if (mVar == null) {
                    mVar = new m(this, zzciVar);
                    this.zzb.put(Integer.valueOf(zzciVar.zzd()), mVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.zza.I().w(mVar);
    }

    @Override
    public void resetAnalyticsData(long j) throws RemoteException {
        zzb();
        this.zza.I().x(j);
    }

    @Override
    public void setConditionalUserProperty(@NonNull Bundle bundle, long j) throws RemoteException {
        zzb();
        if (bundle == null) {
            this.zza.b().q().a("Conditional user property must not be null");
        } else {
            this.zza.I().D(bundle, j);
        }
    }

    @Override
    public void setConsent(@NonNull final Bundle bundle, final long j) throws RemoteException {
        zzb();
        final g gVarI = this.zza.I();
        gVarI.a.a().x(new Runnable() {
            @Override
            public final void run() {
                g gVar = gVarI;
                Bundle bundle2 = bundle;
                long j2 = j;
                if (TextUtils.isEmpty(gVar.a.B().r())) {
                    gVar.E(bundle2, 0, j2);
                } else {
                    gVar.a.b().w().a("Using developer consent only; google app id found");
                }
            }
        });
    }

    @Override
    public void setConsentThirdParty(@NonNull Bundle bundle, long j) throws RemoteException {
        zzb();
        this.zza.I().E(bundle, -20, j);
    }

    @Override
    public void setCurrentScreen(@NonNull IObjectWrapper iObjectWrapper, @NonNull String str, @NonNull String str2, long j) throws RemoteException {
        zzb();
        this.zza.K().C((Activity) ObjectWrapper.unwrap(iObjectWrapper), str, str2);
    }

    @Override
    public void setDataCollectionEnabled(boolean z) throws RemoteException {
        zzb();
        g gVarI = this.zza.I();
        gVarI.h();
        gVarI.a.a().w(new zzhz(gVarI, z));
    }

    @Override
    public void setDefaultEventParameters(@NonNull Bundle bundle) {
        zzb();
        final g gVarI = this.zza.I();
        final Bundle bundle2 = bundle == null ? null : new Bundle(bundle);
        gVarI.a.a().w(new Runnable() {
            @Override
            public final void run() {
                gVarI.p(bundle2);
            }
        });
    }

    @Override
    public void setEventInterceptor(zzci zzciVar) throws RemoteException {
        zzb();
        l lVar = new l(this, zzciVar);
        if (this.zza.a().z()) {
            this.zza.I().G(lVar);
        } else {
            this.zza.a().w(new zzl(this, lVar));
        }
    }

    @Override
    public void setInstanceIdProvider(zzck zzckVar) throws RemoteException {
        zzb();
    }

    @Override
    public void setMeasurementEnabled(boolean z, long j) throws RemoteException {
        zzb();
        this.zza.I().H(Boolean.valueOf(z));
    }

    @Override
    public void setMinimumSessionDuration(long j) throws RemoteException {
        zzb();
    }

    @Override
    public void setSessionTimeoutDuration(long j) throws RemoteException {
        zzb();
        g gVarI = this.zza.I();
        gVarI.a.a().w(new zzhh(gVarI, j));
    }

    @Override
    public void setUserId(@NonNull final String str, long j) throws RemoteException {
        zzb();
        final g gVarI = this.zza.I();
        if (str != null && TextUtils.isEmpty(str)) {
            gVarI.a.b().v().a("User ID must be non-empty or null");
        } else {
            gVarI.a.a().w(new Runnable() {
                @Override
                public final void run() {
                    g gVar = gVarI;
                    if (gVar.a.B().u(str)) {
                        gVar.a.B().t();
                    }
                }
            });
            gVarI.K(null, "_id", str, true, j);
        }
    }

    @Override
    public void setUserProperty(@NonNull String str, @NonNull String str2, @NonNull IObjectWrapper iObjectWrapper, boolean z, long j) throws RemoteException {
        zzb();
        this.zza.I().K(str, str2, ObjectWrapper.unwrap(iObjectWrapper), z, j);
    }

    @Override
    public void unregisterOnMeasurementEventListener(zzci zzciVar) throws RemoteException {
        kti mVar;
        zzb();
        synchronized (this.zzb) {
            mVar = (kti) this.zzb.remove(Integer.valueOf(zzciVar.zzd()));
        }
        if (mVar == null) {
            mVar = new m(this, zzciVar);
        }
        this.zza.I().M(mVar);
    }
}
