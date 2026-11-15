package com.transsion.palmsdk.auth;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface OooO0O0 extends IInterface {

    public static abstract class OooO00o extends Binder implements OooO0O0 {
        public static final int OooO00o = 0;

        public static class C0241OooO00o implements OooO0O0 {
            public IBinder OooO00o;

            public C0241OooO00o(IBinder iBinder) {
                this.OooO00o = iBinder;
            }

            @Override
            public void OooO00o(Bundle bundle, com.transsion.palmsdk.auth.OooO00o oooO00o) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.transsion.palmsdk.auth.IPalmAuthService");
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(oooO00o != null ? (com.transsion.palmsdk.auth.OooO00o.AbstractBinderC0239OooO00o) oooO00o : null);
                    if (!this.OooO00o.transact(1, parcelObtain, parcelObtain2, 0)) {
                        int i = OooO00o.OooO00o;
                    }
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void OooO0O0(Bundle bundle, com.transsion.palmsdk.auth.OooO00o oooO00o) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.transsion.palmsdk.auth.IPalmAuthService");
                    parcelObtain.writeInt(1);
                    bundle.writeToParcel(parcelObtain, 0);
                    parcelObtain.writeStrongBinder(oooO00o != null ? (com.transsion.palmsdk.auth.OooO00o.AbstractBinderC0239OooO00o) oooO00o : null);
                    if (!this.OooO00o.transact(2, parcelObtain, parcelObtain2, 0)) {
                        int i = OooO00o.OooO00o;
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
        }

        public OooO00o() {
            attachInterface(this, "com.transsion.palmsdk.auth.IPalmAuthService");
        }

        public static OooO0O0 OooO00o(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.transsion.palmsdk.auth.IPalmAuthService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof OooO0O0)) ? new C0241OooO00o(iBinder) : (OooO0O0) iInterfaceQueryLocalInterface;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("com.transsion.palmsdk.auth.IPalmAuthService");
                ((PalmAuthService.OooO00o) this).OooO00o(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, com.transsion.palmsdk.auth.OooO00o.AbstractBinderC0239OooO00o.OooO00o(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (i != 2) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.transsion.palmsdk.auth.IPalmAuthService");
                return true;
            }
            parcel.enforceInterface("com.transsion.palmsdk.auth.IPalmAuthService");
            ((PalmAuthService.OooO00o) this).OooO0O0(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, com.transsion.palmsdk.auth.OooO00o.AbstractBinderC0239OooO00o.OooO00o(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }
    }

    void OooO00o(Bundle bundle, com.transsion.palmsdk.auth.OooO00o oooO00o) throws RemoteException;

    void OooO0O0(Bundle bundle, com.transsion.palmsdk.auth.OooO00o oooO00o) throws RemoteException;
}
