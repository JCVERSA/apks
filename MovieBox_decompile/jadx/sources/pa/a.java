package pa;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import s8.b;
import s8.c;

public interface a extends IInterface {

    public static abstract class AbstractBinderC0853a extends b implements a {

        public static class C0854a extends s8.a implements a {
            C0854a(IBinder iBinder) {
                super(iBinder);
            }

            @Override
            public final Bundle w(Bundle bundle) {
                Parcel parcelX0 = X0();
                c.b(parcelX0, bundle);
                Parcel parcelY0 = Y0(parcelX0);
                Bundle bundle2 = (Bundle) c.a(parcelY0, Bundle.CREATOR);
                parcelY0.recycle();
                return bundle2;
            }
        }

        public static a Y0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            return iInterfaceQueryLocalInterface instanceof a ? (a) iInterfaceQueryLocalInterface : new C0854a(iBinder);
        }

        @Override
        protected final boolean X0(int i10, Parcel parcel, Parcel parcel2) {
            if (i10 != 1) {
                return false;
            }
            Bundle bundleW = w((Bundle) c.a(parcel, Bundle.CREATOR));
            parcel2.writeNoException();
            c.c(parcel2, bundleW);
            return true;
        }
    }

    Bundle w(Bundle bundle);
}
