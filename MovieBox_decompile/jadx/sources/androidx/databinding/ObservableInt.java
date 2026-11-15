package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

public class ObservableInt extends b implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableInt> CREATOR = new a();
    static final long serialVersionUID = 1;
    private int mValue;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public ObservableInt createFromParcel(Parcel parcel) {
            return new ObservableInt(parcel.readInt());
        }

        @Override
        public ObservableInt[] newArray(int i10) {
            return new ObservableInt[i10];
        }
    }

    public ObservableInt(int i10) {
        this.mValue = i10;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public int get() {
        return this.mValue;
    }

    public void set(int i10) {
        if (i10 != this.mValue) {
            this.mValue = i10;
            notifyChange();
        }
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.mValue);
    }

    public ObservableInt() {
    }

    public ObservableInt(i... iVarArr) {
        super(iVarArr);
    }
}
