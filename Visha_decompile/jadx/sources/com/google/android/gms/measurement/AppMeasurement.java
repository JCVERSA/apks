package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresPermission;
import androidx.annotation.Size;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzcl;
import com.google.android.gms.measurement.internal.e;
import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.e2j;
import defpackage.k5e;
import defpackage.kti;
import defpackage.mpi;
import defpackage.rve;
import defpackage.t4g;
import defpackage.wd8;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.mozilla.javascript.ES6Iterator;

@Deprecated
public class AppMeasurement {
    public static volatile AppMeasurement b;
    public final t4g a;

    public static class ConditionalUserProperty {

        @Keep
        public boolean mActive;

        @NonNull
        @Keep
        public String mAppId;

        @Keep
        public long mCreationTimestamp;

        @NonNull
        @Keep
        public String mExpiredEventName;

        @NonNull
        @Keep
        public Bundle mExpiredEventParams;

        @NonNull
        @Keep
        public String mName;

        @NonNull
        @Keep
        public String mOrigin;

        @Keep
        public long mTimeToLive;

        @NonNull
        @Keep
        public String mTimedOutEventName;

        @NonNull
        @Keep
        public Bundle mTimedOutEventParams;

        @NonNull
        @Keep
        public String mTriggerEventName;

        @Keep
        public long mTriggerTimeout;

        @NonNull
        @Keep
        public String mTriggeredEventName;

        @NonNull
        @Keep
        public Bundle mTriggeredEventParams;

        @Keep
        public long mTriggeredTimestamp;

        @NonNull
        @Keep
        public Object mValue;

        public ConditionalUserProperty(Bundle bundle) {
            wd8.l(bundle);
            this.mAppId = (String) mpi.a(bundle, "app_id", String.class, null);
            this.mOrigin = (String) mpi.a(bundle, "origin", String.class, null);
            this.mName = (String) mpi.a(bundle, "name", String.class, null);
            this.mValue = mpi.a(bundle, ES6Iterator.VALUE_PROPERTY, Object.class, null);
            this.mTriggerEventName = (String) mpi.a(bundle, "trigger_event_name", String.class, null);
            this.mTriggerTimeout = ((Long) mpi.a(bundle, "trigger_timeout", Long.class, 0L)).longValue();
            this.mTimedOutEventName = (String) mpi.a(bundle, "timed_out_event_name", String.class, null);
            this.mTimedOutEventParams = (Bundle) mpi.a(bundle, "timed_out_event_params", Bundle.class, null);
            this.mTriggeredEventName = (String) mpi.a(bundle, "triggered_event_name", String.class, null);
            this.mTriggeredEventParams = (Bundle) mpi.a(bundle, "triggered_event_params", Bundle.class, null);
            this.mTimeToLive = ((Long) mpi.a(bundle, "time_to_live", Long.class, 0L)).longValue();
            this.mExpiredEventName = (String) mpi.a(bundle, "expired_event_name", String.class, null);
            this.mExpiredEventParams = (Bundle) mpi.a(bundle, "expired_event_params", Bundle.class, null);
            this.mActive = ((Boolean) mpi.a(bundle, "active", Boolean.class, Boolean.FALSE)).booleanValue();
            this.mCreationTimestamp = ((Long) mpi.a(bundle, "creation_timestamp", Long.class, 0L)).longValue();
            this.mTriggeredTimestamp = ((Long) mpi.a(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
        }
    }

    public interface a extends kti {
    }

    public AppMeasurement(e eVar) {
        this.a = new k5e(eVar);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @NonNull
    @Keep
    @Deprecated
    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.WAKE_LOCK"})
    public static AppMeasurement getInstance(@NonNull Context context) {
        if (b == null) {
            synchronized (AppMeasurement.class) {
                if (b == null) {
                    e2j e2jVar = (e2j) FirebaseAnalytics.class.getDeclaredMethod("getScionFrontendApiImplementation", Context.class, Bundle.class).invoke(null, context, null);
                    if (e2jVar != null) {
                        b = new AppMeasurement(e2jVar);
                    } else {
                        b = new AppMeasurement(e.H(context, new zzcl(0L, 0L, true, null, null, null, null, null), null));
                    }
                }
            }
        }
        return b;
    }

    @Keep
    public void beginAdUnitExposure(@NonNull @Size(min = 1) String str) {
        this.a.zzp(str);
    }

    @Keep
    public void clearConditionalUserProperty(@NonNull @Size(max = 24, min = 1) String str, @NonNull String str2, @NonNull Bundle bundle) {
        this.a.g(str, str2, bundle);
    }

    @Keep
    public void endAdUnitExposure(@NonNull @Size(min = 1) String str) {
        this.a.zzr(str);
    }

    @Keep
    public long generateEventId() {
        return this.a.zzb();
    }

    @NonNull
    @Keep
    public String getAppInstanceId() {
        return this.a.zzh();
    }

    @NonNull
    @Keep
    @WorkerThread
    public List<ConditionalUserProperty> getConditionalUserProperties(@NonNull String str, @NonNull @Size(max = 23, min = 1) String str2) {
        List listF = this.a.f(str, str2);
        ArrayList arrayList = new ArrayList(listF == null ? 0 : listF.size());
        Iterator it = listF.iterator();
        while (it.hasNext()) {
            arrayList.add(new ConditionalUserProperty((Bundle) it.next()));
        }
        return arrayList;
    }

    @NonNull
    @Keep
    public String getCurrentScreenClass() {
        return this.a.zzi();
    }

    @NonNull
    @Keep
    public String getCurrentScreenName() {
        return this.a.zzj();
    }

    @NonNull
    @Keep
    public String getGmpAppId() {
        return this.a.zzk();
    }

    @Keep
    @WorkerThread
    public int getMaxUserProperties(@NonNull @Size(min = 1) String str) {
        return this.a.zza(str);
    }

    @NonNull
    @VisibleForTesting
    @Keep
    @WorkerThread
    public Map<String, Object> getUserProperties(@NonNull String str, @NonNull @Size(max = 24, min = 1) String str2, boolean z) {
        return this.a.c(str, str2, z);
    }

    @Keep
    public void logEventInternal(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle) {
        this.a.b(str, str2, bundle);
    }

    public void registerOnMeasurementEventListener(@NonNull a aVar) {
        this.a.e(aVar);
    }

    @Keep
    public void setConditionalUserProperty(@NonNull ConditionalUserProperty conditionalUserProperty) {
        wd8.l(conditionalUserProperty);
        t4g t4gVar = this.a;
        Bundle bundle = new Bundle();
        String str = conditionalUserProperty.mAppId;
        if (str != null) {
            bundle.putString("app_id", str);
        }
        String str2 = conditionalUserProperty.mOrigin;
        if (str2 != null) {
            bundle.putString("origin", str2);
        }
        String str3 = conditionalUserProperty.mName;
        if (str3 != null) {
            bundle.putString("name", str3);
        }
        Object obj = conditionalUserProperty.mValue;
        if (obj != null) {
            mpi.b(bundle, obj);
        }
        String str4 = conditionalUserProperty.mTriggerEventName;
        if (str4 != null) {
            bundle.putString("trigger_event_name", str4);
        }
        bundle.putLong("trigger_timeout", conditionalUserProperty.mTriggerTimeout);
        String str5 = conditionalUserProperty.mTimedOutEventName;
        if (str5 != null) {
            bundle.putString("timed_out_event_name", str5);
        }
        Bundle bundle2 = conditionalUserProperty.mTimedOutEventParams;
        if (bundle2 != null) {
            bundle.putBundle("timed_out_event_params", bundle2);
        }
        String str6 = conditionalUserProperty.mTriggeredEventName;
        if (str6 != null) {
            bundle.putString("triggered_event_name", str6);
        }
        Bundle bundle3 = conditionalUserProperty.mTriggeredEventParams;
        if (bundle3 != null) {
            bundle.putBundle("triggered_event_params", bundle3);
        }
        bundle.putLong("time_to_live", conditionalUserProperty.mTimeToLive);
        String str7 = conditionalUserProperty.mExpiredEventName;
        if (str7 != null) {
            bundle.putString("expired_event_name", str7);
        }
        Bundle bundle4 = conditionalUserProperty.mExpiredEventParams;
        if (bundle4 != null) {
            bundle.putBundle("expired_event_params", bundle4);
        }
        bundle.putLong("creation_timestamp", conditionalUserProperty.mCreationTimestamp);
        bundle.putBoolean("active", conditionalUserProperty.mActive);
        bundle.putLong("triggered_timestamp", conditionalUserProperty.mTriggeredTimestamp);
        t4gVar.a(bundle);
    }

    public void unregisterOnMeasurementEventListener(@NonNull a aVar) {
        this.a.d(aVar);
    }

    public AppMeasurement(e2j e2jVar) {
        this.a = new rve(e2jVar);
    }
}
