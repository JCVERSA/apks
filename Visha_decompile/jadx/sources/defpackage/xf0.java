package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class xf0 implements ServiceConnection {
    public boolean b = false;
    public final BlockingQueue c = new LinkedBlockingQueue();

    public IBinder a(long j, TimeUnit timeUnit) throws TimeoutException {
        wd8.k("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
        if (this.b) {
            throw new IllegalStateException("Cannot call get on this connection more than once");
        }
        this.b = true;
        IBinder iBinder = (IBinder) this.c.poll(j, timeUnit);
        if (iBinder != null) {
            return iBinder;
        }
        throw new TimeoutException("Timed out waiting for the service connection");
    }

    @Override
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.c.add(iBinder);
    }

    @Override
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
