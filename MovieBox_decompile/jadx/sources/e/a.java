package e;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

public interface a extends IInterface {

    public static final String f59222l = "android$support$v4$app$INotificationSideChannel".replace('$', '.');

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

    void K(String str, int i10, String str2);

    void S0(String str, int i10, String str2, Notification notification);

    void p0(String str);

    public static abstract class AbstractBinderC0712a extends Binder implements a {

        private static class C0713a implements a {

            private IBinder f59223a;

            C0713a(IBinder iBinder) {
                this.f59223a = iBinder;
            }

            @Override
            public void S0(String str, int i10, String str2, Notification notification) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.f59222l);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeString(str2);
                    b.d(parcelObtain, notification, 0);
                    this.f59223a.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override
            public IBinder asBinder() {
                return this.f59223a;
            }
        }

        public AbstractBinderC0712a() {
            attachInterface(this, a.f59222l);
        }

        public static a X0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(a.f59222l);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0713a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        @Override
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            String str = a.f59222l;
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i10 == 1) {
                S0(parcel.readString(), parcel.readInt(), parcel.readString(), (Notification) b.c(parcel, Notification.CREATOR));
            } else if (i10 == 2) {
                K(parcel.readString(), parcel.readInt(), parcel.readString());
            } else {
                if (i10 != 3) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                p0(parcel.readString());
            }
            return true;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }
    }
}
