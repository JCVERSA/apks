package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

public class ObservableChar extends b implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableChar> CREATOR = new a();
    static final long serialVersionUID = 1;
    private char mValue;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public ObservableChar createFromParcel(Parcel parcel) {
            return new ObservableChar((char) parcel.readInt());
        }

        @Override
        public ObservableChar[] newArray(int i10) {
            return new ObservableChar[i10];
        }
    }

    public ObservableChar(char c10) {
        this.mValue = c10;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public char get() {
        return this.mValue;
    }

    public void set(char c10) {
        if (c10 != this.mValue) {
            this.mValue = c10;
            notifyChange();
        }
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.mValue);
    }

    public ObservableChar() {
    }

    public ObservableChar(i... iVarArr) {
        super(iVarArr);
    }
}
