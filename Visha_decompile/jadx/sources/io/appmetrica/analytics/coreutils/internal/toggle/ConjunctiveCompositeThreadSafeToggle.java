package io.appmetrica.analytics.coreutils.internal.toggle;

import com.yanzhenjie.recyclerview.widget.StickyNestedScrollView;
import defpackage.xq8;
import defpackage.zfb;
import io.appmetrica.analytics.coreapi.internal.control.Toggle;
import io.appmetrica.analytics.coreapi.internal.control.ToggleObserver;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.c;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\"\u0010\u0019\u001a\u00020\n8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lio/appmetrica/analytics/coreutils/internal/toggle/ConjunctiveCompositeThreadSafeToggle;", "Lio/appmetrica/analytics/coreapi/internal/control/Toggle;", "", "toggles", "", "tagPostfix", MethodDecl.initName, "(Ljava/util/List;Ljava/lang/String;)V", "Lio/appmetrica/analytics/coreapi/internal/control/ToggleObserver;", "toggleObserver", "", StickyNestedScrollView.STICKY_TAG, "Lzfb;", "registerObserver", "(Lio/appmetrica/analytics/coreapi/internal/control/ToggleObserver;Z)V", "removeObserver", "(Lio/appmetrica/analytics/coreapi/internal/control/ToggleObserver;)V", "toString", "()Ljava/lang/String;", "e", "Z", "getActualState", "()Z", "setActualState", "(Z)V", "actualState", "core-utils_release"}, k = 1, mv = {1, 6, 0})
public final class ConjunctiveCompositeThreadSafeToggle implements Toggle {
    private final String c;

    private volatile boolean actualState;
    private final ArrayList a = new ArrayList();
    private final HashMap b = new HashMap();
    private final ReentrantLock d = new ReentrantLock();

    public ConjunctiveCompositeThreadSafeToggle(List<? extends Toggle> list, String str) {
        this.c = "[ConjunctiveCompositeToggle-" + str + ']';
        try {
            access$acquireLock(this);
            for (final Toggle toggle : list) {
                ToggleObserver toggleObserver = new ToggleObserver() {
                    @Override
                    public void onStateChanged(boolean incomingState) {
                        ConjunctiveCompositeThreadSafeToggle conjunctiveCompositeThreadSafeToggle = this.a;
                        Toggle toggle2 = toggle;
                        try {
                            ConjunctiveCompositeThreadSafeToggle.access$acquireLock(conjunctiveCompositeThreadSafeToggle);
                            ConjunctiveCompositeThreadSafeToggle.access$updateState(conjunctiveCompositeThreadSafeToggle, this, incomingState, String.valueOf(xq8.b(toggle2.getClass()).o()));
                        } finally {
                            ConjunctiveCompositeThreadSafeToggle.access$releaseLock(conjunctiveCompositeThreadSafeToggle);
                        }
                    }
                };
                this.b.put(toggleObserver, Boolean.valueOf(toggle.getActualState()));
                toggle.registerObserver(toggleObserver, false);
            }
            setActualState(a(this.b.values()));
        } finally {
            access$releaseLock(this);
        }
    }

    private static boolean a(Collection collection) {
        if (!(collection instanceof Collection) || !collection.isEmpty()) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                if (!((Boolean) it.next()).booleanValue()) {
                    return false;
                }
            }
        }
        return true;
    }

    public static final void access$acquireLock(ConjunctiveCompositeThreadSafeToggle conjunctiveCompositeThreadSafeToggle) {
        conjunctiveCompositeThreadSafeToggle.getClass();
        boolean zTryLock = false;
        while (!zTryLock) {
            try {
                Result.Companion companion = Result.INSTANCE;
                zTryLock = conjunctiveCompositeThreadSafeToggle.d.tryLock(100L, TimeUnit.MILLISECONDS);
                Result.m279constructorimpl(zfb.a);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m279constructorimpl(c.a(th));
            }
            if (!zTryLock) {
                try {
                    Thread.sleep(100L);
                    Result.m279constructorimpl(zfb.a);
                } catch (Throwable th2) {
                    Result.Companion companion3 = Result.INSTANCE;
                    Result.m279constructorimpl(c.a(th2));
                }
            }
        }
    }

    public static final void access$releaseLock(ConjunctiveCompositeThreadSafeToggle conjunctiveCompositeThreadSafeToggle) {
        conjunctiveCompositeThreadSafeToggle.d.unlock();
    }

    public static final void access$updateState(ConjunctiveCompositeThreadSafeToggle conjunctiveCompositeThreadSafeToggle, ToggleObserver toggleObserver, boolean z, String str) {
        conjunctiveCompositeThreadSafeToggle.b.put(toggleObserver, Boolean.valueOf(z));
        boolean zA = a(conjunctiveCompositeThreadSafeToggle.b.values());
        if (zA != conjunctiveCompositeThreadSafeToggle.getActualState()) {
            conjunctiveCompositeThreadSafeToggle.setActualState(zA);
            Iterator it = conjunctiveCompositeThreadSafeToggle.a.iterator();
            while (it.hasNext()) {
                ((ToggleObserver) it.next()).onStateChanged(zA);
            }
        }
    }

    @Override
    public boolean getActualState() {
        return this.actualState;
    }

    @Override
    public void registerObserver(ToggleObserver toggleObserver, boolean sticky) {
        try {
            access$acquireLock(this);
            this.a.add(toggleObserver);
            if (sticky) {
                toggleObserver.onStateChanged(getActualState());
            }
        } finally {
            access$releaseLock(this);
        }
    }

    @Override
    public void removeObserver(ToggleObserver toggleObserver) {
        try {
            access$acquireLock(this);
            this.a.remove(toggleObserver);
        } finally {
            access$releaseLock(this);
        }
    }

    public void setActualState(boolean z) {
        this.actualState = z;
    }

    public String toString() {
        return "ConjunctiveCompositeThreadSafeToggle(toggleStates=" + this.b + ", tag='" + this.c + "', actualState=" + getActualState() + ')';
    }
}
