package z;

import android.os.IBinder;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.util.Log;
import java.io.InputStream;
import java.io.OutputStream;

public final class c extends Process implements IBinder.DeathRecipient {

    public k.a f2322a;

    public ParcelFileDescriptor.AutoCloseOutputStream f2323b;

    public ParcelFileDescriptor.AutoCloseInputStream f2324c;

    public c(k.a aVar) {
        this.f2322a = aVar;
        try {
            aVar.asBinder().linkToDeath(this, 0);
        } catch (RemoteException e2) {
            Log.e("ShizukuRemoteProcess", "linkToDeath", e2);
        }
    }

    @Override
    public final void binderDied() {
        this.f2322a = null;
        Log.v("ShizukuRemoteProcess", "remote process is dead");
    }

    @Override
    public final void destroy() {
        try {
            this.f2322a.destroy();
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override
    public final int exitValue() {
        try {
            return this.f2322a.f();
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override
    public final InputStream getErrorStream() {
        try {
            return new ParcelFileDescriptor.AutoCloseInputStream(this.f2322a.a());
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override
    public final InputStream getInputStream() {
        if (this.f2324c == null) {
            try {
                this.f2324c = new ParcelFileDescriptor.AutoCloseInputStream(this.f2322a.c());
            } catch (RemoteException e2) {
                throw new RuntimeException(e2);
            }
        }
        return this.f2324c;
    }

    @Override
    public final OutputStream getOutputStream() {
        if (this.f2323b == null) {
            try {
                this.f2323b = new ParcelFileDescriptor.AutoCloseOutputStream(this.f2322a.b());
            } catch (RemoteException e2) {
                throw new RuntimeException(e2);
            }
        }
        return this.f2323b;
    }

    @Override
    public final int waitFor() {
        try {
            return this.f2322a.g();
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }
}
