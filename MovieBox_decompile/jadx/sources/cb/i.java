package cb;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import com.google.android.material.R$attr;
import java.util.BitSet;

public class i extends Drawable implements q {

    private static final String f16794x = "i";

    private static final Paint f16795y;

    private c f16796a;

    private final p.g[] f16797b;

    private final p.g[] f16798c;

    private final BitSet f16799d;

    private boolean f16800e;

    private final Matrix f16801f;

    private final Path f16802g;

    private final Path f16803h;

    private final RectF f16804i;

    private final RectF f16805j;

    private final Region f16806k;

    private final Region f16807l;

    private n f16808m;

    private final Paint f16809n;

    private final Paint f16810o;

    private final bb.a f16811p;

    private final o.b f16812q;

    private final o f16813r;

    private PorterDuffColorFilter f16814s;

    private PorterDuffColorFilter f16815t;

    private int f16816u;

    private final RectF f16817v;

    private boolean f16818w;

    class a implements o.b {
        a() {
        }

        @Override
        public void a(p pVar, Matrix matrix, int i10) {
            i.this.f16799d.set(i10, pVar.e());
            i.this.f16797b[i10] = pVar.f(matrix);
        }

        @Override
        public void b(p pVar, Matrix matrix, int i10) {
            i.this.f16799d.set(i10 + 4, pVar.e());
            i.this.f16798c[i10] = pVar.f(matrix);
        }
    }

    class b implements n.c {

        final float f16820a;

        b(float f10) {
            this.f16820a = f10;
        }

        @Override
        public d a(d dVar) {
            return dVar instanceof l ? dVar : new cb.b(this.f16820a, dVar);
        }
    }

    static {
        Paint paint = new Paint(1);
        f16795y = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    public i() {
        this(new n());
    }

    private float I() {
        if (R()) {
            return this.f16810o.getStrokeWidth() / 2.0f;
        }
        return 0.0f;
    }

    private boolean P() {
        c cVar = this.f16796a;
        int i10 = cVar.f16838q;
        return i10 != 1 && cVar.f16839r > 0 && (i10 == 2 || Z());
    }

    private boolean Q() {
        Paint.Style style = this.f16796a.f16843v;
        return style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL;
    }

    private boolean R() {
        Paint.Style style = this.f16796a.f16843v;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.f16810o.getStrokeWidth() > 0.0f;
    }

    private void T() {
        super.invalidateSelf();
    }

    private void W(Canvas canvas) {
        if (P()) {
            canvas.save();
            Y(canvas);
            if (!this.f16818w) {
                p(canvas);
                canvas.restore();
                return;
            }
            int iWidth = (int) (this.f16817v.width() - getBounds().width());
            int iHeight = (int) (this.f16817v.height() - getBounds().height());
            if (iWidth < 0 || iHeight < 0) {
                throw new IllegalStateException("Invalid shadow bounds. Check that the treatments result in a valid path.");
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(((int) this.f16817v.width()) + (this.f16796a.f16839r * 2) + iWidth, ((int) this.f16817v.height()) + (this.f16796a.f16839r * 2) + iHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(bitmapCreateBitmap);
            float f10 = (getBounds().left - this.f16796a.f16839r) - iWidth;
            float f11 = (getBounds().top - this.f16796a.f16839r) - iHeight;
            canvas2.translate(-f10, -f11);
            p(canvas2);
            canvas.drawBitmap(bitmapCreateBitmap, f10, f11, (Paint) null);
            bitmapCreateBitmap.recycle();
            canvas.restore();
        }
    }

    private static int X(int i10, int i11) {
        return (i10 * (i11 + (i11 >>> 7))) >>> 8;
    }

    private void Y(Canvas canvas) {
        canvas.translate(D(), E());
    }

    private PorterDuffColorFilter f(Paint paint, boolean z10) {
        if (!z10) {
            return null;
        }
        int color = paint.getColor();
        int iL = l(color);
        this.f16816u = iL;
        if (iL != color) {
            return new PorterDuffColorFilter(iL, PorterDuff.Mode.SRC_IN);
        }
        return null;
    }

    private void g(RectF rectF, Path path) {
        h(rectF, path);
        if (this.f16796a.f16831j != 1.0f) {
            this.f16801f.reset();
            Matrix matrix = this.f16801f;
            float f10 = this.f16796a.f16831j;
            matrix.setScale(f10, f10, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(this.f16801f);
        }
        path.computeBounds(this.f16817v, true);
    }

    private void i() {
        n nVarY = G().y(new b(-I()));
        this.f16808m = nVarY;
        this.f16813r.d(nVarY, this.f16796a.f16832k, x(), this.f16803h);
    }

    private PorterDuffColorFilter j(ColorStateList colorStateList, PorterDuff.Mode mode, boolean z10) {
        int colorForState = colorStateList.getColorForState(getState(), 0);
        if (z10) {
            colorForState = l(colorForState);
        }
        this.f16816u = colorForState;
        return new PorterDuffColorFilter(colorForState, mode);
    }

    private PorterDuffColorFilter k(ColorStateList colorStateList, PorterDuff.Mode mode, Paint paint, boolean z10) {
        return (colorStateList == null || mode == null) ? f(paint, z10) : j(colorStateList, mode, z10);
    }

    public static i m(Context context) {
        return n(context, 0.0f);
    }

    public static i n(Context context, float f10) {
        return o(context, f10, null);
    }

    public static i o(Context context, float f10, ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(com.google.android.material.color.b.c(context, R$attr.colorSurface, i.class.getSimpleName()));
        }
        i iVar = new i();
        iVar.S(context);
        iVar.d0(colorStateList);
        iVar.c0(f10);
        return iVar;
    }

    private void p(Canvas canvas) {
        if (this.f16799d.cardinality() > 0) {
            Log.w(f16794x, "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        if (this.f16796a.f16840s != 0) {
            canvas.drawPath(this.f16802g, this.f16811p.c());
        }
        for (int i10 = 0; i10 < 4; i10++) {
            this.f16797b[i10].b(this.f16811p, this.f16796a.f16839r, canvas);
            this.f16798c[i10].b(this.f16811p, this.f16796a.f16839r, canvas);
        }
        if (this.f16818w) {
            int iD = D();
            int iE = E();
            canvas.translate(-iD, -iE);
            canvas.drawPath(this.f16802g, f16795y);
            canvas.translate(iD, iE);
        }
    }

    private boolean p0(int[] iArr) {
        boolean z10;
        int color;
        int colorForState;
        int color2;
        int colorForState2;
        if (this.f16796a.f16825d == null || color2 == (colorForState2 = this.f16796a.f16825d.getColorForState(iArr, (color2 = this.f16809n.getColor())))) {
            z10 = false;
        } else {
            this.f16809n.setColor(colorForState2);
            z10 = true;
        }
        if (this.f16796a.f16826e == null || color == (colorForState = this.f16796a.f16826e.getColorForState(iArr, (color = this.f16810o.getColor())))) {
            return z10;
        }
        this.f16810o.setColor(colorForState);
        return true;
    }

    private void q(Canvas canvas) {
        s(canvas, this.f16809n, this.f16802g, this.f16796a.f16822a, w());
    }

    private boolean q0() {
        PorterDuffColorFilter porterDuffColorFilter = this.f16814s;
        PorterDuffColorFilter porterDuffColorFilter2 = this.f16815t;
        c cVar = this.f16796a;
        this.f16814s = k(cVar.f16828g, cVar.f16829h, this.f16809n, true);
        c cVar2 = this.f16796a;
        this.f16815t = k(cVar2.f16827f, cVar2.f16829h, this.f16810o, false);
        c cVar3 = this.f16796a;
        if (cVar3.f16842u) {
            this.f16811p.d(cVar3.f16828g.getColorForState(getState(), 0));
        }
        return (androidx.core.util.d.a(porterDuffColorFilter, this.f16814s) && androidx.core.util.d.a(porterDuffColorFilter2, this.f16815t)) ? false : true;
    }

    private void r0() {
        float fO = O();
        this.f16796a.f16839r = (int) Math.ceil(0.75f * fO);
        this.f16796a.f16840s = (int) Math.ceil(fO * 0.25f);
        q0();
        T();
    }

    private void s(Canvas canvas, Paint paint, Path path, n nVar, RectF rectF) {
        if (!nVar.u(rectF)) {
            canvas.drawPath(path, paint);
        } else {
            float fA = nVar.t().a(rectF) * this.f16796a.f16832k;
            canvas.drawRoundRect(rectF, fA, fA, paint);
        }
    }

    private RectF x() {
        this.f16805j.set(w());
        float fI = I();
        this.f16805j.inset(fI, fI);
        return this.f16805j;
    }

    public float A() {
        return this.f16796a.f16832k;
    }

    public float B() {
        return this.f16796a.f16835n;
    }

    public int C() {
        return this.f16816u;
    }

    public int D() {
        c cVar = this.f16796a;
        return (int) (((double) cVar.f16840s) * Math.sin(Math.toRadians(cVar.f16841t)));
    }

    public int E() {
        c cVar = this.f16796a;
        return (int) (((double) cVar.f16840s) * Math.cos(Math.toRadians(cVar.f16841t)));
    }

    public int F() {
        return this.f16796a.f16839r;
    }

    public n G() {
        return this.f16796a.f16822a;
    }

    public ColorStateList H() {
        return this.f16796a.f16826e;
    }

    public float J() {
        return this.f16796a.f16833l;
    }

    public ColorStateList K() {
        return this.f16796a.f16828g;
    }

    public float L() {
        return this.f16796a.f16822a.r().a(w());
    }

    public float M() {
        return this.f16796a.f16822a.t().a(w());
    }

    public float N() {
        return this.f16796a.f16837p;
    }

    public float O() {
        return y() + N();
    }

    public void S(Context context) {
        this.f16796a.f16823b = new va.a(context);
        r0();
    }

    public boolean U() {
        va.a aVar = this.f16796a.f16823b;
        return aVar != null && aVar.e();
    }

    public boolean V() {
        return this.f16796a.f16822a.u(w());
    }

    public boolean Z() {
        return (V() || this.f16802g.isConvex() || Build.VERSION.SDK_INT >= 29) ? false : true;
    }

    public void a0(float f10) {
        setShapeAppearanceModel(this.f16796a.f16822a.w(f10));
    }

    public void b0(d dVar) {
        setShapeAppearanceModel(this.f16796a.f16822a.x(dVar));
    }

    public void c0(float f10) {
        c cVar = this.f16796a;
        if (cVar.f16836o != f10) {
            cVar.f16836o = f10;
            r0();
        }
    }

    public void d0(ColorStateList colorStateList) {
        c cVar = this.f16796a;
        if (cVar.f16825d != colorStateList) {
            cVar.f16825d = colorStateList;
            onStateChange(getState());
        }
    }

    @Override
    public void draw(Canvas canvas) {
        this.f16809n.setColorFilter(this.f16814s);
        int alpha = this.f16809n.getAlpha();
        this.f16809n.setAlpha(X(alpha, this.f16796a.f16834m));
        this.f16810o.setColorFilter(this.f16815t);
        this.f16810o.setStrokeWidth(this.f16796a.f16833l);
        int alpha2 = this.f16810o.getAlpha();
        this.f16810o.setAlpha(X(alpha2, this.f16796a.f16834m));
        if (this.f16800e) {
            i();
            g(w(), this.f16802g);
            this.f16800e = false;
        }
        W(canvas);
        if (Q()) {
            q(canvas);
        }
        if (R()) {
            t(canvas);
        }
        this.f16809n.setAlpha(alpha);
        this.f16810o.setAlpha(alpha2);
    }

    public void e0(float f10) {
        c cVar = this.f16796a;
        if (cVar.f16832k != f10) {
            cVar.f16832k = f10;
            this.f16800e = true;
            invalidateSelf();
        }
    }

    public void f0(int i10, int i11, int i12, int i13) {
        c cVar = this.f16796a;
        if (cVar.f16830i == null) {
            cVar.f16830i = new Rect();
        }
        this.f16796a.f16830i.set(i10, i11, i12, i13);
        invalidateSelf();
    }

    public void g0(Paint.Style style) {
        this.f16796a.f16843v = style;
        T();
    }

    @Override
    public int getAlpha() {
        return this.f16796a.f16834m;
    }

    @Override
    public Drawable.ConstantState getConstantState() {
        return this.f16796a;
    }

    @Override
    public int getOpacity() {
        return -3;
    }

    @Override
    public void getOutline(Outline outline) {
        if (this.f16796a.f16838q == 2) {
            return;
        }
        if (V()) {
            outline.setRoundRect(getBounds(), L() * this.f16796a.f16832k);
        } else {
            g(w(), this.f16802g);
            com.google.android.material.drawable.d.l(outline, this.f16802g);
        }
    }

    @Override
    public boolean getPadding(Rect rect) {
        Rect rect2 = this.f16796a.f16830i;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    @Override
    public Region getTransparentRegion() {
        this.f16806k.set(getBounds());
        g(w(), this.f16802g);
        this.f16807l.setPath(this.f16802g, this.f16806k);
        this.f16806k.op(this.f16807l, Region.Op.DIFFERENCE);
        return this.f16806k;
    }

    protected final void h(RectF rectF, Path path) {
        o oVar = this.f16813r;
        c cVar = this.f16796a;
        oVar.e(cVar.f16822a, cVar.f16832k, rectF, this.f16812q, path);
    }

    public void h0(float f10) {
        c cVar = this.f16796a;
        if (cVar.f16835n != f10) {
            cVar.f16835n = f10;
            r0();
        }
    }

    public void i0(boolean z10) {
        this.f16818w = z10;
    }

    @Override
    public void invalidateSelf() {
        this.f16800e = true;
        super.invalidateSelf();
    }

    @Override
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        ColorStateList colorStateList4;
        return super.isStateful() || ((colorStateList = this.f16796a.f16828g) != null && colorStateList.isStateful()) || (((colorStateList2 = this.f16796a.f16827f) != null && colorStateList2.isStateful()) || (((colorStateList3 = this.f16796a.f16826e) != null && colorStateList3.isStateful()) || ((colorStateList4 = this.f16796a.f16825d) != null && colorStateList4.isStateful())));
    }

    public void j0(int i10) {
        this.f16811p.d(i10);
        this.f16796a.f16842u = false;
        T();
    }

    public void k0(int i10) {
        c cVar = this.f16796a;
        if (cVar.f16838q != i10) {
            cVar.f16838q = i10;
            T();
        }
    }

    protected int l(int i10) {
        float fO = O() + B();
        va.a aVar = this.f16796a.f16823b;
        return aVar != null ? aVar.c(i10, fO) : i10;
    }

    public void l0(float f10, int i10) {
        o0(f10);
        n0(ColorStateList.valueOf(i10));
    }

    public void m0(float f10, ColorStateList colorStateList) {
        o0(f10);
        n0(colorStateList);
    }

    @Override
    public Drawable mutate() {
        this.f16796a = new c(this.f16796a);
        return this;
    }

    public void n0(ColorStateList colorStateList) {
        c cVar = this.f16796a;
        if (cVar.f16826e != colorStateList) {
            cVar.f16826e = colorStateList;
            onStateChange(getState());
        }
    }

    public void o0(float f10) {
        this.f16796a.f16833l = f10;
        invalidateSelf();
    }

    @Override
    protected void onBoundsChange(Rect rect) {
        this.f16800e = true;
        super.onBoundsChange(rect);
    }

    @Override
    protected boolean onStateChange(int[] iArr) {
        boolean z10 = p0(iArr) || q0();
        if (z10) {
            invalidateSelf();
        }
        return z10;
    }

    protected void r(Canvas canvas, Paint paint, Path path, RectF rectF) {
        s(canvas, paint, path, this.f16796a.f16822a, rectF);
    }

    @Override
    public void setAlpha(int i10) {
        c cVar = this.f16796a;
        if (cVar.f16834m != i10) {
            cVar.f16834m = i10;
            T();
        }
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        this.f16796a.f16824c = colorFilter;
        T();
    }

    @Override
    public void setShapeAppearanceModel(n nVar) {
        this.f16796a.f16822a = nVar;
        invalidateSelf();
    }

    @Override
    public void setTint(int i10) {
        setTintList(ColorStateList.valueOf(i10));
    }

    @Override
    public void setTintList(ColorStateList colorStateList) {
        this.f16796a.f16828g = colorStateList;
        q0();
        T();
    }

    @Override
    public void setTintMode(PorterDuff.Mode mode) {
        c cVar = this.f16796a;
        if (cVar.f16829h != mode) {
            cVar.f16829h = mode;
            q0();
            T();
        }
    }

    protected void t(Canvas canvas) {
        s(canvas, this.f16810o, this.f16803h, this.f16808m, x());
    }

    public float u() {
        return this.f16796a.f16822a.j().a(w());
    }

    public float v() {
        return this.f16796a.f16822a.l().a(w());
    }

    protected RectF w() {
        this.f16804i.set(getBounds());
        return this.f16804i;
    }

    public float y() {
        return this.f16796a.f16836o;
    }

    public ColorStateList z() {
        return this.f16796a.f16825d;
    }

    public i(Context context, AttributeSet attributeSet, int i10, int i11) {
        this(n.e(context, attributeSet, i10, i11).m());
    }

    public i(n nVar) {
        this(new c(nVar, null));
    }

    protected i(c cVar) {
        o oVar;
        this.f16797b = new p.g[4];
        this.f16798c = new p.g[4];
        this.f16799d = new BitSet(8);
        this.f16801f = new Matrix();
        this.f16802g = new Path();
        this.f16803h = new Path();
        this.f16804i = new RectF();
        this.f16805j = new RectF();
        this.f16806k = new Region();
        this.f16807l = new Region();
        Paint paint = new Paint(1);
        this.f16809n = paint;
        Paint paint2 = new Paint(1);
        this.f16810o = paint2;
        this.f16811p = new bb.a();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            oVar = o.k();
        } else {
            oVar = new o();
        }
        this.f16813r = oVar;
        this.f16817v = new RectF();
        this.f16818w = true;
        this.f16796a = cVar;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        q0();
        p0(getState());
        this.f16812q = new a();
    }

    public static class c extends Drawable.ConstantState {

        n f16822a;

        va.a f16823b;

        ColorFilter f16824c;

        ColorStateList f16825d;

        ColorStateList f16826e;

        ColorStateList f16827f;

        ColorStateList f16828g;

        PorterDuff.Mode f16829h;

        Rect f16830i;

        float f16831j;

        float f16832k;

        float f16833l;

        int f16834m;

        float f16835n;

        float f16836o;

        float f16837p;

        int f16838q;

        int f16839r;

        int f16840s;

        int f16841t;

        boolean f16842u;

        Paint.Style f16843v;

        public c(n nVar, va.a aVar) {
            this.f16825d = null;
            this.f16826e = null;
            this.f16827f = null;
            this.f16828g = null;
            this.f16829h = PorterDuff.Mode.SRC_IN;
            this.f16830i = null;
            this.f16831j = 1.0f;
            this.f16832k = 1.0f;
            this.f16834m = 255;
            this.f16835n = 0.0f;
            this.f16836o = 0.0f;
            this.f16837p = 0.0f;
            this.f16838q = 0;
            this.f16839r = 0;
            this.f16840s = 0;
            this.f16841t = 0;
            this.f16842u = false;
            this.f16843v = Paint.Style.FILL_AND_STROKE;
            this.f16822a = nVar;
            this.f16823b = aVar;
        }

        @Override
        public int getChangingConfigurations() {
            return 0;
        }

        @Override
        public Drawable newDrawable() {
            i iVar = new i(this);
            iVar.f16800e = true;
            return iVar;
        }

        public c(c cVar) {
            this.f16825d = null;
            this.f16826e = null;
            this.f16827f = null;
            this.f16828g = null;
            this.f16829h = PorterDuff.Mode.SRC_IN;
            this.f16830i = null;
            this.f16831j = 1.0f;
            this.f16832k = 1.0f;
            this.f16834m = 255;
            this.f16835n = 0.0f;
            this.f16836o = 0.0f;
            this.f16837p = 0.0f;
            this.f16838q = 0;
            this.f16839r = 0;
            this.f16840s = 0;
            this.f16841t = 0;
            this.f16842u = false;
            this.f16843v = Paint.Style.FILL_AND_STROKE;
            this.f16822a = cVar.f16822a;
            this.f16823b = cVar.f16823b;
            this.f16833l = cVar.f16833l;
            this.f16824c = cVar.f16824c;
            this.f16825d = cVar.f16825d;
            this.f16826e = cVar.f16826e;
            this.f16829h = cVar.f16829h;
            this.f16828g = cVar.f16828g;
            this.f16834m = cVar.f16834m;
            this.f16831j = cVar.f16831j;
            this.f16840s = cVar.f16840s;
            this.f16838q = cVar.f16838q;
            this.f16842u = cVar.f16842u;
            this.f16832k = cVar.f16832k;
            this.f16835n = cVar.f16835n;
            this.f16836o = cVar.f16836o;
            this.f16837p = cVar.f16837p;
            this.f16839r = cVar.f16839r;
            this.f16841t = cVar.f16841t;
            this.f16827f = cVar.f16827f;
            this.f16843v = cVar.f16843v;
            if (cVar.f16830i != null) {
                this.f16830i = new Rect(cVar.f16830i);
            }
        }
    }
}
