package com.transsion.visha.ai;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public interface IAudioPlayStateCallback extends IInterface {
    public static final String DESCRIPTOR = "com.transsion.visha.ai.IAudioPlayStateCallback";

    public static class Default implements IAudioPlayStateCallback {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public void onError(StateValue stateValue) throws RemoteException {
        }

        @Override
        public void onPlayerStateUpdate(StateValue stateValue) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IAudioPlayStateCallback {
        static final int TRANSACTION_onError = 2;
        static final int TRANSACTION_onPlayerStateUpdate = 1;

        public static class Proxy implements IAudioPlayStateCallback {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IAudioPlayStateCallback.DESCRIPTOR;
            }

            @Override
            public void onError(StateValue stateValue) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IAudioPlayStateCallback.DESCRIPTOR);
                    a.d(parcelObtain, stateValue, 0);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void onPlayerStateUpdate(StateValue stateValue) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IAudioPlayStateCallback.DESCRIPTOR);
                    a.d(parcelObtain, stateValue, 0);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IAudioPlayStateCallback.DESCRIPTOR);
        }

        public static IAudioPlayStateCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IAudioPlayStateCallback.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IAudioPlayStateCallback)) ? new Proxy(iBinder) : (IAudioPlayStateCallback) iInterfaceQueryLocalInterface;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IAudioPlayStateCallback.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(IAudioPlayStateCallback.DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                onPlayerStateUpdate((StateValue) a.c(parcel, StateValue.CREATOR));
                parcel2.writeNoException();
            } else {
                if (i != 2) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                onError((StateValue) a.c(parcel, StateValue.CREATOR));
                parcel2.writeNoException();
            }
            return true;
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

    void onError(StateValue stateValue) throws RemoteException;

    void onPlayerStateUpdate(StateValue stateValue) throws RemoteException;
}
