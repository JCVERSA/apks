package v9;

import android.os.Bundle;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;

public final class y implements com.google.android.exoplayer2.k {

    public static final y f73559d = new y(new w[0]);

    public static final com.google.android.exoplayer2.k.a f73560e = new com.google.android.exoplayer2.k.a() {
        @Override
        public final com.google.android.exoplayer2.k a(Bundle bundle) {
            return y.e(bundle);
        }
    };

    public final int f73561a;

    private final ImmutableList f73562b;

    private int f73563c;

    public y(w... wVarArr) {
        this.f73562b = ImmutableList.copyOf(wVarArr);
        this.f73561a = wVarArr.length;
        f();
    }

    private static String d(int i10) {
        return Integer.toString(i10, 36);
    }

    public static y e(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(d(0));
        return parcelableArrayList == null ? new y(new w[0]) : new y((w[]) com.google.android.exoplayer2.util.d.b(w.f73553f, parcelableArrayList).toArray(new w[0]));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void f() {
        int i10 = 0;
        while (i10 < this.f73562b.size()) {
            int i11 = i10 + 1;
            for (int i12 = i11; i12 < this.f73562b.size(); i12++) {
                if (((w) this.f73562b.get(i10)).equals(this.f73562b.get(i12))) {
                    com.google.android.exoplayer2.util.s.d("TrackGroupArray", "", new IllegalArgumentException("Multiple identical TrackGroups added to one TrackGroupArray."));
                }
            }
            i10 = i11;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public w b(int i10) {
        return (w) this.f73562b.get(i10);
    }

    public int c(w wVar) {
        int iIndexOf = this.f73562b.indexOf(wVar);
        if (iIndexOf >= 0) {
            return iIndexOf;
        }
        return -1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || y.class != obj.getClass()) {
            return false;
        }
        y yVar = (y) obj;
        return this.f73561a == yVar.f73561a && this.f73562b.equals(yVar.f73562b);
    }

    public int hashCode() {
        if (this.f73563c == 0) {
            this.f73563c = this.f73562b.hashCode();
        }
        return this.f73563c;
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(d(0), com.google.android.exoplayer2.util.d.d(this.f73562b));
        return bundle;
    }
}
