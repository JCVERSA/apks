package com.transsion.livecaption;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public interface SmartAnswer extends IInterface {
    public static final String DESCRIPTOR = "com.transsion.livecaption.SmartAnswer";

    public static class Default implements SmartAnswer {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public void sendCommand(Bundle bundle) throws RemoteException {
        }

        @Override
        public void setCallback(SmartAnswerCallback smartAnswerCallback) throws RemoteException {
        }

        @Override
        public void stopSmartAnswer(Bundle bundle) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements SmartAnswer {
        static final int TRANSACTION_sendCommand = 2;
        static final int TRANSACTION_setCallback = 1;
        static final int TRANSACTION_stopSmartAnswer = 3;

        public static class Proxy implements SmartAnswer {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return SmartAnswer.DESCRIPTOR;
            }

            @Override
            public void sendCommand(Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(SmartAnswer.DESCRIPTOR);
                    _Parcel.writeTypedObject(parcelObtain, bundle, 0);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void setCallback(SmartAnswerCallback smartAnswerCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(SmartAnswer.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(smartAnswerCallback);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void stopSmartAnswer(Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(SmartAnswer.DESCRIPTOR);
                    _Parcel.writeTypedObject(parcelObtain, bundle, 0);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, SmartAnswer.DESCRIPTOR);
        }

        public static SmartAnswer asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(SmartAnswer.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof SmartAnswer)) ? new Proxy(iBinder) : (SmartAnswer) iInterfaceQueryLocalInterface;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(SmartAnswer.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(SmartAnswer.DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                setCallback(SmartAnswerCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
            } else if (i == 2) {
                sendCommand((Bundle) _Parcel.readTypedObject(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
            } else {
                if (i != 3) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                stopSmartAnswer((Bundle) _Parcel.readTypedObject(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
            }
            return true;
        }
    }

    public static class _Parcel {
        public static <T> T readTypedObject(Parcel parcel, Parcelable.Creator<T> creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        public static <T extends Parcelable> void writeTypedObject(Parcel parcel, T t, int i) {
            if (t == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                t.writeToParcel(parcel, i);
            }
        }
    }

    void sendCommand(Bundle bundle) throws RemoteException;

    void setCallback(SmartAnswerCallback smartAnswerCallback) throws RemoteException;

    void stopSmartAnswer(Bundle bundle) throws RemoteException;
}
