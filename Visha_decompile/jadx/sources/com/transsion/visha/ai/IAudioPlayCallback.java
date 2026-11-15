package com.transsion.visha.ai;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public interface IAudioPlayCallback extends IInterface {
    public static final String DESCRIPTOR = "com.transsion.visha.ai.IAudioPlayCallback";

    public static class Default implements IAudioPlayCallback {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public void onError(StateValue stateValue) throws RemoteException {
        }

        @Override
        public void onSearched(StateValue stateValue, AudioData audioData) throws RemoteException {
        }

        @Override
        public void onSuccess(StateValue stateValue) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IAudioPlayCallback {
        static final int TRANSACTION_onError = 1;
        static final int TRANSACTION_onSearched = 3;
        static final int TRANSACTION_onSuccess = 2;

        public static class Proxy implements IAudioPlayCallback {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IAudioPlayCallback.DESCRIPTOR;
            }

            @Override
            public void onError(StateValue stateValue) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IAudioPlayCallback.DESCRIPTOR);
                    a.d(parcelObtain, stateValue, 0);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void onSearched(StateValue stateValue, AudioData audioData) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IAudioPlayCallback.DESCRIPTOR);
                    a.d(parcelObtain, stateValue, 0);
                    a.d(parcelObtain, audioData, 0);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void onSuccess(StateValue stateValue) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IAudioPlayCallback.DESCRIPTOR);
                    a.d(parcelObtain, stateValue, 0);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IAudioPlayCallback.DESCRIPTOR);
        }

        public static IAudioPlayCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IAudioPlayCallback.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IAudioPlayCallback)) ? new Proxy(iBinder) : (IAudioPlayCallback) iInterfaceQueryLocalInterface;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IAudioPlayCallback.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(IAudioPlayCallback.DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                onError((StateValue) a.c(parcel, StateValue.CREATOR));
                parcel2.writeNoException();
            } else if (i == 2) {
                onSuccess((StateValue) a.c(parcel, StateValue.CREATOR));
                parcel2.writeNoException();
            } else {
                if (i != 3) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                onSearched((StateValue) a.c(parcel, StateValue.CREATOR), (AudioData) a.c(parcel, AudioData.CREATOR));
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

    void onSearched(StateValue stateValue, AudioData audioData) throws RemoteException;

    void onSuccess(StateValue stateValue) throws RemoteException;
}
