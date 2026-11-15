package androidx.work.impl.utils;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.ApplicationExitInfo;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteAccessPermException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteDiskIOException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteTableLockedException;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import androidx.work.WorkInfo;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.d0;
import androidx.work.impl.z;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.mvel2.ast.ASTNode;

public class ForceStopRunnable implements Runnable {
    static final String ACTION_FORCE_STOP_RESCHEDULE = "ACTION_FORCE_STOP_RESCHEDULE";
    private static final int ALARM_ID = -1;
    private static final long BACKOFF_DURATION_MS = 300;
    static final int MAX_ATTEMPTS = 3;
    private static final String TAG = androidx.work.j.i("ForceStopRunnable");
    private static final long TEN_YEARS = TimeUnit.DAYS.toMillis(3650);
    private final Context mContext;
    private final o mPreferenceUtils;
    private int mRetryCount = 0;
    private final d0 mWorkManager;

    public static class BroadcastReceiver extends android.content.BroadcastReceiver {

        private static final String f15320a = androidx.work.j.i("ForceStopRunnable$Rcvr");

        @Override
        public void onReceive(Context context, Intent intent) {
            if (intent == null || !ForceStopRunnable.ACTION_FORCE_STOP_RESCHEDULE.equals(intent.getAction())) {
                return;
            }
            androidx.work.j.e().j(f15320a, "Rescheduling alarm that keeps track of force-stops.");
            ForceStopRunnable.setAlarm(context);
        }
    }

    public ForceStopRunnable(@NonNull Context context, @NonNull d0 d0Var) {
        this.mContext = context.getApplicationContext();
        this.mWorkManager = d0Var;
        this.mPreferenceUtils = d0Var.p();
    }

    static Intent getIntent(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, (Class<?>) BroadcastReceiver.class));
        intent.setAction(ACTION_FORCE_STOP_RESCHEDULE);
        return intent;
    }

    private static PendingIntent getPendingIntent(Context context, int i10) {
        return PendingIntent.getBroadcast(context, -1, getIntent(context), i10);
    }

    @SuppressLint({"ClassVerificationFailure"})
    static void setAlarm(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        PendingIntent pendingIntent = getPendingIntent(context, Build.VERSION.SDK_INT >= 31 ? 167772160 : ASTNode.NOJIT);
        long jCurrentTimeMillis = System.currentTimeMillis() + TEN_YEARS;
        if (alarmManager != null) {
            alarmManager.setExact(0, jCurrentTimeMillis, pendingIntent);
        }
    }

    public boolean cleanUp() {
        boolean zI = androidx.work.impl.background.systemjob.k.i(this.mContext, this.mWorkManager);
        WorkDatabase workDatabaseT = this.mWorkManager.t();
        j4.v vVarN0 = workDatabaseT.n0();
        j4.r rVarM0 = workDatabaseT.m0();
        workDatabaseT.k();
        try {
            List<j4.u> listW = vVarN0.w();
            boolean z10 = (listW == null || listW.isEmpty()) ? false : true;
            if (z10) {
                for (j4.u uVar : listW) {
                    vVarN0.u(WorkInfo.State.ENQUEUED, uVar.f62987a);
                    vVarN0.r(uVar.f62987a, -1L);
                }
            }
            rVarM0.c();
            workDatabaseT.e0();
            workDatabaseT.t();
            return z10 || zI;
        } catch (Throwable th2) {
            workDatabaseT.t();
            throw th2;
        }
    }

    public void forceStopRunnable() {
        boolean zCleanUp = cleanUp();
        if (shouldRescheduleWorkers()) {
            androidx.work.j.e().a(TAG, "Rescheduling Workers.");
            this.mWorkManager.x();
            this.mWorkManager.p().g(false);
        } else if (isForceStopped()) {
            androidx.work.j.e().a(TAG, "Application was force-stopped, rescheduling.");
            this.mWorkManager.x();
            this.mPreferenceUtils.f(System.currentTimeMillis());
        } else if (zCleanUp) {
            androidx.work.j.e().a(TAG, "Found unfinished work, scheduling it.");
            androidx.work.impl.t.b(this.mWorkManager.m(), this.mWorkManager.t(), this.mWorkManager.r());
        }
    }

    @SuppressLint({"ClassVerificationFailure"})
    public boolean isForceStopped() {
        try {
            int i10 = Build.VERSION.SDK_INT;
            PendingIntent pendingIntent = getPendingIntent(this.mContext, i10 >= 31 ? 570425344 : ASTNode.DISCARD);
            if (i10 >= 30) {
                if (pendingIntent != null) {
                    pendingIntent.cancel();
                }
                List historicalProcessExitReasons = ((ActivityManager) this.mContext.getSystemService("activity")).getHistoricalProcessExitReasons(null, 0, 0);
                if (historicalProcessExitReasons != null && !historicalProcessExitReasons.isEmpty()) {
                    long jB = this.mPreferenceUtils.b();
                    for (int i11 = 0; i11 < historicalProcessExitReasons.size(); i11++) {
                        ApplicationExitInfo applicationExitInfoA = d.a(historicalProcessExitReasons.get(i11));
                        if (applicationExitInfoA.getReason() == 10 && applicationExitInfoA.getTimestamp() >= jB) {
                            return true;
                        }
                    }
                }
            } else if (pendingIntent == null) {
                setAlarm(this.mContext);
                return true;
            }
            return false;
        } catch (IllegalArgumentException e10) {
            e = e10;
            androidx.work.j.e().l(TAG, "Ignoring exception", e);
            return true;
        } catch (SecurityException e11) {
            e = e11;
            androidx.work.j.e().l(TAG, "Ignoring exception", e);
            return true;
        }
    }

    public boolean multiProcessChecks() {
        androidx.work.a aVarM = this.mWorkManager.m();
        if (TextUtils.isEmpty(aVarM.c())) {
            androidx.work.j.e().a(TAG, "The default process name was not specified.");
            return true;
        }
        boolean zB = p.b(this.mContext, aVarM);
        androidx.work.j.e().a(TAG, "Is default app process = " + zB);
        return zB;
    }

    @Override
    public void run() {
        int i10;
        try {
            if (!multiProcessChecks()) {
                this.mWorkManager.w();
                return;
            }
            while (true) {
                try {
                    z.d(this.mContext);
                    androidx.work.j.e().a(TAG, "Performing cleanup operations.");
                    try {
                        forceStopRunnable();
                        break;
                    } catch (SQLiteAccessPermException | SQLiteCantOpenDatabaseException | SQLiteConstraintException | SQLiteDatabaseCorruptException | SQLiteDatabaseLockedException | SQLiteDiskIOException | SQLiteTableLockedException e10) {
                        i10 = this.mRetryCount + 1;
                        this.mRetryCount = i10;
                        if (i10 >= 3) {
                            androidx.work.j jVarE = androidx.work.j.e();
                            String str = TAG;
                            jVarE.d(str, "The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e10);
                            IllegalStateException illegalStateException = new IllegalStateException("The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e10);
                            androidx.core.util.a aVarE = this.mWorkManager.m().e();
                            if (aVarE == null) {
                                throw illegalStateException;
                            }
                            androidx.work.j.e().b(str, "Routing exception to the specified exception handler", illegalStateException);
                            aVarE.accept(illegalStateException);
                            break;
                        }
                        long j10 = ((long) i10) * BACKOFF_DURATION_MS;
                        androidx.work.j.e().b(TAG, "Retrying after " + j10, e10);
                        sleep(((long) this.mRetryCount) * BACKOFF_DURATION_MS);
                    }
                    long j11 = ((long) i10) * BACKOFF_DURATION_MS;
                    androidx.work.j.e().b(TAG, "Retrying after " + j11, e10);
                    sleep(((long) this.mRetryCount) * BACKOFF_DURATION_MS);
                } catch (SQLiteException e11) {
                    androidx.work.j.e().c(TAG, "Unexpected SQLite exception during migrations");
                    IllegalStateException illegalStateException2 = new IllegalStateException("Unexpected SQLite exception during migrations", e11);
                    androidx.core.util.a aVarE2 = this.mWorkManager.m().e();
                    if (aVarE2 == null) {
                        throw illegalStateException2;
                    }
                    aVarE2.accept(illegalStateException2);
                }
            }
            this.mWorkManager.w();
        } catch (Throwable th2) {
            this.mWorkManager.w();
            throw th2;
        }
    }

    public boolean shouldRescheduleWorkers() {
        return this.mWorkManager.p().c();
    }

    public void sleep(long j10) {
        try {
            Thread.sleep(j10);
        } catch (InterruptedException unused) {
        }
    }
}
