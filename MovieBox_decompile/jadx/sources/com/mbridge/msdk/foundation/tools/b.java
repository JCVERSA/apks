package com.mbridge.msdk.foundation.tools;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;

public class b {

    public final class C0470b {

        private final String f34852a;

        private final boolean f34853b;

        C0470b(String str, boolean z10) {
            this.f34852a = str;
            this.f34853b = z10;
        }

        public String a() {
            return this.f34852a;
        }

        public boolean b() {
            return this.f34853b;
        }
    }

    private final class c implements ServiceConnection {

        private final LinkedBlockingQueue<IBinder> f34855a;

        boolean f34856b;

        private c() {
            this.f34855a = new LinkedBlockingQueue<>(1);
            this.f34856b = false;
        }

        public IBinder a() throws InterruptedException {
            if (this.f34856b) {
                throw new IllegalStateException();
            }
            this.f34856b = true;
            return this.f34855a.take();
        }

        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.f34855a.put(iBinder);
            } catch (InterruptedException e10) {
                o0.b("AdvertisingIdClient", e10.getMessage());
            }
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    private final class d implements IInterface {

        private IBinder f34858a;

        public d(IBinder iBinder) {
            this.f34858a = iBinder;
        }

        public boolean a(boolean z10) throws RemoteException {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            boolean z11 = false;
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                parcelObtain.writeInt(z10 ? 1 : 0);
                this.f34858a.transact(2, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                z11 = parcelObtain2.readInt() != 0;
                parcelObtain2.recycle();
                parcelObtain.recycle();
            } catch (Throwable th2) {
                try {
                    o0.b("AdvertisingIdClient", th2.getMessage());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
            return z11;
        }

        @Override
        public IBinder asBinder() {
            return this.f34858a;
        }

        public String getId() throws RemoteException {
            String string;
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f34858a.transact(1, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                string = parcelObtain2.readString();
            } catch (Throwable th2) {
                try {
                    o0.b("AdvertisingIdClient", th2.getMessage());
                    string = null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
            return string;
        }
    }

    public C0470b a(Context context) throws Exception {
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
                C0470b c0470b = new C0470b(dVar.getId(), dVar.a(true));
                context.unbindService(cVar);
                return c0470b;
            } catch (Exception e10) {
                throw e10;
            }
        } catch (Throwable th2) {
            context.unbindService(cVar);
            throw th2;
        }
    }
}
