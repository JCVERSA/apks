package com.transsion.apiinvoke.ipc;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IRemoteInterceptor extends IInterface {

    public static class Default implements IRemoteInterceptor {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public boolean processChain(ParcelInvokeChain parcelInvokeChain) throws RemoteException {
            return false;
        }

        @Override
        public ParcelResponse processChainV2(ParcelInvokeChain parcelInvokeChain) throws RemoteException {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IRemoteInterceptor {
        private static final String DESCRIPTOR = "com.transsion.apiinvoke.ipc.IRemoteInterceptor";
        static final int TRANSACTION_processChain = 1;
        static final int TRANSACTION_processChainV2 = 2;

        public static class Proxy implements IRemoteInterceptor {
            public static IRemoteInterceptor sDefaultImpl;
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
            public boolean processChain(ParcelInvokeChain parcelInvokeChain) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (parcelInvokeChain != null) {
                        parcelObtain.writeInt(1);
                        parcelInvokeChain.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().processChain(parcelInvokeChain);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public ParcelResponse processChainV2(ParcelInvokeChain parcelInvokeChain) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (parcelInvokeChain != null) {
                        parcelObtain.writeInt(1);
                        parcelInvokeChain.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().processChainV2(parcelInvokeChain);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParcelResponse.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IRemoteInterceptor asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IRemoteInterceptor)) ? new Proxy(iBinder) : (IRemoteInterceptor) iInterfaceQueryLocalInterface;
        }

        public static IRemoteInterceptor getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IRemoteInterceptor iRemoteInterceptor) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iRemoteInterceptor == null) {
                return false;
            }
            Proxy.sDefaultImpl = iRemoteInterceptor;
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
                boolean zProcessChain = processChain(parcel.readInt() != 0 ? ParcelInvokeChain.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                parcel2.writeInt(zProcessChain ? 1 : 0);
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
            ParcelResponse parcelResponseProcessChainV2 = processChainV2(parcel.readInt() != 0 ? ParcelInvokeChain.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            if (parcelResponseProcessChainV2 != null) {
                parcel2.writeInt(1);
                parcelResponseProcessChainV2.writeToParcel(parcel2, 1);
            } else {
                parcel2.writeInt(0);
            }
            return true;
        }
    }

    boolean processChain(ParcelInvokeChain parcelInvokeChain) throws RemoteException;

    ParcelResponse processChainV2(ParcelInvokeChain parcelInvokeChain) throws RemoteException;
}
