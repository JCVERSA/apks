package d;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

public interface a extends IInterface {

    public static final String f58671j = "android$support$customtabs$trusted$ITrustedWebActivityCallback".replace('$', '.');

    public static class b {
        public static Object b(Parcel parcel, Parcelable.Creator creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }
    }

    void Q0(String str, Bundle bundle);

    public static abstract class AbstractBinderC0696a extends Binder implements a {

        private static class C0697a implements a {

            private IBinder f58672a;

            C0697a(IBinder iBinder) {
                this.f58672a = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.f58672a;
            }
        }

        public AbstractBinderC0696a() {
            attachInterface(this, a.f58671j);
        }

        public static a X0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(a.f58671j);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0697a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        @Override
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            String str = a.f58671j;
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i10 != 2) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            Q0(parcel.readString(), (Bundle) b.b(parcel, Bundle.CREATOR));
            parcel2.writeNoException();
            return true;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }
    }
}
