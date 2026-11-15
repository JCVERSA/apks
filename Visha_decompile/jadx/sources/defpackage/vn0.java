package defpackage;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.List;

public final class vn0 extends Binder {
    public static final int c;
    public final ImmutableList b;

    static {
        c = blb.a >= 30 ? IBinder.getSuggestedMaxIpcSizeBytes() : 65536;
    }

    public vn0(List list) {
        this.b = ImmutableList.copyOf((Collection) list);
    }

    public static ImmutableList a(IBinder iBinder) {
        int i;
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        int i2 = 0;
        int i3 = 1;
        while (i3 != 0) {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInt(i2);
                try {
                    iBinder.transact(1, parcelObtain, parcelObtain2, 0);
                    while (true) {
                        i = parcelObtain2.readInt();
                        if (i == 1) {
                            aVarBuilder.a((Bundle) zi.e(parcelObtain2.readBundle()));
                            i2++;
                        }
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    i3 = i;
                } catch (RemoteException e) {
                    throw new RuntimeException(e);
                }
            } catch (Throwable th) {
                parcelObtain2.recycle();
                parcelObtain.recycle();
                throw th;
            }
        }
        return aVarBuilder.e();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            return super.onTransact(i, parcel, parcel2, i2);
        }
        if (parcel2 == null) {
            return false;
        }
        int size = this.b.size();
        int i3 = parcel.readInt();
        while (i3 < size && parcel2.dataSize() < c) {
            parcel2.writeInt(1);
            parcel2.writeBundle((Bundle) this.b.get(i3));
            i3++;
        }
        parcel2.writeInt(i3 < size ? 2 : 0);
        return true;
    }
}
