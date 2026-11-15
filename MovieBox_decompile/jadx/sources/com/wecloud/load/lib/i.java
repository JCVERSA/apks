package com.wecloud.load.lib;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

public interface i extends IInterface {

    public static abstract class a extends Binder implements i {

        private static class C0693a implements i {

            private IBinder f58609a;

            C0693a(IBinder iBinder) {
                this.f58609a = iBinder;
            }

            @Override
            public void D(SoDownloadRequest soDownloadRequest, h hVar) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.wecloud.load.lib.ISoLoadService");
                    b.d(parcelObtain, soDownloadRequest, 0);
                    parcelObtain.writeStrongInterface(hVar);
                    this.f58609a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public IBinder asBinder() {
                return this.f58609a;
            }
        }

        public a() {
            attachInterface(this, "com.wecloud.load.lib.ISoLoadService");
        }

        public static i X0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.wecloud.load.lib.ISoLoadService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof i)) ? new C0693a(iBinder) : (i) iInterfaceQueryLocalInterface;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface("com.wecloud.load.lib.ISoLoadService");
            }
            if (i10 == 1598968902) {
                parcel2.writeString("com.wecloud.load.lib.ISoLoadService");
                return true;
            }
            if (i10 == 1) {
                D((SoDownloadRequest) b.c(parcel, SoDownloadRequest.CREATOR), h.a.Y0(parcel.readStrongBinder()));
                parcel2.writeNoException();
            } else if (i10 == 2) {
                boolean zJ0 = J0(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(zJ0 ? 1 : 0);
            } else {
                if (i10 != 3) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                int iC = C(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(iC);
            }
            return true;
        }
    }

    public static class b {
        public static Object c(Parcel parcel, Parcelable.Creator creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        public static void d(Parcel parcel, Parcelable parcelable, int i10) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                parcelable.writeToParcel(parcel, i10);
            }
        }
    }

    int C(String str);

    void D(SoDownloadRequest soDownloadRequest, h hVar);

    boolean J0(String str);
}
