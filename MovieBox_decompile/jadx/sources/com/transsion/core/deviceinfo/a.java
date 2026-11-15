package com.transsion.core.deviceinfo;

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

abstract class a {

    public static final class b {

        private final String f42834a;

        private final boolean f42835b;

        b(String str, boolean z10) {
            this.f42834a = str;
            this.f42835b = z10;
        }

        public String a() {
            return this.f42834a;
        }
    }

    private static final class c implements ServiceConnection {

        boolean f42836a;

        private final LinkedBlockingQueue f42837b;

        private c() {
            this.f42836a = false;
            this.f42837b = new LinkedBlockingQueue(1);
        }

        public IBinder a() {
            if (this.f42836a) {
                throw new IllegalStateException();
            }
            this.f42836a = true;
            return (IBinder) this.f42837b.take();
        }

        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                if (this.f42837b.size() == 0) {
                    this.f42837b.put(iBinder);
                }
            } catch (Exception unused) {
            }
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            try {
                this.f42837b.clear();
            } catch (Exception unused) {
            }
        }
    }

    private static final class d implements IInterface {

        private IBinder f42838a;

        d(IBinder iBinder) {
            this.f42838a = iBinder;
        }

        @Override
        public IBinder asBinder() {
            return this.f42838a;
        }

        public String getId() {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f42838a.transact(1, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readString();
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }

        boolean isLimitAdTrackingEnabled(boolean z10) {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                parcelObtain.writeInt(z10 ? 1 : 0);
                this.f42838a.transact(2, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readInt() != 0;
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }
    }

    static b a(Context context) throws PackageManager.NameNotFoundException, IOException {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        context.getPackageManager().getPackageInfo("com.android.vending", 0);
        c cVar = new c();
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        if (!context.bindService(intent, cVar, 1)) {
            throw new IOException("Google Play connection failed");
        }
        try {
            try {
                d dVar = new d(cVar.a());
                b bVar = new b(dVar.getId(), dVar.isLimitAdTrackingEnabled(true));
                context.unbindService(cVar);
                return bVar;
            } catch (Exception e10) {
                throw e10;
            }
        } catch (Throwable th2) {
            context.unbindService(cVar);
            throw th2;
        }
    }
}
