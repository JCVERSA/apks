package androidx.vectordrawable.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import y0.k;

public class h extends androidx.vectordrawable.graphics.drawable.g {

    static final PorterDuff.Mode f14822k = PorterDuff.Mode.SRC_IN;

    private C0123h f14823b;

    private PorterDuffColorFilter f14824c;

    private ColorFilter f14825d;

    private boolean f14826e;

    private boolean f14827f;

    private Drawable.ConstantState f14828g;

    private final float[] f14829h;

    private final Matrix f14830i;

    private final Rect f14831j;

    private static class b extends f {
        b() {
        }

        private void f(TypedArray typedArray, XmlPullParser xmlPullParser) {
            String string = typedArray.getString(0);
            if (string != null) {
                this.f14858b = string;
            }
            String string2 = typedArray.getString(1);
            if (string2 != null) {
                this.f14857a = z0.e.d(string2);
            }
            this.f14859c = k.g(typedArray, xmlPullParser, "fillType", 2, 0);
        }

        @Override
        public boolean c() {
            return true;
        }

        public void e(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            if (k.j(xmlPullParser, "pathData")) {
                TypedArray typedArrayK = k.k(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.f14794d);
                f(typedArrayK, xmlPullParser);
                typedArrayK.recycle();
            }
        }

        b(b bVar) {
            super(bVar);
        }
    }

    private static abstract class e {
        private e() {
        }

        public boolean a() {
            return false;
        }

        public boolean b(int[] iArr) {
            return false;
        }
    }

    private static class C0123h extends Drawable.ConstantState {

        int f14878a;

        g f14879b;

        ColorStateList f14880c;

        PorterDuff.Mode f14881d;

        boolean f14882e;

        Bitmap f14883f;

        ColorStateList f14884g;

        PorterDuff.Mode f14885h;

        int f14886i;

        boolean f14887j;

        boolean f14888k;

        Paint f14889l;

        public C0123h(C0123h c0123h) {
            this.f14880c = null;
            this.f14881d = h.f14822k;
            if (c0123h != null) {
                this.f14878a = c0123h.f14878a;
                g gVar = new g(c0123h.f14879b);
                this.f14879b = gVar;
                if (c0123h.f14879b.f14866e != null) {
                    gVar.f14866e = new Paint(c0123h.f14879b.f14866e);
                }
                if (c0123h.f14879b.f14865d != null) {
                    this.f14879b.f14865d = new Paint(c0123h.f14879b.f14865d);
                }
                this.f14880c = c0123h.f14880c;
                this.f14881d = c0123h.f14881d;
                this.f14882e = c0123h.f14882e;
            }
        }

        public boolean a(int i10, int i11) {
            return i10 == this.f14883f.getWidth() && i11 == this.f14883f.getHeight();
        }

        public boolean b() {
            return !this.f14888k && this.f14884g == this.f14880c && this.f14885h == this.f14881d && this.f14887j == this.f14882e && this.f14886i == this.f14879b.getRootAlpha();
        }

        public void c(int i10, int i11) {
            if (this.f14883f == null || !a(i10, i11)) {
                this.f14883f = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
                this.f14888k = true;
            }
        }

        public void d(Canvas canvas, ColorFilter colorFilter, Rect rect) {
            canvas.drawBitmap(this.f14883f, (Rect) null, rect, e(colorFilter));
        }

        public Paint e(ColorFilter colorFilter) {
            if (!f() && colorFilter == null) {
                return null;
            }
            if (this.f14889l == null) {
                Paint paint = new Paint();
                this.f14889l = paint;
                paint.setFilterBitmap(true);
            }
            this.f14889l.setAlpha(this.f14879b.getRootAlpha());
            this.f14889l.setColorFilter(colorFilter);
            return this.f14889l;
        }

        public boolean f() {
            return this.f14879b.getRootAlpha() < 255;
        }

        public boolean g() {
            return this.f14879b.f();
        }

        @Override
        public int getChangingConfigurations() {
            return this.f14878a;
        }

        public boolean h(int[] iArr) {
            boolean zG = this.f14879b.g(iArr);
            this.f14888k |= zG;
            return zG;
        }

        public void i() {
            this.f14884g = this.f14880c;
            this.f14885h = this.f14881d;
            this.f14886i = this.f14879b.getRootAlpha();
            this.f14887j = this.f14882e;
            this.f14888k = false;
        }

        public void j(int i10, int i11) {
            this.f14883f.eraseColor(0);
            this.f14879b.b(new Canvas(this.f14883f), i10, i11, null);
        }

        @Override
        public Drawable newDrawable() {
            return new h(this);
        }

        @Override
        public Drawable newDrawable(Resources resources) {
            return new h(this);
        }

        public C0123h() {
            this.f14880c = null;
            this.f14881d = h.f14822k;
            this.f14879b = new g();
        }
    }

    h() {
        this.f14827f = true;
        this.f14829h = new float[9];
        this.f14830i = new Matrix();
        this.f14831j = new Rect();
        this.f14823b = new C0123h();
    }

    static int a(int i10, float f10) {
        return (i10 & 16777215) | (((int) (Color.alpha(i10) * f10)) << 24);
    }

    public static h b(Resources resources, int i10, Resources.Theme theme) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            h hVar = new h();
            hVar.f14821a = y0.h.e(resources, i10, theme);
            hVar.f14828g = new i(hVar.f14821a.getConstantState());
            return hVar;
        }
        try {
            XmlResourceParser xml = resources.getXml(i10);
            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next == 2) {
                return c(resources, xml, attributeSetAsAttributeSet, theme);
            }
            throw new XmlPullParserException("No start tag found");
        } catch (IOException e10) {
            Log.e("VectorDrawableCompat", "parser error", e10);
            return null;
        } catch (XmlPullParserException e11) {
            Log.e("VectorDrawableCompat", "parser error", e11);
            return null;
        }
    }

    public static h c(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        h hVar = new h();
        hVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return hVar;
    }

    private void e(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        C0123h c0123h = this.f14823b;
        g gVar = c0123h.f14879b;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(gVar.f14869h);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z10 = true;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                d dVar = (d) arrayDeque.peek();
                if ("path".equals(name)) {
                    c cVar = new c();
                    cVar.g(resources, attributeSet, theme, xmlPullParser);
                    dVar.f14845b.add(cVar);
                    if (cVar.getPathName() != null) {
                        gVar.f14877p.put(cVar.getPathName(), cVar);
                    }
                    c0123h.f14878a = cVar.f14860d | c0123h.f14878a;
                    z10 = false;
                } else if ("clip-path".equals(name)) {
                    b bVar = new b();
                    bVar.e(resources, attributeSet, theme, xmlPullParser);
                    dVar.f14845b.add(bVar);
                    if (bVar.getPathName() != null) {
                        gVar.f14877p.put(bVar.getPathName(), bVar);
                    }
                    c0123h.f14878a = bVar.f14860d | c0123h.f14878a;
                } else if ("group".equals(name)) {
                    d dVar2 = new d();
                    dVar2.c(resources, attributeSet, theme, xmlPullParser);
                    dVar.f14845b.add(dVar2);
                    arrayDeque.push(dVar2);
                    if (dVar2.getGroupName() != null) {
                        gVar.f14877p.put(dVar2.getGroupName(), dVar2);
                    }
                    c0123h.f14878a = dVar2.f14854k | c0123h.f14878a;
                }
            } else if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                arrayDeque.pop();
            }
            eventType = xmlPullParser.next();
        }
        if (z10) {
            throw new XmlPullParserException("no path defined");
        }
    }

    private boolean f() {
        return isAutoMirrored() && a1.a.f(this) == 1;
    }

    private static PorterDuff.Mode g(int i10, PorterDuff.Mode mode) {
        if (i10 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i10 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i10 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i10) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    private void i(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException {
        C0123h c0123h = this.f14823b;
        g gVar = c0123h.f14879b;
        c0123h.f14881d = g(k.g(typedArray, xmlPullParser, "tintMode", 6, -1), PorterDuff.Mode.SRC_IN);
        ColorStateList colorStateListC = k.c(typedArray, xmlPullParser, theme, "tint", 1);
        if (colorStateListC != null) {
            c0123h.f14880c = colorStateListC;
        }
        c0123h.f14882e = k.a(typedArray, xmlPullParser, "autoMirrored", 5, c0123h.f14882e);
        gVar.f14872k = k.f(typedArray, xmlPullParser, "viewportWidth", 7, gVar.f14872k);
        float f10 = k.f(typedArray, xmlPullParser, "viewportHeight", 8, gVar.f14873l);
        gVar.f14873l = f10;
        if (gVar.f14872k <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (f10 <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
        gVar.f14870i = typedArray.getDimension(3, gVar.f14870i);
        float dimension = typedArray.getDimension(2, gVar.f14871j);
        gVar.f14871j = dimension;
        if (gVar.f14870i <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires width > 0");
        }
        if (dimension <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires height > 0");
        }
        gVar.setAlpha(k.f(typedArray, xmlPullParser, "alpha", 4, gVar.getAlpha()));
        String string = typedArray.getString(0);
        if (string != null) {
            gVar.f14875n = string;
            gVar.f14877p.put(string, gVar);
        }
    }

    @Override
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
    }

    @Override
    public boolean canApplyTheme() {
        Drawable drawable = this.f14821a;
        if (drawable == null) {
            return false;
        }
        a1.a.b(drawable);
        return false;
    }

    @Override
    public void clearColorFilter() {
        super.clearColorFilter();
    }

    Object d(String str) {
        return this.f14823b.f14879b.f14877p.get(str);
    }

    @Override
    public void draw(Canvas canvas) {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        copyBounds(this.f14831j);
        if (this.f14831j.width() <= 0 || this.f14831j.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.f14825d;
        if (colorFilter == null) {
            colorFilter = this.f14824c;
        }
        canvas.getMatrix(this.f14830i);
        this.f14830i.getValues(this.f14829h);
        float fAbs = Math.abs(this.f14829h[0]);
        float fAbs2 = Math.abs(this.f14829h[4]);
        float fAbs3 = Math.abs(this.f14829h[1]);
        float fAbs4 = Math.abs(this.f14829h[3]);
        if (fAbs3 != 0.0f || fAbs4 != 0.0f) {
            fAbs = 1.0f;
            fAbs2 = 1.0f;
        }
        int iWidth = (int) (this.f14831j.width() * fAbs);
        int iHeight = (int) (this.f14831j.height() * fAbs2);
        int iMin = Math.min(2048, iWidth);
        int iMin2 = Math.min(2048, iHeight);
        if (iMin <= 0 || iMin2 <= 0) {
            return;
        }
        int iSave = canvas.save();
        Rect rect = this.f14831j;
        canvas.translate(rect.left, rect.top);
        if (f()) {
            canvas.translate(this.f14831j.width(), 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        this.f14831j.offsetTo(0, 0);
        this.f14823b.c(iMin, iMin2);
        if (!this.f14827f) {
            this.f14823b.j(iMin, iMin2);
        } else if (!this.f14823b.b()) {
            this.f14823b.j(iMin, iMin2);
            this.f14823b.i();
        }
        this.f14823b.d(canvas, colorFilter, this.f14831j);
        canvas.restoreToCount(iSave);
    }

    @Override
    public int getAlpha() {
        Drawable drawable = this.f14821a;
        return drawable != null ? a1.a.d(drawable) : this.f14823b.f14879b.getRootAlpha();
    }

    @Override
    public int getChangingConfigurations() {
        Drawable drawable = this.f14821a;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f14823b.getChangingConfigurations();
    }

    @Override
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f14821a;
        return drawable != null ? a1.a.e(drawable) : this.f14825d;
    }

    @Override
    public Drawable.ConstantState getConstantState() {
        if (this.f14821a != null && Build.VERSION.SDK_INT >= 24) {
            return new i(this.f14821a.getConstantState());
        }
        this.f14823b.f14878a = getChangingConfigurations();
        return this.f14823b;
    }

    @Override
    public Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override
    public int getIntrinsicHeight() {
        Drawable drawable = this.f14821a;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.f14823b.f14879b.f14871j;
    }

    @Override
    public int getIntrinsicWidth() {
        Drawable drawable = this.f14821a;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.f14823b.f14879b.f14870i;
    }

    @Override
    public int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override
    public int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override
    public int getOpacity() {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override
    public boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override
    public int[] getState() {
        return super.getState();
    }

    @Override
    public Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    void h(boolean z10) {
        this.f14827f = z10;
    }

    @Override
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override
    public void invalidateSelf() {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override
    public boolean isAutoMirrored() {
        Drawable drawable = this.f14821a;
        return drawable != null ? a1.a.h(drawable) : this.f14823b.f14882e;
    }

    @Override
    public boolean isStateful() {
        C0123h c0123h;
        ColorStateList colorStateList;
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            return drawable.isStateful();
        }
        return super.isStateful() || ((c0123h = this.f14823b) != null && (c0123h.g() || ((colorStateList = this.f14823b.f14880c) != null && colorStateList.isStateful())));
    }

    PorterDuffColorFilter j(PorterDuffColorFilter porterDuffColorFilter, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override
    public Drawable mutate() {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f14826e && super.mutate() == this) {
            this.f14823b = new C0123h(this.f14823b);
            this.f14826e = true;
        }
        return this;
    }

    @Override
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override
    protected boolean onStateChange(int[] iArr) {
        boolean z10;
        PorterDuff.Mode mode;
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        C0123h c0123h = this.f14823b;
        ColorStateList colorStateList = c0123h.f14880c;
        if (colorStateList == null || (mode = c0123h.f14881d) == null) {
            z10 = false;
        } else {
            this.f14824c = j(this.f14824c, colorStateList, mode);
            invalidateSelf();
            z10 = true;
        }
        if (!c0123h.g() || !c0123h.h(iArr)) {
            return z10;
        }
        invalidateSelf();
        return true;
    }

    @Override
    public void scheduleSelf(Runnable runnable, long j10) {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j10);
        } else {
            super.scheduleSelf(runnable, j10);
        }
    }

    @Override
    public void setAlpha(int i10) {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            drawable.setAlpha(i10);
        } else if (this.f14823b.f14879b.getRootAlpha() != i10) {
            this.f14823b.f14879b.setRootAlpha(i10);
            invalidateSelf();
        }
    }

    @Override
    public void setAutoMirrored(boolean z10) {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            a1.a.j(drawable, z10);
        } else {
            this.f14823b.f14882e = z10;
        }
    }

    @Override
    public void setChangingConfigurations(int i10) {
        super.setChangingConfigurations(i10);
    }

    @Override
    public void setColorFilter(int i10, PorterDuff.Mode mode) {
        super.setColorFilter(i10, mode);
    }

    @Override
    public void setFilterBitmap(boolean z10) {
        super.setFilterBitmap(z10);
    }

    @Override
    public void setHotspot(float f10, float f11) {
        super.setHotspot(f10, f11);
    }

    @Override
    public void setHotspotBounds(int i10, int i11, int i12, int i13) {
        super.setHotspotBounds(i10, i11, i12, i13);
    }

    @Override
    public boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    @Override
    public void setTint(int i10) {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            a1.a.n(drawable, i10);
        } else {
            setTintList(ColorStateList.valueOf(i10));
        }
    }

    @Override
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            a1.a.o(drawable, colorStateList);
            return;
        }
        C0123h c0123h = this.f14823b;
        if (c0123h.f14880c != colorStateList) {
            c0123h.f14880c = colorStateList;
            this.f14824c = j(this.f14824c, colorStateList, c0123h.f14881d);
            invalidateSelf();
        }
    }

    @Override
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            a1.a.p(drawable, mode);
            return;
        }
        C0123h c0123h = this.f14823b;
        if (c0123h.f14881d != mode) {
            c0123h.f14881d = mode;
            this.f14824c = j(this.f14824c, c0123h.f14880c, mode);
            invalidateSelf();
        }
    }

    @Override
    public boolean setVisible(boolean z10, boolean z11) {
        Drawable drawable = this.f14821a;
        return drawable != null ? drawable.setVisible(z10, z11) : super.setVisible(z10, z11);
    }

    @Override
    public void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    private static class i extends Drawable.ConstantState {

        private final Drawable.ConstantState f14890a;

        public i(Drawable.ConstantState constantState) {
            this.f14890a = constantState;
        }

        @Override
        public boolean canApplyTheme() {
            return this.f14890a.canApplyTheme();
        }

        @Override
        public int getChangingConfigurations() {
            return this.f14890a.getChangingConfigurations();
        }

        @Override
        public Drawable newDrawable() {
            h hVar = new h();
            hVar.f14821a = (VectorDrawable) this.f14890a.newDrawable();
            return hVar;
        }

        @Override
        public Drawable newDrawable(Resources resources) {
            h hVar = new h();
            hVar.f14821a = (VectorDrawable) this.f14890a.newDrawable(resources);
            return hVar;
        }

        @Override
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            h hVar = new h();
            hVar.f14821a = (VectorDrawable) this.f14890a.newDrawable(resources, theme);
            return hVar;
        }
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f14825d = colorFilter;
            invalidateSelf();
        }
    }

    private static abstract class f extends e {

        protected z0.e.b[] f14857a;

        String f14858b;

        int f14859c;

        int f14860d;

        public f() {
            super();
            this.f14857a = null;
            this.f14859c = 0;
        }

        public boolean c() {
            return false;
        }

        public void d(Path path) {
            path.reset();
            z0.e.b[] bVarArr = this.f14857a;
            if (bVarArr != null) {
                z0.e.b.i(bVarArr, path);
            }
        }

        public z0.e.b[] getPathData() {
            return this.f14857a;
        }

        public String getPathName() {
            return this.f14858b;
        }

        public void setPathData(z0.e.b[] bVarArr) {
            if (z0.e.b(this.f14857a, bVarArr)) {
                z0.e.k(this.f14857a, bVarArr);
            } else {
                this.f14857a = z0.e.f(bVarArr);
            }
        }

        public f(f fVar) {
            super();
            this.f14857a = null;
            this.f14859c = 0;
            this.f14858b = fVar.f14858b;
            this.f14860d = fVar.f14860d;
            this.f14857a = z0.e.f(fVar.f14857a);
        }
    }

    @Override
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            a1.a.g(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        C0123h c0123h = this.f14823b;
        c0123h.f14879b = new g();
        TypedArray typedArrayK = k.k(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.f14791a);
        i(typedArrayK, xmlPullParser, theme);
        typedArrayK.recycle();
        c0123h.f14878a = getChangingConfigurations();
        c0123h.f14888k = true;
        e(resources, xmlPullParser, attributeSet, theme);
        this.f14824c = j(this.f14824c, c0123h.f14880c, c0123h.f14881d);
    }

    h(C0123h c0123h) {
        this.f14827f = true;
        this.f14829h = new float[9];
        this.f14830i = new Matrix();
        this.f14831j = new Rect();
        this.f14823b = c0123h;
        this.f14824c = j(this.f14824c, c0123h.f14880c, c0123h.f14881d);
    }

    private static class c extends f {

        private int[] f14832e;

        y0.d f14833f;

        float f14834g;

        y0.d f14835h;

        float f14836i;

        float f14837j;

        float f14838k;

        float f14839l;

        float f14840m;

        Paint.Cap f14841n;

        Paint.Join f14842o;

        float f14843p;

        c() {
            this.f14834g = 0.0f;
            this.f14836i = 1.0f;
            this.f14837j = 1.0f;
            this.f14838k = 0.0f;
            this.f14839l = 1.0f;
            this.f14840m = 0.0f;
            this.f14841n = Paint.Cap.BUTT;
            this.f14842o = Paint.Join.MITER;
            this.f14843p = 4.0f;
        }

        private Paint.Cap e(int i10, Paint.Cap cap) {
            if (i10 == 0) {
                return Paint.Cap.BUTT;
            }
            if (i10 != 1) {
                return i10 != 2 ? cap : Paint.Cap.SQUARE;
            }
            return Paint.Cap.ROUND;
        }

        private Paint.Join f(int i10, Paint.Join join) {
            if (i10 == 0) {
                return Paint.Join.MITER;
            }
            if (i10 != 1) {
                return i10 != 2 ? join : Paint.Join.BEVEL;
            }
            return Paint.Join.ROUND;
        }

        private void h(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
            this.f14832e = null;
            if (k.j(xmlPullParser, "pathData")) {
                String string = typedArray.getString(0);
                if (string != null) {
                    this.f14858b = string;
                }
                String string2 = typedArray.getString(2);
                if (string2 != null) {
                    this.f14857a = z0.e.d(string2);
                }
                this.f14835h = k.e(typedArray, xmlPullParser, theme, "fillColor", 1, 0);
                this.f14837j = k.f(typedArray, xmlPullParser, "fillAlpha", 12, this.f14837j);
                this.f14841n = e(k.g(typedArray, xmlPullParser, "strokeLineCap", 8, -1), this.f14841n);
                this.f14842o = f(k.g(typedArray, xmlPullParser, "strokeLineJoin", 9, -1), this.f14842o);
                this.f14843p = k.f(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.f14843p);
                this.f14833f = k.e(typedArray, xmlPullParser, theme, "strokeColor", 3, 0);
                this.f14836i = k.f(typedArray, xmlPullParser, "strokeAlpha", 11, this.f14836i);
                this.f14834g = k.f(typedArray, xmlPullParser, "strokeWidth", 4, this.f14834g);
                this.f14839l = k.f(typedArray, xmlPullParser, "trimPathEnd", 6, this.f14839l);
                this.f14840m = k.f(typedArray, xmlPullParser, "trimPathOffset", 7, this.f14840m);
                this.f14838k = k.f(typedArray, xmlPullParser, "trimPathStart", 5, this.f14838k);
                this.f14859c = k.g(typedArray, xmlPullParser, "fillType", 13, this.f14859c);
            }
        }

        @Override
        public boolean a() {
            return this.f14835h.i() || this.f14833f.i();
        }

        @Override
        public boolean b(int[] iArr) {
            return this.f14833f.j(iArr) | this.f14835h.j(iArr);
        }

        public void g(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray typedArrayK = k.k(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.f14793c);
            h(typedArrayK, xmlPullParser, theme);
            typedArrayK.recycle();
        }

        float getFillAlpha() {
            return this.f14837j;
        }

        int getFillColor() {
            return this.f14835h.e();
        }

        float getStrokeAlpha() {
            return this.f14836i;
        }

        int getStrokeColor() {
            return this.f14833f.e();
        }

        float getStrokeWidth() {
            return this.f14834g;
        }

        float getTrimPathEnd() {
            return this.f14839l;
        }

        float getTrimPathOffset() {
            return this.f14840m;
        }

        float getTrimPathStart() {
            return this.f14838k;
        }

        void setFillAlpha(float f10) {
            this.f14837j = f10;
        }

        void setFillColor(int i10) {
            this.f14835h.k(i10);
        }

        void setStrokeAlpha(float f10) {
            this.f14836i = f10;
        }

        void setStrokeColor(int i10) {
            this.f14833f.k(i10);
        }

        void setStrokeWidth(float f10) {
            this.f14834g = f10;
        }

        void setTrimPathEnd(float f10) {
            this.f14839l = f10;
        }

        void setTrimPathOffset(float f10) {
            this.f14840m = f10;
        }

        void setTrimPathStart(float f10) {
            this.f14838k = f10;
        }

        c(c cVar) {
            super(cVar);
            this.f14834g = 0.0f;
            this.f14836i = 1.0f;
            this.f14837j = 1.0f;
            this.f14838k = 0.0f;
            this.f14839l = 1.0f;
            this.f14840m = 0.0f;
            this.f14841n = Paint.Cap.BUTT;
            this.f14842o = Paint.Join.MITER;
            this.f14843p = 4.0f;
            this.f14832e = cVar.f14832e;
            this.f14833f = cVar.f14833f;
            this.f14834g = cVar.f14834g;
            this.f14836i = cVar.f14836i;
            this.f14835h = cVar.f14835h;
            this.f14859c = cVar.f14859c;
            this.f14837j = cVar.f14837j;
            this.f14838k = cVar.f14838k;
            this.f14839l = cVar.f14839l;
            this.f14840m = cVar.f14840m;
            this.f14841n = cVar.f14841n;
            this.f14842o = cVar.f14842o;
            this.f14843p = cVar.f14843p;
        }
    }

    private static class g {

        private static final Matrix f14861q = new Matrix();

        private final Path f14862a;

        private final Path f14863b;

        private final Matrix f14864c;

        Paint f14865d;

        Paint f14866e;

        private PathMeasure f14867f;

        private int f14868g;

        final d f14869h;

        float f14870i;

        float f14871j;

        float f14872k;

        float f14873l;

        int f14874m;

        String f14875n;

        Boolean f14876o;

        final androidx.collection.a f14877p;

        public g() {
            this.f14864c = new Matrix();
            this.f14870i = 0.0f;
            this.f14871j = 0.0f;
            this.f14872k = 0.0f;
            this.f14873l = 0.0f;
            this.f14874m = 255;
            this.f14875n = null;
            this.f14876o = null;
            this.f14877p = new androidx.collection.a();
            this.f14869h = new d();
            this.f14862a = new Path();
            this.f14863b = new Path();
        }

        private static float a(float f10, float f11, float f12, float f13) {
            return (f10 * f13) - (f11 * f12);
        }

        private void c(d dVar, Matrix matrix, Canvas canvas, int i10, int i11, ColorFilter colorFilter) {
            dVar.f14844a.set(matrix);
            dVar.f14844a.preConcat(dVar.f14853j);
            canvas.save();
            for (int i12 = 0; i12 < dVar.f14845b.size(); i12++) {
                e eVar = (e) dVar.f14845b.get(i12);
                if (eVar instanceof d) {
                    c((d) eVar, dVar.f14844a, canvas, i10, i11, colorFilter);
                } else if (eVar instanceof f) {
                    d(dVar, (f) eVar, canvas, i10, i11, colorFilter);
                }
            }
            canvas.restore();
        }

        private void d(d dVar, f fVar, Canvas canvas, int i10, int i11, ColorFilter colorFilter) {
            float f10 = i10 / this.f14872k;
            float f11 = i11 / this.f14873l;
            float fMin = Math.min(f10, f11);
            Matrix matrix = dVar.f14844a;
            this.f14864c.set(matrix);
            this.f14864c.postScale(f10, f11);
            float fE = e(matrix);
            if (fE == 0.0f) {
                return;
            }
            fVar.d(this.f14862a);
            Path path = this.f14862a;
            this.f14863b.reset();
            if (fVar.c()) {
                this.f14863b.setFillType(fVar.f14859c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                this.f14863b.addPath(path, this.f14864c);
                canvas.clipPath(this.f14863b);
                return;
            }
            c cVar = (c) fVar;
            float f12 = cVar.f14838k;
            if (f12 != 0.0f || cVar.f14839l != 1.0f) {
                float f13 = cVar.f14840m;
                float f14 = (f12 + f13) % 1.0f;
                float f15 = (cVar.f14839l + f13) % 1.0f;
                if (this.f14867f == null) {
                    this.f14867f = new PathMeasure();
                }
                this.f14867f.setPath(this.f14862a, false);
                float length = this.f14867f.getLength();
                float f16 = f14 * length;
                float f17 = f15 * length;
                path.reset();
                if (f16 > f17) {
                    this.f14867f.getSegment(f16, length, path, true);
                    this.f14867f.getSegment(0.0f, f17, path, true);
                } else {
                    this.f14867f.getSegment(f16, f17, path, true);
                }
                path.rLineTo(0.0f, 0.0f);
            }
            this.f14863b.addPath(path, this.f14864c);
            if (cVar.f14835h.l()) {
                y0.d dVar2 = cVar.f14835h;
                if (this.f14866e == null) {
                    Paint paint = new Paint(1);
                    this.f14866e = paint;
                    paint.setStyle(Paint.Style.FILL);
                }
                Paint paint2 = this.f14866e;
                if (dVar2.h()) {
                    Shader shaderF = dVar2.f();
                    shaderF.setLocalMatrix(this.f14864c);
                    paint2.setShader(shaderF);
                    paint2.setAlpha(Math.round(cVar.f14837j * 255.0f));
                } else {
                    paint2.setShader(null);
                    paint2.setAlpha(255);
                    paint2.setColor(h.a(dVar2.e(), cVar.f14837j));
                }
                paint2.setColorFilter(colorFilter);
                this.f14863b.setFillType(cVar.f14859c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                canvas.drawPath(this.f14863b, paint2);
            }
            if (cVar.f14833f.l()) {
                y0.d dVar3 = cVar.f14833f;
                if (this.f14865d == null) {
                    Paint paint3 = new Paint(1);
                    this.f14865d = paint3;
                    paint3.setStyle(Paint.Style.STROKE);
                }
                Paint paint4 = this.f14865d;
                Paint.Join join = cVar.f14842o;
                if (join != null) {
                    paint4.setStrokeJoin(join);
                }
                Paint.Cap cap = cVar.f14841n;
                if (cap != null) {
                    paint4.setStrokeCap(cap);
                }
                paint4.setStrokeMiter(cVar.f14843p);
                if (dVar3.h()) {
                    Shader shaderF2 = dVar3.f();
                    shaderF2.setLocalMatrix(this.f14864c);
                    paint4.setShader(shaderF2);
                    paint4.setAlpha(Math.round(cVar.f14836i * 255.0f));
                } else {
                    paint4.setShader(null);
                    paint4.setAlpha(255);
                    paint4.setColor(h.a(dVar3.e(), cVar.f14836i));
                }
                paint4.setColorFilter(colorFilter);
                paint4.setStrokeWidth(cVar.f14834g * fMin * fE);
                canvas.drawPath(this.f14863b, paint4);
            }
        }

        private float e(Matrix matrix) {
            float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
            matrix.mapVectors(fArr);
            float fHypot = (float) Math.hypot(fArr[0], fArr[1]);
            float fHypot2 = (float) Math.hypot(fArr[2], fArr[3]);
            float fA = a(fArr[0], fArr[1], fArr[2], fArr[3]);
            float fMax = Math.max(fHypot, fHypot2);
            if (fMax > 0.0f) {
                return Math.abs(fA) / fMax;
            }
            return 0.0f;
        }

        public void b(Canvas canvas, int i10, int i11, ColorFilter colorFilter) {
            c(this.f14869h, f14861q, canvas, i10, i11, colorFilter);
        }

        public boolean f() {
            if (this.f14876o == null) {
                this.f14876o = Boolean.valueOf(this.f14869h.a());
            }
            return this.f14876o.booleanValue();
        }

        public boolean g(int[] iArr) {
            return this.f14869h.b(iArr);
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public int getRootAlpha() {
            return this.f14874m;
        }

        public void setAlpha(float f10) {
            setRootAlpha((int) (f10 * 255.0f));
        }

        public void setRootAlpha(int i10) {
            this.f14874m = i10;
        }

        public g(g gVar) {
            this.f14864c = new Matrix();
            this.f14870i = 0.0f;
            this.f14871j = 0.0f;
            this.f14872k = 0.0f;
            this.f14873l = 0.0f;
            this.f14874m = 255;
            this.f14875n = null;
            this.f14876o = null;
            androidx.collection.a aVar = new androidx.collection.a();
            this.f14877p = aVar;
            this.f14869h = new d(gVar.f14869h, aVar);
            this.f14862a = new Path(gVar.f14862a);
            this.f14863b = new Path(gVar.f14863b);
            this.f14870i = gVar.f14870i;
            this.f14871j = gVar.f14871j;
            this.f14872k = gVar.f14872k;
            this.f14873l = gVar.f14873l;
            this.f14868g = gVar.f14868g;
            this.f14874m = gVar.f14874m;
            this.f14875n = gVar.f14875n;
            String str = gVar.f14875n;
            if (str != null) {
                aVar.put(str, this);
            }
            this.f14876o = gVar.f14876o;
        }
    }

    private static class d extends e {

        final Matrix f14844a;

        final ArrayList f14845b;

        float f14846c;

        private float f14847d;

        private float f14848e;

        private float f14849f;

        private float f14850g;

        private float f14851h;

        private float f14852i;

        final Matrix f14853j;

        int f14854k;

        private int[] f14855l;

        private String f14856m;

        public d(d dVar, androidx.collection.a aVar) {
            f bVar;
            super();
            this.f14844a = new Matrix();
            this.f14845b = new ArrayList();
            this.f14846c = 0.0f;
            this.f14847d = 0.0f;
            this.f14848e = 0.0f;
            this.f14849f = 1.0f;
            this.f14850g = 1.0f;
            this.f14851h = 0.0f;
            this.f14852i = 0.0f;
            Matrix matrix = new Matrix();
            this.f14853j = matrix;
            this.f14856m = null;
            this.f14846c = dVar.f14846c;
            this.f14847d = dVar.f14847d;
            this.f14848e = dVar.f14848e;
            this.f14849f = dVar.f14849f;
            this.f14850g = dVar.f14850g;
            this.f14851h = dVar.f14851h;
            this.f14852i = dVar.f14852i;
            this.f14855l = dVar.f14855l;
            String str = dVar.f14856m;
            this.f14856m = str;
            this.f14854k = dVar.f14854k;
            if (str != null) {
                aVar.put(str, this);
            }
            matrix.set(dVar.f14853j);
            ArrayList arrayList = dVar.f14845b;
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                Object obj = arrayList.get(i10);
                if (obj instanceof d) {
                    this.f14845b.add(new d((d) obj, aVar));
                } else {
                    if (obj instanceof c) {
                        bVar = new c((c) obj);
                    } else {
                        if (!(obj instanceof b)) {
                            throw new IllegalStateException("Unknown object in the tree!");
                        }
                        bVar = new b((b) obj);
                    }
                    this.f14845b.add(bVar);
                    Object obj2 = bVar.f14858b;
                    if (obj2 != null) {
                        aVar.put(obj2, bVar);
                    }
                }
            }
        }

        private void d() {
            this.f14853j.reset();
            this.f14853j.postTranslate(-this.f14847d, -this.f14848e);
            this.f14853j.postScale(this.f14849f, this.f14850g);
            this.f14853j.postRotate(this.f14846c, 0.0f, 0.0f);
            this.f14853j.postTranslate(this.f14851h + this.f14847d, this.f14852i + this.f14848e);
        }

        private void e(TypedArray typedArray, XmlPullParser xmlPullParser) {
            this.f14855l = null;
            this.f14846c = k.f(typedArray, xmlPullParser, "rotation", 5, this.f14846c);
            this.f14847d = typedArray.getFloat(1, this.f14847d);
            this.f14848e = typedArray.getFloat(2, this.f14848e);
            this.f14849f = k.f(typedArray, xmlPullParser, "scaleX", 3, this.f14849f);
            this.f14850g = k.f(typedArray, xmlPullParser, "scaleY", 4, this.f14850g);
            this.f14851h = k.f(typedArray, xmlPullParser, "translateX", 6, this.f14851h);
            this.f14852i = k.f(typedArray, xmlPullParser, "translateY", 7, this.f14852i);
            String string = typedArray.getString(0);
            if (string != null) {
                this.f14856m = string;
            }
            d();
        }

        @Override
        public boolean a() {
            for (int i10 = 0; i10 < this.f14845b.size(); i10++) {
                if (((e) this.f14845b.get(i10)).a()) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public boolean b(int[] iArr) {
            boolean zB = false;
            for (int i10 = 0; i10 < this.f14845b.size(); i10++) {
                zB |= ((e) this.f14845b.get(i10)).b(iArr);
            }
            return zB;
        }

        public void c(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray typedArrayK = k.k(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.f14792b);
            e(typedArrayK, xmlPullParser);
            typedArrayK.recycle();
        }

        public String getGroupName() {
            return this.f14856m;
        }

        public Matrix getLocalMatrix() {
            return this.f14853j;
        }

        public float getPivotX() {
            return this.f14847d;
        }

        public float getPivotY() {
            return this.f14848e;
        }

        public float getRotation() {
            return this.f14846c;
        }

        public float getScaleX() {
            return this.f14849f;
        }

        public float getScaleY() {
            return this.f14850g;
        }

        public float getTranslateX() {
            return this.f14851h;
        }

        public float getTranslateY() {
            return this.f14852i;
        }

        public void setPivotX(float f10) {
            if (f10 != this.f14847d) {
                this.f14847d = f10;
                d();
            }
        }

        public void setPivotY(float f10) {
            if (f10 != this.f14848e) {
                this.f14848e = f10;
                d();
            }
        }

        public void setRotation(float f10) {
            if (f10 != this.f14846c) {
                this.f14846c = f10;
                d();
            }
        }

        public void setScaleX(float f10) {
            if (f10 != this.f14849f) {
                this.f14849f = f10;
                d();
            }
        }

        public void setScaleY(float f10) {
            if (f10 != this.f14850g) {
                this.f14850g = f10;
                d();
            }
        }

        public void setTranslateX(float f10) {
            if (f10 != this.f14851h) {
                this.f14851h = f10;
                d();
            }
        }

        public void setTranslateY(float f10) {
            if (f10 != this.f14852i) {
                this.f14852i = f10;
                d();
            }
        }

        public d() {
            super();
            this.f14844a = new Matrix();
            this.f14845b = new ArrayList();
            this.f14846c = 0.0f;
            this.f14847d = 0.0f;
            this.f14848e = 0.0f;
            this.f14849f = 1.0f;
            this.f14850g = 1.0f;
            this.f14851h = 0.0f;
            this.f14852i = 0.0f;
            this.f14853j = new Matrix();
            this.f14856m = null;
        }
    }
}
