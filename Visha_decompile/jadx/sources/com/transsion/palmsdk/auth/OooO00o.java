package com.transsion.palmsdk.auth;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface OooO00o extends IInterface {

    public static abstract class AbstractBinderC0239OooO00o extends Binder implements OooO00o {
        public static final int OooO00o = 0;

        public static class C0240OooO00o implements OooO00o {
            public IBinder OooO00o;

            public C0240OooO00o(IBinder iBinder) {
                this.OooO00o = iBinder;
            }

            @Override
            public void OooO00o(Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.transsion.palmsdk.auth.IPalmAuthResponse");
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.OooO00o.transact(2, parcelObtain, parcelObtain2, 0)) {
                        int i = AbstractBinderC0239OooO00o.OooO00o;
                    }
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public IBinder asBinder() {
                return this.OooO00o;
            }

            @Override
            public void onCancel() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.transsion.palmsdk.auth.IPalmAuthResponse");
                    if (!this.OooO00o.transact(1, parcelObtain, parcelObtain2, 0)) {
                        int i = AbstractBinderC0239OooO00o.OooO00o;
                    }
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public AbstractBinderC0239OooO00o() {
            attachInterface(this, "com.transsion.palmsdk.auth.IPalmAuthResponse");
        }

        public static OooO00o OooO00o(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.transsion.palmsdk.auth.IPalmAuthResponse");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof OooO00o)) ? new C0240OooO00o(iBinder) : (OooO00o) iInterfaceQueryLocalInterface;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("com.transsion.palmsdk.auth.IPalmAuthResponse");
                onCancel();
                parcel2.writeNoException();
                return true;
            }
            if (i != 2) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.transsion.palmsdk.auth.IPalmAuthResponse");
                return true;
            }
            parcel.enforceInterface("com.transsion.palmsdk.auth.IPalmAuthResponse");
            OooO00o(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            return true;
        }
    }

    void OooO00o(Bundle bundle) throws RemoteException;

    void onCancel() throws RemoteException;
}
