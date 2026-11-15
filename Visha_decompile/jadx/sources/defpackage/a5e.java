package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.ApiMetadata;

public final class a5e implements Parcelable.Creator {
    public static final a5e b = new a5e(new cwe());
    public final Parcelable.Creator a;

    public a5e(Parcelable.Creator creator) {
        this.a = creator;
    }

    public static a5e a() {
        return b;
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        int iDataPosition = parcel.dataPosition();
        if (parcel.readInt() == -204102970) {
            return cwe.a(parcel);
        }
        parcel.setDataPosition(iDataPosition - 4);
        return ApiMetadata.getEmptyInstance();
    }

    @Override
    public final Object[] newArray(int i) {
        return new ApiMetadata[i];
    }
}
