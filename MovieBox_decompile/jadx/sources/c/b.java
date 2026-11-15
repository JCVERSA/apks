package c;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

public interface b extends IInterface {

    public static final String f16364g = "android$support$customtabs$ICustomTabsService".replace('$', '.');

    public static class C0140b {
        public static Object d(Parcel parcel, Parcelable.Creator creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        public static void e(Parcel parcel, List list, int i10) {
            if (list == null) {
                parcel.writeInt(-1);
                return;
            }
            int size = list.size();
            parcel.writeInt(size);
            for (int i11 = 0; i11 < size; i11++) {
                f(parcel, (Parcelable) list.get(i11), i10);
            }
        }

        public static void f(Parcel parcel, Parcelable parcelable, int i10) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                parcelable.writeToParcel(parcel, i10);
            }
        }
    }

    boolean B(c.a aVar, Bundle bundle);

    boolean P0(c.a aVar, IBinder iBinder, Bundle bundle);

    boolean T(c.a aVar, Uri uri, int i10, Bundle bundle);

    boolean U(c.a aVar, Uri uri, Bundle bundle, List list);

    boolean U0(c.a aVar, Uri uri, Bundle bundle);

    int W(c.a aVar, String str, Bundle bundle);

    boolean d(c.a aVar, Bundle bundle);

    boolean g(c.a aVar, Bundle bundle);

    boolean l0(c.a aVar, int i10, Uri uri, Bundle bundle);

    boolean r(c.a aVar);

    Bundle u(String str, Bundle bundle);

    boolean w0(long j10);

    boolean x0(c.a aVar, Uri uri);

    public static abstract class a extends Binder implements b {

        private static class C0139a implements b {

            private IBinder f16365a;

            C0139a(IBinder iBinder) {
                this.f16365a = iBinder;
            }

            @Override
            public boolean B(c.a aVar, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f16364g);
                    parcelObtain.writeStrongInterface(aVar);
                    C0140b.f(parcelObtain, bundle, 0);
                    this.f16365a.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public boolean P0(c.a aVar, IBinder iBinder, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f16364g);
                    parcelObtain.writeStrongInterface(aVar);
                    parcelObtain.writeStrongBinder(iBinder);
                    C0140b.f(parcelObtain, bundle, 0);
                    this.f16365a.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public boolean U(c.a aVar, Uri uri, Bundle bundle, List list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f16364g);
                    parcelObtain.writeStrongInterface(aVar);
                    C0140b.f(parcelObtain, uri, 0);
                    C0140b.f(parcelObtain, bundle, 0);
                    C0140b.e(parcelObtain, list, 0);
                    this.f16365a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public int W(c.a aVar, String str, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f16364g);
                    parcelObtain.writeStrongInterface(aVar);
                    parcelObtain.writeString(str);
                    C0140b.f(parcelObtain, bundle, 0);
                    this.f16365a.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public IBinder asBinder() {
                return this.f16365a;
            }

            @Override
            public boolean d(c.a aVar, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f16364g);
                    parcelObtain.writeStrongInterface(aVar);
                    C0140b.f(parcelObtain, bundle, 0);
                    this.f16365a.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public boolean r(c.a aVar) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f16364g);
                    parcelObtain.writeStrongInterface(aVar);
                    this.f16365a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public boolean w0(long j10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f16364g);
                    parcelObtain.writeLong(j10);
                    this.f16365a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, b.f16364g);
        }

        public static b X0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(b.f16364g);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) ? new C0139a(iBinder) : (b) iInterfaceQueryLocalInterface;
        }

        @Override
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            String str = b.f16364g;
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            switch (i10) {
                case 2:
                    boolean zW0 = w0(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(zW0 ? 1 : 0);
                    return true;
                case 3:
                    boolean zR = r(c.a.AbstractBinderC0137a.X0(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zR ? 1 : 0);
                    return true;
                case 4:
                    c.a aVarX0 = c.a.AbstractBinderC0137a.X0(parcel.readStrongBinder());
                    Uri uri = (Uri) C0140b.d(parcel, Uri.CREATOR);
                    Parcelable.Creator creator = Bundle.CREATOR;
                    boolean zU = U(aVarX0, uri, (Bundle) C0140b.d(parcel, creator), parcel.createTypedArrayList(creator));
                    parcel2.writeNoException();
                    parcel2.writeInt(zU ? 1 : 0);
                    return true;
                case 5:
                    Bundle bundleU = u(parcel.readString(), (Bundle) C0140b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    C0140b.f(parcel2, bundleU, 1);
                    return true;
                case 6:
                    boolean zG = g(c.a.AbstractBinderC0137a.X0(parcel.readStrongBinder()), (Bundle) C0140b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zG ? 1 : 0);
                    return true;
                case 7:
                    boolean zX0 = x0(c.a.AbstractBinderC0137a.X0(parcel.readStrongBinder()), (Uri) C0140b.d(parcel, Uri.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zX0 ? 1 : 0);
                    return true;
                case 8:
                    int iW = W(c.a.AbstractBinderC0137a.X0(parcel.readStrongBinder()), parcel.readString(), (Bundle) C0140b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(iW);
                    return true;
                case 9:
                    boolean zL0 = l0(c.a.AbstractBinderC0137a.X0(parcel.readStrongBinder()), parcel.readInt(), (Uri) C0140b.d(parcel, Uri.CREATOR), (Bundle) C0140b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zL0 ? 1 : 0);
                    return true;
                case 10:
                    boolean zD = d(c.a.AbstractBinderC0137a.X0(parcel.readStrongBinder()), (Bundle) C0140b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zD ? 1 : 0);
                    return true;
                case 11:
                    boolean zU0 = U0(c.a.AbstractBinderC0137a.X0(parcel.readStrongBinder()), (Uri) C0140b.d(parcel, Uri.CREATOR), (Bundle) C0140b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zU0 ? 1 : 0);
                    return true;
                case 12:
                    boolean zT = T(c.a.AbstractBinderC0137a.X0(parcel.readStrongBinder()), (Uri) C0140b.d(parcel, Uri.CREATOR), parcel.readInt(), (Bundle) C0140b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zT ? 1 : 0);
                    return true;
                case 13:
                    boolean zB = B(c.a.AbstractBinderC0137a.X0(parcel.readStrongBinder()), (Bundle) C0140b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zB ? 1 : 0);
                    return true;
                case 14:
                    boolean zP0 = P0(c.a.AbstractBinderC0137a.X0(parcel.readStrongBinder()), parcel.readStrongBinder(), (Bundle) C0140b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zP0 ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }

        @Override
        public IBinder asBinder() {
            return this;
        }
    }
}
