package androidx.work.impl.background.systemalarm;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import androidx.core.app.NotificationCompat;
import androidx.work.impl.WorkDatabase;
import androidx.work.j;
import j4.i;
import j4.l;
import j4.m;

abstract class a {

    private static final String f15209a = j.i("Alarms");

    static class C0128a {
        static void a(AlarmManager alarmManager, int i10, long j10, PendingIntent pendingIntent) {
            alarmManager.setExact(i10, j10, pendingIntent);
        }
    }

    public static void a(Context context, WorkDatabase workDatabase, m mVar) {
        j4.j jVarK0 = workDatabase.k0();
        i iVarA = jVarK0.a(mVar);
        if (iVarA != null) {
            b(context, mVar, iVarA.f62960c);
            j.e().a(f15209a, "Removing SystemIdInfo for workSpecId (" + mVar + ")");
            jVarK0.c(mVar);
        }
    }

    private static void b(Context context, m mVar, int i10) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        PendingIntent service = PendingIntent.getService(context, i10, b.b(context, mVar), 603979776);
        if (service == null || alarmManager == null) {
            return;
        }
        j.e().a(f15209a, "Cancelling existing alarm with (workSpecId, systemId) (" + mVar + ", " + i10 + ")");
        alarmManager.cancel(service);
    }

    public static void c(Context context, WorkDatabase workDatabase, m mVar, long j10) {
        j4.j jVarK0 = workDatabase.k0();
        i iVarA = jVarK0.a(mVar);
        if (iVarA != null) {
            b(context, mVar, iVarA.f62960c);
            d(context, mVar, iVarA.f62960c, j10);
        } else {
            int iC = new androidx.work.impl.utils.i(workDatabase).c();
            jVarK0.b(l.a(mVar, iC));
            d(context, mVar, iC, j10);
        }
    }

    private static void d(Context context, m mVar, int i10, long j10) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        PendingIntent service = PendingIntent.getService(context, i10, b.b(context, mVar), 201326592);
        if (alarmManager != null) {
            C0128a.a(alarmManager, 0, j10, service);
        }
    }
}
