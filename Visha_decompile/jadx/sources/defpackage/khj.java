package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzr;

public final class khj implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        return new zzr(parcel);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzr[i];
    }
}
