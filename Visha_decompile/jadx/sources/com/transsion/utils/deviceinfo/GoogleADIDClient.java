package com.transsion.utils.deviceinfo;

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

public abstract class GoogleADIDClient {

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

    public static final class a {
        public final String a;
        public final boolean b;

        public a(String str, boolean z) {
            this.a = str;
            this.b = z;
        }

        public String a() {
            return this.a;
        }
    }

    public static final class b implements ServiceConnection {
        public boolean b;
        public final LinkedBlockingQueue c;

        public IBinder a() {
            if (this.b) {
                throw new IllegalStateException();
            }
            this.b = true;
            return (IBinder) this.c.take();
        }

        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                if (this.c.size() == 0) {
                    this.c.put(iBinder);
                }
            } catch (Exception unused) {
            }
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            try {
                this.c.clear();
            } catch (Exception unused) {
            }
        }

        public b() {
            this.b = false;
            this.c = new LinkedBlockingQueue(1);
        }
    }

    public static a a(Context context) throws PackageManager.NameNotFoundException, IOException {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        context.getPackageManager().getPackageInfo("com.android.vending", 0);
        b bVar = new b();
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        if (!context.bindService(intent, bVar, 1)) {
            throw new IOException("Google Play connection failed");
        }
        try {
            try {
                AdvertisingInterface advertisingInterface = new AdvertisingInterface(bVar.a());
                a aVar = new a(advertisingInterface.getId(), advertisingInterface.isLimitAdTrackingEnabled(true));
                context.unbindService(bVar);
                return aVar;
            } catch (Exception e) {
                throw e;
            }
        } catch (Throwable th) {
            context.unbindService(bVar);
            throw th;
        }
    }
}
