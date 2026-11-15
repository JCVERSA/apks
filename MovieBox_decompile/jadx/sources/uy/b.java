package uy;

import android.util.SparseArray;
import android.util.SparseBooleanArray;

public class b {

    private SparseBooleanArray f73278a = new SparseBooleanArray();

    private SparseArray f73279b = new SparseArray();

    private int f73280c;

    private int f73281d;

    private int f73282e;

    private float f73283f;

    private int f73284g;

    private boolean f73285h;

    private a f73286i;

    public interface a {
        void onDeselected(int i10, int i11);

        void onEnter(int i10, int i11, float f10, boolean z10);

        void onLeave(int i10, int i11, float f10, boolean z10);

        void onSelected(int i10, int i11);
    }

    private void a(int i10) {
        a aVar = this.f73286i;
        if (aVar != null) {
            aVar.onDeselected(i10, this.f73280c);
        }
        this.f73278a.put(i10, true);
    }

    private void b(int i10, float f10, boolean z10, boolean z11) {
        if (this.f73285h || i10 == this.f73281d || this.f73284g == 1 || z11) {
            a aVar = this.f73286i;
            if (aVar != null) {
                aVar.onEnter(i10, this.f73280c, f10, z10);
            }
            this.f73279b.put(i10, Float.valueOf(1.0f - f10));
        }
    }

    private void c(int i10, float f10, boolean z10, boolean z11) {
        if (!this.f73285h && i10 != this.f73282e && this.f73284g != 1) {
            int i11 = this.f73281d;
            if (((i10 != i11 - 1 && i10 != i11 + 1) || ((Float) this.f73279b.get(i10, Float.valueOf(0.0f))).floatValue() == 1.0f) && !z11) {
                return;
            }
        }
        a aVar = this.f73286i;
        if (aVar != null) {
            aVar.onLeave(i10, this.f73280c, f10, z10);
        }
        this.f73279b.put(i10, Float.valueOf(f10));
    }

    private void d(int i10) {
        a aVar = this.f73286i;
        if (aVar != null) {
            aVar.onSelected(i10, this.f73280c);
        }
        this.f73278a.put(i10, false);
    }

    public int e() {
        return this.f73281d;
    }

    public int f() {
        return this.f73284g;
    }

    public int g() {
        return this.f73280c;
    }

    public void h(int i10) {
        this.f73284g = i10;
    }

    public void i(int i10, float f10, int i11) {
        boolean z10;
        float f11 = i10 + f10;
        float f12 = this.f73283f;
        boolean z11 = f12 <= f11;
        if (this.f73284g == 0) {
            for (int i12 = 0; i12 < this.f73280c; i12++) {
                if (i12 != this.f73281d) {
                    if (!this.f73278a.get(i12)) {
                        a(i12);
                    }
                    if (((Float) this.f73279b.get(i12, Float.valueOf(0.0f))).floatValue() != 1.0f) {
                        c(i12, 1.0f, false, true);
                    }
                }
            }
            b(this.f73281d, 1.0f, false, true);
            d(this.f73281d);
        } else {
            if (f11 == f12) {
                return;
            }
            int i13 = i10 + 1;
            if (f10 == 0.0f && z11) {
                i13 = i10 - 1;
                z10 = false;
            } else {
                z10 = true;
            }
            for (int i14 = 0; i14 < this.f73280c; i14++) {
                if (i14 != i10 && i14 != i13 && ((Float) this.f73279b.get(i14, Float.valueOf(0.0f))).floatValue() != 1.0f) {
                    c(i14, 1.0f, z11, true);
                }
            }
            if (!z10) {
                float f13 = 1.0f - f10;
                c(i13, f13, true, false);
                b(i10, f13, true, false);
            } else if (z11) {
                c(i10, f10, true, false);
                b(i13, f10, true, false);
            } else {
                float f14 = 1.0f - f10;
                c(i13, f14, false, false);
                b(i10, f14, false, false);
            }
        }
        this.f73283f = f11;
    }

    public void j(int i10) {
        this.f73282e = this.f73281d;
        this.f73281d = i10;
        d(i10);
        for (int i11 = 0; i11 < this.f73280c; i11++) {
            if (i11 != this.f73281d && !this.f73278a.get(i11)) {
                a(i11);
            }
        }
    }

    public void k(a aVar) {
        this.f73286i = aVar;
    }

    public void l(boolean z10) {
        this.f73285h = z10;
    }

    public void m(int i10) {
        this.f73280c = i10;
        this.f73278a.clear();
        this.f73279b.clear();
    }
}
