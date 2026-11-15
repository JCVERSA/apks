package androidx.work.impl;

import android.content.Context;
import android.os.PowerManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import androidx.work.Configuration;
import androidx.work.ForegroundInfo;
import androidx.work.Logger;
import androidx.work.WorkerParameters;
import androidx.work.impl.foreground.ForegroundProcessor;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import androidx.work.impl.utils.WakeLocks;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import defpackage.im5;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class Processor implements ExecutionListener, ForegroundProcessor {
    private static final String FOREGROUND_WAKELOCK_TAG = "ProcessorForegroundLck";
    private static final String TAG = Logger.tagWithPrefix("Processor");
    private Context mAppContext;
    private Configuration mConfiguration;
    private List<Scheduler> mSchedulers;
    private WorkDatabase mWorkDatabase;
    private TaskExecutor mWorkTaskExecutor;
    private Map<String, WorkerWrapper> mEnqueuedWorkMap = new HashMap();
    private Map<String, WorkerWrapper> mForegroundWorkMap = new HashMap();
    private Set<String> mCancelledIds = new HashSet();
    private final List<ExecutionListener> mOuterListeners = new ArrayList();

    @Nullable
    private PowerManager.WakeLock mForegroundLock = null;
    private final Object mLock = new Object();

    public static class FutureListener implements Runnable {

        @NonNull
        private ExecutionListener mExecutionListener;

        @NonNull
        private im5 mFuture;

        @NonNull
        private String mWorkSpecId;

        public FutureListener(@NonNull ExecutionListener executionListener, @NonNull String str, @NonNull im5 im5Var) {
            this.mExecutionListener = executionListener;
            this.mWorkSpecId = str;
            this.mFuture = im5Var;
        }

        @Override
        public void run() {
            boolean zBooleanValue;
            try {
                zBooleanValue = ((Boolean) this.mFuture.get()).booleanValue();
            } catch (InterruptedException | ExecutionException unused) {
                zBooleanValue = true;
            }
            this.mExecutionListener.onExecuted(this.mWorkSpecId, zBooleanValue);
        }
    }

    public Processor(@NonNull Context context, @NonNull Configuration configuration, @NonNull TaskExecutor taskExecutor, @NonNull WorkDatabase workDatabase, @NonNull List<Scheduler> list) {
        this.mAppContext = context;
        this.mConfiguration = configuration;
        this.mWorkTaskExecutor = taskExecutor;
        this.mWorkDatabase = workDatabase;
        this.mSchedulers = list;
    }

    private static boolean interrupt(@NonNull String str, @Nullable WorkerWrapper workerWrapper) {
        if (workerWrapper == null) {
            Logger.get().debug(TAG, String.format("WorkerWrapper could not be found for %s", str), new Throwable[0]);
            return false;
        }
        workerWrapper.interrupt();
        Logger.get().debug(TAG, String.format("WorkerWrapper interrupted for %s", str), new Throwable[0]);
        return true;
    }

    private void stopForegroundService() {
        synchronized (this.mLock) {
            try {
                if (this.mForegroundWorkMap.isEmpty()) {
                    try {
                        this.mAppContext.startService(SystemForegroundDispatcher.createStopForegroundIntent(this.mAppContext));
                    } catch (Throwable th) {
                        Logger.get().error(TAG, "Unable to stop foreground service", th);
                    }
                    PowerManager.WakeLock wakeLock = this.mForegroundLock;
                    if (wakeLock != null) {
                        wakeLock.release();
                        this.mForegroundLock = null;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void addExecutionListener(@NonNull ExecutionListener executionListener) {
        synchronized (this.mLock) {
            this.mOuterListeners.add(executionListener);
        }
    }

    public boolean hasWork() {
        boolean z;
        synchronized (this.mLock) {
            try {
                z = (this.mEnqueuedWorkMap.isEmpty() && this.mForegroundWorkMap.isEmpty()) ? false : true;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    public boolean isCancelled(@NonNull String str) {
        boolean zContains;
        synchronized (this.mLock) {
            zContains = this.mCancelledIds.contains(str);
        }
        return zContains;
    }

    public boolean isEnqueued(@NonNull String str) {
        boolean z;
        synchronized (this.mLock) {
            try {
                z = this.mEnqueuedWorkMap.containsKey(str) || this.mForegroundWorkMap.containsKey(str);
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    public boolean isEnqueuedInForeground(@NonNull String str) {
        boolean zContainsKey;
        synchronized (this.mLock) {
            zContainsKey = this.mForegroundWorkMap.containsKey(str);
        }
        return zContainsKey;
    }

    @Override
    public void onExecuted(@NonNull String str, boolean z) {
        synchronized (this.mLock) {
            try {
                this.mEnqueuedWorkMap.remove(str);
                Logger.get().debug(TAG, String.format("%s %s executed; reschedule = %s", getClass().getSimpleName(), str, Boolean.valueOf(z)), new Throwable[0]);
                Iterator<ExecutionListener> it = this.mOuterListeners.iterator();
                while (it.hasNext()) {
                    it.next().onExecuted(str, z);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void removeExecutionListener(@NonNull ExecutionListener executionListener) {
        synchronized (this.mLock) {
            this.mOuterListeners.remove(executionListener);
        }
    }

    @Override
    public void startForeground(@NonNull String str, @NonNull ForegroundInfo foregroundInfo) {
        synchronized (this.mLock) {
            try {
                Logger.get().info(TAG, String.format("Moving WorkSpec (%s) to the foreground", str), new Throwable[0]);
                WorkerWrapper workerWrapperRemove = this.mEnqueuedWorkMap.remove(str);
                if (workerWrapperRemove != null) {
                    if (this.mForegroundLock == null) {
                        PowerManager.WakeLock wakeLockNewWakeLock = WakeLocks.newWakeLock(this.mAppContext, FOREGROUND_WAKELOCK_TAG);
                        this.mForegroundLock = wakeLockNewWakeLock;
                        wakeLockNewWakeLock.acquire();
                    }
                    this.mForegroundWorkMap.put(str, workerWrapperRemove);
                    ContextCompat.startForegroundService(this.mAppContext, SystemForegroundDispatcher.createStartForegroundIntent(this.mAppContext, str, foregroundInfo));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean startWork(@NonNull String str) {
        return startWork(str, null);
    }

    public boolean stopAndCancelWork(@NonNull String str) {
        boolean zInterrupt;
        synchronized (this.mLock) {
            try {
                Logger.get().debug(TAG, String.format("Processor cancelling %s", str), new Throwable[0]);
                this.mCancelledIds.add(str);
                WorkerWrapper workerWrapperRemove = this.mForegroundWorkMap.remove(str);
                boolean z = workerWrapperRemove != null;
                if (workerWrapperRemove == null) {
                    workerWrapperRemove = this.mEnqueuedWorkMap.remove(str);
                }
                zInterrupt = interrupt(str, workerWrapperRemove);
                if (z) {
                    stopForegroundService();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zInterrupt;
    }

    @Override
    public void stopForeground(@NonNull String str) {
        synchronized (this.mLock) {
            this.mForegroundWorkMap.remove(str);
            stopForegroundService();
        }
    }

    public boolean stopForegroundWork(@NonNull String str) {
        boolean zInterrupt;
        synchronized (this.mLock) {
            Logger.get().debug(TAG, String.format("Processor stopping foreground work %s", str), new Throwable[0]);
            zInterrupt = interrupt(str, this.mForegroundWorkMap.remove(str));
        }
        return zInterrupt;
    }

    public boolean stopWork(@NonNull String str) {
        boolean zInterrupt;
        synchronized (this.mLock) {
            Logger.get().debug(TAG, String.format("Processor stopping background work %s", str), new Throwable[0]);
            zInterrupt = interrupt(str, this.mEnqueuedWorkMap.remove(str));
        }
        return zInterrupt;
    }

    public boolean startWork(@NonNull String str, @Nullable WorkerParameters.RuntimeExtras runtimeExtras) {
        synchronized (this.mLock) {
            try {
                if (isEnqueued(str)) {
                    Logger.get().debug(TAG, String.format("Work %s is already enqueued for processing", str), new Throwable[0]);
                    return false;
                }
                WorkerWrapper workerWrapperBuild = new WorkerWrapper.Builder(this.mAppContext, this.mConfiguration, this.mWorkTaskExecutor, this, this.mWorkDatabase, str).withSchedulers(this.mSchedulers).withRuntimeExtras(runtimeExtras).build();
                im5 future = workerWrapperBuild.getFuture();
                future.addListener(new FutureListener(this, str, future), this.mWorkTaskExecutor.getMainThreadExecutor());
                this.mEnqueuedWorkMap.put(str, workerWrapperBuild);
                this.mWorkTaskExecutor.getBackgroundExecutor().execute(workerWrapperBuild);
                Logger.get().debug(TAG, String.format("%s: processing %s", getClass().getSimpleName(), str), new Throwable[0]);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
