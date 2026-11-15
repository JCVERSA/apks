package defpackage;

import android.os.Bundle;
import com.google.android.exoplayer2.e;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public final class lva implements e {
    public static final e.a d = new e.a() {
        @Override
        public final e fromBundle(Bundle bundle) {
            return lva.d(bundle);
        }
    };
    public final zua b;
    public final ImmutableList c;

    public lva(zua zuaVar, List list) {
        if (!list.isEmpty() && (((Integer) Collections.min(list)).intValue() < 0 || ((Integer) Collections.max(list)).intValue() >= zuaVar.b)) {
            throw new IndexOutOfBoundsException();
        }
        this.b = zuaVar;
        this.c = ImmutableList.copyOf((Collection) list);
    }

    private static String c(int i) {
        return Integer.toString(i, 36);
    }

    public static lva d(Bundle bundle) {
        return new lva((zua) zua.g.fromBundle((Bundle) zi.e(bundle.getBundle(c(0)))), Ints.c((int[]) zi.e(bundle.getIntArray(c(1)))));
    }

    public int b() {
        return this.b.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || lva.class != obj.getClass()) {
            return false;
        }
        lva lvaVar = (lva) obj;
        return this.b.equals(lvaVar.b) && this.c.equals(lvaVar.c);
    }

    public int hashCode() {
        return this.b.hashCode() + (this.c.hashCode() * 31);
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putBundle(c(0), this.b.toBundle());
        bundle.putIntArray(c(1), Ints.o(this.c));
        return bundle;
    }
}
