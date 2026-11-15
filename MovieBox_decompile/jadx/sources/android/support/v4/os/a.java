package android.support.v4.os;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

public interface a extends IInterface {

    public static final String f525c = "android$support$v4$os$IResultReceiver".replace('$', '.');

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

    void c0(int i10, Bundle bundle);

    public static abstract class AbstractBinderC0010a extends Binder implements a {

        private static class C0011a implements a {

            private IBinder f526a;

            C0011a(IBinder iBinder) {
                this.f526a = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.f526a;
            }

            @Override
            public void c0(int i10, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.f525c);
                    parcelObtain.writeInt(i10);
                    b.d(parcelObtain, bundle, 0);
                    this.f526a.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public AbstractBinderC0010a() {
            attachInterface(this, a.f525c);
        }

        public static a X0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(a.f525c);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0011a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        @Override
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            String str = a.f525c;
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
            c0(parcel.readInt(), (Bundle) b.c(parcel, Bundle.CREATOR));
            return true;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }
    }
}
