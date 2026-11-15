package androidx.media3.common;

import androidx.media3.common.util.a1;
import com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public final class g0 {

    private static final String f9665c = a1.C0(0);

    private static final String f9666d = a1.C0(1);

    public final f0 f9667a;

    public final ImmutableList f9668b;

    public g0(f0 f0Var, int i10) {
        this(f0Var, ImmutableList.of(Integer.valueOf(i10)));
    }

    public int a() {
        return this.f9667a.f9661c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g0.class != obj.getClass()) {
            return false;
        }
        g0 g0Var = (g0) obj;
        return this.f9667a.equals(g0Var.f9667a) && this.f9668b.equals(g0Var.f9668b);
    }

    public int hashCode() {
        return this.f9667a.hashCode() + (this.f9668b.hashCode() * 31);
    }

    public g0(f0 f0Var, List list) {
        if (!list.isEmpty() && (((Integer) Collections.min(list)).intValue() < 0 || ((Integer) Collections.max(list)).intValue() >= f0Var.f9659a)) {
            throw new IndexOutOfBoundsException();
        }
        this.f9667a = f0Var;
        this.f9668b = ImmutableList.copyOf((Collection) list);
    }
}
