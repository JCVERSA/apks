package com.transsion.kolun.oxygenbus;

import android.content.ComponentName;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.transsion.apiinvoke.ipc.IRemoteAPIConnection;

public interface IOxygenBusServer extends IInterface {

    public static class Default implements IOxygenBusServer {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public boolean bindRemoteServer(String str, Bundle bundle, IRemoteAPIConnection iRemoteAPIConnection) throws RemoteException {
            return false;
        }

        @Override
        public boolean disconnectChannel(String str) throws RemoteException {
            return false;
        }

        @Override
        public String findChannel(String str) throws RemoteException {
            return null;
        }

        @Override
        public String[] getAllChannels() throws RemoteException {
            return null;
        }

        @Override
        public ComponentName getChannelComponent(String str) throws RemoteException {
            return null;
        }

        @Override
        public String[] getChannelServices(String str) throws RemoteException {
            return null;
        }

        @Override
        public String getOxygenBusVersion() throws RemoteException {
            return null;
        }

        @Override
        public boolean isChannelConnected(String str) throws RemoteException {
            return false;
        }

        @Override
        public boolean isChannelRegistered(String str) throws RemoteException {
            return false;
        }

        @Override
        public boolean registerService(String str, String[] strArr, ComponentName componentName) throws RemoteException {
            return false;
        }

        @Override
        public void unRegisterService(String str) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IOxygenBusServer {
        private static final String DESCRIPTOR = "com.transsion.kolun.oxygenbus.IOxygenBusServer";
        static final int TRANSACTION_bindRemoteServer = 1;
        static final int TRANSACTION_disconnectChannel = 11;
        static final int TRANSACTION_findChannel = 3;
        static final int TRANSACTION_getAllChannels = 7;
        static final int TRANSACTION_getChannelComponent = 4;
        static final int TRANSACTION_getChannelServices = 8;
        static final int TRANSACTION_getOxygenBusVersion = 9;
        static final int TRANSACTION_isChannelConnected = 10;
        static final int TRANSACTION_isChannelRegistered = 2;
        static final int TRANSACTION_registerService = 5;
        static final int TRANSACTION_unRegisterService = 6;

        public static class Proxy implements IOxygenBusServer {
            public static IOxygenBusServer sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override
            public boolean bindRemoteServer(String str, Bundle bundle, IRemoteAPIConnection iRemoteAPIConnection) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iRemoteAPIConnection != null ? iRemoteAPIConnection.asBinder() : null);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().bindRemoteServer(str, bundle, iRemoteAPIConnection);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public boolean disconnectChannel(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().disconnectChannel(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public String findChannel(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().findChannel(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public String[] getAllChannels() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAllChannels();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public ComponentName getChannelComponent(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getChannelComponent(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (ComponentName) ComponentName.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public String[] getChannelServices(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getChannelServices(str);
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
            public String getOxygenBusVersion() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getOxygenBusVersion();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public boolean isChannelConnected(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isChannelConnected(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public boolean isChannelRegistered(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isChannelRegistered(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public boolean registerService(String str, String[] strArr, ComponentName componentName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStringArray(strArr);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().registerService(str, strArr, componentName);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void unRegisterService(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unRegisterService(str);
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

        public static IOxygenBusServer asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IOxygenBusServer)) ? new Proxy(iBinder) : (IOxygenBusServer) iInterfaceQueryLocalInterface;
        }

        public static IOxygenBusServer getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IOxygenBusServer iOxygenBusServer) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iOxygenBusServer == null) {
                return false;
            }
            Proxy.sDefaultImpl = iOxygenBusServer;
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
                    boolean zBindRemoteServer = bindRemoteServer(parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, IRemoteAPIConnection.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zBindRemoteServer ? 1 : 0);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsChannelRegistered = isChannelRegistered(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsChannelRegistered ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strFindChannel = findChannel(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strFindChannel);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    ComponentName channelComponent = getChannelComponent(parcel.readString());
                    parcel2.writeNoException();
                    if (channelComponent != null) {
                        parcel2.writeInt(1);
                        channelComponent.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRegisterService = registerService(parcel.readString(), parcel.createStringArray(), parcel.readInt() != 0 ? (ComponentName) ComponentName.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zRegisterService ? 1 : 0);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    unRegisterService(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] allChannels = getAllChannels();
                    parcel2.writeNoException();
                    parcel2.writeStringArray(allChannels);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] channelServices = getChannelServices(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeStringArray(channelServices);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    String oxygenBusVersion = getOxygenBusVersion();
                    parcel2.writeNoException();
                    parcel2.writeString(oxygenBusVersion);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsChannelConnected = isChannelConnected(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsChannelConnected ? 1 : 0);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDisconnectChannel = disconnectChannel(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zDisconnectChannel ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    boolean bindRemoteServer(String str, Bundle bundle, IRemoteAPIConnection iRemoteAPIConnection) throws RemoteException;

    boolean disconnectChannel(String str) throws RemoteException;

    String findChannel(String str) throws RemoteException;

    String[] getAllChannels() throws RemoteException;

    ComponentName getChannelComponent(String str) throws RemoteException;

    String[] getChannelServices(String str) throws RemoteException;

    String getOxygenBusVersion() throws RemoteException;

    boolean isChannelConnected(String str) throws RemoteException;

    boolean isChannelRegistered(String str) throws RemoteException;

    boolean registerService(String str, String[] strArr, ComponentName componentName) throws RemoteException;

    void unRegisterService(String str) throws RemoteException;
}
