package f2;

import androidx.media3.common.f0;
import androidx.media3.common.util.a1;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import java.util.Collection;

public final class z {

    public static final z f59966d = new z(new f0[0]);

    private static final String f59967e = a1.C0(0);

    public final int f59968a;

    private final ImmutableList f59969b;

    private int f59970c;

    public z(f0... f0VarArr) {
        this.f59969b = ImmutableList.copyOf(f0VarArr);
        this.f59968a = f0VarArr.length;
        f();
    }

    public static Integer e(f0 f0Var) {
        return Integer.valueOf(f0Var.f9661c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void f() {
        int i10 = 0;
        while (i10 < this.f59969b.size()) {
            int i11 = i10 + 1;
            for (int i12 = i11; i12 < this.f59969b.size(); i12++) {
                if (((f0) this.f59969b.get(i10)).equals(this.f59969b.get(i12))) {
                    androidx.media3.common.util.u.d("TrackGroupArray", "", new IllegalArgumentException("Multiple identical TrackGroups added to one TrackGroupArray."));
                }
            }
            i10 = i11;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public f0 b(int i10) {
        return (f0) this.f59969b.get(i10);
    }

    public ImmutableList c() {
        return ImmutableList.copyOf((Collection) Lists.o(this.f59969b, new com.google.common.base.f() {
            @Override
            public final Object apply(Object obj) {
                return z.e((f0) obj);
            }
        }));
    }

    public int d(f0 f0Var) {
        int iIndexOf = this.f59969b.indexOf(f0Var);
        if (iIndexOf >= 0) {
            return iIndexOf;
        }
        return -1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || z.class != obj.getClass()) {
            return false;
        }
        z zVar = (z) obj;
        return this.f59968a == zVar.f59968a && this.f59969b.equals(zVar.f59969b);
    }

    public int hashCode() {
        if (this.f59970c == 0) {
            this.f59970c = this.f59969b.hashCode();
        }
        return this.f59970c;
    }

    public String toString() {
        return this.f59969b.toString();
    }
}
