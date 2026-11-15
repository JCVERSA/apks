package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Map;

@DynamiteApi
public class AppMeasurementDynamiteService extends com.google.android.gms.internal.measurement.zzdm {
    zzhy zza = null;
    private final Map<Integer, zzjl> zzb = new androidx.collection.a();

    class zza implements zzjm {
        private com.google.android.gms.internal.measurement.zzdp zza;

        zza(com.google.android.gms.internal.measurement.zzdp zzdpVar) {
            this.zza = zzdpVar;
        }

        @Override
        public final void interceptEvent(String str, String str2, Bundle bundle, long j10) {
            try {
                this.zza.zza(str, str2, bundle, j10);
            } catch (RemoteException e10) {
                zzhy zzhyVar = AppMeasurementDynamiteService.this.zza;
                if (zzhyVar != null) {
                    zzhyVar.zzj().zzu().zza("Event interceptor threw exception", e10);
                }
            }
        }
    }

    class zzb implements zzjl {
        private com.google.android.gms.internal.measurement.zzdp zza;

        zzb(com.google.android.gms.internal.measurement.zzdp zzdpVar) {
            this.zza = zzdpVar;
        }

        @Override
        public final void onEvent(String str, String str2, Bundle bundle, long j10) {
            try {
                this.zza.zza(str, str2, bundle, j10);
            } catch (RemoteException e10) {
                zzhy zzhyVar = AppMeasurementDynamiteService.this.zza;
                if (zzhyVar != null) {
                    zzhyVar.zzj().zzu().zza("Event listener threw exception", e10);
                }
            }
        }
    }

    private final void zza() {
        if (this.zza == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }

    @Override
    public void beginAdUnitExposure(@NonNull String str, long j10) throws RemoteException {
        zza();
        this.zza.zze().zza(str, j10);
    }

    @Override
    public void clearConditionalUserProperty(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle) throws RemoteException {
        zza();
        this.zza.zzp().zza(str, str2, bundle);
    }

    @Override
    public void clearMeasurementEnabled(long j10) throws RemoteException {
        zza();
        this.zza.zzp().zza((Boolean) null);
    }

    @Override
    public void endAdUnitExposure(@NonNull String str, long j10) throws RemoteException {
        zza();
        this.zza.zze().zzb(str, j10);
    }

    @Override
    public void generateEventId(com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        zza();
        long jZzn = this.zza.zzt().zzn();
        zza();
        this.zza.zzt().zza(zzdoVar, jZzn);
    }

    @Override
    public void getAppInstanceId(com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        zza();
        this.zza.zzl().zzb(new zzi(this, zzdoVar));
    }

    @Override
    public void getCachedAppInstanceId(com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        zza();
        zza(zzdoVar, this.zza.zzp().zzag());
    }

    @Override
    public void getConditionalUserProperties(String str, String str2, com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        zza();
        this.zza.zzl().zzb(new zzl(this, zzdoVar, str, str2));
    }

    @Override
    public void getCurrentScreenClass(com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        zza();
        zza(zzdoVar, this.zza.zzp().zzah());
    }

    @Override
    public void getCurrentScreenName(com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        zza();
        zza(zzdoVar, this.zza.zzp().zzai());
    }

    @Override
    public void getGmpAppId(com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        zza();
        zza(zzdoVar, this.zza.zzp().zzaj());
    }

    @Override
    public void getMaxUserProperties(String str, com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        zza();
        this.zza.zzp();
        zzjq.zza(str);
        zza();
        this.zza.zzt().zza(zzdoVar, 25);
    }

    @Override
    public void getSessionId(com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        zza();
        this.zza.zzp().zza(zzdoVar);
    }

    @Override
    public void getTestFlag(com.google.android.gms.internal.measurement.zzdo zzdoVar, int i10) throws RemoteException {
        zza();
        if (i10 == 0) {
            this.zza.zzt().zza(zzdoVar, this.zza.zzp().zzak());
            return;
        }
        if (i10 == 1) {
            this.zza.zzt().zza(zzdoVar, this.zza.zzp().zzaf().longValue());
            return;
        }
        if (i10 != 2) {
            if (i10 == 3) {
                this.zza.zzt().zza(zzdoVar, this.zza.zzp().zzae().intValue());
                return;
            } else {
                if (i10 != 4) {
                    return;
                }
                this.zza.zzt().zza(zzdoVar, this.zza.zzp().zzac().booleanValue());
                return;
            }
        }
        zzos zzosVarZzt = this.zza.zzt();
        double dDoubleValue = this.zza.zzp().zzad().doubleValue();
        Bundle bundle = new Bundle();
        bundle.putDouble(CampaignEx.JSON_KEY_AD_R, dDoubleValue);
        try {
            zzdoVar.zza(bundle);
        } catch (RemoteException e10) {
            zzosVarZzt.zzu.zzj().zzu().zza("Error returning double value to wrapper", e10);
        }
    }

    @Override
    public void getUserProperties(String str, String str2, boolean z10, com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        zza();
        this.zza.zzl().zzb(new zzj(this, zzdoVar, str, str2, z10));
    }

    @Override
    public void initForTests(@NonNull Map map) throws RemoteException {
        zza();
    }

    @Override
    public void initialize(IObjectWrapper iObjectWrapper, com.google.android.gms.internal.measurement.zzdw zzdwVar, long j10) throws RemoteException {
        zzhy zzhyVar = this.zza;
        if (zzhyVar == null) {
            this.zza = zzhy.zza((Context) Preconditions.checkNotNull((Context) ObjectWrapper.unwrap(iObjectWrapper)), zzdwVar, Long.valueOf(j10));
        } else {
            zzhyVar.zzj().zzu().zza("Attempting to initialize multiple times");
        }
    }

    @Override
    public void isDataCollectionEnabled(com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        zza();
        this.zza.zzl().zzb(new zzn(this, zzdoVar));
    }

    @Override
    public void logEvent(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle, boolean z10, boolean z11, long j10) throws RemoteException {
        zza();
        this.zza.zzp().zza(str, str2, bundle, z10, z11, j10);
    }

    @Override
    public void logEventAndBundle(String str, String str2, Bundle bundle, com.google.android.gms.internal.measurement.zzdo zzdoVar, long j10) throws RemoteException {
        zza();
        Preconditions.checkNotEmpty(str2);
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", "app");
        this.zza.zzl().zzb(new zzk(this, zzdoVar, new zzbf(str2, new zzbe(bundle), "app", j10), str));
    }

    @Override
    public void logHealthData(int i10, @NonNull String str, @NonNull IObjectWrapper iObjectWrapper, @NonNull IObjectWrapper iObjectWrapper2, @NonNull IObjectWrapper iObjectWrapper3) throws RemoteException {
        zza();
        this.zza.zzj().zza(i10, true, false, str, iObjectWrapper == null ? null : ObjectWrapper.unwrap(iObjectWrapper), iObjectWrapper2 == null ? null : ObjectWrapper.unwrap(iObjectWrapper2), iObjectWrapper3 != null ? ObjectWrapper.unwrap(iObjectWrapper3) : null);
    }

    @Override
    public void onActivityCreated(@NonNull IObjectWrapper iObjectWrapper, @NonNull Bundle bundle, long j10) throws RemoteException {
        zza();
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacksZzaa = this.zza.zzp().zzaa();
        if (activityLifecycleCallbacksZzaa != null) {
            this.zza.zzp().zzao();
            activityLifecycleCallbacksZzaa.onActivityCreated((Activity) ObjectWrapper.unwrap(iObjectWrapper), bundle);
        }
    }

    @Override
    public void onActivityDestroyed(@NonNull IObjectWrapper iObjectWrapper, long j10) throws RemoteException {
        zza();
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacksZzaa = this.zza.zzp().zzaa();
        if (activityLifecycleCallbacksZzaa != null) {
            this.zza.zzp().zzao();
            activityLifecycleCallbacksZzaa.onActivityDestroyed((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override
    public void onActivityPaused(@NonNull IObjectWrapper iObjectWrapper, long j10) throws RemoteException {
        zza();
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacksZzaa = this.zza.zzp().zzaa();
        if (activityLifecycleCallbacksZzaa != null) {
            this.zza.zzp().zzao();
            activityLifecycleCallbacksZzaa.onActivityPaused((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override
    public void onActivityResumed(@NonNull IObjectWrapper iObjectWrapper, long j10) throws RemoteException {
        zza();
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacksZzaa = this.zza.zzp().zzaa();
        if (activityLifecycleCallbacksZzaa != null) {
            this.zza.zzp().zzao();
            activityLifecycleCallbacksZzaa.onActivityResumed((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override
    public void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, com.google.android.gms.internal.measurement.zzdo zzdoVar, long j10) throws RemoteException {
        zza();
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacksZzaa = this.zza.zzp().zzaa();
        Bundle bundle = new Bundle();
        if (activityLifecycleCallbacksZzaa != null) {
            this.zza.zzp().zzao();
            activityLifecycleCallbacksZzaa.onActivitySaveInstanceState((Activity) ObjectWrapper.unwrap(iObjectWrapper), bundle);
        }
        try {
            zzdoVar.zza(bundle);
        } catch (RemoteException e10) {
            this.zza.zzj().zzu().zza("Error returning bundle value to wrapper", e10);
        }
    }

    @Override
    public void onActivityStarted(@NonNull IObjectWrapper iObjectWrapper, long j10) throws RemoteException {
        zza();
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacksZzaa = this.zza.zzp().zzaa();
        if (activityLifecycleCallbacksZzaa != null) {
            this.zza.zzp().zzao();
            activityLifecycleCallbacksZzaa.onActivityStarted((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override
    public void onActivityStopped(@NonNull IObjectWrapper iObjectWrapper, long j10) throws RemoteException {
        zza();
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacksZzaa = this.zza.zzp().zzaa();
        if (activityLifecycleCallbacksZzaa != null) {
            this.zza.zzp().zzao();
            activityLifecycleCallbacksZzaa.onActivityStopped((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override
    public void performAction(Bundle bundle, com.google.android.gms.internal.measurement.zzdo zzdoVar, long j10) throws RemoteException {
        zza();
        zzdoVar.zza(null);
    }

    @Override
    public void registerOnMeasurementEventListener(com.google.android.gms.internal.measurement.zzdp zzdpVar) throws RemoteException {
        zzjl zzbVar;
        zza();
        synchronized (this.zzb) {
            try {
                zzbVar = this.zzb.get(Integer.valueOf(zzdpVar.zza()));
                if (zzbVar == null) {
                    zzbVar = new zzb(zzdpVar);
                    this.zzb.put(Integer.valueOf(zzdpVar.zza()), zzbVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.zza.zzp().zza(zzbVar);
    }

    @Override
    public void resetAnalyticsData(long j10) throws RemoteException {
        zza();
        this.zza.zzp().zza(j10);
    }

    @Override
    public void setConditionalUserProperty(@NonNull Bundle bundle, long j10) throws RemoteException {
        zza();
        if (bundle == null) {
            this.zza.zzj().zzg().zza("Conditional user property must not be null");
        } else {
            this.zza.zzp().zzb(bundle, j10);
        }
    }

    @Override
    public void setConsent(@NonNull Bundle bundle, long j10) throws RemoteException {
        zza();
        this.zza.zzp().zzc(bundle, j10);
    }

    @Override
    public void setConsentThirdParty(@NonNull Bundle bundle, long j10) throws RemoteException {
        zza();
        this.zza.zzp().zzd(bundle, j10);
    }

    @Override
    public void setCurrentScreen(@NonNull IObjectWrapper iObjectWrapper, @NonNull String str, @NonNull String str2, long j10) throws RemoteException {
        zza();
        this.zza.zzq().zza((Activity) ObjectWrapper.unwrap(iObjectWrapper), str, str2);
    }

    @Override
    public void setDataCollectionEnabled(boolean z10) throws RemoteException {
        zza();
        this.zza.zzp().zzc(z10);
    }

    @Override
    public void setDefaultEventParameters(@NonNull Bundle bundle) {
        zza();
        this.zza.zzp().zzc(bundle);
    }

    @Override
    public void setEventInterceptor(com.google.android.gms.internal.measurement.zzdp zzdpVar) throws RemoteException {
        zza();
        zza zzaVar = new zza(zzdpVar);
        if (this.zza.zzl().zzg()) {
            this.zza.zzp().zza(zzaVar);
        } else {
            this.zza.zzl().zzb(new zzm(this, zzaVar));
        }
    }

    @Override
    public void setInstanceIdProvider(com.google.android.gms.internal.measurement.zzdu zzduVar) throws RemoteException {
        zza();
    }

    @Override
    public void setMeasurementEnabled(boolean z10, long j10) throws RemoteException {
        zza();
        this.zza.zzp().zza(Boolean.valueOf(z10));
    }

    @Override
    public void setMinimumSessionDuration(long j10) throws RemoteException {
        zza();
    }

    @Override
    public void setSessionTimeoutDuration(long j10) throws RemoteException {
        zza();
        this.zza.zzp().zzc(j10);
    }

    @Override
    public void setSgtmDebugInfo(@NonNull Intent intent) throws RemoteException {
        zza();
        this.zza.zzp().zza(intent);
    }

    @Override
    public void setUserId(@NonNull String str, long j10) throws RemoteException {
        zza();
        this.zza.zzp().zza(str, j10);
    }

    @Override
    public void setUserProperty(@NonNull String str, @NonNull String str2, @NonNull IObjectWrapper iObjectWrapper, boolean z10, long j10) throws RemoteException {
        zza();
        this.zza.zzp().zza(str, str2, ObjectWrapper.unwrap(iObjectWrapper), z10, j10);
    }

    @Override
    public void unregisterOnMeasurementEventListener(com.google.android.gms.internal.measurement.zzdp zzdpVar) throws RemoteException {
        zzjl zzjlVarRemove;
        zza();
        synchronized (this.zzb) {
            zzjlVarRemove = this.zzb.remove(Integer.valueOf(zzdpVar.zza()));
        }
        if (zzjlVarRemove == null) {
            zzjlVarRemove = new zzb(zzdpVar);
        }
        this.zza.zzp().zzb(zzjlVarRemove);
    }

    private final void zza(com.google.android.gms.internal.measurement.zzdo zzdoVar, String str) {
        zza();
        this.zza.zzt().zza(zzdoVar, str);
    }
}
