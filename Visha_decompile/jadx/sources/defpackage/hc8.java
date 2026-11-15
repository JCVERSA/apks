package defpackage;

import android.content.res.Resources;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import com.transsion.widgetslib.R;
import java.util.ArrayList;

public class hc8 {
    public static float n;
    public static int o;
    public static int p;
    public final View a;
    public long b;
    public ArrayList e;
    public gc8 i;
    public gc8 j;
    public gc8 k;
    public int l;
    public int m;
    public int c = 300;
    public int f = 1;
    public boolean g = false;
    public int h = -1;
    public final Interpolator d = new AccelerateInterpolator();

    public hc8(View view) {
        this.a = view;
        Resources resources = view.getResources();
        n = resources.getDimension(R.dimen.os_overflowmenu_circle_radiu);
        int dimension = (int) resources.getDimension(R.dimen.os_overflowmenu_circle_spacing);
        o = dimension;
        p = (int) (dimension + (n * 2.0f));
        c();
    }

    public void a() {
        if (this.f != 4) {
            return;
        }
        if (this.g) {
            this.f = 2;
        } else {
            this.f = 1;
        }
        e((gc8) this.e.get(1), (gc8) this.e.get(2), 0);
    }

    public final void b(ArrayList arrayList) {
        int i = this.l - p;
        this.i.c(i, i, n);
        int i2 = this.m;
        this.j.c(i, i2, n);
        int i3 = this.m + p;
        this.k.c(i, i3, n);
        this.j.b(i3, i);
        this.k.b(i2, i2);
        arrayList.add(0, this.i);
        arrayList.add(1, this.j);
        arrayList.add(2, this.k);
    }

    public final void c() {
        this.i = new gc8();
        this.j = new gc8();
        this.k = new gc8();
    }

    public final void d(ArrayList arrayList) {
        int i = this.l;
        int i2 = p;
        int i3 = i + i2;
        int i4 = this.m - i2;
        this.i.c(i3, i4, n);
        int i5 = this.m;
        this.j.c(i3, i5, n);
        this.k.c(i3, this.m + p, n);
        this.j.b(i4, i4);
        this.k.b(i5, i5);
        arrayList.add(0, this.i);
        arrayList.add(1, this.j);
        arrayList.add(2, this.k);
    }

    public final void e(gc8 gc8Var, gc8 gc8Var2, int i) {
        if (this.g) {
            this.f = 2;
            if (this.h == 0) {
                gc8Var.b(this.l - p, this.m);
                int i2 = this.l;
                int i3 = p;
                gc8Var2.b(i2 - i3, this.m + i3);
            } else {
                gc8Var.b(this.l + p, this.m);
                int i4 = this.l;
                int i5 = p;
                gc8Var2.b(i4 + i5, this.m + i5);
            }
        } else {
            this.f = 1;
            if (this.h == 0) {
                int i6 = this.l;
                int i7 = p;
                gc8Var.b(i6 + i7, this.m - i7);
                gc8Var2.b(this.l, this.m);
            } else {
                int i8 = this.l;
                int i9 = p;
                gc8Var.b(i8 - i9, this.m - i9);
                gc8Var2.b(this.l, this.m);
            }
        }
        this.a.invalidate();
    }

    public void f(int i, int i2) {
        this.l = i;
        this.m = i2;
    }

    public void g(int i, ArrayList arrayList) {
        if (this.h != i) {
            arrayList.clear();
            if (i == 0) {
                b(arrayList);
            } else {
                d(arrayList);
            }
        }
        this.e = arrayList;
        this.h = i;
    }

    public void h(boolean z, int i) {
        if (this.f == 4) {
            e((gc8) this.e.get(1), (gc8) this.e.get(2), 1);
        }
        this.g = z;
        this.b = AnimationUtils.currentAnimationTimeMillis();
        this.f = 4;
        i();
    }

    public void i() {
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        float interpolation = this.d.getInterpolation(Math.min((jCurrentAnimationTimeMillis - this.b) / (this.c * 1.0f), 1.0f));
        if (this.e.size() < 3) {
            return;
        }
        gc8 gc8Var = (gc8) this.e.get(1);
        int i = gc8Var.a;
        gc8Var.a = (int) (i + ((gc8Var.c - i) * interpolation));
        int i2 = gc8Var.b;
        gc8Var.b = (int) (i2 + ((gc8Var.d - i2) * interpolation));
        gc8 gc8Var2 = (gc8) this.e.get(2);
        int i3 = gc8Var2.a;
        gc8Var2.a = (int) (i3 + ((gc8Var2.c - i3) * interpolation));
        int i4 = gc8Var2.b;
        gc8Var2.b = (int) (i4 + ((gc8Var2.d - i4) * interpolation));
        this.a.invalidate();
        if (jCurrentAnimationTimeMillis - this.b >= this.c) {
            e(gc8Var, gc8Var2, 0);
        }
    }

    public void setDuration(int i) {
        this.c = i;
    }
}
