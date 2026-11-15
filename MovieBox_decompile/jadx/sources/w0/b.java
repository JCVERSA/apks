package w0;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public interface b extends IInterface {

    public static final String f74082n = "androidx$core$app$unusedapprestrictions$IUnusedAppRestrictionsBackportService".replace('$', '.');

    void I0(w0.a aVar);

    public static abstract class a extends Binder implements b {
        public a() {
            attachInterface(this, b.f74082n);
        }

        @Override
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            String str = b.f74082n;
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
            I0(w0.a.AbstractBinderC0918a.X0(parcel.readStrongBinder()));
            return true;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }
    }
}
