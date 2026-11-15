package bz;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

public abstract class e {

    public static final class b {

        private final String f16345a;

        b(String str, boolean z10) {
            this.f16345a = str;
        }

        public String a() {
            return this.f16345a;
        }
    }

    private static final class c implements ServiceConnection {

        boolean f16346a;

        private final LinkedBlockingQueue f16347b;

        private c() {
            this.f16346a = false;
            this.f16347b = new LinkedBlockingQueue(1);
        }

        public IBinder a() {
            if (this.f16346a) {
                throw new IllegalStateException();
            }
            this.f16346a = true;
            return (IBinder) this.f16347b.poll(10L, TimeUnit.SECONDS);
        }

        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                if (this.f16347b.isEmpty()) {
                    this.f16347b.put(iBinder);
                }
            } catch (InterruptedException unused) {
            }
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    private static final class d implements IInterface {

        private IBinder f16348a;

        d(IBinder iBinder) {
            this.f16348a = iBinder;
        }

        public String X0() {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f16348a.transact(1, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readString();
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }

        boolean Y0(boolean z10) {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                parcelObtain.writeInt(z10 ? 1 : 0);
                this.f16348a.transact(2, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readInt() != 0;
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }

        @Override
        public IBinder asBinder() {
            return this.f16348a;
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
                        b bVar = new b(dVar.X0(), dVar.Y0(true));
                        context.unbindService(cVar);
                        return bVar;
                    }
                    context.unbindService(cVar);
                } catch (Exception e10) {
                    throw e10;
                }
            } catch (Throwable th2) {
                context.unbindService(cVar);
                throw th2;
            }
            context.unbindService(cVar);
            throw th2;
        }
        throw new IOException("Google Play connection failed");
    }
}
