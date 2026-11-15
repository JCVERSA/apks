package defpackage;

import android.graphics.Rect;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import com.airbnb.lottie.PerformanceTracker;
import com.airbnb.lottie.model.layer.Layer;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class ur5 {
    public Map c;
    public Map d;
    public float e;
    public Map f;
    public List g;
    public SparseArrayCompat h;
    public LongSparseArray i;
    public List j;
    public Rect k;
    public float l;
    public float m;
    public float n;
    public boolean o;
    public int q;
    public int r;
    public final PerformanceTracker a = new PerformanceTracker();
    public final HashSet b = new HashSet();
    public int p = 0;

    public void a(String str) {
        mq5.c(str);
        this.b.add(str);
    }

    public Rect b() {
        return this.k;
    }

    public SparseArrayCompat c() {
        return this.h;
    }

    public float d() {
        return (long) ((e() / this.n) * 1000.0f);
    }

    public float e() {
        return this.m - this.l;
    }

    public float f() {
        return this.m;
    }

    public Map g() {
        return this.f;
    }

    public float h(float f) {
        return xp6.i(this.l, this.m, f);
    }

    public float i() {
        return this.n;
    }

    public Map j() {
        float fE = plb.e();
        if (fE != this.e) {
            for (Map.Entry entry : this.d.entrySet()) {
                this.d.put((String) entry.getKey(), ((ct5) entry.getValue()).a(this.e / fE));
            }
        }
        this.e = fE;
        return this.d;
    }

    public List k() {
        return this.j;
    }

    public t16 l(String str) {
        int size = this.g.size();
        for (int i = 0; i < size; i++) {
            t16 t16Var = (t16) this.g.get(i);
            if (t16Var.a(str)) {
                return t16Var;
            }
        }
        return null;
    }

    public int m() {
        return this.p;
    }

    public PerformanceTracker n() {
        return this.a;
    }

    public List o(String str) {
        return (List) this.c.get(str);
    }

    public float p() {
        return this.l;
    }

    public boolean q() {
        return this.o;
    }

    public void r(int i) {
        this.p += i;
    }

    public void s(Rect rect, float f, float f2, float f3, List list, LongSparseArray longSparseArray, Map map, Map map2, float f4, SparseArrayCompat sparseArrayCompat, Map map3, List list2, int i, int i2) {
        this.k = rect;
        this.l = f;
        this.m = f2;
        this.n = f3;
        this.j = list;
        this.i = longSparseArray;
        this.c = map;
        this.d = map2;
        this.e = f4;
        this.h = sparseArrayCompat;
        this.f = map3;
        this.g = list2;
        this.q = i;
        this.r = i2;
    }

    public Layer t(long j) {
        return (Layer) this.i.get(j);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LottieComposition:\n");
        Iterator it = this.j.iterator();
        while (it.hasNext()) {
            sb.append(((Layer) it.next()).z("\t"));
        }
        return sb.toString();
    }

    public void u(boolean z) {
        this.o = z;
    }

    public void v(boolean z) {
        this.a.b(z);
    }
}
