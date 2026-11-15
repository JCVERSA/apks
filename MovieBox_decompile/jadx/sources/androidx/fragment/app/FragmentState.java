package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.p009lifecycle.Lifecycle;

@SuppressLint({"BanParcelableUsage"})
final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new a();

    final String f9055a;

    final String f9056b;

    final boolean f9057c;

    final int f9058d;

    final int f9059e;

    final String f9060f;

    final boolean f9061g;

    final boolean f9062h;

    final boolean f9063i;

    final Bundle f9064j;

    final boolean f9065k;

    final int f9066l;

    Bundle f9067m;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public FragmentState createFromParcel(Parcel parcel) {
            return new FragmentState(parcel);
        }

        @Override
        public FragmentState[] newArray(int i10) {
            return new FragmentState[i10];
        }
    }

    FragmentState(Fragment fragment) {
        this.f9055a = fragment.getClass().getName();
        this.f9056b = fragment.mWho;
        this.f9057c = fragment.mFromLayout;
        this.f9058d = fragment.mFragmentId;
        this.f9059e = fragment.mContainerId;
        this.f9060f = fragment.mTag;
        this.f9061g = fragment.mRetainInstance;
        this.f9062h = fragment.mRemoving;
        this.f9063i = fragment.mDetached;
        this.f9064j = fragment.mArguments;
        this.f9065k = fragment.mHidden;
        this.f9066l = fragment.mMaxState.ordinal();
    }

    Fragment a(h hVar, ClassLoader classLoader) {
        Fragment fragmentInstantiate = hVar.instantiate(classLoader, this.f9055a);
        Bundle bundle = this.f9064j;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        fragmentInstantiate.setArguments(this.f9064j);
        fragmentInstantiate.mWho = this.f9056b;
        fragmentInstantiate.mFromLayout = this.f9057c;
        fragmentInstantiate.mRestored = true;
        fragmentInstantiate.mFragmentId = this.f9058d;
        fragmentInstantiate.mContainerId = this.f9059e;
        fragmentInstantiate.mTag = this.f9060f;
        fragmentInstantiate.mRetainInstance = this.f9061g;
        fragmentInstantiate.mRemoving = this.f9062h;
        fragmentInstantiate.mDetached = this.f9063i;
        fragmentInstantiate.mHidden = this.f9065k;
        fragmentInstantiate.mMaxState = Lifecycle.State.values()[this.f9066l];
        Bundle bundle2 = this.f9067m;
        if (bundle2 != null) {
            fragmentInstantiate.mSavedFragmentState = bundle2;
        } else {
            fragmentInstantiate.mSavedFragmentState = new Bundle();
        }
        return fragmentInstantiate;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("FragmentState{");
        sb2.append(this.f9055a);
        sb2.append(" (");
        sb2.append(this.f9056b);
        sb2.append(")}:");
        if (this.f9057c) {
            sb2.append(" fromLayout");
        }
        if (this.f9059e != 0) {
            sb2.append(" id=0x");
            sb2.append(Integer.toHexString(this.f9059e));
        }
        String str = this.f9060f;
        if (str != null && !str.isEmpty()) {
            sb2.append(" tag=");
            sb2.append(this.f9060f);
        }
        if (this.f9061g) {
            sb2.append(" retainInstance");
        }
        if (this.f9062h) {
            sb2.append(" removing");
        }
        if (this.f9063i) {
            sb2.append(" detached");
        }
        if (this.f9065k) {
            sb2.append(" hidden");
        }
        return sb2.toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f9055a);
        parcel.writeString(this.f9056b);
        parcel.writeInt(this.f9057c ? 1 : 0);
        parcel.writeInt(this.f9058d);
        parcel.writeInt(this.f9059e);
        parcel.writeString(this.f9060f);
        parcel.writeInt(this.f9061g ? 1 : 0);
        parcel.writeInt(this.f9062h ? 1 : 0);
        parcel.writeInt(this.f9063i ? 1 : 0);
        parcel.writeBundle(this.f9064j);
        parcel.writeInt(this.f9065k ? 1 : 0);
        parcel.writeBundle(this.f9067m);
        parcel.writeInt(this.f9066l);
    }

    FragmentState(Parcel parcel) {
        this.f9055a = parcel.readString();
        this.f9056b = parcel.readString();
        this.f9057c = parcel.readInt() != 0;
        this.f9058d = parcel.readInt();
        this.f9059e = parcel.readInt();
        this.f9060f = parcel.readString();
        this.f9061g = parcel.readInt() != 0;
        this.f9062h = parcel.readInt() != 0;
        this.f9063i = parcel.readInt() != 0;
        this.f9064j = parcel.readBundle();
        this.f9065k = parcel.readInt() != 0;
        this.f9067m = parcel.readBundle();
        this.f9066l = parcel.readInt();
    }
}
