package defpackage;

import com.google.android.exoplayer2.a;
import com.google.android.exoplayer2.a0;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class zb8 extends a {
    public final int g;
    public final int h;
    public final int[] i;
    public final int[] j;
    public final a0[] k;
    public final Object[] l;
    public final HashMap m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zb8(Collection collection, mi9 mi9Var) {
        super(false, mi9Var);
        int iT = 0;
        int size = collection.size();
        this.i = new int[size];
        this.j = new int[size];
        this.k = new a0[size];
        this.l = new Object[size];
        this.m = new HashMap();
        Iterator it = collection.iterator();
        int iM = 0;
        int i = 0;
        while (it.hasNext()) {
            wl6 wl6Var = (wl6) it.next();
            this.k[i] = wl6Var.getTimeline();
            this.j[i] = iT;
            this.i[i] = iM;
            iT += this.k[i].t();
            iM += this.k[i].m();
            this.l[i] = wl6Var.getUid();
            this.m.put(this.l[i], Integer.valueOf(i));
            i++;
        }
        this.g = iT;
        this.h = iM;
    }

    @Override
    public int A(int i) {
        return blb.h(this.j, i + 1, false, false);
    }

    @Override
    public Object D(int i) {
        return this.l[i];
    }

    @Override
    public int F(int i) {
        return this.i[i];
    }

    @Override
    public int G(int i) {
        return this.j[i];
    }

    @Override
    public a0 J(int i) {
        return this.k[i];
    }

    public List K() {
        return Arrays.asList(this.k);
    }

    @Override
    public int m() {
        return this.h;
    }

    @Override
    public int t() {
        return this.g;
    }

    @Override
    public int y(Object obj) {
        Integer num = (Integer) this.m.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override
    public int z(int i) {
        return blb.h(this.i, i + 1, false, false);
    }
}
