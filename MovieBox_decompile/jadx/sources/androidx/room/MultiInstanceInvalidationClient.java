package androidx.room;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.c1;
import kotlinx.coroutines.flow.w0;

public final class MultiInstanceInvalidationClient {

    private final String f14148a;

    private final InvalidationTracker f14149b;

    private final Context f14150c;

    private final kotlinx.coroutines.n0 f14151d;

    private final AtomicBoolean f14152e;

    private int f14153f;

    private j f14154g;

    private final w0 f14155h;

    private final a f14156i;

    private final i f14157j;

    private final ServiceConnection f14158k;

    public static final class a extends InvalidationTracker.b {
        a(String[] strArr) {
            super(strArr);
        }

        @Override
        public boolean b() {
            return true;
        }

        @Override
        public void c(Set tables) {
            Intrinsics.h(tables, "tables");
            if (MultiInstanceInvalidationClient.this.f14152e.get()) {
                return;
            }
            try {
                j jVar = MultiInstanceInvalidationClient.this.f14154g;
                if (jVar != null) {
                    jVar.Z(MultiInstanceInvalidationClient.this.f14153f, (String[]) tables.toArray(new String[0]));
                }
            } catch (RemoteException e10) {
                Log.w("ROOM", "Cannot broadcast invalidation", e10);
            }
        }
    }

    public static final class b implements ServiceConnection {
        b() {
        }

        @Override
        public void onServiceConnected(ComponentName name, IBinder service) {
            Intrinsics.h(name, "name");
            Intrinsics.h(service, "service");
            MultiInstanceInvalidationClient.this.f14154g = j.a.X0(service);
            MultiInstanceInvalidationClient.this.i();
        }

        @Override
        public void onServiceDisconnected(ComponentName name) {
            Intrinsics.h(name, "name");
            MultiInstanceInvalidationClient.this.f14154g = null;
        }
    }

    public MultiInstanceInvalidationClient(Context context, String name, InvalidationTracker invalidationTracker) {
        Intrinsics.h(context, "context");
        Intrinsics.h(name, "name");
        Intrinsics.h(invalidationTracker, "invalidationTracker");
        this.f14148a = name;
        this.f14149b = invalidationTracker;
        this.f14150c = context.getApplicationContext();
        this.f14151d = invalidationTracker.n().x();
        this.f14152e = new AtomicBoolean(true);
        this.f14155h = c1.a(0, 0, BufferOverflow.SUSPEND);
        this.f14156i = new a(invalidationTracker.o());
        this.f14157j = new i.a() {
            @Override
            public void o(String[] tables) {
                Intrinsics.h(tables, "tables");
                kotlinx.coroutines.k.d(this.f14161a.f14151d, null, null, new MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1(tables, this.f14161a, null), 3, null);
            }
        };
        this.f14158k = new b();
    }

    public final void i() {
        try {
            j jVar = this.f14154g;
            if (jVar != null) {
                this.f14153f = jVar.r0(this.f14157j, this.f14148a);
            }
        } catch (RemoteException e10) {
            Log.w("ROOM", "Cannot register multi-instance invalidation callback", e10);
        }
    }

    public final InvalidationTracker h() {
        return this.f14149b;
    }

    public final void j(Intent serviceIntent) {
        Intrinsics.h(serviceIntent, "serviceIntent");
        if (this.f14152e.compareAndSet(true, false)) {
            this.f14150c.bindService(serviceIntent, this.f14158k, 1);
            this.f14149b.j(this.f14156i);
        }
    }

    public final void k() {
        if (this.f14152e.compareAndSet(false, true)) {
            this.f14149b.y(this.f14156i);
            try {
                j jVar = this.f14154g;
                if (jVar != null) {
                    jVar.V0(this.f14157j, this.f14153f);
                }
            } catch (RemoteException e10) {
                Log.w("ROOM", "Cannot unregister multi-instance invalidation callback", e10);
            }
            this.f14150c.unbindService(this.f14158k);
        }
    }
}
