package androidx.work.impl.utils;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.arch.core.util.Function;
import androidx.p004lifecycle.LiveData;
import androidx.p004lifecycle.MediatorLiveData;
import androidx.p004lifecycle.Observer;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class LiveDataUtils {

    public class AnonymousClass1<In> implements Observer<In> {
        Out mCurrentOutput = null;
        final Object val$lock;
        final Function val$mappingMethod;
        final MediatorLiveData val$outputLiveData;
        final TaskExecutor val$workTaskExecutor;

        public AnonymousClass1(TaskExecutor taskExecutor, Object obj, Function function, MediatorLiveData mediatorLiveData) {
            this.val$workTaskExecutor = taskExecutor;
            this.val$lock = obj;
            this.val$mappingMethod = function;
            this.val$outputLiveData = mediatorLiveData;
        }

        @Override
        public void onChanged(@Nullable final In in) {
            this.val$workTaskExecutor.executeOnBackgroundThread(new Runnable() {
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r1v2, types: [Out, java.lang.Object] */
                @Override
                public void run() {
                    synchronized (AnonymousClass1.this.val$lock) {
                        try {
                            ?? Apply = AnonymousClass1.this.val$mappingMethod.apply(in);
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            Out out = anonymousClass1.mCurrentOutput;
                            if (out == 0 && Apply != 0) {
                                anonymousClass1.mCurrentOutput = Apply;
                                anonymousClass1.val$outputLiveData.postValue(Apply);
                            } else if (out != 0 && !out.equals(Apply)) {
                                AnonymousClass1 anonymousClass2 = AnonymousClass1.this;
                                anonymousClass2.mCurrentOutput = Apply;
                                anonymousClass2.val$outputLiveData.postValue(Apply);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            });
        }
    }

    private LiveDataUtils() {
    }

    public static <In, Out> LiveData<Out> dedupedMappedLiveDataFor(@NonNull LiveData<In> liveData, @NonNull Function<In, Out> function, @NonNull TaskExecutor taskExecutor) {
        Object obj = new Object();
        MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(liveData, new AnonymousClass1(taskExecutor, obj, function, mediatorLiveData));
        return mediatorLiveData;
    }
}
