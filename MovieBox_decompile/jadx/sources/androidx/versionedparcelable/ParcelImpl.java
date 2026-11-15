package androidx.versionedparcelable;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;

@SuppressLint({"BanParcelableUsage"})
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator<ParcelImpl> CREATOR = new a();
    private final c mParcel;

    static class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public ParcelImpl createFromParcel(Parcel parcel) {
            return new ParcelImpl(parcel);
        }

        @Override
        public ParcelImpl[] newArray(int i10) {
            return new ParcelImpl[i10];
        }
    }

    public ParcelImpl(c cVar) {
        this.mParcel = cVar;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public <T extends c> T getVersionedParcel() {
        return (T) this.mParcel;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        new b(parcel).L(this.mParcel);
    }

    protected ParcelImpl(Parcel parcel) {
        this.mParcel = new b(parcel).u();
    }
}
