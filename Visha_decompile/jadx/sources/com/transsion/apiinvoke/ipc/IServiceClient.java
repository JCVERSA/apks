package com.transsion.apiinvoke.ipc;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IServiceClient extends IInterface {

    public static class Default implements IServiceClient {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public void disconnect() throws RemoteException {
        }

        @Override
        public void onReceiveData(ParcelTransformData parcelTransformData, IRemoteCallback iRemoteCallback) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IServiceClient {
        private static final String DESCRIPTOR = "com.transsion.apiinvoke.ipc.IServiceClient";
        static final int TRANSACTION_disconnect = 2;
        static final int TRANSACTION_onReceiveData = 1;

        public static class Proxy implements IServiceClient {
            public static IServiceClient sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override
            public void disconnect() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().disconnect();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override
            public void onReceiveData(ParcelTransformData parcelTransformData, IRemoteCallback iRemoteCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (parcelTransformData != null) {
                        parcelObtain.writeInt(1);
                        parcelTransformData.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iRemoteCallback != null ? iRemoteCallback.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onReceiveData(parcelTransformData, iRemoteCallback);
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

        public static IServiceClient asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IServiceClient)) ? new Proxy(iBinder) : (IServiceClient) iInterfaceQueryLocalInterface;
        }

        public static IServiceClient getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IServiceClient iServiceClient) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iServiceClient == null) {
                return false;
            }
            Proxy.sDefaultImpl = iServiceClient;
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
                onReceiveData(parcel.readInt() != 0 ? ParcelTransformData.CREATOR.createFromParcel(parcel) : null, IRemoteCallback.Stub.asInterface(parcel.readStrongBinder()));
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
            disconnect();
            parcel2.writeNoException();
            return true;
        }
    }

    void disconnect() throws RemoteException;

    void onReceiveData(ParcelTransformData parcelTransformData, IRemoteCallback iRemoteCallback) throws RemoteException;
}
