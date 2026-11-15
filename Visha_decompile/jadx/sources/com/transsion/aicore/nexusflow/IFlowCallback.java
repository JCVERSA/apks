package com.transsion.aicore.nexusflow;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;

public interface IFlowCallback extends IInterface {
    public static final String DESCRIPTOR = "com.transsion.aicore.nexusflow.IFlowCallback";

    public static class Default implements IFlowCallback {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public void onResult(Bundle bundle) {
        }

        @Override
        public void onStreamResult(Bundle bundle, ParcelFileDescriptor parcelFileDescriptor) {
        }
    }

    public static abstract class Stub extends Binder implements IFlowCallback {
        static final int TRANSACTION_onResult = 1;
        static final int TRANSACTION_onStreamResult = 2;

        public static class Proxy implements IFlowCallback {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IFlowCallback.DESCRIPTOR;
            }

            @Override
            public void onResult(Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IFlowCallback.DESCRIPTOR);
                    a.d(parcelObtain, bundle, 0);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void onStreamResult(Bundle bundle, ParcelFileDescriptor parcelFileDescriptor) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IFlowCallback.DESCRIPTOR);
                    a.d(parcelObtain, bundle, 0);
                    a.d(parcelObtain, parcelFileDescriptor, 0);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IFlowCallback.DESCRIPTOR);
        }

        public static IFlowCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IFlowCallback.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IFlowCallback)) ? new Proxy(iBinder) : (IFlowCallback) iInterfaceQueryLocalInterface;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IFlowCallback.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(IFlowCallback.DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                onResult((Bundle) a.c(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
            } else {
                if (i != 2) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                onStreamResult((Bundle) a.c(parcel, Bundle.CREATOR), (ParcelFileDescriptor) a.c(parcel, ParcelFileDescriptor.CREATOR));
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

    void onResult(Bundle bundle);

    void onStreamResult(Bundle bundle, ParcelFileDescriptor parcelFileDescriptor);
}
