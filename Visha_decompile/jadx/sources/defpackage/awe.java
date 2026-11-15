package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cloudmessaging.zzd;

public final class awe implements Parcelable.Creator {
    @Override
    public final Object createFromParcel(Parcel parcel) {
        return new zzd(parcel.readStrongBinder());
    }

    @Override
    public final Object[] newArray(int i) {
        return new zzd[i];
    }
}
