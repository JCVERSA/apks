package com.xui.xhide;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IXHideReadAidlInterface extends IInterface {
    public static final String DESCRIPTOR = "com.xui.xhide.IXHideReadAidlInterface";

    public static class Default implements IXHideReadAidlInterface {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public int getFileCount(String str) throws RemoteException {
            return 0;
        }

        @Override
        public boolean isXHideInit() throws RemoteException {
            return false;
        }
    }

    public static abstract class Stub extends Binder implements IXHideReadAidlInterface {
        static final int TRANSACTION_getFileCount = 2;
        static final int TRANSACTION_isXHideInit = 1;

        public static class Proxy implements IXHideReadAidlInterface {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override
            public int getFileCount(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IXHideReadAidlInterface.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return IXHideReadAidlInterface.DESCRIPTOR;
            }

            @Override
            public boolean isXHideInit() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IXHideReadAidlInterface.DESCRIPTOR);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IXHideReadAidlInterface.DESCRIPTOR);
        }

        public static IXHideReadAidlInterface asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IXHideReadAidlInterface.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IXHideReadAidlInterface)) ? new Proxy(iBinder) : (IXHideReadAidlInterface) iInterfaceQueryLocalInterface;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IXHideReadAidlInterface.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(IXHideReadAidlInterface.DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                boolean zIsXHideInit = isXHideInit();
                parcel2.writeNoException();
                parcel2.writeInt(zIsXHideInit ? 1 : 0);
            } else {
                if (i != 2) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                int fileCount = getFileCount(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(fileCount);
            }
            return true;
        }
    }

    int getFileCount(String str) throws RemoteException;

    boolean isXHideInit() throws RemoteException;
}
