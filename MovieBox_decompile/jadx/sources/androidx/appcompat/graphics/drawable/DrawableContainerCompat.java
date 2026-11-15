package androidx.appcompat.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.SparseArray;

public class DrawableContainerCompat extends Drawable implements Drawable.Callback {

    private c f882a;

    private Rect f883b;

    private Drawable f884c;

    private Drawable f885d;

    private boolean f887f;

    private boolean f889h;

    private Runnable f890i;

    private long f891j;

    private long f892k;

    private b f893l;

    private int f886e = 255;

    private int f888g = -1;

    private static class a {
        public static boolean a(Drawable.ConstantState constantState) {
            return constantState.canApplyTheme();
        }

        public static void b(Drawable drawable, Outline outline) {
            drawable.getOutline(outline);
        }

        public static Resources c(Resources.Theme theme) {
            return theme.getResources();
        }
    }

    static abstract class c extends Drawable.ConstantState {
        int A;
        int B;
        boolean C;
        ColorFilter D;
        boolean E;
        ColorStateList F;
        PorterDuff.Mode G;
        boolean H;
        boolean I;

        final DrawableContainerCompat f895a;

        Resources f896b;

        int f897c;

        int f898d;

        int f899e;

        SparseArray f900f;

        Drawable[] f901g;

        int f902h;

        boolean f903i;

        boolean f904j;

        Rect f905k;

        boolean f906l;

        boolean f907m;

        int f908n;

        int f909o;

        int f910p;

        int f911q;

        boolean f912r;

        int f913s;

        boolean f914t;

        boolean f915u;

        boolean f916v;

        boolean f917w;

        boolean f918x;

        boolean f919y;

        int f920z;

        c(c cVar, DrawableContainerCompat drawableContainerCompat, Resources resources) {
            this.f903i = false;
            this.f906l = false;
            this.f918x = true;
            this.A = 0;
            this.B = 0;
            this.f895a = drawableContainerCompat;
            this.f896b = resources != null ? resources : cVar != null ? cVar.f896b : null;
            int iF = DrawableContainerCompat.f(resources, cVar != null ? cVar.f897c : 0);
            this.f897c = iF;
            if (cVar == null) {
                this.f901g = new Drawable[10];
                this.f902h = 0;
                return;
            }
            this.f898d = cVar.f898d;
            this.f899e = cVar.f899e;
            this.f916v = true;
            this.f917w = true;
            this.f903i = cVar.f903i;
            this.f906l = cVar.f906l;
            this.f918x = cVar.f918x;
            this.f919y = cVar.f919y;
            this.f920z = cVar.f920z;
            this.A = cVar.A;
            this.B = cVar.B;
            this.C = cVar.C;
            this.D = cVar.D;
            this.E = cVar.E;
            this.F = cVar.F;
            this.G = cVar.G;
            this.H = cVar.H;
            this.I = cVar.I;
            if (cVar.f897c == iF) {
                if (cVar.f904j) {
                    this.f905k = cVar.f905k != null ? new Rect(cVar.f905k) : null;
                    this.f904j = true;
                }
                if (cVar.f907m) {
                    this.f908n = cVar.f908n;
                    this.f909o = cVar.f909o;
                    this.f910p = cVar.f910p;
                    this.f911q = cVar.f911q;
                    this.f907m = true;
                }
            }
            if (cVar.f912r) {
                this.f913s = cVar.f913s;
                this.f912r = true;
            }
            if (cVar.f914t) {
                this.f915u = cVar.f915u;
                this.f914t = true;
            }
            Drawable[] drawableArr = cVar.f901g;
            this.f901g = new Drawable[drawableArr.length];
            this.f902h = cVar.f902h;
            SparseArray sparseArray = cVar.f900f;
            if (sparseArray != null) {
                this.f900f = sparseArray.clone();
            } else {
                this.f900f = new SparseArray(this.f902h);
            }
            int i10 = this.f902h;
            for (int i11 = 0; i11 < i10; i11++) {
                Drawable drawable = drawableArr[i11];
                if (drawable != null) {
                    Drawable.ConstantState constantState = drawable.getConstantState();
                    if (constantState != null) {
                        this.f900f.put(i11, constantState);
                    } else {
                        this.f901g[i11] = drawableArr[i11];
                    }
                }
            }
        }

        private void e() {
            SparseArray sparseArray = this.f900f;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i10 = 0; i10 < size; i10++) {
                    this.f901g[this.f900f.keyAt(i10)] = t(((Drawable.ConstantState) this.f900f.valueAt(i10)).newDrawable(this.f896b));
                }
                this.f900f = null;
            }
        }

        private Drawable t(Drawable drawable) {
            a1.a.m(drawable, this.f920z);
            Drawable drawableMutate = drawable.mutate();
            drawableMutate.setCallback(this.f895a);
            return drawableMutate;
        }

        public final int a(Drawable drawable) {
            int i10 = this.f902h;
            if (i10 >= this.f901g.length) {
                o(i10, i10 + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.f895a);
            this.f901g[i10] = drawable;
            this.f902h++;
            this.f899e = drawable.getChangingConfigurations() | this.f899e;
            p();
            this.f905k = null;
            this.f904j = false;
            this.f907m = false;
            this.f916v = false;
            return i10;
        }

        final void b(Resources.Theme theme) {
            if (theme != null) {
                e();
                int i10 = this.f902h;
                Drawable[] drawableArr = this.f901g;
                for (int i11 = 0; i11 < i10; i11++) {
                    Drawable drawable = drawableArr[i11];
                    if (drawable != null && a1.a.b(drawable)) {
                        a1.a.a(drawableArr[i11], theme);
                        this.f899e |= drawableArr[i11].getChangingConfigurations();
                    }
                }
                z(a.c(theme));
            }
        }

        public boolean c() {
            if (this.f916v) {
                return this.f917w;
            }
            e();
            this.f916v = true;
            int i10 = this.f902h;
            Drawable[] drawableArr = this.f901g;
            for (int i11 = 0; i11 < i10; i11++) {
                if (drawableArr[i11].getConstantState() == null) {
                    this.f917w = false;
                    return false;
                }
            }
            this.f917w = true;
            return true;
        }

        @Override
        public boolean canApplyTheme() {
            int i10 = this.f902h;
            Drawable[] drawableArr = this.f901g;
            for (int i11 = 0; i11 < i10; i11++) {
                Drawable drawable = drawableArr[i11];
                if (drawable == null) {
                    Drawable.ConstantState constantState = (Drawable.ConstantState) this.f900f.get(i11);
                    if (constantState != null && a.a(constantState)) {
                        return true;
                    }
                } else if (a1.a.b(drawable)) {
                    return true;
                }
            }
            return false;
        }

        protected void d() {
            this.f907m = true;
            e();
            int i10 = this.f902h;
            Drawable[] drawableArr = this.f901g;
            this.f909o = -1;
            this.f908n = -1;
            this.f911q = 0;
            this.f910p = 0;
            for (int i11 = 0; i11 < i10; i11++) {
                Drawable drawable = drawableArr[i11];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.f908n) {
                    this.f908n = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.f909o) {
                    this.f909o = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.f910p) {
                    this.f910p = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.f911q) {
                    this.f911q = minimumHeight;
                }
            }
        }

        final int f() {
            return this.f901g.length;
        }

        public final Drawable g(int i10) {
            int iIndexOfKey;
            Drawable drawable = this.f901g[i10];
            if (drawable != null) {
                return drawable;
            }
            SparseArray sparseArray = this.f900f;
            if (sparseArray == null || (iIndexOfKey = sparseArray.indexOfKey(i10)) < 0) {
                return null;
            }
            Drawable drawableT = t(((Drawable.ConstantState) this.f900f.valueAt(iIndexOfKey)).newDrawable(this.f896b));
            this.f901g[i10] = drawableT;
            this.f900f.removeAt(iIndexOfKey);
            if (this.f900f.size() == 0) {
                this.f900f = null;
            }
            return drawableT;
        }

        @Override
        public int getChangingConfigurations() {
            return this.f898d | this.f899e;
        }

        public final int h() {
            return this.f902h;
        }

        public final int i() {
            if (!this.f907m) {
                d();
            }
            return this.f909o;
        }

        public final int j() {
            if (!this.f907m) {
                d();
            }
            return this.f911q;
        }

        public final int k() {
            if (!this.f907m) {
                d();
            }
            return this.f910p;
        }

        public final Rect l() {
            Rect rect = null;
            if (this.f903i) {
                return null;
            }
            Rect rect2 = this.f905k;
            if (rect2 != null || this.f904j) {
                return rect2;
            }
            e();
            Rect rect3 = new Rect();
            int i10 = this.f902h;
            Drawable[] drawableArr = this.f901g;
            for (int i11 = 0; i11 < i10; i11++) {
                if (drawableArr[i11].getPadding(rect3)) {
                    if (rect == null) {
                        rect = new Rect(0, 0, 0, 0);
                    }
                    int i12 = rect3.left;
                    if (i12 > rect.left) {
                        rect.left = i12;
                    }
                    int i13 = rect3.top;
                    if (i13 > rect.top) {
                        rect.top = i13;
                    }
                    int i14 = rect3.right;
                    if (i14 > rect.right) {
                        rect.right = i14;
                    }
                    int i15 = rect3.bottom;
                    if (i15 > rect.bottom) {
                        rect.bottom = i15;
                    }
                }
            }
            this.f904j = true;
            this.f905k = rect;
            return rect;
        }

        public final int m() {
            if (!this.f907m) {
                d();
            }
            return this.f908n;
        }

        public final int n() {
            if (this.f912r) {
                return this.f913s;
            }
            e();
            int i10 = this.f902h;
            Drawable[] drawableArr = this.f901g;
            int opacity = i10 > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i11 = 1; i11 < i10; i11++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[i11].getOpacity());
            }
            this.f913s = opacity;
            this.f912r = true;
            return opacity;
        }

        public void o(int i10, int i11) {
            Drawable[] drawableArr = new Drawable[i11];
            Drawable[] drawableArr2 = this.f901g;
            if (drawableArr2 != null) {
                System.arraycopy(drawableArr2, 0, drawableArr, 0, i10);
            }
            this.f901g = drawableArr;
        }

        void p() {
            this.f912r = false;
            this.f914t = false;
        }

        public final boolean q() {
            return this.f906l;
        }

        public final boolean r() {
            if (this.f914t) {
                return this.f915u;
            }
            e();
            int i10 = this.f902h;
            Drawable[] drawableArr = this.f901g;
            boolean z10 = false;
            for (int i11 = 0; i11 < i10; i11++) {
                if (drawableArr[i11].isStateful()) {
                    z10 = true;
                    break;
                }
            }
            this.f915u = z10;
            this.f914t = true;
            return z10;
        }

        abstract void s();

        public final void u(boolean z10) {
            this.f906l = z10;
        }

        public final void v(int i10) {
            this.A = i10;
        }

        public final void w(int i10) {
            this.B = i10;
        }

        final boolean x(int i10, int i11) {
            int i12 = this.f902h;
            Drawable[] drawableArr = this.f901g;
            boolean z10 = false;
            for (int i13 = 0; i13 < i12; i13++) {
                Drawable drawable = drawableArr[i13];
                if (drawable != null) {
                    boolean zM = a1.a.m(drawable, i10);
                    if (i13 == i11) {
                        z10 = zM;
                    }
                }
            }
            this.f920z = i10;
            return z10;
        }

        public final void y(boolean z10) {
            this.f903i = z10;
        }

        final void z(Resources resources) {
            if (resources != null) {
                this.f896b = resources;
                int iF = DrawableContainerCompat.f(resources, this.f897c);
                int i10 = this.f897c;
                this.f897c = iF;
                if (i10 != iF) {
                    this.f907m = false;
                    this.f904j = false;
                }
            }
        }
    }

    private void d(Drawable drawable) {
        if (this.f893l == null) {
            this.f893l = new b();
        }
        drawable.setCallback(this.f893l.b(drawable.getCallback()));
        try {
            if (this.f882a.A <= 0 && this.f887f) {
                drawable.setAlpha(this.f886e);
            }
            c cVar = this.f882a;
            if (cVar.E) {
                drawable.setColorFilter(cVar.D);
            } else {
                if (cVar.H) {
                    a1.a.o(drawable, cVar.F);
                }
                c cVar2 = this.f882a;
                if (cVar2.I) {
                    a1.a.p(drawable, cVar2.G);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f882a.f918x);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            a1.a.m(drawable, a1.a.f(this));
            a1.a.j(drawable, this.f882a.C);
            Rect rect = this.f883b;
            if (rect != null) {
                a1.a.l(drawable, rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.f893l.a());
        }
    }

    private boolean e() {
        return isAutoMirrored() && a1.a.f(this) == 1;
    }

    static int f(Resources resources, int i10) {
        if (resources != null) {
            i10 = resources.getDisplayMetrics().densityDpi;
        }
        if (i10 == 0) {
            return 160;
        }
        return i10;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x003d  */
    /* JADX WARN: Code duplicated, block: B:16:0x0043  */
    /* JADX WARN: Code duplicated, block: B:18:0x0047  */
    /* JADX WARN: Code duplicated, block: B:19:0x0050  */
    /* JADX WARN: Code duplicated, block: B:20:0x0061  */
    /* JADX WARN: Code duplicated, block: B:23:0x0066 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:26:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    void a(boolean z10) {
        boolean z11;
        Drawable drawable;
        long j10;
        boolean z12 = true;
        this.f887f = true;
        long jUptimeMillis = SystemClock.uptimeMillis();
        Drawable drawable2 = this.f884c;
        if (drawable2 != null) {
            long j11 = this.f891j;
            if (j11 != 0) {
                if (j11 <= jUptimeMillis) {
                    drawable2.setAlpha(this.f886e);
                    this.f891j = 0L;
                } else {
                    drawable2.setAlpha(((255 - (((int) ((j11 - jUptimeMillis) * 255)) / this.f882a.A)) * this.f886e) / 255);
                    z11 = true;
                }
            }
            drawable = this.f885d;
            if (drawable != null) {
                j10 = this.f892k;
                if (j10 == 0) {
                    if (j10 <= jUptimeMillis) {
                        drawable.setVisible(false, false);
                        this.f885d = null;
                        this.f892k = 0L;
                    } else {
                        drawable.setAlpha(((((int) ((j10 - jUptimeMillis) * 255)) / this.f882a.B) * this.f886e) / 255);
                    }
                }
                if (z10 || !z12) {
                }
                scheduleSelf(this.f890i, jUptimeMillis + 16);
                return;
            }
            this.f892k = 0L;
            z12 = z11;
            if (z10) {
            }
        }
        this.f891j = 0L;
        z11 = false;
        drawable = this.f885d;
        if (drawable != null) {
            j10 = this.f892k;
            if (j10 == 0) {
                if (j10 <= jUptimeMillis) {
                    drawable.setVisible(false, false);
                    this.f885d = null;
                    this.f892k = 0L;
                } else {
                    drawable.setAlpha(((((int) ((j10 - jUptimeMillis) * 255)) / this.f882a.B) * this.f886e) / 255);
                }
            }
            if (z10) {
            }
        }
        this.f892k = 0L;
        z12 = z11;
        if (z10) {
        }
    }

    @Override
    public void applyTheme(Resources.Theme theme) {
        this.f882a.b(theme);
    }

    c b() {
        return this.f882a;
    }

    int c() {
        return this.f888g;
    }

    @Override
    public boolean canApplyTheme() {
        return this.f882a.canApplyTheme();
    }

    @Override
    public void draw(Canvas canvas) {
        Drawable drawable = this.f884c;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f885d;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0055  */
    boolean g(int i10) {
        if (i10 == this.f888g) {
            return false;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (this.f882a.B > 0) {
            Drawable drawable = this.f885d;
            if (drawable != null) {
                drawable.setVisible(false, false);
            }
            Drawable drawable2 = this.f884c;
            if (drawable2 != null) {
                this.f885d = drawable2;
                this.f892k = ((long) this.f882a.B) + jUptimeMillis;
            } else {
                this.f885d = null;
                this.f892k = 0L;
            }
        } else {
            Drawable drawable3 = this.f884c;
            if (drawable3 != null) {
                drawable3.setVisible(false, false);
            }
        }
        if (i10 >= 0) {
            c cVar = this.f882a;
            if (i10 < cVar.f902h) {
                Drawable drawableG = cVar.g(i10);
                this.f884c = drawableG;
                this.f888g = i10;
                if (drawableG != null) {
                    int i11 = this.f882a.A;
                    if (i11 > 0) {
                        this.f891j = jUptimeMillis + ((long) i11);
                    }
                    d(drawableG);
                }
            } else {
                this.f884c = null;
                this.f888g = -1;
            }
        } else {
            this.f884c = null;
            this.f888g = -1;
        }
        if (this.f891j != 0 || this.f892k != 0) {
            Runnable runnable = this.f890i;
            if (runnable == null) {
                this.f890i = new Runnable() {
                    @Override
                    public void run() {
                        DrawableContainerCompat.this.a(true);
                        DrawableContainerCompat.this.invalidateSelf();
                    }
                };
            } else {
                unscheduleSelf(runnable);
            }
            a(true);
        }
        invalidateSelf();
        return true;
    }

    @Override
    public int getAlpha() {
        return this.f886e;
    }

    @Override
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f882a.getChangingConfigurations();
    }

    @Override
    public final Drawable.ConstantState getConstantState() {
        if (!this.f882a.c()) {
            return null;
        }
        this.f882a.f898d = getChangingConfigurations();
        return this.f882a;
    }

    @Override
    public Drawable getCurrent() {
        return this.f884c;
    }

    @Override
    public void getHotspotBounds(Rect rect) {
        Rect rect2 = this.f883b;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override
    public int getIntrinsicHeight() {
        if (this.f882a.q()) {
            return this.f882a.i();
        }
        Drawable drawable = this.f884c;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override
    public int getIntrinsicWidth() {
        if (this.f882a.q()) {
            return this.f882a.m();
        }
        Drawable drawable = this.f884c;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override
    public int getMinimumHeight() {
        if (this.f882a.q()) {
            return this.f882a.j();
        }
        Drawable drawable = this.f884c;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override
    public int getMinimumWidth() {
        if (this.f882a.q()) {
            return this.f882a.k();
        }
        Drawable drawable = this.f884c;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override
    public int getOpacity() {
        Drawable drawable = this.f884c;
        if (drawable == null || !drawable.isVisible()) {
            return -2;
        }
        return this.f882a.n();
    }

    @Override
    public void getOutline(Outline outline) {
        Drawable drawable = this.f884c;
        if (drawable != null) {
            a.b(drawable, outline);
        }
    }

    @Override
    public boolean getPadding(Rect rect) {
        boolean padding;
        Rect rectL = this.f882a.l();
        if (rectL != null) {
            rect.set(rectL);
            padding = (rectL.right | ((rectL.left | rectL.top) | rectL.bottom)) != 0;
        } else {
            Drawable drawable = this.f884c;
            padding = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (e()) {
            int i10 = rect.left;
            rect.left = rect.right;
            rect.right = i10;
        }
        return padding;
    }

    void h(c cVar) {
        this.f882a = cVar;
        int i10 = this.f888g;
        if (i10 >= 0) {
            Drawable drawableG = cVar.g(i10);
            this.f884c = drawableG;
            if (drawableG != null) {
                d(drawableG);
            }
        }
        this.f885d = null;
    }

    final void i(Resources resources) {
        this.f882a.z(resources);
    }

    @Override
    public void invalidateDrawable(Drawable drawable) {
        c cVar = this.f882a;
        if (cVar != null) {
            cVar.p();
        }
        if (drawable != this.f884c || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override
    public boolean isAutoMirrored() {
        return this.f882a.C;
    }

    @Override
    public boolean isStateful() {
        return this.f882a.r();
    }

    @Override
    public void jumpToCurrentState() {
        boolean z10;
        Drawable drawable = this.f885d;
        boolean z11 = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f885d = null;
            z10 = true;
        } else {
            z10 = false;
        }
        Drawable drawable2 = this.f884c;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f887f) {
                this.f884c.setAlpha(this.f886e);
            }
        }
        if (this.f892k != 0) {
            this.f892k = 0L;
            z10 = true;
        }
        if (this.f891j != 0) {
            this.f891j = 0L;
        } else {
            z11 = z10;
        }
        if (z11) {
            invalidateSelf();
        }
    }

    @Override
    public Drawable mutate() {
        if (!this.f889h && super.mutate() == this) {
            c cVarB = b();
            cVarB.s();
            h(cVarB);
            this.f889h = true;
        }
        return this;
    }

    @Override
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f885d;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f884c;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override
    public boolean onLayoutDirectionChanged(int i10) {
        return this.f882a.x(i10, c());
    }

    @Override
    protected boolean onLevelChange(int i10) {
        Drawable drawable = this.f885d;
        if (drawable != null) {
            return drawable.setLevel(i10);
        }
        Drawable drawable2 = this.f884c;
        if (drawable2 != null) {
            return drawable2.setLevel(i10);
        }
        return false;
    }

    @Override
    protected boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f885d;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.f884c;
        if (drawable2 != null) {
            return drawable2.setState(iArr);
        }
        return false;
    }

    @Override
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        if (drawable != this.f884c || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j10);
    }

    @Override
    public void setAlpha(int i10) {
        if (this.f887f && this.f886e == i10) {
            return;
        }
        this.f887f = true;
        this.f886e = i10;
        Drawable drawable = this.f884c;
        if (drawable != null) {
            if (this.f891j == 0) {
                drawable.setAlpha(i10);
            } else {
                a(false);
            }
        }
    }

    @Override
    public void setAutoMirrored(boolean z10) {
        c cVar = this.f882a;
        if (cVar.C != z10) {
            cVar.C = z10;
            Drawable drawable = this.f884c;
            if (drawable != null) {
                a1.a.j(drawable, z10);
            }
        }
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        c cVar = this.f882a;
        cVar.E = true;
        if (cVar.D != colorFilter) {
            cVar.D = colorFilter;
            Drawable drawable = this.f884c;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override
    public void setDither(boolean z10) {
        c cVar = this.f882a;
        if (cVar.f918x != z10) {
            cVar.f918x = z10;
            Drawable drawable = this.f884c;
            if (drawable != null) {
                drawable.setDither(z10);
            }
        }
    }

    @Override
    public void setHotspot(float f10, float f11) {
        Drawable drawable = this.f884c;
        if (drawable != null) {
            a1.a.k(drawable, f10, f11);
        }
    }

    @Override
    public void setHotspotBounds(int i10, int i11, int i12, int i13) {
        Rect rect = this.f883b;
        if (rect == null) {
            this.f883b = new Rect(i10, i11, i12, i13);
        } else {
            rect.set(i10, i11, i12, i13);
        }
        Drawable drawable = this.f884c;
        if (drawable != null) {
            a1.a.l(drawable, i10, i11, i12, i13);
        }
    }

    @Override
    public void setTint(int i10) {
        setTintList(ColorStateList.valueOf(i10));
    }

    @Override
    public void setTintList(ColorStateList colorStateList) {
        c cVar = this.f882a;
        cVar.H = true;
        if (cVar.F != colorStateList) {
            cVar.F = colorStateList;
            a1.a.o(this.f884c, colorStateList);
        }
    }

    @Override
    public void setTintMode(PorterDuff.Mode mode) {
        c cVar = this.f882a;
        cVar.I = true;
        if (cVar.G != mode) {
            cVar.G = mode;
            a1.a.p(this.f884c, mode);
        }
    }

    @Override
    public boolean setVisible(boolean z10, boolean z11) {
        boolean visible = super.setVisible(z10, z11);
        Drawable drawable = this.f885d;
        if (drawable != null) {
            drawable.setVisible(z10, z11);
        }
        Drawable drawable2 = this.f884c;
        if (drawable2 != null) {
            drawable2.setVisible(z10, z11);
        }
        return visible;
    }

    @Override
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable != this.f884c || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }

    static class b implements Drawable.Callback {

        private Drawable.Callback f894a;

        b() {
        }

        public Drawable.Callback a() {
            Drawable.Callback callback = this.f894a;
            this.f894a = null;
            return callback;
        }

        public b b(Drawable.Callback callback) {
            this.f894a = callback;
            return this;
        }

        @Override
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
            Drawable.Callback callback = this.f894a;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j10);
            }
        }

        @Override
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            Drawable.Callback callback = this.f894a;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }

        @Override
        public void invalidateDrawable(Drawable drawable) {
        }
    }
}
