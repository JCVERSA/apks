package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

public class ObservableParcelable<T extends Parcelable> extends ObservableField<T> implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableParcelable> CREATOR = new a();
    static final long serialVersionUID = 1;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public ObservableParcelable createFromParcel(Parcel parcel) {
            return new ObservableParcelable(parcel.readParcelable(getClass().getClassLoader()));
        }

        @Override
        public ObservableParcelable[] newArray(int i10) {
            return new ObservableParcelable[i10];
        }
    }

    public ObservableParcelable(T t10) {
        super(t10);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(get(), 0);
    }

    public ObservableParcelable() {
    }
}
