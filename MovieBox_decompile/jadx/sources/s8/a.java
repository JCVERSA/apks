package s8;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class a implements IInterface {

    private final IBinder f71612a;

    private final String f71613b = "com.google.android.finsky.externalreferrer.IGetInstallReferrerService";

    protected a(IBinder iBinder) {
        this.f71612a = iBinder;
    }

    protected final Parcel X0() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f71613b);
        return parcelObtain;
    }

    protected final Parcel Y0(Parcel parcel) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                this.f71612a.transact(1, parcel, parcelObtain, 0);
                parcelObtain.readException();
                parcel.recycle();
                return parcelObtain;
            } catch (RuntimeException e10) {
                parcelObtain.recycle();
                throw e10;
            }
        } catch (Throwable th2) {
            parcel.recycle();
            throw th2;
        }
    }

    @Override
    public final IBinder asBinder() {
        return this.f71612a;
    }
}
