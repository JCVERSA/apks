package moe.shizuku.api;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

public class BinderContainer implements Parcelable {
    public static final Parcelable.Creator<BinderContainer> CREATOR = new a();

    public final IBinder f1231a;

    public class a implements Parcelable.Creator<BinderContainer> {
        @Override
        public final BinderContainer createFromParcel(Parcel parcel) {
            return new BinderContainer(parcel);
        }

        @Override
        public final BinderContainer[] newArray(int i2) {
            return new BinderContainer[i2];
        }
    }

    public BinderContainer(IBinder iBinder) {
        this.f1231a = iBinder;
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeStrongBinder(this.f1231a);
    }

    public BinderContainer(Parcel parcel) {
        this.f1231a = parcel.readStrongBinder();
    }
}
