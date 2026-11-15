package com.transsion.aicore.nexusflow;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public interface SmartAnswer extends IInterface {

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
                return "com.transsion.aicore.nexusflow.SmartAnswer";
            }

            @Override
            public void sendCommand(Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.transsion.aicore.nexusflow.SmartAnswer");
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void setCallback(SmartAnswerCallback smartAnswerCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.transsion.aicore.nexusflow.SmartAnswer");
                    parcelObtain.writeStrongInterface(smartAnswerCallback);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void stopSmartAnswer(Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.transsion.aicore.nexusflow.SmartAnswer");
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "com.transsion.aicore.nexusflow.SmartAnswer");
        }

        public static SmartAnswer asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.transsion.aicore.nexusflow.SmartAnswer");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof SmartAnswer)) ? new Proxy(iBinder) : (SmartAnswer) iInterfaceQueryLocalInterface;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface("com.transsion.aicore.nexusflow.SmartAnswer");
            }
            if (i == 1598968902) {
                parcel2.writeString("com.transsion.aicore.nexusflow.SmartAnswer");
                return true;
            }
            if (i != 1) {
                if (i == 2) {
                    sendCommand((Bundle) (parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null));
                    parcel2.writeNoException();
                } else {
                    if (i != 3) {
                        return super.onTransact(i, parcel, parcel2, i2);
                    }
                    stopSmartAnswer((Bundle) (parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null));
                    parcel2.writeNoException();
                }
            } else {
                setCallback(SmartAnswerCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
            }
            return true;
        }

        @Override
        public abstract void sendCommand(Bundle bundle);

        @Override
        public abstract void setCallback(SmartAnswerCallback smartAnswerCallback);

        @Override
        public abstract void stopSmartAnswer(Bundle bundle);
    }

    void sendCommand(Bundle bundle);

    void setCallback(SmartAnswerCallback smartAnswerCallback);

    void stopSmartAnswer(Bundle bundle);
}
