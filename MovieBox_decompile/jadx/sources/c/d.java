package c;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

public interface d extends IInterface {

    public static final String f16368i = "android$support$customtabs$IPostMessageService".replace('$', '.');

    public static class b {
        public static Object b(Parcel parcel, Parcelable.Creator creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }
    }

    void E0(c.a aVar, String str, Bundle bundle);

    void n(c.a aVar, Bundle bundle);

    public static abstract class a extends Binder implements d {
        public a() {
            attachInterface(this, d.f16368i);
        }

        @Override
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            String str = d.f16368i;
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i10 == 2) {
                n(c.a.AbstractBinderC0137a.X0(parcel.readStrongBinder()), (Bundle) b.b(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
            } else {
                if (i10 != 3) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                E0(c.a.AbstractBinderC0137a.X0(parcel.readStrongBinder()), parcel.readString(), (Bundle) b.b(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
            }
            return true;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }
    }
}
