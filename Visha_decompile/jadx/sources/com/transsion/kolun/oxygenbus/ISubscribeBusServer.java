package com.transsion.kolun.oxygenbus;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.transsion.apiinvoke.ipc.APIPublisher;
import com.transsion.apiinvoke.ipc.APISubscribeCenter;

public interface ISubscribeBusServer extends IInterface {

    public static class Default implements ISubscribeBusServer {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public APIPublisher findSubscribe(String str, String str2) throws RemoteException {
            return null;
        }

        @Override
        public int findSubscribeTypeCount(String str, String str2, String str3) throws RemoteException {
            return 0;
        }

        @Override
        public String[] getAllPublishInfo() throws RemoteException {
            return null;
        }

        @Override
        public APISubscribeCenter getSubscribeCenter() throws RemoteException {
            return null;
        }

        @Override
        public void registerSubscribeManager(String str, String str2, APIPublisher aPIPublisher) throws RemoteException {
        }

        @Override
        public void unRegisterSubscribeManager(String str, String str2) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements ISubscribeBusServer {
        private static final String DESCRIPTOR = "com.transsion.kolun.oxygenbus.ISubscribeBusServer";
        static final int TRANSACTION_findSubscribe = 2;
        static final int TRANSACTION_findSubscribeTypeCount = 6;
        static final int TRANSACTION_getAllPublishInfo = 5;
        static final int TRANSACTION_getSubscribeCenter = 1;
        static final int TRANSACTION_registerSubscribeManager = 3;
        static final int TRANSACTION_unRegisterSubscribeManager = 4;

        public static class Proxy implements ISubscribeBusServer {
            public static ISubscribeBusServer sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override
            public APIPublisher findSubscribe(String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().findSubscribe(str, str2);
                    }
                    parcelObtain2.readException();
                    return APIPublisher.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public int findSubscribeTypeCount(String str, String str2, String str3) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().findSubscribeTypeCount(str, str2, str3);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public String[] getAllPublishInfo() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAllPublishInfo();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override
            public APISubscribeCenter getSubscribeCenter() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getSubscribeCenter();
                    }
                    parcelObtain2.readException();
                    return APISubscribeCenter.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void registerSubscribeManager(String str, String str2, APIPublisher aPIPublisher) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeStrongBinder(aPIPublisher != null ? aPIPublisher.asBinder() : null);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerSubscribeManager(str, str2, aPIPublisher);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void unRegisterSubscribeManager(String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unRegisterSubscribeManager(str, str2);
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

        public static ISubscribeBusServer asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ISubscribeBusServer)) ? new Proxy(iBinder) : (ISubscribeBusServer) iInterfaceQueryLocalInterface;
        }

        public static ISubscribeBusServer getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ISubscribeBusServer iSubscribeBusServer) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iSubscribeBusServer == null) {
                return false;
            }
            Proxy.sDefaultImpl = iSubscribeBusServer;
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
                    APISubscribeCenter subscribeCenter = getSubscribeCenter();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(subscribeCenter != null ? subscribeCenter.asBinder() : null);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    APIPublisher aPIPublisherFindSubscribe = findSubscribe(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(aPIPublisherFindSubscribe != null ? aPIPublisherFindSubscribe.asBinder() : null);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerSubscribeManager(parcel.readString(), parcel.readString(), APIPublisher.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    unRegisterSubscribeManager(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] allPublishInfo = getAllPublishInfo();
                    parcel2.writeNoException();
                    parcel2.writeStringArray(allPublishInfo);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iFindSubscribeTypeCount = findSubscribeTypeCount(parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iFindSubscribeTypeCount);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    APIPublisher findSubscribe(String str, String str2) throws RemoteException;

    int findSubscribeTypeCount(String str, String str2, String str3) throws RemoteException;

    String[] getAllPublishInfo() throws RemoteException;

    APISubscribeCenter getSubscribeCenter() throws RemoteException;

    void registerSubscribeManager(String str, String str2, APIPublisher aPIPublisher) throws RemoteException;

    void unRegisterSubscribeManager(String str, String str2) throws RemoteException;
}
