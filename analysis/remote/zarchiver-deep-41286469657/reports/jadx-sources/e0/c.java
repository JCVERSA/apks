package e0;

import android.os.Parcel;
import android.os.Parcelable;

public final class c implements Parcelable {
    public static final Parcelable.Creator<c> CREATOR = new a();

    public String f662a;

    public long f663b;

    public int f664c;

    public String f665d;

    public long f666e;

    public int f667f;

    public class a implements Parcelable.Creator<c> {
        @Override
        public final c createFromParcel(Parcel parcel) {
            return new c(parcel);
        }

        @Override
        public final c[] newArray(int i2) {
            return new c[i2];
        }
    }

    public c() {
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f662a);
        parcel.writeLong(this.f663b);
        parcel.writeInt(this.f664c);
        parcel.writeString(this.f665d);
        parcel.writeLong(this.f666e);
        parcel.writeInt(this.f667f);
    }

    public c(Parcel parcel) {
        this.f662a = parcel.readString();
        this.f663b = parcel.readLong();
        this.f664c = parcel.readInt();
        this.f665d = parcel.readString();
        this.f666e = parcel.readLong();
        this.f667f = parcel.readInt();
    }
}
