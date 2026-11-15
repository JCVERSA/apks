package androidx.room;

import android.annotation.SuppressLint;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.p004lifecycle.LiveData;
import androidx.room.RoomTrackingLiveData;
import defpackage.y45;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B?\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\t\u0012\u000e\u0010\r\u001a\n\u0012\u0006\b\u0001\u0012\u00020\f0\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0014¢\u0006\u0004\b\u0013\u0010\u0012R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0017R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u001f\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0017\u0010\u001f\u001a\u00020\u001e8\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u0017\u0010$\u001a\u00020#8\u0006¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u0017\u0010(\u001a\u00020#8\u0006¢\u0006\f\n\u0004\b(\u0010%\u001a\u0004\b)\u0010'R\u0017\u0010*\u001a\u00020#8\u0006¢\u0006\f\n\u0004\b*\u0010%\u001a\u0004\b+\u0010'R\u0017\u0010-\u001a\u00020,8\u0006¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R\u0017\u00101\u001a\u00020,8\u0006¢\u0006\f\n\u0004\b1\u0010.\u001a\u0004\b2\u00100R\u0011\u00106\u001a\u0002038F¢\u0006\u0006\u001a\u0004\b4\u00105¨\u00067"}, d2 = {"Landroidx/room/RoomTrackingLiveData;", "T", "Landroidx/lifecycle/LiveData;", "Landroidx/room/RoomDatabase;", "database", "Landroidx/room/InvalidationLiveDataContainer;", TtmlNode.RUBY_CONTAINER, "", "inTransaction", "Ljava/util/concurrent/Callable;", "computeFunction", "", "", "tableNames", MethodDecl.initName, "(Landroidx/room/RoomDatabase;Landroidx/room/InvalidationLiveDataContainer;ZLjava/util/concurrent/Callable;[Ljava/lang/String;)V", "Lzfb;", "onActive", "()V", "onInactive", "Landroidx/room/RoomDatabase;", "getDatabase", "()Landroidx/room/RoomDatabase;", "Landroidx/room/InvalidationLiveDataContainer;", "Z", "getInTransaction", "()Z", "Ljava/util/concurrent/Callable;", "getComputeFunction", "()Ljava/util/concurrent/Callable;", "Landroidx/room/InvalidationTracker$Observer;", "observer", "Landroidx/room/InvalidationTracker$Observer;", "getObserver", "()Landroidx/room/InvalidationTracker$Observer;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "invalid", "Ljava/util/concurrent/atomic/AtomicBoolean;", "getInvalid", "()Ljava/util/concurrent/atomic/AtomicBoolean;", "computing", "getComputing", "registeredObserver", "getRegisteredObserver", "Ljava/lang/Runnable;", "refreshRunnable", "Ljava/lang/Runnable;", "getRefreshRunnable", "()Ljava/lang/Runnable;", "invalidationRunnable", "getInvalidationRunnable", "Ljava/util/concurrent/Executor;", "getQueryExecutor", "()Ljava/util/concurrent/Executor;", "queryExecutor", "room-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SuppressLint({"RestrictedApi"})
public final class RoomTrackingLiveData<T> extends LiveData<T> {
    private final Callable<T> computeFunction;
    private final AtomicBoolean computing;
    private final InvalidationLiveDataContainer container;
    private final RoomDatabase database;
    private final boolean inTransaction;
    private final AtomicBoolean invalid;
    private final Runnable invalidationRunnable;
    private final InvalidationTracker.Observer observer;
    private final Runnable refreshRunnable;
    private final AtomicBoolean registeredObserver;

    public RoomTrackingLiveData(RoomDatabase roomDatabase, InvalidationLiveDataContainer invalidationLiveDataContainer, boolean z, Callable<T> callable, final String[] strArr) {
        y45.j(roomDatabase, "database");
        y45.j(invalidationLiveDataContainer, TtmlNode.RUBY_CONTAINER);
        y45.j(callable, "computeFunction");
        y45.j(strArr, "tableNames");
        this.database = roomDatabase;
        this.container = invalidationLiveDataContainer;
        this.inTransaction = z;
        this.computeFunction = callable;
        this.observer = new InvalidationTracker.Observer(strArr) {
            @Override
            public void onInvalidated(Set<String> tables) {
                y45.j(tables, "tables");
                ArchTaskExecutor.getInstance().executeOnMainThread(this.getInvalidationRunnable());
            }
        };
        this.invalid = new AtomicBoolean(true);
        this.computing = new AtomicBoolean(false);
        this.registeredObserver = new AtomicBoolean(false);
        this.refreshRunnable = new Runnable() {
            @Override
            public final void run() {
                RoomTrackingLiveData.refreshRunnable$lambda$0(this.b);
            }
        };
        this.invalidationRunnable = new Runnable() {
            @Override
            public final void run() {
                RoomTrackingLiveData.invalidationRunnable$lambda$1(this.b);
            }
        };
    }

    public static final void invalidationRunnable$lambda$1(RoomTrackingLiveData roomTrackingLiveData) {
        y45.j(roomTrackingLiveData, "this$0");
        boolean zHasActiveObservers = roomTrackingLiveData.hasActiveObservers();
        if (roomTrackingLiveData.invalid.compareAndSet(false, true) && zHasActiveObservers) {
            roomTrackingLiveData.getQueryExecutor().execute(roomTrackingLiveData.refreshRunnable);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0035 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void refreshRunnable$lambda$0(RoomTrackingLiveData roomTrackingLiveData) {
        boolean z;
        y45.j(roomTrackingLiveData, "this$0");
        if (roomTrackingLiveData.registeredObserver.compareAndSet(false, true)) {
            roomTrackingLiveData.database.getInvalidationTracker().addWeakObserver(roomTrackingLiveData.observer);
        }
        do {
            if (roomTrackingLiveData.computing.compareAndSet(false, true)) {
                T tCall = null;
                z = false;
                while (roomTrackingLiveData.invalid.compareAndSet(true, false)) {
                    try {
                        tCall = roomTrackingLiveData.computeFunction.call();
                        z = true;
                    } catch (Exception e) {
                        throw new RuntimeException("Exception while computing database live data.", e);
                    }
                }
                if (z) {
                    roomTrackingLiveData.postValue(tCall);
                }
                roomTrackingLiveData.computing.set(false);
            } else {
                z = false;
            }
            if (!z) {
                return;
            }
        } while (roomTrackingLiveData.invalid.get());
    }

    public final Callable<T> getComputeFunction() {
        return this.computeFunction;
    }

    public final AtomicBoolean getComputing() {
        return this.computing;
    }

    public final RoomDatabase getDatabase() {
        return this.database;
    }

    public final boolean getInTransaction() {
        return this.inTransaction;
    }

    public final AtomicBoolean getInvalid() {
        return this.invalid;
    }

    public final Runnable getInvalidationRunnable() {
        return this.invalidationRunnable;
    }

    public final InvalidationTracker.Observer getObserver() {
        return this.observer;
    }

    public final Executor getQueryExecutor() {
        return this.inTransaction ? this.database.getTransactionExecutor() : this.database.getQueryExecutor();
    }

    public final Runnable getRefreshRunnable() {
        return this.refreshRunnable;
    }

    public final AtomicBoolean getRegisteredObserver() {
        return this.registeredObserver;
    }

    @Override
    public void onActive() {
        super.onActive();
        InvalidationLiveDataContainer invalidationLiveDataContainer = this.container;
        y45.h(this, "null cannot be cast to non-null type androidx.lifecycle.LiveData<kotlin.Any>");
        invalidationLiveDataContainer.onActive(this);
        getQueryExecutor().execute(this.refreshRunnable);
    }

    @Override
    public void onInactive() {
        super.onInactive();
        InvalidationLiveDataContainer invalidationLiveDataContainer = this.container;
        y45.h(this, "null cannot be cast to non-null type androidx.lifecycle.LiveData<kotlin.Any>");
        invalidationLiveDataContainer.onInactive(this);
    }
}
