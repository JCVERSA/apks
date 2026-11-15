package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzs;

public final class zfj implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        return new zzs(parcel);
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzs[i];
    }
}
