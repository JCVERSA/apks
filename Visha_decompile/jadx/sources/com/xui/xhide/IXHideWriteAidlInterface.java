package com.xui.xhide;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IXHideWriteAidlInterface extends IInterface {
    public static final String DESCRIPTOR = "com.xui.xhide.IXHideWriteAidlInterface";

    public static class Default implements IXHideWriteAidlInterface {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public void hideFileByIds(int[] iArr, int[] iArr2) throws RemoteException {
        }

        @Override
        public void registerListener(IRemoteCallBackListener iRemoteCallBackListener) throws RemoteException {
        }

        @Override
        public void unregisterListener(IRemoteCallBackListener iRemoteCallBackListener) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IXHideWriteAidlInterface {
        static final int TRANSACTION_hideFileByIds = 3;
        static final int TRANSACTION_registerListener = 1;
        static final int TRANSACTION_unregisterListener = 2;

        public static class Proxy implements IXHideWriteAidlInterface {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IXHideWriteAidlInterface.DESCRIPTOR;
            }

            @Override
            public void hideFileByIds(int[] iArr, int[] iArr2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IXHideWriteAidlInterface.DESCRIPTOR);
                    parcelObtain.writeIntArray(iArr);
                    parcelObtain.writeIntArray(iArr2);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void registerListener(IRemoteCallBackListener iRemoteCallBackListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IXHideWriteAidlInterface.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(iRemoteCallBackListener);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void unregisterListener(IRemoteCallBackListener iRemoteCallBackListener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IXHideWriteAidlInterface.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(iRemoteCallBackListener);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IXHideWriteAidlInterface.DESCRIPTOR);
        }

        public static IXHideWriteAidlInterface asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IXHideWriteAidlInterface.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IXHideWriteAidlInterface)) ? new Proxy(iBinder) : (IXHideWriteAidlInterface) iInterfaceQueryLocalInterface;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IXHideWriteAidlInterface.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(IXHideWriteAidlInterface.DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                registerListener(IRemoteCallBackListener.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
            } else if (i == 2) {
                unregisterListener(IRemoteCallBackListener.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
            } else {
                if (i != 3) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                hideFileByIds(parcel.createIntArray(), parcel.createIntArray());
                parcel2.writeNoException();
            }
            return true;
        }
    }

    void hideFileByIds(int[] iArr, int[] iArr2) throws RemoteException;

    void registerListener(IRemoteCallBackListener iRemoteCallBackListener) throws RemoteException;

    void unregisterListener(IRemoteCallBackListener iRemoteCallBackListener) throws RemoteException;
}
