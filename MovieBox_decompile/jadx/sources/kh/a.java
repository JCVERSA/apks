package kh;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public interface a extends IInterface {
    String getId();

    boolean isLimitAdTrackingEnabled(boolean z10);

    public static abstract class AbstractBinderC0791a extends Binder implements a {

        private static class C0792a implements a {

            public static a f63989b;

            private IBinder f63990a;

            C0792a(IBinder iBinder) {
                this.f63990a = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.f63990a;
            }

            @Override
            public String getId() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    if (!this.f63990a.transact(1, parcelObtain, parcelObtain2, 0) && AbstractBinderC0791a.Y0() != null) {
                        return AbstractBinderC0791a.Y0().getId();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public AbstractBinderC0791a() {
            attachInterface(this, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
        }

        public static a X0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0792a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        public static a Y0() {
            return C0792a.f63989b;
        }

        @Override
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            if (i10 == 1) {
                parcel.enforceInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                String id2 = getId();
                parcel2.writeNoException();
                parcel2.writeString(id2);
                return true;
            }
            if (i10 != 2) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                return true;
            }
            parcel.enforceInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            boolean zIsLimitAdTrackingEnabled = isLimitAdTrackingEnabled(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(zIsLimitAdTrackingEnabled ? 1 : 0);
            return true;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }
    }
}
