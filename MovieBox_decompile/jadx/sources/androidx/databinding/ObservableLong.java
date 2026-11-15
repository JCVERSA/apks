package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

public class ObservableLong extends b implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableLong> CREATOR = new a();
    static final long serialVersionUID = 1;
    private long mValue;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public ObservableLong createFromParcel(Parcel parcel) {
            return new ObservableLong(parcel.readLong());
        }

        @Override
        public ObservableLong[] newArray(int i10) {
            return new ObservableLong[i10];
        }
    }

    public ObservableLong(long j10) {
        this.mValue = j10;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public long get() {
        return this.mValue;
    }

    public void set(long j10) {
        if (j10 != this.mValue) {
            this.mValue = j10;
            notifyChange();
        }
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.mValue);
    }

    public ObservableLong() {
    }

    public ObservableLong(i... iVarArr) {
        super(iVarArr);
    }
}
