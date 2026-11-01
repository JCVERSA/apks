package e0;

import android.os.Parcel;
import android.os.Parcelable;

public final class i implements Parcelable {
    public static final Parcelable.Creator<i> CREATOR = new a();

    public final String f692a;

    public String f693b;

    public String f694c;

    public int f695d;

    public long f696e;

    public int f697f;

    public class a implements Parcelable.Creator<i> {
        @Override
        public final i createFromParcel(Parcel parcel) {
            return new i(parcel);
        }

        @Override
        public final i[] newArray(int i2) {
            return new i[i2];
        }
    }

    public i(String str) {
        this.f692a = str;
        this.f694c = null;
        this.f693b = null;
        this.f697f = 0;
        this.f695d = 0;
        this.f696e = 0L;
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f692a);
        parcel.writeString(this.f693b);
        parcel.writeString(this.f694c);
        parcel.writeInt(this.f695d);
        parcel.writeLong(this.f696e);
        parcel.writeInt(this.f697f);
    }

    public i(Parcel parcel) {
        this.f692a = parcel.readString();
        this.f693b = parcel.readString();
        this.f694c = parcel.readString();
        this.f695d = parcel.readInt();
        this.f696e = parcel.readLong();
        this.f697f = parcel.readInt();
    }
}
