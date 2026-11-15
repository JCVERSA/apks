package androidx.work;

import android.annotation.SuppressLint;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media3.exoplayer.DefaultLivePlaybackSpeedControl;
import androidx.work.impl.DefaultRunnableScheduler;
import io.appmetrica.analytics.location.impl.m;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public final class Configuration {

    @SuppressLint({"MinMaxConstant"})
    public static final int MIN_SCHEDULER_LIMIT = 20;

    @Nullable
    final String mDefaultProcessName;

    @Nullable
    final InitializationExceptionHandler mExceptionHandler;

    @NonNull
    final Executor mExecutor;

    @NonNull
    final InputMergerFactory mInputMergerFactory;
    private final boolean mIsUsingDefaultTaskExecutor;
    final int mLoggingLevel;
    final int mMaxJobSchedulerId;
    final int mMaxSchedulerLimit;
    final int mMinJobSchedulerId;

    @NonNull
    final RunnableScheduler mRunnableScheduler;

    @NonNull
    final Executor mTaskExecutor;

    @NonNull
    final WorkerFactory mWorkerFactory;

    public interface Provider {
        @NonNull
        Configuration getWorkManagerConfiguration();
    }

    public Configuration(@NonNull Builder builder) {
        Executor executor = builder.mExecutor;
        if (executor == null) {
            this.mExecutor = createDefaultExecutor(false);
        } else {
            this.mExecutor = executor;
        }
        Executor executor2 = builder.mTaskExecutor;
        if (executor2 == null) {
            this.mIsUsingDefaultTaskExecutor = true;
            this.mTaskExecutor = createDefaultExecutor(true);
        } else {
            this.mIsUsingDefaultTaskExecutor = false;
            this.mTaskExecutor = executor2;
        }
        WorkerFactory workerFactory = builder.mWorkerFactory;
        if (workerFactory == null) {
            this.mWorkerFactory = WorkerFactory.getDefaultWorkerFactory();
        } else {
            this.mWorkerFactory = workerFactory;
        }
        InputMergerFactory inputMergerFactory = builder.mInputMergerFactory;
        if (inputMergerFactory == null) {
            this.mInputMergerFactory = InputMergerFactory.getDefaultInputMergerFactory();
        } else {
            this.mInputMergerFactory = inputMergerFactory;
        }
        RunnableScheduler runnableScheduler = builder.mRunnableScheduler;
        if (runnableScheduler == null) {
            this.mRunnableScheduler = new DefaultRunnableScheduler();
        } else {
            this.mRunnableScheduler = runnableScheduler;
        }
        this.mLoggingLevel = builder.mLoggingLevel;
        this.mMinJobSchedulerId = builder.mMinJobSchedulerId;
        this.mMaxJobSchedulerId = builder.mMaxJobSchedulerId;
        this.mMaxSchedulerLimit = builder.mMaxSchedulerLimit;
        this.mExceptionHandler = builder.mExceptionHandler;
        this.mDefaultProcessName = builder.mDefaultProcessName;
    }

    @NonNull
    private Executor createDefaultExecutor(boolean z) {
        return Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), createDefaultThreadFactory(z));
    }

    @NonNull
    private ThreadFactory createDefaultThreadFactory(final boolean z) {
        return new ThreadFactory() {
            private final AtomicInteger mThreadCount = new AtomicInteger(0);

            @Override
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, (z ? "WM.task-" : "androidx.work-") + this.mThreadCount.incrementAndGet());
            }
        };
    }

    @Nullable
    public String getDefaultProcessName() {
        return this.mDefaultProcessName;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public InitializationExceptionHandler getExceptionHandler() {
        return this.mExceptionHandler;
    }

    @NonNull
    public Executor getExecutor() {
        return this.mExecutor;
    }

    @NonNull
    public InputMergerFactory getInputMergerFactory() {
        return this.mInputMergerFactory;
    }

    public int getMaxJobSchedulerId() {
        return this.mMaxJobSchedulerId;
    }

    @IntRange(from = DefaultLivePlaybackSpeedControl.DEFAULT_MAX_LIVE_OFFSET_ERROR_MS_FOR_UNIT_SPEED, to = m.e)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getMaxSchedulerLimit() {
        return this.mMaxSchedulerLimit;
    }

    public int getMinJobSchedulerId() {
        return this.mMinJobSchedulerId;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getMinimumLoggingLevel() {
        return this.mLoggingLevel;
    }

    @NonNull
    public RunnableScheduler getRunnableScheduler() {
        return this.mRunnableScheduler;
    }

    @NonNull
    public Executor getTaskExecutor() {
        return this.mTaskExecutor;
    }

    @NonNull
    public WorkerFactory getWorkerFactory() {
        return this.mWorkerFactory;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean isUsingDefaultTaskExecutor() {
        return this.mIsUsingDefaultTaskExecutor;
    }

    public static final class Builder {

        @Nullable
        String mDefaultProcessName;

        @Nullable
        InitializationExceptionHandler mExceptionHandler;
        Executor mExecutor;
        InputMergerFactory mInputMergerFactory;
        int mLoggingLevel;
        int mMaxJobSchedulerId;
        int mMaxSchedulerLimit;
        int mMinJobSchedulerId;
        RunnableScheduler mRunnableScheduler;
        Executor mTaskExecutor;
        WorkerFactory mWorkerFactory;

        public Builder() {
            this.mLoggingLevel = 4;
            this.mMinJobSchedulerId = 0;
            this.mMaxJobSchedulerId = Integer.MAX_VALUE;
            this.mMaxSchedulerLimit = 20;
        }

        @NonNull
        public Configuration build() {
            return new Configuration(this);
        }

        @NonNull
        public Builder setDefaultProcessName(@NonNull String str) {
            this.mDefaultProcessName = str;
            return this;
        }

        @NonNull
        public Builder setExecutor(@NonNull Executor executor) {
            this.mExecutor = executor;
            return this;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setInitializationExceptionHandler(@NonNull InitializationExceptionHandler initializationExceptionHandler) {
            this.mExceptionHandler = initializationExceptionHandler;
            return this;
        }

        @NonNull
        public Builder setInputMergerFactory(@NonNull InputMergerFactory inputMergerFactory) {
            this.mInputMergerFactory = inputMergerFactory;
            return this;
        }

        @NonNull
        public Builder setJobSchedulerJobIdRange(int i, int i2) {
            if (i2 - i < 1000) {
                throw new IllegalArgumentException("WorkManager needs a range of at least 1000 job ids.");
            }
            this.mMinJobSchedulerId = i;
            this.mMaxJobSchedulerId = i2;
            return this;
        }

        @NonNull
        public Builder setMaxSchedulerLimit(int i) {
            if (i < 20) {
                throw new IllegalArgumentException("WorkManager needs to be able to schedule at least 20 jobs in JobScheduler.");
            }
            this.mMaxSchedulerLimit = Math.min(i, 50);
            return this;
        }

        @NonNull
        public Builder setMinimumLoggingLevel(int i) {
            this.mLoggingLevel = i;
            return this;
        }

        @NonNull
        public Builder setRunnableScheduler(@NonNull RunnableScheduler runnableScheduler) {
            this.mRunnableScheduler = runnableScheduler;
            return this;
        }

        @NonNull
        public Builder setTaskExecutor(@NonNull Executor executor) {
            this.mTaskExecutor = executor;
            return this;
        }

        @NonNull
        public Builder setWorkerFactory(@NonNull WorkerFactory workerFactory) {
            this.mWorkerFactory = workerFactory;
            return this;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder(@NonNull Configuration configuration) {
            this.mExecutor = configuration.mExecutor;
            this.mWorkerFactory = configuration.mWorkerFactory;
            this.mInputMergerFactory = configuration.mInputMergerFactory;
            this.mTaskExecutor = configuration.mTaskExecutor;
            this.mLoggingLevel = configuration.mLoggingLevel;
            this.mMinJobSchedulerId = configuration.mMinJobSchedulerId;
            this.mMaxJobSchedulerId = configuration.mMaxJobSchedulerId;
            this.mMaxSchedulerLimit = configuration.mMaxSchedulerLimit;
            this.mRunnableScheduler = configuration.mRunnableScheduler;
            this.mExceptionHandler = configuration.mExceptionHandler;
            this.mDefaultProcessName = configuration.mDefaultProcessName;
        }
    }
}
