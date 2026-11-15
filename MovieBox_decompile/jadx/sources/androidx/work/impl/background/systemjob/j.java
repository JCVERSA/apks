package androidx.work.impl.background.systemjob;

import android.app.job.JobInfo;
import android.content.ComponentName;
import android.content.Context;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.work.BackoffPolicy;
import androidx.work.NetworkType;
import j4.u;
import java.util.Iterator;

class j {

    private static final String f15239b = androidx.work.j.i("SystemJobInfoConverter");

    private final ComponentName f15240a;

    static class a {

        static final int[] f15241a;

        static {
            int[] iArr = new int[NetworkType.values().length];
            f15241a = iArr;
            try {
                iArr[NetworkType.NOT_REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15241a[NetworkType.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15241a[NetworkType.UNMETERED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15241a[NetworkType.NOT_ROAMING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15241a[NetworkType.METERED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    j(Context context) {
        this.f15240a = new ComponentName(context.getApplicationContext(), (Class<?>) SystemJobService.class);
    }

    private static JobInfo.TriggerContentUri b(androidx.work.b.c cVar) {
        boolean zB = cVar.b();
        h.a();
        return g.a(cVar.a(), zB ? 1 : 0);
    }

    static int c(NetworkType networkType) {
        int i10 = a.f15241a[networkType.ordinal()];
        if (i10 == 1) {
            return 0;
        }
        if (i10 == 2) {
            return 1;
        }
        if (i10 == 3) {
            return 2;
        }
        if (i10 != 4) {
            if (i10 == 5 && Build.VERSION.SDK_INT >= 26) {
                return 4;
            }
        } else if (Build.VERSION.SDK_INT >= 24) {
            return 3;
        }
        androidx.work.j.e().a(f15239b, "API version too low. Cannot convert network type value " + networkType);
        return 1;
    }

    static void d(JobInfo.Builder builder, NetworkType networkType) {
        if (Build.VERSION.SDK_INT < 30 || networkType != NetworkType.TEMPORARILY_UNMETERED) {
            builder.setRequiredNetworkType(c(networkType));
        } else {
            builder.setRequiredNetwork(new NetworkRequest.Builder().addCapability(25).build());
        }
    }

    JobInfo a(u uVar, int i10) {
        androidx.work.b bVar = uVar.f62996j;
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("EXTRA_WORK_SPEC_ID", uVar.f62987a);
        persistableBundle.putInt("EXTRA_WORK_SPEC_GENERATION", uVar.f());
        persistableBundle.putBoolean("EXTRA_IS_PERIODIC", uVar.j());
        JobInfo.Builder extras = new JobInfo.Builder(i10, this.f15240a).setRequiresCharging(bVar.g()).setRequiresDeviceIdle(bVar.h()).setExtras(persistableBundle);
        d(extras, bVar.d());
        if (!bVar.h()) {
            extras.setBackoffCriteria(uVar.f62999m, uVar.f62998l == BackoffPolicy.LINEAR ? 0 : 1);
        }
        long jMax = Math.max(uVar.c() - System.currentTimeMillis(), 0L);
        int i11 = Build.VERSION.SDK_INT;
        if (i11 <= 28 || jMax > 0) {
            extras.setMinimumLatency(jMax);
        } else if (!uVar.f63003q) {
            extras.setImportantWhileForeground(true);
        }
        if (i11 >= 24 && bVar.e()) {
            Iterator it = bVar.c().iterator();
            while (it.hasNext()) {
                extras.addTriggerContentUri(b((androidx.work.b.c) it.next()));
            }
            extras.setTriggerContentUpdateDelay(bVar.b());
            extras.setTriggerContentMaxDelay(bVar.a());
        }
        extras.setPersisted(false);
        int i12 = Build.VERSION.SDK_INT;
        if (i12 >= 26) {
            extras.setRequiresBatteryNotLow(bVar.f());
            extras.setRequiresStorageNotLow(bVar.i());
        }
        boolean z10 = uVar.f62997k > 0;
        boolean z11 = jMax > 0;
        if (i12 >= 31 && uVar.f63003q && !z10 && !z11) {
            extras.setExpedited(true);
        }
        return extras.build();
    }
}
