package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdy;
import com.google.android.gms.measurement.internal.zzlb;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class FirebaseAnalytics {

    private static volatile FirebaseAnalytics f30223c;

    private final zzdy f30224a;

    private ExecutorService f30225b;

    public enum ConsentStatus {
        GRANTED,
        DENIED
    }

    public enum ConsentType {
        AD_STORAGE,
        ANALYTICS_STORAGE,
        AD_USER_DATA,
        AD_PERSONALIZATION
    }

    private FirebaseAnalytics(zzdy zzdyVar) {
        Preconditions.checkNotNull(zzdyVar);
        this.f30224a = zzdyVar;
    }

    private final ExecutorService b() {
        ExecutorService executorService;
        synchronized (FirebaseAnalytics.class) {
            try {
                if (this.f30225b == null) {
                    this.f30225b = new a(this, 0, 1, 30L, TimeUnit.SECONDS, new ArrayBlockingQueue(100));
                }
                executorService = this.f30225b;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return executorService;
    }

    @NonNull
    @Keep
    public static FirebaseAnalytics getInstance(@NonNull Context context) {
        if (f30223c == null) {
            synchronized (FirebaseAnalytics.class) {
                try {
                    if (f30223c == null) {
                        f30223c = new FirebaseAnalytics(zzdy.zza(context));
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f30223c;
    }

    @Nullable
    @Keep
    public static zzlb getScionFrontendApiImplementation(Context context, @Nullable Bundle bundle) {
        zzdy zzdyVarZza = zzdy.zza(context, (String) null, (String) null, (String) null, bundle);
        if (zzdyVarZza == null) {
            return null;
        }
        return new d(zzdyVarZza);
    }

    @NonNull
    public final Task<String> getAppInstanceId() {
        try {
            return Tasks.call(b(), new c(this));
        } catch (RuntimeException e10) {
            this.f30224a.zza(5, "Failed to schedule task for getAppInstanceId", (Object) null, (Object) null, (Object) null);
            return Tasks.forException(e10);
        }
    }

    @NonNull
    @Keep
    public final String getFirebaseInstanceId() {
        try {
            return (String) Tasks.await(com.google.firebase.installations.c.p().getId(), 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e10) {
            throw new IllegalStateException(e10);
        } catch (ExecutionException e11) {
            throw new IllegalStateException(e11.getCause());
        } catch (TimeoutException unused) {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
    }

    @NonNull
    public final Task<Long> getSessionId() {
        try {
            return Tasks.call(b(), new b(this));
        } catch (RuntimeException e10) {
            this.f30224a.zza(5, "Failed to schedule task for getSessionId", (Object) null, (Object) null, (Object) null);
            return Tasks.forException(e10);
        }
    }

    public final void logEvent(@NonNull String str, @Nullable Bundle bundle) {
        this.f30224a.zza(str, bundle);
    }

    public final void resetAnalyticsData() {
        this.f30224a.zzj();
    }

    public final void setAnalyticsCollectionEnabled(boolean z10) {
        this.f30224a.zza(Boolean.valueOf(z10));
    }

    public final void setConsent(@NonNull Map<ConsentType, ConsentStatus> map) {
        Bundle bundle = new Bundle();
        ConsentStatus consentStatus = map.get(ConsentType.AD_STORAGE);
        if (consentStatus != null) {
            int iOrdinal = consentStatus.ordinal();
            if (iOrdinal == 0) {
                bundle.putString("ad_storage", "granted");
            } else if (iOrdinal == 1) {
                bundle.putString("ad_storage", "denied");
            }
        }
        ConsentStatus consentStatus2 = map.get(ConsentType.ANALYTICS_STORAGE);
        if (consentStatus2 != null) {
            int iOrdinal2 = consentStatus2.ordinal();
            if (iOrdinal2 == 0) {
                bundle.putString("analytics_storage", "granted");
            } else if (iOrdinal2 == 1) {
                bundle.putString("analytics_storage", "denied");
            }
        }
        ConsentStatus consentStatus3 = map.get(ConsentType.AD_USER_DATA);
        if (consentStatus3 != null) {
            int iOrdinal3 = consentStatus3.ordinal();
            if (iOrdinal3 == 0) {
                bundle.putString("ad_user_data", "granted");
            } else if (iOrdinal3 == 1) {
                bundle.putString("ad_user_data", "denied");
            }
        }
        ConsentStatus consentStatus4 = map.get(ConsentType.AD_PERSONALIZATION);
        if (consentStatus4 != null) {
            int iOrdinal4 = consentStatus4.ordinal();
            if (iOrdinal4 == 0) {
                bundle.putString("ad_personalization", "granted");
            } else if (iOrdinal4 == 1) {
                bundle.putString("ad_personalization", "denied");
            }
        }
        this.f30224a.zzc(bundle);
    }

    @Keep
    @Deprecated
    public final void setCurrentScreen(@NonNull Activity activity, @Nullable String str, @Nullable String str2) {
        this.f30224a.zza(activity, str, str2);
    }

    public final void setDefaultEventParameters(@Nullable Bundle bundle) {
        if (bundle != null) {
            bundle = new Bundle(bundle);
        }
        this.f30224a.zzd(bundle);
    }

    public final void setSessionTimeoutDuration(long j10) {
        this.f30224a.zza(j10);
    }

    public final void setUserId(@Nullable String str) {
        this.f30224a.zzd(str);
    }

    public final void setUserProperty(@NonNull String str, @Nullable String str2) {
        this.f30224a.zzb(str, str2);
    }
}
