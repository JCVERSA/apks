package com.transsion.apiinvoke.ipc;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface APIPublisher extends IInterface {

    public static class Default implements APIPublisher {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public int findLocalSubscribeTypeCount(String str, String str2, String str3) throws RemoteException {
            return 0;
        }

        @Override
        public String[] getLocalSubscribeTypes() throws RemoteException {
            return null;
        }

        @Override
        public String getServiceVersion() throws RemoteException {
            return null;
        }

        @Override
        public SubscribeStateChangeObserver getSubscribeStateChangeObserver() throws RemoteException {
            return null;
        }

        @Override
        public void onPublishData(ParcelPublishData parcelPublishData) throws RemoteException {
        }

        @Override
        public void onPublishDataWithChain(ParcelPublishData parcelPublishData, ParcelInvokeChain parcelInvokeChain) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements APIPublisher {
        private static final String DESCRIPTOR = "com.transsion.apiinvoke.ipc.APIPublisher";
        static final int TRANSACTION_findLocalSubscribeTypeCount = 4;
        static final int TRANSACTION_getLocalSubscribeTypes = 3;
        static final int TRANSACTION_getServiceVersion = 6;
        static final int TRANSACTION_getSubscribeStateChangeObserver = 1;
        static final int TRANSACTION_onPublishData = 2;
        static final int TRANSACTION_onPublishDataWithChain = 5;

        public static class Proxy implements APIPublisher {
            public static APIPublisher sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override
            public int findLocalSubscribeTypeCount(String str, String str2, String str3) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().findLocalSubscribeTypeCount(str, str2, str3);
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
            public String[] getLocalSubscribeTypes() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getLocalSubscribeTypes();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
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
            public SubscribeStateChangeObserver getSubscribeStateChangeObserver() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getSubscribeStateChangeObserver();
                    }
                    parcelObtain2.readException();
                    return SubscribeStateChangeObserver.Stub.asInterface(parcelObtain2.readStrongBinder());
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
            public void onPublishDataWithChain(ParcelPublishData parcelPublishData, ParcelInvokeChain parcelInvokeChain) throws RemoteException {
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
                    if (this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onPublishDataWithChain(parcelPublishData, parcelInvokeChain);
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

        public static APIPublisher asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof APIPublisher)) ? new Proxy(iBinder) : (APIPublisher) iInterfaceQueryLocalInterface;
        }

        public static APIPublisher getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(APIPublisher aPIPublisher) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (aPIPublisher == null) {
                return false;
            }
            Proxy.sDefaultImpl = aPIPublisher;
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
                    SubscribeStateChangeObserver subscribeStateChangeObserver = getSubscribeStateChangeObserver();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(subscribeStateChangeObserver != null ? subscribeStateChangeObserver.asBinder() : null);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onPublishData(parcel.readInt() != 0 ? ParcelPublishData.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] localSubscribeTypes = getLocalSubscribeTypes();
                    parcel2.writeNoException();
                    parcel2.writeStringArray(localSubscribeTypes);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iFindLocalSubscribeTypeCount = findLocalSubscribeTypeCount(parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iFindLocalSubscribeTypeCount);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    onPublishDataWithChain(parcel.readInt() != 0 ? ParcelPublishData.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? ParcelInvokeChain.CREATOR.createFromParcel(parcel) : null);
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

    int findLocalSubscribeTypeCount(String str, String str2, String str3) throws RemoteException;

    String[] getLocalSubscribeTypes() throws RemoteException;

    String getServiceVersion() throws RemoteException;

    SubscribeStateChangeObserver getSubscribeStateChangeObserver() throws RemoteException;

    void onPublishData(ParcelPublishData parcelPublishData) throws RemoteException;

    void onPublishDataWithChain(ParcelPublishData parcelPublishData, ParcelInvokeChain parcelInvokeChain) throws RemoteException;
}
