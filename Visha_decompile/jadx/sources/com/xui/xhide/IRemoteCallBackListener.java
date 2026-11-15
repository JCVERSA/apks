package com.xui.xhide;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IRemoteCallBackListener extends IInterface {
    public static final String DESCRIPTOR = "com.xui.xhide.IRemoteCallBackListener";

    public static class Default implements IRemoteCallBackListener {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public void onHideFail(String str) throws RemoteException {
        }

        @Override
        public void onHideStart() throws RemoteException {
        }

        @Override
        public void onHideSuccess(int i, int i2) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IRemoteCallBackListener {
        static final int TRANSACTION_onHideFail = 2;
        static final int TRANSACTION_onHideStart = 3;
        static final int TRANSACTION_onHideSuccess = 1;

        public static class Proxy implements IRemoteCallBackListener {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IRemoteCallBackListener.DESCRIPTOR;
            }

            @Override
            public void onHideFail(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRemoteCallBackListener.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void onHideStart() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRemoteCallBackListener.DESCRIPTOR);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void onHideSuccess(int i, int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRemoteCallBackListener.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IRemoteCallBackListener.DESCRIPTOR);
        }

        public static IRemoteCallBackListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IRemoteCallBackListener.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IRemoteCallBackListener)) ? new Proxy(iBinder) : (IRemoteCallBackListener) iInterfaceQueryLocalInterface;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IRemoteCallBackListener.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(IRemoteCallBackListener.DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                onHideSuccess(parcel.readInt(), parcel.readInt());
                parcel2.writeNoException();
            } else if (i == 2) {
                onHideFail(parcel.readString());
                parcel2.writeNoException();
            } else {
                if (i != 3) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                onHideStart();
                parcel2.writeNoException();
            }
            return true;
        }
    }

    void onHideFail(String str) throws RemoteException;

    void onHideStart() throws RemoteException;

    void onHideSuccess(int i, int i2) throws RemoteException;
}
