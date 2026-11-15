package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.p009lifecycle.Lifecycle;
import java.util.ArrayList;
import java.util.Map;

@SuppressLint({"BanParcelableUsage"})
final class BackStackRecordState implements Parcelable {
    public static final Parcelable.Creator<BackStackRecordState> CREATOR = new a();
    private static final String TAG = "FragmentManager";

    final int[] f8902a;

    final ArrayList f8903b;

    final int[] f8904c;

    final int[] f8905d;

    final int f8906e;

    final String f8907f;

    final int f8908g;

    final int f8909h;

    final CharSequence f8910i;

    final int f8911j;

    final CharSequence f8912k;

    final ArrayList f8913l;

    final ArrayList f8914m;

    final boolean f8915n;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public BackStackRecordState createFromParcel(Parcel parcel) {
            return new BackStackRecordState(parcel);
        }

        @Override
        public BackStackRecordState[] newArray(int i10) {
            return new BackStackRecordState[i10];
        }
    }

    BackStackRecordState(androidx.fragment.app.a aVar) {
        int size = aVar.f9166c.size();
        this.f8902a = new int[size * 6];
        if (!aVar.f9172i) {
            throw new IllegalStateException("Not on back stack");
        }
        this.f8903b = new ArrayList(size);
        this.f8904c = new int[size];
        this.f8905d = new int[size];
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            w.a aVar2 = (w.a) aVar.f9166c.get(i11);
            int i12 = i10 + 1;
            this.f8902a[i10] = aVar2.f9183a;
            ArrayList arrayList = this.f8903b;
            Fragment fragment = aVar2.f9184b;
            arrayList.add(fragment != null ? fragment.mWho : null);
            int[] iArr = this.f8902a;
            iArr[i12] = aVar2.f9185c ? 1 : 0;
            iArr[i10 + 2] = aVar2.f9186d;
            iArr[i10 + 3] = aVar2.f9187e;
            int i13 = i10 + 5;
            iArr[i10 + 4] = aVar2.f9188f;
            i10 += 6;
            iArr[i13] = aVar2.f9189g;
            this.f8904c[i11] = aVar2.f9190h.ordinal();
            this.f8905d[i11] = aVar2.f9191i.ordinal();
        }
        this.f8906e = aVar.f9171h;
        this.f8907f = aVar.f9174k;
        this.f8908g = aVar.f9112v;
        this.f8909h = aVar.f9175l;
        this.f8910i = aVar.f9176m;
        this.f8911j = aVar.f9177n;
        this.f8912k = aVar.f9178o;
        this.f8913l = aVar.f9179p;
        this.f8914m = aVar.f9180q;
        this.f8915n = aVar.f9181r;
    }

    private void a(androidx.fragment.app.a aVar) {
        int i10 = 0;
        int i11 = 0;
        while (true) {
            boolean z10 = true;
            if (i10 >= this.f8902a.length) {
                aVar.f9171h = this.f8906e;
                aVar.f9174k = this.f8907f;
                aVar.f9172i = true;
                aVar.f9175l = this.f8909h;
                aVar.f9176m = this.f8910i;
                aVar.f9177n = this.f8911j;
                aVar.f9178o = this.f8912k;
                aVar.f9179p = this.f8913l;
                aVar.f9180q = this.f8914m;
                aVar.f9181r = this.f8915n;
                return;
            }
            w.a aVar2 = new w.a();
            int i12 = i10 + 1;
            aVar2.f9183a = this.f8902a[i10];
            if (FragmentManager.M0(2)) {
                Log.v(TAG, "Instantiate " + aVar + " op #" + i11 + " base fragment #" + this.f8902a[i12]);
            }
            aVar2.f9190h = Lifecycle.State.values()[this.f8904c[i11]];
            aVar2.f9191i = Lifecycle.State.values()[this.f8905d[i11]];
            int[] iArr = this.f8902a;
            int i13 = i10 + 2;
            if (iArr[i12] == 0) {
                z10 = false;
            }
            aVar2.f9185c = z10;
            int i14 = iArr[i13];
            aVar2.f9186d = i14;
            int i15 = iArr[i10 + 3];
            aVar2.f9187e = i15;
            int i16 = i10 + 5;
            int i17 = iArr[i10 + 4];
            aVar2.f9188f = i17;
            i10 += 6;
            int i18 = iArr[i16];
            aVar2.f9189g = i18;
            aVar.f9167d = i14;
            aVar.f9168e = i15;
            aVar.f9169f = i17;
            aVar.f9170g = i18;
            aVar.f(aVar2);
            i11++;
        }
    }

    public androidx.fragment.app.a b(FragmentManager fragmentManager) {
        androidx.fragment.app.a aVar = new androidx.fragment.app.a(fragmentManager);
        a(aVar);
        aVar.f9112v = this.f8908g;
        for (int i10 = 0; i10 < this.f8903b.size(); i10++) {
            String str = (String) this.f8903b.get(i10);
            if (str != null) {
                ((w.a) aVar.f9166c.get(i10)).f9184b = fragmentManager.h0(str);
            }
        }
        aVar.z(1);
        return aVar;
    }

    public androidx.fragment.app.a c(FragmentManager fragmentManager, Map map) {
        androidx.fragment.app.a aVar = new androidx.fragment.app.a(fragmentManager);
        a(aVar);
        for (int i10 = 0; i10 < this.f8903b.size(); i10++) {
            String str = (String) this.f8903b.get(i10);
            if (str != null) {
                Fragment fragment = (Fragment) map.get(str);
                if (fragment == null) {
                    throw new IllegalStateException("Restoring FragmentTransaction " + this.f8907f + " failed due to missing saved state for Fragment (" + str + ")");
                }
                ((w.a) aVar.f9166c.get(i10)).f9184b = fragment;
            }
        }
        return aVar;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeIntArray(this.f8902a);
        parcel.writeStringList(this.f8903b);
        parcel.writeIntArray(this.f8904c);
        parcel.writeIntArray(this.f8905d);
        parcel.writeInt(this.f8906e);
        parcel.writeString(this.f8907f);
        parcel.writeInt(this.f8908g);
        parcel.writeInt(this.f8909h);
        TextUtils.writeToParcel(this.f8910i, parcel, 0);
        parcel.writeInt(this.f8911j);
        TextUtils.writeToParcel(this.f8912k, parcel, 0);
        parcel.writeStringList(this.f8913l);
        parcel.writeStringList(this.f8914m);
        parcel.writeInt(this.f8915n ? 1 : 0);
    }

    BackStackRecordState(Parcel parcel) {
        this.f8902a = parcel.createIntArray();
        this.f8903b = parcel.createStringArrayList();
        this.f8904c = parcel.createIntArray();
        this.f8905d = parcel.createIntArray();
        this.f8906e = parcel.readInt();
        this.f8907f = parcel.readString();
        this.f8908g = parcel.readInt();
        this.f8909h = parcel.readInt();
        Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.f8910i = (CharSequence) creator.createFromParcel(parcel);
        this.f8911j = parcel.readInt();
        this.f8912k = (CharSequence) creator.createFromParcel(parcel);
        this.f8913l = parcel.createStringArrayList();
        this.f8914m = parcel.createStringArrayList();
        this.f8915n = parcel.readInt() != 0;
    }
}
