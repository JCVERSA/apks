package k;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public interface c extends IInterface {

    public static abstract class a extends Binder implements c {

        public static final int f1163a = 0;

        public static class C0022a implements c {

            public final IBinder f1164a;

            public C0022a(IBinder iBinder) {
                this.f1164a = iBinder;
            }

            @Override
            public final IBinder asBinder() {
                return this.f1164a;
            }

            @Override
            public final void d() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
                    parcelObtain.writeInt(1);
                    this.f1164a.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final boolean e() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
                    this.f1164a.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public final k.a h(String[] strArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
                    parcelObtain.writeStringArray(strArr);
                    k.a c0021a = null;
                    parcelObtain.writeStringArray(null);
                    parcelObtain.writeString(null);
                    this.f1164a.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    IBinder strongBinder = parcelObtain2.readStrongBinder();
                    int i2 = k.a.AbstractBinderC0020a.f1161a;
                    if (strongBinder != null) {
                        IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("moe.shizuku.server.IRemoteProcess");
                        c0021a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof k.a)) ? new k.a.AbstractBinderC0020a.C0021a(strongBinder) : (k.a) iInterfaceQueryLocalInterface;
                    }
                    return c0021a;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }

    void d();

    boolean e();

    k.a h(String[] strArr);
}
