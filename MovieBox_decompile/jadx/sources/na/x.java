package na;

import android.os.Bundle;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public final class x implements com.google.android.exoplayer2.k {

    public static final com.google.android.exoplayer2.k.a f67107c = new com.google.android.exoplayer2.k.a() {
        @Override
        public final com.google.android.exoplayer2.k a(Bundle bundle) {
            return x.d(bundle);
        }
    };

    public final v9.w f67108a;

    public final ImmutableList f67109b;

    public x(v9.w wVar, List list) {
        if (!list.isEmpty() && (((Integer) Collections.min(list)).intValue() < 0 || ((Integer) Collections.max(list)).intValue() >= wVar.f73554a)) {
            throw new IndexOutOfBoundsException();
        }
        this.f67108a = wVar;
        this.f67109b = ImmutableList.copyOf((Collection) list);
    }

    private static String c(int i10) {
        return Integer.toString(i10, 36);
    }

    public static x d(Bundle bundle) {
        return new x((v9.w) v9.w.f73553f.a((Bundle) com.google.android.exoplayer2.util.a.e(bundle.getBundle(c(0)))), Ints.c((int[]) com.google.android.exoplayer2.util.a.e(bundle.getIntArray(c(1)))));
    }

    public int b() {
        return this.f67108a.f73556c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || x.class != obj.getClass()) {
            return false;
        }
        x xVar = (x) obj;
        return this.f67108a.equals(xVar.f67108a) && this.f67109b.equals(xVar.f67109b);
    }

    public int hashCode() {
        return this.f67108a.hashCode() + (this.f67109b.hashCode() * 31);
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putBundle(c(0), this.f67108a.toBundle());
        bundle.putIntArray(c(1), Ints.o(this.f67109b));
        return bundle;
    }
}
