package com.transsion.apiinvoke.ipc;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface SubscribeStateChangeObserver extends IInterface {

    public static class Default implements SubscribeStateChangeObserver {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public void onSubscribeChange(ParcelPublisher parcelPublisher, int i) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements SubscribeStateChangeObserver {
        private static final String DESCRIPTOR = "com.transsion.apiinvoke.ipc.SubscribeStateChangeObserver";
        static final int TRANSACTION_onSubscribeChange = 1;

        public static class Proxy implements SubscribeStateChangeObserver {
            public static SubscribeStateChangeObserver sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override
            public void onSubscribeChange(ParcelPublisher parcelPublisher, int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (parcelPublisher != null) {
                        parcelObtain.writeInt(1);
                        parcelPublisher.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onSubscribeChange(parcelPublisher, i);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static SubscribeStateChangeObserver asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof SubscribeStateChangeObserver)) ? new Proxy(iBinder) : (SubscribeStateChangeObserver) iInterfaceQueryLocalInterface;
        }

        public static SubscribeStateChangeObserver getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(SubscribeStateChangeObserver subscribeStateChangeObserver) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (subscribeStateChangeObserver == null) {
                return false;
            }
            Proxy.sDefaultImpl = subscribeStateChangeObserver;
            return true;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            onSubscribeChange(parcel.readInt() != 0 ? ParcelPublisher.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
            parcel2.writeNoException();
            return true;
        }
    }

    void onSubscribeChange(ParcelPublisher parcelPublisher, int i) throws RemoteException;
}
