package defpackage;

import android.os.Bundle;
import com.google.android.exoplayer2.e;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;

public final class eva implements e {
    public static final eva e = new eva(new zua[0]);
    public static final e.a f = new e.a() {
        @Override
        public final e fromBundle(Bundle bundle) {
            return eva.e(bundle);
        }
    };
    public final int b;
    public final ImmutableList c;
    public int d;

    public eva(zua... zuaVarArr) {
        this.c = ImmutableList.copyOf(zuaVarArr);
        this.b = zuaVarArr.length;
        f();
    }

    private static String d(int i) {
        return Integer.toString(i, 36);
    }

    public static eva e(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(d(0));
        return parcelableArrayList == null ? new eva(new zua[0]) : new eva((zua[]) xn0.b(zua.g, parcelableArrayList).toArray(new zua[0]));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void f() {
        int i = 0;
        while (i < this.c.size()) {
            int i2 = i + 1;
            for (int i3 = i2; i3 < this.c.size(); i3++) {
                if (((zua) this.c.get(i)).equals(this.c.get(i3))) {
                    op5.d("TrackGroupArray", "", new IllegalArgumentException("Multiple identical TrackGroups added to one TrackGroupArray."));
                }
            }
            i = i2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public zua b(int i) {
        return (zua) this.c.get(i);
    }

    public int c(zua zuaVar) {
        int iIndexOf = this.c.indexOf(zuaVar);
        if (iIndexOf >= 0) {
            return iIndexOf;
        }
        return -1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || eva.class != obj.getClass()) {
            return false;
        }
        eva evaVar = (eva) obj;
        return this.b == evaVar.b && this.c.equals(evaVar.c);
    }

    public int hashCode() {
        if (this.d == 0) {
            this.d = this.c.hashCode();
        }
        return this.d;
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(d(0), xn0.d(this.c));
        return bundle;
    }
}
