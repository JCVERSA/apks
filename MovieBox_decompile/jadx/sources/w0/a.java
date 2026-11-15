package w0;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public interface a extends IInterface {

    public static final String f74080m = "androidx$core$app$unusedapprestrictions$IUnusedAppRestrictionsBackportCallback".replace('$', '.');

    void V(boolean z10, boolean z11);

    public static abstract class AbstractBinderC0918a extends Binder implements a {

        private static class C0919a implements a {

            private IBinder f74081a;

            C0919a(IBinder iBinder) {
                this.f74081a = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.f74081a;
            }
        }

        public AbstractBinderC0918a() {
            attachInterface(this, a.f74080m);
        }

        public static a X0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(a.f74080m);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0919a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        @Override
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            String str = a.f74080m;
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
            V(parcel.readInt() != 0, parcel.readInt() != 0);
            return true;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }
    }
}
