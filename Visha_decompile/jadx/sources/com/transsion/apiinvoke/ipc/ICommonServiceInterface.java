package com.transsion.apiinvoke.ipc;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface ICommonServiceInterface extends IInterface {

    public static class Default implements ICommonServiceInterface {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public String getServiceVersion() throws RemoteException {
            return null;
        }

        @Override
        public IServiceSession getSession(String str) throws RemoteException {
            return null;
        }

        @Override
        public boolean serviceCall(ParcelRequest parcelRequest, IRemoteCallback iRemoteCallback) throws RemoteException {
            return false;
        }

        @Override
        public boolean serviceCallWithChain(ParcelRequest parcelRequest, ParcelInvokeChain parcelInvokeChain, IRemoteCallback iRemoteCallback) throws RemoteException {
            return false;
        }

        @Override
        public void updateApiSwitchConfig(String str) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements ICommonServiceInterface {
        private static final String DESCRIPTOR = "com.transsion.apiinvoke.ipc.ICommonServiceInterface";
        static final int TRANSACTION_getServiceVersion = 4;
        static final int TRANSACTION_getSession = 3;
        static final int TRANSACTION_serviceCall = 1;
        static final int TRANSACTION_serviceCallWithChain = 2;
        static final int TRANSACTION_updateApiSwitchConfig = 5;

        public static class Proxy implements ICommonServiceInterface {
            public static ICommonServiceInterface sDefaultImpl;
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
            public String getServiceVersion() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getServiceVersion();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public IServiceSession getSession(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getSession(str);
                    }
                    parcelObtain2.readException();
                    return IServiceSession.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public boolean serviceCall(ParcelRequest parcelRequest, IRemoteCallback iRemoteCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (parcelRequest != null) {
                        parcelObtain.writeInt(1);
                        parcelRequest.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iRemoteCallback != null ? iRemoteCallback.asBinder() : null);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().serviceCall(parcelRequest, iRemoteCallback);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public boolean serviceCallWithChain(ParcelRequest parcelRequest, ParcelInvokeChain parcelInvokeChain, IRemoteCallback iRemoteCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (parcelRequest != null) {
                        parcelObtain.writeInt(1);
                        parcelRequest.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (parcelInvokeChain != null) {
                        parcelObtain.writeInt(1);
                        parcelInvokeChain.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iRemoteCallback != null ? iRemoteCallback.asBinder() : null);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().serviceCallWithChain(parcelRequest, parcelInvokeChain, iRemoteCallback);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void updateApiSwitchConfig(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().updateApiSwitchConfig(str);
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

        public static ICommonServiceInterface asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ICommonServiceInterface)) ? new Proxy(iBinder) : (ICommonServiceInterface) iInterfaceQueryLocalInterface;
        }

        public static ICommonServiceInterface getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ICommonServiceInterface iCommonServiceInterface) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iCommonServiceInterface == null) {
                return false;
            }
            Proxy.sDefaultImpl = iCommonServiceInterface;
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
                boolean zServiceCall = serviceCall(parcel.readInt() != 0 ? ParcelRequest.CREATOR.createFromParcel(parcel) : null, IRemoteCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                parcel2.writeInt(zServiceCall ? 1 : 0);
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean zServiceCallWithChain = serviceCallWithChain(parcel.readInt() != 0 ? ParcelRequest.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? ParcelInvokeChain.CREATOR.createFromParcel(parcel) : null, IRemoteCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                parcel2.writeInt(zServiceCallWithChain ? 1 : 0);
                return true;
            }
            if (i == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                IServiceSession session = getSession(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeStrongBinder(session != null ? session.asBinder() : null);
                return true;
            }
            if (i == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                String serviceVersion = getServiceVersion();
                parcel2.writeNoException();
                parcel2.writeString(serviceVersion);
                return true;
            }
            if (i != 5) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            updateApiSwitchConfig(parcel.readString());
            parcel2.writeNoException();
            return true;
        }
    }

    String getServiceVersion() throws RemoteException;

    IServiceSession getSession(String str) throws RemoteException;

    boolean serviceCall(ParcelRequest parcelRequest, IRemoteCallback iRemoteCallback) throws RemoteException;

    boolean serviceCallWithChain(ParcelRequest parcelRequest, ParcelInvokeChain parcelInvokeChain, IRemoteCallback iRemoteCallback) throws RemoteException;

    void updateApiSwitchConfig(String str) throws RemoteException;
}
