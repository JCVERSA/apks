package tech.palm.lib.utils;

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
import android.util.Log;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

public abstract class AdvertisingIdClient {

    public static final class AdvertisingInterface implements IInterface {
        private IBinder binder;

        public AdvertisingInterface(IBinder iBinder) {
            this.binder = iBinder;
        }

        @Override
        public IBinder asBinder() {
            return this.binder;
        }

        public String getId() throws RemoteException {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.binder.transact(1, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readString();
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }

        public boolean isLimitAdTrackingEnabled(boolean z) throws RemoteException {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                parcelObtain.writeInt(z ? 1 : 0);
                this.binder.transact(2, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readInt() != 0;
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }
    }

    public static final class b implements ServiceConnection {
        public boolean b;
        public final LinkedBlockingQueue c;

        public b() {
            this.b = false;
            this.c = new LinkedBlockingQueue(1);
        }

        public IBinder a() {
            if (this.b) {
                throw new IllegalStateException();
            }
            this.b = true;
            return (IBinder) this.c.poll(1L, TimeUnit.MINUTES);
        }

        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.c.put(iBinder);
            } catch (InterruptedException e) {
                Log.e("palm_id", "InterruptedException", e);
            }
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public static String a(Context context) throws PackageManager.NameNotFoundException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new UnsupportedOperationException("Cannot call in the main thread, You must call in the other thread");
        }
        context.getPackageManager().getPackageInfo("com.android.vending", 0);
        b bVar = new b();
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        if (!context.bindService(intent, bVar, 1)) {
            return "";
        }
        try {
            return new AdvertisingInterface(bVar.a()).getId();
        } finally {
            context.unbindService(bVar);
        }
    }
}
