package com.airbnb.lottie;

import android.graphics.Rect;
import androidx.collection.y0;
import com.airbnb.lottie.model.layer.Layer;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class h {

    private Map f17115c;

    private Map f17116d;

    private float f17117e;

    private Map f17118f;

    private List f17119g;

    private y0 f17120h;

    private androidx.collection.x f17121i;

    private List f17122j;

    private Rect f17123k;

    private float f17124l;

    private float f17125m;

    private float f17126n;

    private boolean f17127o;

    private int f17129q;

    private int f17130r;

    private final PerformanceTracker f17113a = new PerformanceTracker();

    private final HashSet f17114b = new HashSet();

    private int f17128p = 0;

    public void a(String str) {
        x4.f.c(str);
        this.f17114b.add(str);
    }

    public Rect b() {
        return this.f17123k;
    }

    public y0 c() {
        return this.f17120h;
    }

    public float d() {
        return (long) ((e() / this.f17126n) * 1000.0f);
    }

    public float e() {
        return this.f17125m - this.f17124l;
    }

    public float f() {
        return this.f17125m;
    }

    public Map g() {
        return this.f17118f;
    }

    public float h(float f10) {
        return x4.k.i(this.f17124l, this.f17125m, f10);
    }

    public float i() {
        return this.f17126n;
    }

    public Map j() {
        float fE = x4.l.e();
        if (fE != this.f17117e) {
            for (Map.Entry entry : this.f17116d.entrySet()) {
                this.f17116d.put((String) entry.getKey(), ((l0) entry.getValue()).a(this.f17117e / fE));
            }
        }
        this.f17117e = fE;
        return this.f17116d;
    }

    public List k() {
        return this.f17122j;
    }

    public r4.g l(String str) {
        int size = this.f17119g.size();
        for (int i10 = 0; i10 < size; i10++) {
            r4.g gVar = (r4.g) this.f17119g.get(i10);
            if (gVar.a(str)) {
                return gVar;
            }
        }
        return null;
    }

    public int m() {
        return this.f17128p;
    }

    public PerformanceTracker n() {
        return this.f17113a;
    }

    public List o(String str) {
        return (List) this.f17115c.get(str);
    }

    public float p() {
        return this.f17124l;
    }

    public boolean q() {
        return this.f17127o;
    }

    public void r(int i10) {
        this.f17128p += i10;
    }

    public void s(Rect rect, float f10, float f11, float f12, List list, androidx.collection.x xVar, Map map, Map map2, float f13, y0 y0Var, Map map3, List list2, int i10, int i11) {
        this.f17123k = rect;
        this.f17124l = f10;
        this.f17125m = f11;
        this.f17126n = f12;
        this.f17122j = list;
        this.f17121i = xVar;
        this.f17115c = map;
        this.f17116d = map2;
        this.f17117e = f13;
        this.f17120h = y0Var;
        this.f17118f = map3;
        this.f17119g = list2;
        this.f17129q = i10;
        this.f17130r = i11;
    }

    public Layer t(long j10) {
        return (Layer) this.f17121i.e(j10);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("LottieComposition:\n");
        Iterator it = this.f17122j.iterator();
        while (it.hasNext()) {
            sb2.append(((Layer) it.next()).z("\t"));
        }
        return sb2.toString();
    }

    public void u(boolean z10) {
        this.f17127o = z10;
    }

    public void v(boolean z10) {
        this.f17113a.b(z10);
    }
}
