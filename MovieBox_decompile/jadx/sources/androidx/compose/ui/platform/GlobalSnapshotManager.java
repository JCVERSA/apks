package androidx.compose.ui.platform;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

public final class GlobalSnapshotManager {

    public static final GlobalSnapshotManager f5330a = new GlobalSnapshotManager();

    private static final AtomicBoolean f5331b = new AtomicBoolean(false);

    private static final AtomicBoolean f5332c = new AtomicBoolean(false);

    public static final int f5333d = 8;

    private GlobalSnapshotManager() {
    }

    public final void b() {
        if (f5331b.compareAndSet(false, true)) {
            final kotlinx.coroutines.channels.d dVarB = kotlinx.coroutines.channels.g.b(1, null, null, 6, null);
            kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(AndroidUiDispatcher.f5278k.b()), null, null, new GlobalSnapshotManager$ensureStarted$1(dVarB, null), 3, null);
            androidx.compose.runtime.snapshots.j.f3695e.k(new Function1<Object, Unit>() {
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    m161invoke(obj);
                    return Unit.f64096a;
                }

                public final void m161invoke(Object obj) {
                    if (GlobalSnapshotManager.f5332c.compareAndSet(false, true)) {
                        dVarB.a(Unit.f64096a);
                    }
                }
            });
        }
    }
}
