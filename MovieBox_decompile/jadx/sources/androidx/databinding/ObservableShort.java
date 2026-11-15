package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

public class ObservableShort extends b implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableShort> CREATOR = new a();
    static final long serialVersionUID = 1;
    private short mValue;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public ObservableShort createFromParcel(Parcel parcel) {
            return new ObservableShort((short) parcel.readInt());
        }

        @Override
        public ObservableShort[] newArray(int i10) {
            return new ObservableShort[i10];
        }
    }

    public ObservableShort(short s10) {
        this.mValue = s10;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public short get() {
        return this.mValue;
    }

    public void set(short s10) {
        if (s10 != this.mValue) {
            this.mValue = s10;
            notifyChange();
        }
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.mValue);
    }

    public ObservableShort() {
    }

    public ObservableShort(i... iVarArr) {
        super(iVarArr);
    }
}
