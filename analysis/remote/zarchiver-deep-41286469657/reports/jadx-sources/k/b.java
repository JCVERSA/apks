package k;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class b extends Binder implements IInterface {
    public b() {
        attachInterface(this, "moe.shizuku.server.IShizukuApplication");
    }

    @Override
    public final IBinder asBinder() {
        return this;
    }

    @Override
    public final boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 >= 1 && i2 <= 16777215) {
            parcel.enforceInterface("moe.shizuku.server.IShizukuApplication");
        }
        if (i2 == 1598968902) {
            parcel2.writeString("moe.shizuku.server.IShizukuApplication");
            return true;
        }
        if (i2 == 2) {
            Bundle bundle = (Bundle) (parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null);
            bundle.getInt("shizuku:attach-reply-uid", -1);
            IBinder iBinder = z.a.f2308a;
            bundle.getInt("shizuku:attach-reply-version", -1);
            bundle.getInt("shizuku:attach-reply-patch-version", -1);
            bundle.getString("shizuku:attach-reply-secontext");
            z.a.f2310c = bundle.getBoolean("shizuku:attach-reply-permission-granted", false);
            bundle.getBoolean("shizuku:attach-reply-should-show-request-permission-rationale", false);
            z.a.e();
        } else if (i2 == 3) {
            parcel.readInt();
            ((Bundle) (parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null)).getBoolean("shizuku:request-permission-reply-allowed", false);
            IBinder iBinder2 = z.a.f2308a;
        } else {
            if (i2 != 10001) {
                return super.onTransact(i2, parcel, parcel2, i3);
            }
            parcel.readInt();
            parcel.readInt();
            parcel.readString();
            parcel.readInt();
            parcel2.writeNoException();
        }
        return true;
    }
}
