package com.transsion.aicore.nexusflow;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public interface SmartAnswerCallback extends IInterface {

    public static abstract class Stub extends Binder implements SmartAnswerCallback {
        static final int TRANSACTION_onCallback = 1;
        static final int TRANSACTION_onError = 2;

        public static class Proxy implements SmartAnswerCallback {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return "com.transsion.aicore.nexusflow.SmartAnswerCallback";
            }

            public void onCallback(Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.transsion.aicore.nexusflow.SmartAnswerCallback");
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public void onError(int i, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.transsion.aicore.nexusflow.SmartAnswerCallback");
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
            attachInterface(this, "com.transsion.aicore.nexusflow.SmartAnswerCallback");
        }

        public static SmartAnswerCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.transsion.aicore.nexusflow.SmartAnswerCallback");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof SmartAnswerCallback)) ? new Proxy(iBinder) : (SmartAnswerCallback) iInterfaceQueryLocalInterface;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        public abstract void onCallback(Bundle bundle);

        public abstract void onError(int i, String str);

        @Override
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface("com.transsion.aicore.nexusflow.SmartAnswerCallback");
            }
            if (i == 1598968902) {
                parcel2.writeString("com.transsion.aicore.nexusflow.SmartAnswerCallback");
                return true;
            }
            if (i == 1) {
                onCallback((Bundle) (parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null));
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
}
