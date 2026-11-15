package com.transsion.apiinvoke.ipc;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IServiceSession extends IInterface {

    public static class Default implements IServiceSession {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public boolean isClientRegistered(String str) throws RemoteException {
            return false;
        }

        @Override
        public void onAcceptClientData(ParcelTransformData parcelTransformData, IRemoteCallback iRemoteCallback, String str) throws RemoteException {
        }

        @Override
        public boolean postClientData(ParcelTransformData parcelTransformData, ParcelInvokeChain parcelInvokeChain, IRemoteCallback iRemoteCallback) throws RemoteException {
            return false;
        }

        @Override
        public boolean register(IServiceClient iServiceClient, ParcelInvokeChain parcelInvokeChain) throws RemoteException {
            return false;
        }

        @Override
        public boolean registerClient(IServiceClient iServiceClient, String str) throws RemoteException {
            return false;
        }

        @Override
        public void unRegister(IServiceClient iServiceClient) throws RemoteException {
        }

        @Override
        public void unRegisterClient(String str) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IServiceSession {
        private static final String DESCRIPTOR = "com.transsion.apiinvoke.ipc.IServiceSession";
        static final int TRANSACTION_isClientRegistered = 6;
        static final int TRANSACTION_onAcceptClientData = 7;
        static final int TRANSACTION_postClientData = 1;
        static final int TRANSACTION_register = 2;
        static final int TRANSACTION_registerClient = 4;
        static final int TRANSACTION_unRegister = 3;
        static final int TRANSACTION_unRegisterClient = 5;

        public static class Proxy implements IServiceSession {
            public static IServiceSession sDefaultImpl;
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
            public boolean isClientRegistered(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isClientRegistered(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void onAcceptClientData(ParcelTransformData parcelTransformData, IRemoteCallback iRemoteCallback, String str) throws RemoteException {
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
                    parcelObtain.writeString(str);
                    if (this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onAcceptClientData(parcelTransformData, iRemoteCallback, str);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public boolean postClientData(ParcelTransformData parcelTransformData, ParcelInvokeChain parcelInvokeChain, IRemoteCallback iRemoteCallback) throws RemoteException {
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
                    if (parcelInvokeChain != null) {
                        parcelObtain.writeInt(1);
                        parcelInvokeChain.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iRemoteCallback != null ? iRemoteCallback.asBinder() : null);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().postClientData(parcelTransformData, parcelInvokeChain, iRemoteCallback);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public boolean register(IServiceClient iServiceClient, ParcelInvokeChain parcelInvokeChain) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iServiceClient != null ? iServiceClient.asBinder() : null);
                    if (parcelInvokeChain != null) {
                        parcelObtain.writeInt(1);
                        parcelInvokeChain.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().register(iServiceClient, parcelInvokeChain);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public boolean registerClient(IServiceClient iServiceClient, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iServiceClient != null ? iServiceClient.asBinder() : null);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().registerClient(iServiceClient, str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void unRegister(IServiceClient iServiceClient) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iServiceClient != null ? iServiceClient.asBinder() : null);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unRegister(iServiceClient);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void unRegisterClient(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unRegisterClient(str);
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

        public static IServiceSession asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IServiceSession)) ? new Proxy(iBinder) : (IServiceSession) iInterfaceQueryLocalInterface;
        }

        public static IServiceSession getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IServiceSession iServiceSession) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iServiceSession == null) {
                return false;
            }
            Proxy.sDefaultImpl = iServiceSession;
            return true;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zPostClientData = postClientData(parcel.readInt() != 0 ? ParcelTransformData.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? ParcelInvokeChain.CREATOR.createFromParcel(parcel) : null, IRemoteCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zPostClientData ? 1 : 0);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRegister = register(IServiceClient.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0 ? ParcelInvokeChain.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zRegister ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    unRegister(IServiceClient.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRegisterClient = registerClient(IServiceClient.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zRegisterClient ? 1 : 0);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    unRegisterClient(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsClientRegistered = isClientRegistered(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsClientRegistered ? 1 : 0);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    onAcceptClientData(parcel.readInt() != 0 ? ParcelTransformData.CREATOR.createFromParcel(parcel) : null, IRemoteCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    boolean isClientRegistered(String str) throws RemoteException;

    void onAcceptClientData(ParcelTransformData parcelTransformData, IRemoteCallback iRemoteCallback, String str) throws RemoteException;

    boolean postClientData(ParcelTransformData parcelTransformData, ParcelInvokeChain parcelInvokeChain, IRemoteCallback iRemoteCallback) throws RemoteException;

    boolean register(IServiceClient iServiceClient, ParcelInvokeChain parcelInvokeChain) throws RemoteException;

    boolean registerClient(IServiceClient iServiceClient, String str) throws RemoteException;

    void unRegister(IServiceClient iServiceClient) throws RemoteException;

    void unRegisterClient(String str) throws RemoteException;
}
