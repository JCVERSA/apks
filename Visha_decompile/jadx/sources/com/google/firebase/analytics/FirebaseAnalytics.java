package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import androidx.annotation.Size;
import com.google.android.gms.internal.measurement.b;
import com.google.android.gms.tasks.a;
import defpackage.bgf;
import defpackage.e2j;
import defpackage.m5e;
import defpackage.tve;
import defpackage.wd8;
import defpackage.xda;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class FirebaseAnalytics {
    public static volatile FirebaseAnalytics c;
    public final b a;
    public ExecutorService b;

    public enum ConsentStatus {
        GRANTED,
        DENIED
    }

    public enum ConsentType {
        AD_STORAGE,
        ANALYTICS_STORAGE
    }

    public FirebaseAnalytics(b bVar) {
        wd8.l(bVar);
        this.a = bVar;
    }

    @NonNull
    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.WAKE_LOCK"})
    @Keep
    public static FirebaseAnalytics getInstance(@NonNull Context context) {
        if (c == null) {
            synchronized (FirebaseAnalytics.class) {
                try {
                    if (c == null) {
                        c = new FirebaseAnalytics(b.A(context, null, null, null, null));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    @Nullable
    @Keep
    public static e2j getScionFrontendApiImplementation(Context context, @Nullable Bundle bundle) {
        b bVarA = b.A(context, null, null, null, bundle);
        if (bVarA == null) {
            return null;
        }
        return new bgf(bVarA);
    }

    @NonNull
    public xda getAppInstanceId() {
        ExecutorService executorService;
        try {
            synchronized (FirebaseAnalytics.class) {
                try {
                    if (this.b == null) {
                        this.b = new m5e(this, 0, 1, 30L, TimeUnit.SECONDS, new ArrayBlockingQueue(100));
                    }
                    executorService = this.b;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return a.c(executorService, new tve(this));
        } catch (RuntimeException e) {
            this.a.a(5, "Failed to schedule task for getAppInstanceId", null, null, null);
            return a.d(e);
        }
    }

    @NonNull
    @Keep
    public String getFirebaseInstanceId() {
        try {
            return (String) a.b(com.google.firebase.installations.a.p().getId(), 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            throw new IllegalStateException(e);
        } catch (ExecutionException e2) {
            throw new IllegalStateException(e2.getCause());
        } catch (TimeoutException unused) {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
    }

    public void logEvent(@NonNull @Size(max = 40, min = 1) String str, @Nullable Bundle bundle) {
        this.a.Q(str, bundle);
    }

    public void resetAnalyticsData() {
        this.a.c();
    }

    public void setAnalyticsCollectionEnabled(boolean z) {
        this.a.i(Boolean.valueOf(z));
    }

    public void setConsent(@NonNull Map<ConsentType, ConsentStatus> map) {
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
        this.a.f(bundle);
    }

    @Keep
    @MainThread
    @Deprecated
    public void setCurrentScreen(@NonNull Activity activity, @Nullable @Size(max = 36, min = 1) String str, @Nullable @Size(max = 36, min = 1) String str2) {
        this.a.g(activity, str, str2);
    }

    public void setDefaultEventParameters(@Nullable Bundle bundle) {
        this.a.h(bundle);
    }

    public void setSessionTimeoutDuration(long j) {
        this.a.j(j);
    }

    public void setUserId(@Nullable String str) {
        this.a.k(str);
    }

    public void setUserProperty(@NonNull @Size(max = 24, min = 1) String str, @Nullable @Size(max = 36) String str2) {
        this.a.l(null, str, str2, false);
    }
}
