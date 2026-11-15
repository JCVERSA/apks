package c;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

public interface c extends IInterface {

    public static final String f16366h = "android$support$customtabs$IEngagementSignalsCallback".replace('$', '.');

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

    void onGreatestScrollPercentageIncreased(int i10, Bundle bundle);

    void onSessionEnded(boolean z10, Bundle bundle);

    void onVerticalScrollEvent(boolean z10, Bundle bundle);

    public static abstract class a extends Binder implements c {

        private static class C0141a implements c {

            private IBinder f16367a;

            C0141a(IBinder iBinder) {
                this.f16367a = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.f16367a;
            }

            @Override
            public void onGreatestScrollPercentageIncreased(int i10, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(c.f16366h);
                    parcelObtain.writeInt(i10);
                    b.d(parcelObtain, bundle, 0);
                    this.f16367a.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override
            public void onSessionEnded(boolean z10, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(c.f16366h);
                    parcelObtain.writeInt(z10 ? 1 : 0);
                    b.d(parcelObtain, bundle, 0);
                    this.f16367a.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override
            public void onVerticalScrollEvent(boolean z10, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(c.f16366h);
                    parcelObtain.writeInt(z10 ? 1 : 0);
                    b.d(parcelObtain, bundle, 0);
                    this.f16367a.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, c.f16366h);
        }

        public static c X0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(c.f16366h);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof c)) ? new C0141a(iBinder) : (c) iInterfaceQueryLocalInterface;
        }

        @Override
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            String str = c.f16366h;
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i10 == 2) {
                onVerticalScrollEvent(parcel.readInt() != 0, (Bundle) b.c(parcel, Bundle.CREATOR));
            } else if (i10 == 3) {
                onGreatestScrollPercentageIncreased(parcel.readInt(), (Bundle) b.c(parcel, Bundle.CREATOR));
            } else {
                if (i10 != 4) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                onSessionEnded(parcel.readInt() != 0, (Bundle) b.c(parcel, Bundle.CREATOR));
            }
            return true;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }
    }
}
