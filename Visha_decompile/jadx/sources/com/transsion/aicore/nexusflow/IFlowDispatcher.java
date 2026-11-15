package com.transsion.aicore.nexusflow;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;

public interface IFlowDispatcher extends IInterface {
    public static final String DESCRIPTOR = "com.transsion.aicore.nexusflow.IFlowDispatcher";

    public static class Default implements IFlowDispatcher {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public String getConfigJson(String str) {
            return null;
        }

        @Override
        public String getConfigVersion(String str) {
            return null;
        }

        @Override
        public void launchAiTask(Bundle bundle, IFlowCallback iFlowCallback) {
        }

        @Override
        public void registerDisconnectCallback(IDisconnectCallback iDisconnectCallback) {
        }

        @Override
        public void stopFlow(String str) {
        }

        @Override
        public void transportStream(String str, ParcelFileDescriptor parcelFileDescriptor) {
        }

        @Override
        public void unregisterDisconnectCallback(IDisconnectCallback iDisconnectCallback) {
        }
    }

    public static abstract class Stub extends Binder implements IFlowDispatcher {
        static final int TRANSACTION_getConfigJson = 6;
        static final int TRANSACTION_getConfigVersion = 7;
        static final int TRANSACTION_launchAiTask = 1;
        static final int TRANSACTION_registerDisconnectCallback = 4;
        static final int TRANSACTION_stopFlow = 3;
        static final int TRANSACTION_transportStream = 2;
        static final int TRANSACTION_unregisterDisconnectCallback = 5;

        public static class Proxy implements IFlowDispatcher {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override
            public String getConfigJson(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IFlowDispatcher.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public String getConfigVersion(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IFlowDispatcher.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return IFlowDispatcher.DESCRIPTOR;
            }

            @Override
            public void launchAiTask(Bundle bundle, IFlowCallback iFlowCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IFlowDispatcher.DESCRIPTOR);
                    a.d(parcelObtain, bundle, 0);
                    parcelObtain.writeStrongInterface(iFlowCallback);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void registerDisconnectCallback(IDisconnectCallback iDisconnectCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IFlowDispatcher.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(iDisconnectCallback);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void stopFlow(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IFlowDispatcher.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void transportStream(String str, ParcelFileDescriptor parcelFileDescriptor) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IFlowDispatcher.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    a.d(parcelObtain, parcelFileDescriptor, 0);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void unregisterDisconnectCallback(IDisconnectCallback iDisconnectCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IFlowDispatcher.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(iDisconnectCallback);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IFlowDispatcher.DESCRIPTOR);
        }

        public static IFlowDispatcher asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IFlowDispatcher.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IFlowDispatcher)) ? new Proxy(iBinder) : (IFlowDispatcher) iInterfaceQueryLocalInterface;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IFlowDispatcher.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(IFlowDispatcher.DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    launchAiTask((Bundle) a.c(parcel, Bundle.CREATOR), IFlowCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    transportStream(parcel.readString(), (ParcelFileDescriptor) a.c(parcel, ParcelFileDescriptor.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    stopFlow(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    registerDisconnectCallback(IDisconnectCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    unregisterDisconnectCallback(IDisconnectCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    String configJson = getConfigJson(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(configJson);
                    return true;
                case 7:
                    String configVersion = getConfigVersion(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(configVersion);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    public static class a {
        public static Object c(Parcel parcel, Parcelable.Creator creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        public static void d(Parcel parcel, Parcelable parcelable, int i) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                parcelable.writeToParcel(parcel, i);
            }
        }
    }

    String getConfigJson(String str);

    String getConfigVersion(String str);

    void launchAiTask(Bundle bundle, IFlowCallback iFlowCallback);

    void registerDisconnectCallback(IDisconnectCallback iDisconnectCallback);

    void stopFlow(String str);

    void transportStream(String str, ParcelFileDescriptor parcelFileDescriptor);

    void unregisterDisconnectCallback(IDisconnectCallback iDisconnectCallback);
}
