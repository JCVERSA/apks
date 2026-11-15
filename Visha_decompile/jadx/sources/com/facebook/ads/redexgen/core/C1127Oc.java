package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.internal.androidx.support.v4.view.AbsSavedState;
import java.util.Arrays;

public class C1127Oc implements Parcelable.ClassLoaderCreator<AbsSavedState> {
    public static byte[] A00;

    static {
        A03();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 78);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A00 = new byte[]{23, 25, 20, 9, 22, -9, 24, 5, 24, 9, -60, 17, 25, 23, 24, -60, 6, 9, -60, 18, 25, 16, 16};
    }

    @Override
    public final AbsSavedState createFromParcel(Parcel parcel) {
        return createFromParcel(parcel, null);
    }

    @Override
    public final AbsSavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        Parcelable superState = parcel.readParcelable(classLoader);
        if (superState == null) {
            return AbsSavedState.A02;
        }
        throw new IllegalStateException(A02(0, 23, 86));
    }

    @Override
    public final AbsSavedState[] newArray(int i) {
        return new AbsSavedState[i];
    }
}
