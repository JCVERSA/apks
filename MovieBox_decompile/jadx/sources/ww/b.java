package ww;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public interface b extends IInterface {

    public static abstract class a extends Binder implements b {

        private static class C0931a implements b {

            private IBinder f74773a;

            C0931a(IBinder iBinder) {
                this.f74773a = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.f74773a;
            }

            @Override
            public void j(ww.a aVar, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.transsnet.dispenselib.IDispenseCommonService");
                    parcelObtain.writeStrongInterface(aVar);
                    parcelObtain.writeString(str);
                    this.f74773a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, "com.transsnet.dispenselib.IDispenseCommonService");
        }

        public static b X0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.transsnet.dispenselib.IDispenseCommonService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) ? new C0931a(iBinder) : (b) iInterfaceQueryLocalInterface;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface("com.transsnet.dispenselib.IDispenseCommonService");
            }
            if (i10 == 1598968902) {
                parcel2.writeString("com.transsnet.dispenselib.IDispenseCommonService");
                return true;
            }
            if (i10 == 1) {
                j(ww.a.AbstractBinderC0929a.X0(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
            } else if (i10 == 2) {
                b0(ww.a.AbstractBinderC0929a.X0(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
            } else if (i10 == 3) {
                G0(parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
            } else {
                if (i10 != 4) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                String strI = i(parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(strI);
            }
            return true;
        }
    }

    void G0(String str, String str2, String str3);

    void b0(ww.a aVar, String str);

    String i(String str, String str2, String str3);

    void j(ww.a aVar, String str);
}
