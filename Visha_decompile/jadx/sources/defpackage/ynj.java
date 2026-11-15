package defpackage;

import com.google.android.gms.internal.ads.zzvp;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

public final class ynj extends jmj {
    public static final cme s;
    public final knj[] k;
    public final List l;
    public final w4f[] m;
    public final ArrayList n;
    public int o = -1;
    public long[][] p;
    public zzvp q;
    public final mmj r;

    static {
        v8e v8eVar = new v8e();
        v8eVar.a("MergingMediaSource");
        s = v8eVar.c();
    }

    public ynj(boolean z, boolean z2, mmj mmjVar, knj... knjVarArr) {
        this.k = knjVarArr;
        this.r = mmjVar;
        this.n = new ArrayList(Arrays.asList(knjVarArr));
        this.l = new ArrayList(knjVarArr.length);
        int i = 0;
        while (true) {
            int length = knjVarArr.length;
            if (i >= length) {
                this.m = new w4f[length];
                this.p = new long[0][];
                new HashMap();
                i5i.a(8).b(2).c();
                return;
            }
            this.l.add(new ArrayList());
            i++;
        }
    }

    @Override
    public final bnj B(Object obj, bnj bnjVar) {
        int iIntValue = ((Integer) obj).intValue();
        List list = this.l;
        List list2 = (List) list.get(iIntValue);
        for (int i = 0; i < list2.size(); i++) {
            if (((wnj) list2.get(i)).a.equals(bnjVar)) {
                return ((wnj) ((List) list.get(0)).get(i)).a;
            }
        }
        return null;
    }

    @Override
    public final zmj b(bnj bnjVar, nrj nrjVar, long j) {
        w4f[] w4fVarArr = this.m;
        knj[] knjVarArr = this.k;
        int length = knjVarArr.length;
        zmj[] zmjVarArr = new zmj[length];
        int iA = w4fVarArr[0].a(bnjVar.a);
        for (int i = 0; i < length; i++) {
            bnj bnjVarA = bnjVar.a(w4fVarArr[i].f(iA));
            zmjVarArr[i] = knjVarArr[i].b(bnjVarA, nrjVar, j - this.p[iA][i]);
            ((List) this.l.get(i)).add(new wnj(bnjVarA, zmjVarArr[i], null));
        }
        return new vnj(this.r, this.p[iA], zmjVarArr);
    }

    @Override
    public final void h(zmj zmjVar) {
        vnj vnjVar = (vnj) zmjVar;
        int i = 0;
        while (true) {
            knj[] knjVarArr = this.k;
            if (i >= knjVarArr.length) {
                return;
            }
            List list = (List) this.l.get(i);
            for (int i2 = 0; i2 < list.size(); i2++) {
                if (((wnj) list.get(i2)).b.equals(zmjVar)) {
                    list.remove(i2);
                    break;
                }
            }
            knjVarArr[i].h(vnjVar.i(i));
            i++;
        }
    }

    @Override
    public final void i(cme cmeVar) {
        this.k[0].i(cmeVar);
    }

    @Override
    public final void t(ixi ixiVar) {
        super.t(ixiVar);
        int i = 0;
        while (true) {
            knj[] knjVarArr = this.k;
            if (i >= knjVarArr.length) {
                return;
            }
            y(Integer.valueOf(i), knjVarArr[i]);
            i++;
        }
    }

    @Override
    public final void v() {
        super.v();
        Arrays.fill(this.m, (Object) null);
        this.o = -1;
        this.q = null;
        ArrayList arrayList = this.n;
        arrayList.clear();
        Collections.addAll(arrayList, this.k);
    }

    @Override
    public final void x(Object obj, knj knjVar, w4f w4fVar) {
        int iB;
        Integer num = (Integer) obj;
        if (this.q != null) {
            return;
        }
        if (this.o == -1) {
            iB = w4fVar.b();
            this.o = iB;
        } else {
            int iB2 = w4fVar.b();
            int i = this.o;
            if (iB2 != i) {
                this.q = new zzvp(0);
                return;
            }
            iB = i;
        }
        if (this.p.length == 0) {
            this.p = (long[][]) Array.newInstance((Class<?>) Long.TYPE, iB, this.m.length);
        }
        ArrayList arrayList = this.n;
        arrayList.remove(knjVar);
        w4f[] w4fVarArr = this.m;
        w4fVarArr[num.intValue()] = w4fVar;
        if (arrayList.isEmpty()) {
            u(w4fVarArr[0]);
        }
    }

    @Override
    public final cme zzJ() {
        knj[] knjVarArr = this.k;
        return knjVarArr.length > 0 ? knjVarArr[0].zzJ() : s;
    }

    @Override
    public final void zzz() throws zzvp {
        zzvp zzvpVar = this.q;
        if (zzvpVar != null) {
            throw zzvpVar;
        }
        super.zzz();
    }
}
