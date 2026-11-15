package com.transsion.livecaption;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface LLMAnswerCallback extends IInterface {
    public static final String DESCRIPTOR = "com.transsion.livecaption.LLMAnswerCallback";

    public static class Default implements LLMAnswerCallback {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public void onCallback(String str) throws RemoteException {
        }

        @Override
        public void onError(int i, String str) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements LLMAnswerCallback {
        static final int TRANSACTION_onCallback = 1;
        static final int TRANSACTION_onError = 2;

        public static class Proxy implements LLMAnswerCallback {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return LLMAnswerCallback.DESCRIPTOR;
            }

            @Override
            public void onCallback(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(LLMAnswerCallback.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void onError(int i, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(LLMAnswerCallback.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, LLMAnswerCallback.DESCRIPTOR);
        }

        public static LLMAnswerCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(LLMAnswerCallback.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof LLMAnswerCallback)) ? new Proxy(iBinder) : (LLMAnswerCallback) iInterfaceQueryLocalInterface;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(LLMAnswerCallback.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(LLMAnswerCallback.DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                onCallback(parcel.readString());
                parcel2.writeNoException();
            } else {
                if (i != 2) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                onError(parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
            }
            return true;
        }
    }

    void onCallback(String str) throws RemoteException;

    void onError(int i, String str) throws RemoteException;
}
