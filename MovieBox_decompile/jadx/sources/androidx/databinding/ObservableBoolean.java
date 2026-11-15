package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

public class ObservableBoolean extends b implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableBoolean> CREATOR = new a();
    static final long serialVersionUID = 1;
    private boolean mValue;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public ObservableBoolean createFromParcel(Parcel parcel) {
            return new ObservableBoolean(parcel.readInt() == 1);
        }

        @Override
        public ObservableBoolean[] newArray(int i10) {
            return new ObservableBoolean[i10];
        }
    }

    public ObservableBoolean(boolean z10) {
        this.mValue = z10;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean get() {
        return this.mValue;
    }

    public void set(boolean z10) {
        if (z10 != this.mValue) {
            this.mValue = z10;
            notifyChange();
        }
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.mValue ? 1 : 0);
    }

    public ObservableBoolean() {
    }

    public ObservableBoolean(i... iVarArr) {
        super(iVarArr);
    }
}
