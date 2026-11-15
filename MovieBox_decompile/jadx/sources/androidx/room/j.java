package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public interface j extends IInterface {

    public static final String f14368e = "androidx$room$IMultiInstanceInvalidationService".replace('$', '.');

    void V0(i iVar, int i10);

    void Z(int i10, String[] strArr);

    int r0(i iVar, String str);

    public static abstract class a extends Binder implements j {

        private static class C0112a implements j {

            private IBinder f14369a;

            C0112a(IBinder iBinder) {
                this.f14369a = iBinder;
            }

            @Override
            public void V0(i iVar, int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(j.f14368e);
                    parcelObtain.writeStrongInterface(iVar);
                    parcelObtain.writeInt(i10);
                    this.f14369a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void Z(int i10, String[] strArr) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(j.f14368e);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeStringArray(strArr);
                    this.f14369a.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override
            public IBinder asBinder() {
                return this.f14369a;
            }

            @Override
            public int r0(i iVar, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(j.f14368e);
                    parcelObtain.writeStrongInterface(iVar);
                    parcelObtain.writeString(str);
                    this.f14369a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, j.f14368e);
        }

        public static j X0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(j.f14368e);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof j)) ? new C0112a(iBinder) : (j) iInterfaceQueryLocalInterface;
        }

        @Override
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            String str = j.f14368e;
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i10 == 1) {
                int iR0 = r0(i.a.X0(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(iR0);
            } else if (i10 == 2) {
                V0(i.a.X0(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
            } else {
                if (i10 != 3) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                Z(parcel.readInt(), parcel.createStringArray());
            }
            return true;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }
    }
}
