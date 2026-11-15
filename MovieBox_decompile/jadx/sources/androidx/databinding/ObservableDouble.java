package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

public class ObservableDouble extends b implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableDouble> CREATOR = new a();
    static final long serialVersionUID = 1;
    private double mValue;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public ObservableDouble createFromParcel(Parcel parcel) {
            return new ObservableDouble(parcel.readDouble());
        }

        @Override
        public ObservableDouble[] newArray(int i10) {
            return new ObservableDouble[i10];
        }
    }

    public ObservableDouble(double d10) {
        this.mValue = d10;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public double get() {
        return this.mValue;
    }

    public void set(double d10) {
        if (d10 != this.mValue) {
            this.mValue = d10;
            notifyChange();
        }
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeDouble(this.mValue);
    }

    public ObservableDouble() {
    }

    public ObservableDouble(i... iVarArr) {
        super(iVarArr);
    }
}
