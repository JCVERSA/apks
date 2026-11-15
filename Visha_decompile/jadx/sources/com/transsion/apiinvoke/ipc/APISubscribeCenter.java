package com.transsion.apiinvoke.ipc;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface APISubscribeCenter extends IInterface {

    public static class Default implements APISubscribeCenter {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public int countSubscribe(ParcelPublisher parcelPublisher) throws RemoteException {
            return 0;
        }

        @Override
        public String getServiceVersion() throws RemoteException {
            return null;
        }

        @Override
        public void onPublishData(ParcelPublishData parcelPublishData) throws RemoteException {
        }

        @Override
        public void onSafePublishData(ParcelPublishData parcelPublishData, ParcelInvokeChain parcelInvokeChain, IRemoteInterceptor iRemoteInterceptor) throws RemoteException {
        }

        @Override
        public void onSubscribe(ParcelPublisher parcelPublisher, String str, int i) throws RemoteException {
        }

        @Override
        public void onUnSubscribe(ParcelPublisher parcelPublisher, String str, int i) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements APISubscribeCenter {
        private static final String DESCRIPTOR = "com.transsion.apiinvoke.ipc.APISubscribeCenter";
        static final int TRANSACTION_countSubscribe = 1;
        static final int TRANSACTION_getServiceVersion = 6;
        static final int TRANSACTION_onPublishData = 2;
        static final int TRANSACTION_onSafePublishData = 5;
        static final int TRANSACTION_onSubscribe = 3;
        static final int TRANSACTION_onUnSubscribe = 4;

        public static class Proxy implements APISubscribeCenter {
            public static APISubscribeCenter sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override
            public int countSubscribe(ParcelPublisher parcelPublisher) throws RemoteException {
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
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().countSubscribe(parcelPublisher);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
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
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
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
            public void onPublishData(ParcelPublishData parcelPublishData) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (parcelPublishData != null) {
                        parcelObtain.writeInt(1);
                        parcelPublishData.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onPublishData(parcelPublishData);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void onSafePublishData(ParcelPublishData parcelPublishData, ParcelInvokeChain parcelInvokeChain, IRemoteInterceptor iRemoteInterceptor) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (parcelPublishData != null) {
                        parcelObtain.writeInt(1);
                        parcelPublishData.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (parcelInvokeChain != null) {
                        parcelObtain.writeInt(1);
                        parcelInvokeChain.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iRemoteInterceptor != null ? iRemoteInterceptor.asBinder() : null);
                    if (this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onSafePublishData(parcelPublishData, parcelInvokeChain, iRemoteInterceptor);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void onSubscribe(ParcelPublisher parcelPublisher, String str, int i) throws RemoteException {
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
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onSubscribe(parcelPublisher, str, i);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void onUnSubscribe(ParcelPublisher parcelPublisher, String str, int i) throws RemoteException {
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
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onUnSubscribe(parcelPublisher, str, i);
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

        public static APISubscribeCenter asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof APISubscribeCenter)) ? new Proxy(iBinder) : (APISubscribeCenter) iInterfaceQueryLocalInterface;
        }

        public static APISubscribeCenter getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(APISubscribeCenter aPISubscribeCenter) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (aPISubscribeCenter == null) {
                return false;
            }
            Proxy.sDefaultImpl = aPISubscribeCenter;
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
                    int iCountSubscribe = countSubscribe(parcel.readInt() != 0 ? ParcelPublisher.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(iCountSubscribe);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onPublishData(parcel.readInt() != 0 ? ParcelPublishData.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSubscribe(parcel.readInt() != 0 ? ParcelPublisher.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    onUnSubscribe(parcel.readInt() != 0 ? ParcelPublisher.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSafePublishData(parcel.readInt() != 0 ? ParcelPublishData.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? ParcelInvokeChain.CREATOR.createFromParcel(parcel) : null, IRemoteInterceptor.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    String serviceVersion = getServiceVersion();
                    parcel2.writeNoException();
                    parcel2.writeString(serviceVersion);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    int countSubscribe(ParcelPublisher parcelPublisher) throws RemoteException;

    String getServiceVersion() throws RemoteException;

    void onPublishData(ParcelPublishData parcelPublishData) throws RemoteException;

    void onSafePublishData(ParcelPublishData parcelPublishData, ParcelInvokeChain parcelInvokeChain, IRemoteInterceptor iRemoteInterceptor) throws RemoteException;

    void onSubscribe(ParcelPublisher parcelPublisher, String str, int i) throws RemoteException;

    void onUnSubscribe(ParcelPublisher parcelPublisher, String str, int i) throws RemoteException;
}
