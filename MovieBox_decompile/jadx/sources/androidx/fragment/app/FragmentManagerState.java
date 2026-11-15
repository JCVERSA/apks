package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

@SuppressLint({"BanParcelableUsage"})
final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator<FragmentManagerState> CREATOR = new a();

    ArrayList f9047a;

    ArrayList f9048b;

    BackStackRecordState[] f9049c;

    int f9050d;

    String f9051e;

    ArrayList f9052f;

    ArrayList f9053g;

    ArrayList f9054h;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public FragmentManagerState createFromParcel(Parcel parcel) {
            return new FragmentManagerState(parcel);
        }

        @Override
        public FragmentManagerState[] newArray(int i10) {
            return new FragmentManagerState[i10];
        }
    }

    public FragmentManagerState() {
        this.f9051e = null;
        this.f9052f = new ArrayList();
        this.f9053g = new ArrayList();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeStringList(this.f9047a);
        parcel.writeStringList(this.f9048b);
        parcel.writeTypedArray(this.f9049c, i10);
        parcel.writeInt(this.f9050d);
        parcel.writeString(this.f9051e);
        parcel.writeStringList(this.f9052f);
        parcel.writeTypedList(this.f9053g);
        parcel.writeTypedList(this.f9054h);
    }

    public FragmentManagerState(Parcel parcel) {
        this.f9051e = null;
        this.f9052f = new ArrayList();
        this.f9053g = new ArrayList();
        this.f9047a = parcel.createStringArrayList();
        this.f9048b = parcel.createStringArrayList();
        this.f9049c = (BackStackRecordState[]) parcel.createTypedArray(BackStackRecordState.CREATOR);
        this.f9050d = parcel.readInt();
        this.f9051e = parcel.readString();
        this.f9052f = parcel.createStringArrayList();
        this.f9053g = parcel.createTypedArrayList(BackStackState.CREATOR);
        this.f9054h = parcel.createTypedArrayList(FragmentManager.LaunchedFragmentInfo.CREATOR);
    }
}
