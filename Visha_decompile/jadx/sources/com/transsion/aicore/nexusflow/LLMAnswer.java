package com.transsion.aicore.nexusflow;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public interface LLMAnswer extends IInterface {

    public static abstract class Stub extends Binder implements LLMAnswer {
        static final int TRANSACTION_removeCallback = 4;
        static final int TRANSACTION_sendCommand = 2;
        static final int TRANSACTION_setCallback = 1;
        static final int TRANSACTION_stopSmartAnswer = 3;

        public static class Proxy implements LLMAnswer {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return "com.transsion.aicore.nexusflow.LLMAnswer";
            }

            @Override
            public void removeCallback() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.transsion.aicore.nexusflow.LLMAnswer");
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void sendCommand(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.transsion.aicore.nexusflow.LLMAnswer");
                    parcelObtain.writeString(str);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void setCallback(LLMAnswerCallback lLMAnswerCallback, int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.transsion.aicore.nexusflow.LLMAnswer");
                    parcelObtain.writeStrongInterface(lLMAnswerCallback);
                    parcelObtain.writeInt(i);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public void stopSmartAnswer(Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.transsion.aicore.nexusflow.LLMAnswer");
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
            attachInterface(this, "com.transsion.aicore.nexusflow.LLMAnswer");
        }

        public static LLMAnswer asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.transsion.aicore.nexusflow.LLMAnswer");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof LLMAnswer)) ? new Proxy(iBinder) : (LLMAnswer) iInterfaceQueryLocalInterface;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface("com.transsion.aicore.nexusflow.LLMAnswer");
            }
            if (i == 1598968902) {
                parcel2.writeString("com.transsion.aicore.nexusflow.LLMAnswer");
                return true;
            }
            if (i == 1) {
                setCallback(LLMAnswerCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
            } else if (i == 2) {
                sendCommand(parcel.readString());
                parcel2.writeNoException();
            } else if (i == 3) {
                stopSmartAnswer((Bundle) (parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null));
                parcel2.writeNoException();
            } else {
                if (i != 4) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                removeCallback();
                parcel2.writeNoException();
            }
            return true;
        }

        @Override
        public abstract void removeCallback();

        @Override
        public abstract void sendCommand(String str);

        @Override
        public abstract void setCallback(LLMAnswerCallback lLMAnswerCallback, int i);

        public abstract void stopSmartAnswer(Bundle bundle);
    }

    void removeCallback();

    void sendCommand(String str);

    void setCallback(LLMAnswerCallback lLMAnswerCallback, int i);
}
