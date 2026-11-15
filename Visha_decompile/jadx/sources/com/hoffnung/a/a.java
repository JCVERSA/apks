package com.hoffnung.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;

public interface a extends IInterface {

    public static abstract class AbstractBinderC0122a extends Binder implements a {

        public static class C0123a implements a {
            public static a a;
            private IBinder b;

            public C0123a(IBinder iBinder) {
                this.b = iBinder;
            }

            @Override
            public final void a() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.hoffnung.external.ITpmsCallback");
                    if (this.b.transact(1, parcelObtain, parcelObtain2, 0) || AbstractBinderC0122a.b() == null) {
                        parcelObtain2.readException();
                    } else {
                        AbstractBinderC0122a.b().a();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final IBinder asBinder() {
                return this.b;
            }

            @Override
            public final void a(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.hoffnung.external.ITpmsCallback");
                    parcelObtain.writeInt(i);
                    if (this.b.transact(2, parcelObtain, parcelObtain2, 0) || AbstractBinderC0122a.b() == null) {
                        parcelObtain2.readException();
                    } else {
                        AbstractBinderC0122a.b().a(i);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final void a(List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.hoffnung.external.ITpmsCallback");
                    parcelObtain.writeStringList(list);
                    if (this.b.transact(3, parcelObtain, parcelObtain2, 0) || AbstractBinderC0122a.b() == null) {
                        parcelObtain2.readException();
                    } else {
                        AbstractBinderC0122a.b().a(list);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public AbstractBinderC0122a() {
            attachInterface(this, "com.hoffnung.external.ITpmsCallback");
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.hoffnung.external.ITpmsCallback");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0123a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        public static a b() {
            return C0123a.a;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1) {
                parcel.enforceInterface("com.hoffnung.external.ITpmsCallback");
                a();
            } else if (i == 2) {
                parcel.enforceInterface("com.hoffnung.external.ITpmsCallback");
                a(parcel.readInt());
            } else {
                if (i != 3) {
                    if (i != 1598968902) {
                        return super.onTransact(i, parcel, parcel2, i2);
                    }
                    parcel2.writeString("com.hoffnung.external.ITpmsCallback");
                    return true;
                }
                parcel.enforceInterface("com.hoffnung.external.ITpmsCallback");
                a(parcel.createStringArrayList());
            }
            parcel2.writeNoException();
            return true;
        }
    }

    void a();

    void a(int i);

    void a(List<String> list);
}
