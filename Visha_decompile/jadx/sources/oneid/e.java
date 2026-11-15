package oneid;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

public abstract class e {

    public static final class b {
        public final String a;

        public b(String str, boolean z) {
            this.a = str;
        }

        public String a() {
            return this.a;
        }
    }

    public static final class c implements ServiceConnection {
        public boolean b;
        public final LinkedBlockingQueue c;

        public c() {
            this.b = false;
            this.c = new LinkedBlockingQueue(1);
        }

        public IBinder a() {
            if (this.b) {
                throw new IllegalStateException();
            }
            this.b = true;
            return (IBinder) this.c.poll(10L, TimeUnit.SECONDS);
        }

        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                if (this.c.isEmpty()) {
                    this.c.put(iBinder);
                }
            } catch (InterruptedException unused) {
            }
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public static b a(Context context) throws PackageManager.NameNotFoundException, IOException {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        context.getPackageManager().getPackageInfo("com.android.vending", 0);
        c cVar = new c();
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        if (context.bindService(intent, cVar, 1)) {
            try {
                try {
                    IBinder iBinderA = cVar.a();
                    if (iBinderA != null) {
                        d dVar = new d(iBinderA);
                        b bVar = new b(dVar.a(), dVar.a(true));
                        context.unbindService(cVar);
                        return bVar;
                    }
                    context.unbindService(cVar);
                } catch (Exception e) {
                    throw e;
                }
            } catch (Throwable th) {
                context.unbindService(cVar);
                throw th;
            }
            context.unbindService(cVar);
            throw th;
        }
        throw new IOException("Google Play connection failed");
    }

    public static final class d implements IInterface {
        private IBinder a;

        public d(IBinder iBinder) {
            this.a = iBinder;
        }

        public String a() throws RemoteException {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.a.transact(1, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readString();
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }

        @Override
        public IBinder asBinder() {
            return this.a;
        }

        public boolean a(boolean z) throws RemoteException {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                parcelObtain.writeInt(z ? 1 : 0);
                this.a.transact(2, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readInt() != 0;
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }
    }
}
