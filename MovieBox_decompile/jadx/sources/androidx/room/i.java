package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public interface i extends IInterface {

    public static final String f14356d = "androidx$room$IMultiInstanceInvalidationCallback".replace('$', '.');

    void o(String[] strArr);

    public static abstract class a extends Binder implements i {

        private static class C0111a implements i {

            private IBinder f14357a;

            C0111a(IBinder iBinder) {
                this.f14357a = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.f14357a;
            }

            @Override
            public void o(String[] strArr) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(i.f14356d);
                    parcelObtain.writeStringArray(strArr);
                    this.f14357a.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, i.f14356d);
        }

        public static i X0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(i.f14356d);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof i)) ? new C0111a(iBinder) : (i) iInterfaceQueryLocalInterface;
        }

        @Override
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            String str = i.f14356d;
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i10 != 1) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            o(parcel.createStringArray());
            return true;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }
    }
}
