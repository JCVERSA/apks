package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.os.PowerManager;
import androidx.work.Logger;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.constraints.WorkConstraintsCallback;
import androidx.work.impl.constraints.WorkConstraintsTrackerImpl;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.WakeLocks;
import androidx.work.impl.utils.WorkTimer;
import app.fast.ssh.ProtectedFastSSH;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

public class DelayMetCommandHandler implements WorkConstraintsCallback, WorkTimer.TimeLimitExceededListener {
    private static final int STATE_INITIAL = 0;
    private static final int STATE_START_REQUESTED = 1;
    private static final int STATE_STOP_REQUESTED = 2;
    private static final String TAG = Logger.tagWithPrefix(ProtectedFastSSH.s("⭢"));
    private final Context mContext;
    private int mCurrentState;
    private final SystemAlarmDispatcher mDispatcher;
    private boolean mHasConstraints;
    private final Object mLock;
    private final Executor mMainThreadExecutor;
    private final Executor mSerialExecutor;
    private final int mStartId;
    private final StartStopToken mToken;
    private PowerManager.WakeLock mWakeLock;
    private final WorkConstraintsTrackerImpl mWorkConstraintsTracker;
    private final WorkGenerationalId mWorkGenerationalId;

    public static void m454$r8$lambda$82vXfMh9MXtNtLNgTa3KWbb4VE(DelayMetCommandHandler delayMetCommandHandler) {
        delayMetCommandHandler.stopWork();
    }

    public static void m455$r8$lambda$r8ATJcovysxdAeSwS9XE6krknU(DelayMetCommandHandler delayMetCommandHandler) {
        delayMetCommandHandler.startWork();
    }

    DelayMetCommandHandler(Context context, int startId, SystemAlarmDispatcher dispatcher, StartStopToken startStopToken) {
        this.mContext = context;
        this.mStartId = startId;
        this.mDispatcher = dispatcher;
        this.mWorkGenerationalId = startStopToken.getId();
        this.mToken = startStopToken;
        Trackers trackers = dispatcher.getWorkManager().getTrackers();
        this.mSerialExecutor = dispatcher.getTaskExecutor().getSerialTaskExecutor();
        this.mMainThreadExecutor = dispatcher.getTaskExecutor().getMainThreadExecutor();
        this.mWorkConstraintsTracker = new WorkConstraintsTrackerImpl(trackers, this);
        this.mHasConstraints = false;
        this.mCurrentState = 0;
        this.mLock = new Object();
    }

    private void cleanUp() {
        String strS = ProtectedFastSSH.s("⭣");
        synchronized (this.mLock) {
            this.mWorkConstraintsTracker.reset();
            this.mDispatcher.getWorkTimer().stopTimer(this.mWorkGenerationalId);
            PowerManager.WakeLock wakeLock = this.mWakeLock;
            if (wakeLock != null && wakeLock.isHeld()) {
                Logger.get().debug(TAG, strS + this.mWakeLock + ProtectedFastSSH.s("⭤") + this.mWorkGenerationalId);
                this.mWakeLock.release();
            }
        }
    }

    private void startWork() {
        if (this.mCurrentState != 0) {
            Logger.get().debug(TAG, ProtectedFastSSH.s("⭦") + this.mWorkGenerationalId);
            return;
        }
        this.mCurrentState = 1;
        Logger.get().debug(TAG, ProtectedFastSSH.s("⭥") + this.mWorkGenerationalId);
        if (this.mDispatcher.getProcessor().startWork(this.mToken)) {
            this.mDispatcher.getWorkTimer().startTimer(this.mWorkGenerationalId, 600000L, this);
        } else {
            cleanUp();
        }
    }

    private void stopWork() {
        String workSpecId = this.mWorkGenerationalId.getWorkSpecId();
        if (this.mCurrentState >= 2) {
            Logger.get().debug(TAG, ProtectedFastSSH.s("⭬") + workSpecId);
            return;
        }
        this.mCurrentState = 2;
        Logger logger = Logger.get();
        String str = TAG;
        logger.debug(str, ProtectedFastSSH.s("⭧") + workSpecId);
        this.mMainThreadExecutor.execute(new SystemAlarmDispatcher.AddRunnable(this.mDispatcher, CommandHandler.createStopWorkIntent(this.mContext, this.mWorkGenerationalId), this.mStartId));
        if (!this.mDispatcher.getProcessor().isEnqueued(this.mWorkGenerationalId.getWorkSpecId())) {
            Logger.get().debug(str, ProtectedFastSSH.s("⭪") + workSpecId + ProtectedFastSSH.s("⭫"));
            return;
        }
        Logger.get().debug(str, ProtectedFastSSH.s("⭨") + workSpecId + ProtectedFastSSH.s("⭩"));
        this.mMainThreadExecutor.execute(new SystemAlarmDispatcher.AddRunnable(this.mDispatcher, CommandHandler.createScheduleWorkIntent(this.mContext, this.mWorkGenerationalId), this.mStartId));
    }

    void handleProcessWork() {
        String workSpecId = this.mWorkGenerationalId.getWorkSpecId();
        this.mWakeLock = WakeLocks.newWakeLock(this.mContext, workSpecId + ProtectedFastSSH.s("⭭") + this.mStartId + ProtectedFastSSH.s("⭮"));
        Logger logger = Logger.get();
        String str = TAG;
        logger.debug(str, ProtectedFastSSH.s("⭯") + this.mWakeLock + ProtectedFastSSH.s("⭤") + workSpecId);
        this.mWakeLock.acquire();
        WorkSpec workSpec = this.mDispatcher.getWorkManager().getWorkDatabase().workSpecDao().getWorkSpec(workSpecId);
        if (workSpec == null) {
            this.mSerialExecutor.execute(new DelayMetCommandHandler$$ExternalSyntheticLambda0(this));
            return;
        }
        boolean zHasConstraints = workSpec.hasConstraints();
        this.mHasConstraints = zHasConstraints;
        if (zHasConstraints) {
            this.mWorkConstraintsTracker.replace(Collections.singletonList(workSpec));
            return;
        }
        Logger.get().debug(str, ProtectedFastSSH.s("⭰") + workSpecId);
        onAllConstraintsMet(Collections.singletonList(workSpec));
    }

    @Override
    public void onAllConstraintsMet(List<WorkSpec> workSpecs) {
        Iterator<WorkSpec> it = workSpecs.iterator();
        while (it.hasNext()) {
            if (WorkSpecKt.generationalId(it.next()).equals(this.mWorkGenerationalId)) {
                this.mSerialExecutor.execute(new DelayMetCommandHandler$$ExternalSyntheticLambda1(this));
                return;
            }
        }
    }

    @Override
    public void onAllConstraintsNotMet(List<WorkSpec> workSpecs) {
        this.mSerialExecutor.execute(new DelayMetCommandHandler$$ExternalSyntheticLambda0(this));
    }

    void onExecuted(boolean needsReschedule) {
        Logger.get().debug(TAG, ProtectedFastSSH.s("⭱") + this.mWorkGenerationalId + ProtectedFastSSH.s("⭲") + needsReschedule);
        cleanUp();
        if (needsReschedule) {
            this.mMainThreadExecutor.execute(new SystemAlarmDispatcher.AddRunnable(this.mDispatcher, CommandHandler.createScheduleWorkIntent(this.mContext, this.mWorkGenerationalId), this.mStartId));
        }
        if (this.mHasConstraints) {
            this.mMainThreadExecutor.execute(new SystemAlarmDispatcher.AddRunnable(this.mDispatcher, CommandHandler.createConstraintsChangedIntent(this.mContext), this.mStartId));
        }
    }

    @Override
    public void onTimeLimitExceeded(WorkGenerationalId id) {
        Logger.get().debug(TAG, ProtectedFastSSH.s("⭳") + id);
        this.mSerialExecutor.execute(new DelayMetCommandHandler$$ExternalSyntheticLambda0(this));
    }
}
