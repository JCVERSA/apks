package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@SuppressLint({"BanParcelableUsage"})
class BackStackState implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR = new a();

    final List f8916a;

    final List f8917b;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public BackStackState createFromParcel(Parcel parcel) {
            return new BackStackState(parcel);
        }

        @Override
        public BackStackState[] newArray(int i10) {
            return new BackStackState[i10];
        }
    }

    BackStackState(List list, List list2) {
        this.f8916a = list;
        this.f8917b = list2;
    }

    List a(FragmentManager fragmentManager, Map map) {
        HashMap map2 = new HashMap(this.f8916a.size());
        for (String str : this.f8916a) {
            Fragment fragment = (Fragment) map.get(str);
            if (fragment != null) {
                map2.put(fragment.mWho, fragment);
            } else {
                FragmentState fragmentStateB = fragmentManager.x0().B(str, null);
                if (fragmentStateB != null) {
                    Fragment fragmentA = fragmentStateB.a(fragmentManager.w0(), fragmentManager.z0().f().getClassLoader());
                    map2.put(fragmentA.mWho, fragmentA);
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f8917b.iterator();
        while (it.hasNext()) {
            arrayList.add(((BackStackRecordState) it.next()).c(fragmentManager, map2));
        }
        return arrayList;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeStringList(this.f8916a);
        parcel.writeTypedList(this.f8917b);
    }

    BackStackState(Parcel parcel) {
        this.f8916a = parcel.createStringArrayList();
        this.f8917b = parcel.createTypedArrayList(BackStackRecordState.CREATOR);
    }
}
