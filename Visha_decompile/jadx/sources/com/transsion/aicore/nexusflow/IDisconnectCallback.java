package com.transsion.aicore.nexusflow;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public interface IDisconnectCallback extends IInterface {
    public static final String DESCRIPTOR = "com.transsion.aicore.nexusflow.IDisconnectCallback";

    public static class Default implements IDisconnectCallback {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public void onDisconnected() {
        }
    }

    public static abstract class Stub extends Binder implements IDisconnectCallback {
        static final int TRANSACTION_onDisconnected = 1;

        public static class Proxy implements IDisconnectCallback {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IDisconnectCallback.DESCRIPTOR;
            }

            @Override
            public void onDisconnected() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IDisconnectCallback.DESCRIPTOR);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IDisconnectCallback.DESCRIPTOR);
        }

        public static IDisconnectCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IDisconnectCallback.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IDisconnectCallback)) ? new Proxy(iBinder) : (IDisconnectCallback) iInterfaceQueryLocalInterface;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IDisconnectCallback.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(IDisconnectCallback.DESCRIPTOR);
                return true;
            }
            if (i != 1) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            onDisconnected();
            parcel2.writeNoException();
            return true;
        }
    }

    void onDisconnected();
}
