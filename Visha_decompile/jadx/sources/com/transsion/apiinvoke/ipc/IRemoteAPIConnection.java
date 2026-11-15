package com.transsion.apiinvoke.ipc;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IRemoteAPIConnection extends IInterface {

    public static class Default implements IRemoteAPIConnection {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public void onConnected(Bundle bundle, ICommonServiceInterface iCommonServiceInterface) throws RemoteException {
        }

        @Override
        public void onDisconnected(String str) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IRemoteAPIConnection {
        private static final String DESCRIPTOR = "com.transsion.apiinvoke.ipc.IRemoteAPIConnection";
        static final int TRANSACTION_onConnected = 1;
        static final int TRANSACTION_onDisconnected = 2;

        public static class Proxy implements IRemoteAPIConnection {
            public static IRemoteAPIConnection sDefaultImpl;
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
            public void onConnected(Bundle bundle, ICommonServiceInterface iCommonServiceInterface) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iCommonServiceInterface != null ? iCommonServiceInterface.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onConnected(bundle, iCommonServiceInterface);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void onDisconnected(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onDisconnected(str);
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

        public static IRemoteAPIConnection asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IRemoteAPIConnection)) ? new Proxy(iBinder) : (IRemoteAPIConnection) iInterfaceQueryLocalInterface;
        }

        public static IRemoteAPIConnection getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IRemoteAPIConnection iRemoteAPIConnection) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iRemoteAPIConnection == null) {
                return false;
            }
            Proxy.sDefaultImpl = iRemoteAPIConnection;
            return true;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onConnected(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, ICommonServiceInterface.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (i != 2) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            onDisconnected(parcel.readString());
            parcel2.writeNoException();
            return true;
        }
    }

    void onConnected(Bundle bundle, ICommonServiceInterface iCommonServiceInterface) throws RemoteException;

    void onDisconnected(String str) throws RemoteException;
}
