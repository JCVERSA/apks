package com.google.android.exoplayer2;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.List;

public final class j extends Binder {

    private static final int f24501b;

    private final ImmutableList f24502a;

    static {
        f24501b = com.google.android.exoplayer2.util.p0.f26854a >= 30 ? IBinder.getSuggestedMaxIpcSizeBytes() : 65536;
    }

    public j(List list) {
        this.f24502a = ImmutableList.copyOf((Collection) list);
    }

    public static ImmutableList a(IBinder iBinder) {
        int i10;
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        int i11 = 0;
        int i12 = 1;
        while (i12 != 0) {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInt(i11);
                try {
                    iBinder.transact(1, parcelObtain, parcelObtain2, 0);
                    while (true) {
                        i10 = parcelObtain2.readInt();
                        if (i10 == 1) {
                            aVarBuilder.a((Bundle) com.google.android.exoplayer2.util.a.e(parcelObtain2.readBundle()));
                            i11++;
                        }
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    i12 = i10;
                } catch (RemoteException e10) {
                    throw new RuntimeException(e10);
                }
            } catch (Throwable th2) {
                parcelObtain2.recycle();
                parcelObtain.recycle();
                throw th2;
            }
        }
        return aVarBuilder.e();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    protected boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
        if (i10 != 1) {
            return super.onTransact(i10, parcel, parcel2, i11);
        }
        if (parcel2 == null) {
            return false;
        }
        int size = this.f24502a.size();
        int i12 = parcel.readInt();
        while (i12 < size && parcel2.dataSize() < f24501b) {
            parcel2.writeInt(1);
            parcel2.writeBundle((Bundle) this.f24502a.get(i12));
            i12++;
        }
        parcel2.writeInt(i12 < size ? 2 : 0);
        return true;
    }
}
