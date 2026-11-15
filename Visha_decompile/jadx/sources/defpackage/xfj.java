package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.cloudmessaging.zzt;
import com.transsion.push.PushConstants;
import defpackage.dnj;
import defpackage.hhj;
import defpackage.rjj;
import defpackage.xfj;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.TimeUnit;

public final class xfj implements ServiceConnection {
    public hhj d;
    public final dnj g;
    public int b = 0;
    public final Messenger c = new Messenger(new llh(Looper.getMainLooper(), new Handler.Callback() {
        @Override
        public final boolean handleMessage(Message message) {
            int i = message.arg1;
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                Log.d("MessengerIpcClient", "Received response to request: " + i);
            }
            xfj xfjVar = this.b;
            synchronized (xfjVar) {
                try {
                    rjj rjjVar = (rjj) xfjVar.f.get(i);
                    if (rjjVar == null) {
                        Log.w("MessengerIpcClient", "Received response for unknown request: " + i);
                        return true;
                    }
                    xfjVar.f.remove(i);
                    xfjVar.f();
                    Bundle data = message.getData();
                    if (data.getBoolean("unsupported", false)) {
                        rjjVar.c(new zzt(4, "Not supported by GmsCore", null));
                        return true;
                    }
                    rjjVar.a(data);
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }));
    public final Queue e = new ArrayDeque();
    public final SparseArray f = new SparseArray();

    public xfj(dnj dnjVar, vdj vdjVar) {
        this.g = dnjVar;
    }

    public final synchronized void a(int i, String str) {
        b(i, str, null);
    }

    public final synchronized void b(int i, String str, Throwable th) {
        try {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                Log.d("MessengerIpcClient", "Disconnected: ".concat(String.valueOf(str)));
            }
            int i2 = this.b;
            if (i2 == 0) {
                throw new IllegalStateException();
            }
            if (i2 != 1 && i2 != 2) {
                if (i2 != 3) {
                    return;
                }
                this.b = 4;
                return;
            }
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Unbinding service");
            }
            this.b = 4;
            cf1.b().c(this.g.a, this);
            zzt zztVar = new zzt(i, str, th);
            Iterator it = this.e.iterator();
            while (it.hasNext()) {
                ((rjj) it.next()).c(zztVar);
            }
            this.e.clear();
            for (int i3 = 0; i3 < this.f.size(); i3++) {
                ((rjj) this.f.valueAt(i3)).c(zztVar);
            }
            this.f.clear();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void c() {
        this.g.b.execute(new Runnable() {
            @Override
            public final void run() {
                final rjj rjjVar;
                while (true) {
                    final xfj xfjVar = this.zza;
                    synchronized (xfjVar) {
                        try {
                            if (xfjVar.b != 2) {
                                return;
                            }
                            if (xfjVar.e.isEmpty()) {
                                xfjVar.f();
                                return;
                            } else {
                                rjjVar = (rjj) xfjVar.e.poll();
                                xfjVar.f.put(rjjVar.a, rjjVar);
                                xfjVar.g.b.schedule(new Runnable() {
                                    @Override
                                    public final void run() {
                                        xfjVar.e(rjjVar.a);
                                    }
                                }, 30L, TimeUnit.SECONDS);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    if (Log.isLoggable("MessengerIpcClient", 3)) {
                        Log.d("MessengerIpcClient", "Sending ".concat(String.valueOf(rjjVar)));
                    }
                    dnj dnjVar = xfjVar.g;
                    Messenger messenger = xfjVar.c;
                    int i = rjjVar.c;
                    Context context = dnjVar.a;
                    Message messageObtain = Message.obtain();
                    messageObtain.what = i;
                    messageObtain.arg1 = rjjVar.a;
                    messageObtain.replyTo = messenger;
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("oneWay", rjjVar.b());
                    bundle.putString(PushConstants.PROVIDER_FIELD_PKG, context.getPackageName());
                    bundle.putBundle("data", rjjVar.d);
                    messageObtain.setData(bundle);
                    try {
                        xfjVar.d.a(messageObtain);
                    } catch (RemoteException e) {
                        xfjVar.a(2, e.getMessage());
                    }
                }
            }
        });
    }

    public final synchronized void d() {
        if (this.b == 1) {
            a(1, "Timed out while binding");
        }
    }

    public final synchronized void e(int i) {
        rjj rjjVar = (rjj) this.f.get(i);
        if (rjjVar != null) {
            Log.w("MessengerIpcClient", "Timing out request: " + i);
            this.f.remove(i);
            rjjVar.c(new zzt(3, "Timed out waiting for response", null));
            f();
        }
    }

    public final synchronized void f() {
        try {
            if (this.b == 2 && this.e.isEmpty() && this.f.size() == 0) {
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
                }
                this.b = 3;
                cf1.b().c(this.g.a, this);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized boolean g(rjj rjjVar) {
        int i = this.b;
        if (i != 0) {
            if (i == 1) {
                this.e.add(rjjVar);
                return true;
            }
            if (i != 2) {
                return false;
            }
            this.e.add(rjjVar);
            c();
            return true;
        }
        this.e.add(rjjVar);
        wd8.o(this.b == 0);
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Starting bind to GmsCore");
        }
        this.b = 1;
        Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
        intent.setPackage("com.google.android.gms");
        try {
            if (cf1.b().a(this.g.a, intent, this, 1)) {
                this.g.b.schedule(new Runnable() {
                    @Override
                    public final void run() {
                        this.zza.d();
                    }
                }, 30L, TimeUnit.SECONDS);
            } else {
                a(0, "Unable to bind to service");
            }
        } catch (SecurityException e) {
            b(0, "Unable to bind to service", e);
        }
        return true;
    }

    @Override
    public final void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service connected");
        }
        this.g.b.execute(new Runnable() {
            @Override
            public final void run() {
                xfj xfjVar = this.zza;
                IBinder iBinder2 = iBinder;
                synchronized (xfjVar) {
                    if (iBinder2 == null) {
                        xfjVar.a(0, "Null service connection");
                        return;
                    }
                    try {
                        xfjVar.d = new hhj(iBinder2);
                        xfjVar.b = 2;
                        xfjVar.c();
                    } catch (RemoteException e) {
                        xfjVar.a(0, e.getMessage());
                    }
                }
            }
        });
    }

    @Override
    public final void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service disconnected");
        }
        this.g.b.execute(new Runnable() {
            @Override
            public final void run() {
                this.zza.a(2, "Service disconnected");
            }
        });
    }
}
