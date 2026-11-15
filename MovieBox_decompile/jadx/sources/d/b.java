package d;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

public interface b extends IInterface {

    public static final String f58673k = "android$support$customtabs$trusted$ITrustedWebActivityService".replace('$', '.');

    public static class C0698b {
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

    int C0();

    Bundle D0(Bundle bundle);

    Bundle G();

    void H0(Bundle bundle);

    Bundle P(Bundle bundle);

    Bundle k0();

    Bundle z(String str, Bundle bundle, IBinder iBinder);

    public static abstract class a extends Binder implements b {
        public a() {
            attachInterface(this, b.f58673k);
        }

        @Override
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            String str = b.f58673k;
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            switch (i10) {
                case 2:
                    Bundle bundleP = P((Bundle) C0698b.c(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    C0698b.d(parcel2, bundleP, 1);
                    return true;
                case 3:
                    H0((Bundle) C0698b.c(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    int iC0 = C0();
                    parcel2.writeNoException();
                    parcel2.writeInt(iC0);
                    return true;
                case 5:
                    Bundle bundleK0 = k0();
                    parcel2.writeNoException();
                    C0698b.d(parcel2, bundleK0, 1);
                    return true;
                case 6:
                    Bundle bundleD0 = D0((Bundle) C0698b.c(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    C0698b.d(parcel2, bundleD0, 1);
                    return true;
                case 7:
                    Bundle bundleG = G();
                    parcel2.writeNoException();
                    C0698b.d(parcel2, bundleG, 1);
                    return true;
                case 8:
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
                case 9:
                    Bundle bundleZ = z(parcel.readString(), (Bundle) C0698b.c(parcel, Bundle.CREATOR), parcel.readStrongBinder());
                    parcel2.writeNoException();
                    C0698b.d(parcel2, bundleZ, 1);
                    return true;
            }
        }

        @Override
        public IBinder asBinder() {
            return this;
        }
    }
}
