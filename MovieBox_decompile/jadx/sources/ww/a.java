package ww;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public interface a extends IInterface {

    public static abstract class AbstractBinderC0929a extends Binder implements a {

        private static class C0930a implements a {

            private IBinder f74772a;

            C0930a(IBinder iBinder) {
                this.f74772a = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.f74772a;
            }
        }

        public AbstractBinderC0929a() {
            attachInterface(this, "com.transsnet.dispenselib.IDispenseCommonCallBack");
        }

        public static a X0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.transsnet.dispenselib.IDispenseCommonCallBack");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0930a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface("com.transsnet.dispenselib.IDispenseCommonCallBack");
            }
            if (i10 == 1598968902) {
                parcel2.writeString("com.transsnet.dispenselib.IDispenseCommonCallBack");
                return true;
            }
            if (i10 != 1) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            M0(parcel.readString(), parcel.readString());
            parcel2.writeNoException();
            return true;
        }
    }

    void M0(String str, String str2);
}
