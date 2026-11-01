package e;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.ArrayMap;
import android.util.AttributeSet;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class f extends Drawable {

    public static final int f589f = 0;

    public C0006f f590a;

    public boolean f591b;

    public final float[] f592c;

    public final Matrix f593d;

    public final Rect f594e;

    public static class a extends d {
        public a() {
        }

        public a(a aVar) {
            super(aVar);
        }
    }

    public static class C0006f extends Drawable.ConstantState {

        public int f637a;

        public e f638b;

        public Bitmap f639c;

        public int f640d;

        public boolean f641e;

        public Paint f642f;

        public C0006f(C0006f c0006f) {
            if (c0006f != null) {
                this.f637a = c0006f.f637a;
                e eVar = new e(c0006f.f638b);
                this.f638b = eVar;
                if (c0006f.f638b.f627e != null) {
                    eVar.f627e = new Paint(c0006f.f638b.f627e);
                }
                if (c0006f.f638b.f626d != null) {
                    this.f638b.f626d = new Paint(c0006f.f638b.f626d);
                }
            }
        }

        @Override
        public final int getChangingConfigurations() {
            return this.f637a;
        }

        @Override
        public final Drawable newDrawable() {
            return new f(this);
        }

        @Override
        public final Drawable newDrawable(Resources resources) {
            return new f(this);
        }

        public C0006f() {
            this.f638b = new e();
        }
    }

    public f() {
        this.f592c = new float[9];
        this.f593d = new Matrix();
        this.f594e = new Rect();
        this.f590a = new C0006f();
    }

    public static f a(e.d dVar, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        f fVar = new f();
        C0006f c0006f = fVar.f590a;
        c0006f.f638b = new e();
        e.e eVarA = dVar.a(attributeSet, e.a.f578a, e.a.f579b);
        e eVar = fVar.f590a.f638b;
        eVar.f632j = eVarA.b(eVar.f632j, 4);
        float fB = eVarA.b(eVar.f633k, 5);
        eVar.f633k = fB;
        if (eVar.f632j <= 0.0f) {
            throw new XmlPullParserException("<vector> tag requires viewportWidth > 0");
        }
        if (fB <= 0.0f) {
            throw new XmlPullParserException("<vector> tag requires viewportHeight > 0");
        }
        int i2 = 2;
        eVar.f630h = eVarA.c(eVar.f630h, 2);
        int i3 = 1;
        float fC = eVarA.c(eVar.f631i, 1);
        eVar.f631i = fC;
        if (eVar.f630h <= 0.0f) {
            throw new XmlPullParserException("<vector> tag requires width > 0");
        }
        if (fC <= 0.0f) {
            throw new XmlPullParserException("<vector> tag requires height > 0");
        }
        int i4 = 3;
        eVar.f634l = (int) (eVarA.b(eVar.f634l / 255.0f, 3) * 255.0f);
        int i5 = 0;
        String string = eVarA.getString(0);
        if (string != null) {
            eVar.f635m = string;
            eVar.f636n.put(string, eVar);
        }
        eVarA.a();
        c0006f.f637a = fVar.getChangingConfigurations();
        c0006f.f641e = true;
        C0006f c0006f2 = fVar.f590a;
        e eVar2 = c0006f2.f638b;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(eVar2.f629g);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z2 = true;
        while (eventType != i3 && (xmlPullParser.getDepth() >= depth || eventType != i4)) {
            if (eventType == i2) {
                String name = xmlPullParser.getName();
                c cVar = (c) arrayDeque.peek();
                if (cVar != null) {
                    boolean zEquals = "path".equals(name);
                    ArrayList<Object> arrayList = cVar.f608b;
                    Map<String, Object> map = eVar2.f636n;
                    if (zEquals) {
                        b bVar = new b();
                        e.e eVarA2 = dVar.a(attributeSet, e.a.f582e, e.a.f583f);
                        String string2 = eVarA2.getString(i2);
                        if (string2 != null) {
                            bVar.f619a = d.a.a(string2);
                            String string3 = eVarA2.getString(i5);
                            if (string3 != null) {
                                bVar.f620b = string3;
                            }
                            bVar.f597f = eVarA2.e(i3, bVar.f597f);
                            bVar.f600i = eVarA2.b(bVar.f600i, 12);
                            int iD = eVarA2.d(8, -1);
                            Paint.Cap cap = bVar.f604m;
                            if (iD == 0) {
                                cap = Paint.Cap.BUTT;
                            } else if (iD == i3) {
                                cap = Paint.Cap.ROUND;
                            } else if (iD == i2) {
                                cap = Paint.Cap.SQUARE;
                            }
                            bVar.f604m = cap;
                            int iD2 = eVarA2.d(9, -1);
                            Paint.Join join = bVar.f605n;
                            if (iD2 == 0) {
                                join = Paint.Join.MITER;
                            } else if (iD2 == i3) {
                                join = Paint.Join.ROUND;
                            } else if (iD2 == i2) {
                                join = Paint.Join.BEVEL;
                            }
                            bVar.f605n = join;
                            bVar.f606o = eVarA2.b(bVar.f606o, 10);
                            bVar.f595d = eVarA2.e(3, bVar.f595d);
                            bVar.f598g = eVarA2.b(bVar.f598g, 11);
                            bVar.f596e = eVarA2.b(bVar.f596e, 4);
                            bVar.f602k = eVarA2.b(bVar.f602k, 6);
                            bVar.f603l = eVarA2.b(bVar.f603l, 7);
                            bVar.f601j = eVarA2.b(bVar.f601j, 5);
                            bVar.f599h = eVarA2.d(13, bVar.f599h);
                        }
                        eVarA2.a();
                        arrayList.add(bVar);
                        String str = bVar.f620b;
                        if (str != null) {
                            map.put(str, bVar);
                        }
                        c0006f2.f637a |= bVar.f621c;
                        z2 = false;
                    } else if ("clip-path".equals(name)) {
                        a aVar = new a();
                        e.e eVarA3 = dVar.a(attributeSet, e.a.f584g, e.a.f585h);
                        String string4 = eVarA3.getString(0);
                        if (string4 != null) {
                            aVar.f620b = string4;
                        }
                        String string5 = eVarA3.getString(i3);
                        if (string5 != null) {
                            aVar.f619a = d.a.a(string5);
                        }
                        eVarA3.a();
                        arrayList.add(aVar);
                        String str2 = aVar.f620b;
                        if (str2 != null) {
                            map.put(str2, aVar);
                        }
                        c0006f2.f637a = aVar.f621c | c0006f2.f637a;
                    } else if ("group".equals(name)) {
                        c cVar2 = new c();
                        e.e eVarA4 = dVar.a(attributeSet, e.a.f580c, e.a.f581d);
                        cVar2.f609c = eVarA4.b(cVar2.f609c, 5);
                        cVar2.f610d = eVarA4.b(cVar2.f610d, i3);
                        cVar2.f611e = eVarA4.b(cVar2.f611e, i2);
                        cVar2.f612f = eVarA4.b(cVar2.f612f, 3);
                        cVar2.f613g = eVarA4.b(cVar2.f613g, 4);
                        cVar2.f614h = eVarA4.b(cVar2.f614h, 6);
                        cVar2.f615i = eVarA4.b(cVar2.f615i, 7);
                        String string6 = eVarA4.getString(0);
                        if (string6 != null) {
                            cVar2.f618l = string6;
                        }
                        Matrix matrix = cVar2.f616j;
                        matrix.reset();
                        matrix.postTranslate(-cVar2.f610d, -cVar2.f611e);
                        matrix.postScale(cVar2.f612f, cVar2.f613g);
                        matrix.postRotate(cVar2.f609c, 0.0f, 0.0f);
                        matrix.postTranslate(cVar2.f614h + cVar2.f610d, cVar2.f615i + cVar2.f611e);
                        eVarA4.a();
                        arrayList.add(cVar2);
                        arrayDeque.push(cVar2);
                        String str3 = cVar2.f618l;
                        if (str3 != null) {
                            map.put(str3, cVar2);
                        }
                        c0006f2.f637a = cVar2.f617k | c0006f2.f637a;
                    }
                }
            } else if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                arrayDeque.pop();
            }
            eventType = xmlPullParser.next();
            i5 = 0;
            i2 = 2;
            i3 = 1;
            i4 = 3;
        }
        if (z2) {
            throw new XmlPullParserException("no path defined");
        }
        return fVar;
    }

    @Override
    public final boolean canApplyTheme() {
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x008f  */
    @Override
    public final void draw(Canvas canvas) {
        Paint paint;
        Rect rect = this.f594e;
        copyBounds(rect);
        if (rect.width() <= 0 || rect.height() <= 0) {
            return;
        }
        Matrix matrix = this.f593d;
        canvas.getMatrix(matrix);
        float[] fArr = this.f592c;
        matrix.getValues(fArr);
        float fAbs = Math.abs(fArr[0]);
        float fAbs2 = Math.abs(fArr[4]);
        float fAbs3 = Math.abs(fArr[1]);
        float fAbs4 = Math.abs(fArr[3]);
        if (fAbs3 != 0.0f || fAbs4 != 0.0f) {
            fAbs = 1.0f;
            fAbs2 = 1.0f;
        }
        int iWidth = (int) (rect.width() * fAbs);
        int iHeight = (int) (rect.height() * fAbs2);
        int iMin = Math.min(2048, iWidth);
        int iMin2 = Math.min(2048, iHeight);
        if (iMin <= 0 || iMin2 <= 0) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(rect.left, rect.top);
        rect.offsetTo(0, 0);
        C0006f c0006f = this.f590a;
        Bitmap bitmap = c0006f.f639c;
        if (bitmap == null) {
            c0006f.f639c = Bitmap.createBitmap(iMin, iMin2, Bitmap.Config.ARGB_8888);
            c0006f.f641e = true;
        } else {
            if (!(iMin == bitmap.getWidth() && iMin2 == c0006f.f639c.getHeight())) {
                c0006f.f639c = Bitmap.createBitmap(iMin, iMin2, Bitmap.Config.ARGB_8888);
                c0006f.f641e = true;
            }
        }
        C0006f c0006f2 = this.f590a;
        if (!(!c0006f2.f641e && c0006f2.f640d == c0006f2.f638b.f634l)) {
            c0006f2.f639c.eraseColor(0);
            Canvas canvas2 = new Canvas(c0006f2.f639c);
            e eVar = c0006f2.f638b;
            eVar.a(eVar.f629g, e.f622o, canvas2, iMin, iMin2);
            C0006f c0006f3 = this.f590a;
            c0006f3.f640d = c0006f3.f638b.f634l;
            c0006f3.f641e = false;
        }
        C0006f c0006f4 = this.f590a;
        if (c0006f4.f638b.f634l < 255) {
            if (c0006f4.f642f == null) {
                Paint paint2 = new Paint();
                c0006f4.f642f = paint2;
                paint2.setFilterBitmap(true);
            }
            c0006f4.f642f.setAlpha(c0006f4.f638b.f634l);
            paint = c0006f4.f642f;
        } else {
            paint = null;
        }
        canvas.drawBitmap(c0006f4.f639c, (Rect) null, rect, paint);
        canvas.restoreToCount(iSave);
    }

    @Override
    public final int getAlpha() {
        return this.f590a.f638b.f634l;
    }

    @Override
    public final int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f590a.f637a;
    }

    @Override
    public final Drawable.ConstantState getConstantState() {
        this.f590a.f637a = getChangingConfigurations();
        return this.f590a;
    }

    @Override
    public final int getIntrinsicHeight() {
        return (int) this.f590a.f638b.f631i;
    }

    @Override
    public final int getIntrinsicWidth() {
        return (int) this.f590a.f638b.f630h;
    }

    @Override
    public final int getOpacity() {
        return -3;
    }

    @Override
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
    }

    @Override
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
    }

    @Override
    public final boolean isStateful() {
        return false;
    }

    @Override
    public final Drawable mutate() {
        if (!this.f591b && super.mutate() == this) {
            this.f590a = new C0006f(this.f590a);
            this.f591b = true;
        }
        return this;
    }

    @Override
    public final boolean onStateChange(int[] iArr) {
        return false;
    }

    @Override
    public final void setAlpha(int i2) {
        e eVar = this.f590a.f638b;
        if (eVar.f634l != i2) {
            eVar.f634l = i2;
            invalidateSelf();
        }
    }

    @Override
    public final void setColorFilter(ColorFilter colorFilter) {
    }

    @Override
    public final void setTint(int i2) {
    }

    @Override
    public final void setTintList(ColorStateList colorStateList) {
    }

    @Override
    public final void setTintMode(PorterDuff.Mode mode) {
    }

    public static class d {

        public d.a.C0005a[] f619a;

        public String f620b;

        public final int f621c;

        public d() {
            this.f619a = null;
        }

        public d(d dVar) {
            d.a.C0005a[] c0005aArr = null;
            this.f619a = null;
            this.f620b = dVar.f620b;
            this.f621c = dVar.f621c;
            d.a.C0005a[] c0005aArr2 = dVar.f619a;
            if (c0005aArr2 != null) {
                c0005aArr = new d.a.C0005a[c0005aArr2.length];
                for (int i2 = 0; i2 < c0005aArr2.length; i2++) {
                    c0005aArr[i2] = new d.a.C0005a(c0005aArr2[i2]);
                }
            }
            this.f619a = c0005aArr;
        }
    }

    public f(C0006f c0006f) {
        this.f592c = new float[9];
        this.f593d = new Matrix();
        this.f594e = new Rect();
        this.f590a = c0006f;
    }

    public static class b extends d {

        public int f595d;

        public float f596e;

        public int f597f;

        public float f598g;

        public int f599h;

        public float f600i;

        public float f601j;

        public float f602k;

        public float f603l;

        public Paint.Cap f604m;

        public Paint.Join f605n;

        public float f606o;

        public b() {
            this.f595d = 0;
            this.f596e = 0.0f;
            this.f597f = 0;
            this.f598g = 1.0f;
            this.f599h = 0;
            this.f600i = 1.0f;
            this.f601j = 0.0f;
            this.f602k = 1.0f;
            this.f603l = 0.0f;
            this.f604m = Paint.Cap.BUTT;
            this.f605n = Paint.Join.MITER;
            this.f606o = 4.0f;
        }

        public b(b bVar) {
            super(bVar);
            this.f595d = 0;
            this.f596e = 0.0f;
            this.f597f = 0;
            this.f598g = 1.0f;
            this.f599h = 0;
            this.f600i = 1.0f;
            this.f601j = 0.0f;
            this.f602k = 1.0f;
            this.f603l = 0.0f;
            this.f604m = Paint.Cap.BUTT;
            this.f605n = Paint.Join.MITER;
            this.f606o = 4.0f;
            this.f595d = bVar.f595d;
            this.f596e = bVar.f596e;
            this.f598g = bVar.f598g;
            this.f597f = bVar.f597f;
            this.f599h = bVar.f599h;
            this.f600i = bVar.f600i;
            this.f601j = bVar.f601j;
            this.f602k = bVar.f602k;
            this.f603l = bVar.f603l;
            this.f604m = bVar.f604m;
            this.f605n = bVar.f605n;
            this.f606o = bVar.f606o;
        }
    }

    public static class e {

        public static final Matrix f622o = new Matrix();

        public final Path f623a;

        public final Path f624b;

        public final Matrix f625c;

        public Paint f626d;

        public Paint f627e;

        public PathMeasure f628f;

        public final c f629g;

        public float f630h;

        public float f631i;

        public float f632j;

        public float f633k;

        public int f634l;

        public String f635m;

        public final Map<String, Object> f636n;

        public e() {
            this.f625c = new Matrix();
            this.f630h = 0.0f;
            this.f631i = 0.0f;
            this.f632j = 0.0f;
            this.f633k = 0.0f;
            this.f634l = 255;
            this.f635m = null;
            this.f636n = Build.VERSION.SDK_INT < 19 ? new HashMap<>() : new ArrayMap<>();
            this.f629g = new c();
            this.f623a = new Path();
            this.f624b = new Path();
        }

        public final void a(c cVar, Matrix matrix, Canvas canvas, int i2, int i3) {
            int i4;
            Matrix matrix2;
            e eVar;
            Canvas canvas2;
            float f2;
            int i5;
            float f3;
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            float f9;
            float f10;
            float f11;
            float f12;
            float f13;
            float f14;
            float f15;
            float f16;
            float f17;
            float f18;
            e eVar2 = this;
            c cVar2 = cVar;
            Canvas canvas3 = canvas;
            cVar2.f607a.set(matrix);
            Matrix matrix3 = cVar2.f607a;
            matrix3.preConcat(cVar2.f616j);
            canvas.save();
            char c2 = 0;
            e eVar3 = eVar2;
            int i6 = 0;
            while (true) {
                ArrayList<Object> arrayList = cVar2.f608b;
                if (i6 >= arrayList.size()) {
                    canvas.restore();
                    return;
                }
                Object obj = arrayList.get(i6);
                if (obj instanceof c) {
                    a((c) obj, matrix3, canvas, i2, i3);
                } else {
                    if (obj instanceof d) {
                        d dVar = (d) obj;
                        float f19 = i2 / eVar3.f632j;
                        float f20 = i3 / eVar3.f633k;
                        float fMin = Math.min(f19, f20);
                        Matrix matrix4 = eVar3.f625c;
                        matrix4.set(matrix3);
                        matrix4.postScale(f19, f20);
                        float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
                        matrix3.mapVectors(fArr);
                        float fHypot = (float) Math.hypot(fArr[c2], fArr[1]);
                        i4 = i6;
                        float fHypot2 = (float) Math.hypot(fArr[2], fArr[3]);
                        float f21 = (fArr[0] * fArr[3]) - (fArr[1] * fArr[2]);
                        float fMax = Math.max(fHypot, fHypot2);
                        float fAbs = fMax > 0.0f ? Math.abs(f21) / fMax : 0.0f;
                        if (fAbs == 0.0f) {
                            eVar = eVar2;
                            canvas2 = canvas3;
                            matrix2 = matrix3;
                        } else {
                            dVar.getClass();
                            Path path = eVar3.f623a;
                            path.reset();
                            d.a.C0005a[] c0005aArr = dVar.f619a;
                            if (c0005aArr != null) {
                                float[] fArr2 = new float[6];
                                int length = c0005aArr.length;
                                int i7 = 0;
                                char c3 = 'm';
                                while (i7 < length) {
                                    d.a.C0005a c0005a = c0005aArr[i7];
                                    char c4 = c0005a.f517a;
                                    float f22 = fArr2[0];
                                    float f23 = fArr2[1];
                                    float f24 = fArr2[2];
                                    float f25 = fArr2[3];
                                    float f26 = fArr2[4];
                                    float f27 = fArr2[5];
                                    switch (c4) {
                                        case 'A':
                                        case 'a':
                                            i5 = 7;
                                            break;
                                        case 'C':
                                        case 'c':
                                            i5 = 6;
                                            break;
                                        case 'H':
                                        case 'V':
                                        case 'h':
                                        case 'v':
                                            i5 = 1;
                                            break;
                                        case 'Q':
                                        case 'S':
                                        case 'q':
                                        case 's':
                                            i5 = 4;
                                            break;
                                        case 'Z':
                                        case 'z':
                                            path.close();
                                            path.moveTo(f26, f27);
                                            f22 = f26;
                                            f24 = f22;
                                            f23 = f27;
                                            f25 = f23;
                                        default:
                                            i5 = 2;
                                            break;
                                    }
                                    float f28 = fAbs;
                                    float f29 = fMin;
                                    Matrix matrix5 = matrix3;
                                    d.a.C0005a[] c0005aArr2 = c0005aArr;
                                    int i8 = length;
                                    char c5 = c3;
                                    float f30 = f22;
                                    float f31 = f23;
                                    int i9 = 0;
                                    while (true) {
                                        float[] fArr3 = c0005a.f518b;
                                        if (i9 < fArr3.length) {
                                            if (c4 != 'A') {
                                                if (c4 != 'C') {
                                                    if (c4 == 'H') {
                                                        dVar = dVar;
                                                        matrix4 = matrix4;
                                                        c4 = c4;
                                                        path.lineTo(fArr3[i9], f31);
                                                        f30 = fArr3[i9];
                                                    } else if (c4 == 'Q') {
                                                        int i10 = i9 + 1;
                                                        int i11 = i9 + 2;
                                                        int i12 = i9 + 3;
                                                        path.quadTo(fArr3[i9], fArr3[i10], fArr3[i11], fArr3[i12]);
                                                        f3 = fArr3[i9];
                                                        f4 = fArr3[i10];
                                                        float f32 = fArr3[i11];
                                                        f5 = fArr3[i12];
                                                        f30 = f32;
                                                    } else if (c4 == 'V') {
                                                        dVar = dVar;
                                                        matrix4 = matrix4;
                                                        c4 = c4;
                                                        path.lineTo(f30, fArr3[i9]);
                                                        f31 = fArr3[i9];
                                                    } else if (c4 != 'a') {
                                                        if (c4 != 'c') {
                                                            if (c4 != 'h') {
                                                                if (c4 != 'q') {
                                                                    if (c4 != 'v') {
                                                                        if (c4 != 'L') {
                                                                            if (c4 != 'M') {
                                                                                matrix4 = matrix4;
                                                                                if (c4 == 'S') {
                                                                                    c4 = c4;
                                                                                    if (c5 == 'c' || c5 == 's' || c5 == 'C' || c5 == 'S') {
                                                                                        f30 = (f30 * 2.0f) - f24;
                                                                                        f31 = (f31 * 2.0f) - f25;
                                                                                    }
                                                                                    int i13 = i9 + 1;
                                                                                    int i14 = i9 + 2;
                                                                                    int i15 = i9 + 3;
                                                                                    path.cubicTo(f30, f31, fArr3[i9], fArr3[i13], fArr3[i14], fArr3[i15]);
                                                                                    float f33 = fArr3[i9];
                                                                                    float f34 = fArr3[i13];
                                                                                    f30 = fArr3[i14];
                                                                                    f25 = f34;
                                                                                    f31 = fArr3[i15];
                                                                                    f24 = f33;
                                                                                } else if (c4 == 'T') {
                                                                                    c4 = c4;
                                                                                    if (c5 == 'q' || c5 == 't' || c5 == 'Q' || c5 == 'T') {
                                                                                        f30 = (f30 * 2.0f) - f24;
                                                                                        f31 = (f31 * 2.0f) - f25;
                                                                                    }
                                                                                    int i16 = i9 + 1;
                                                                                    path.quadTo(f30, f31, fArr3[i9], fArr3[i16]);
                                                                                    f9 = fArr3[i9];
                                                                                    f10 = fArr3[i16];
                                                                                    dVar = dVar;
                                                                                } else if (c4 == 'l') {
                                                                                    int i17 = i9 + 1;
                                                                                    path.rLineTo(fArr3[i9], fArr3[i17]);
                                                                                    f30 += fArr3[i9];
                                                                                    f8 = fArr3[i17];
                                                                                } else if (c4 == 'm') {
                                                                                    c4 = c4;
                                                                                    float f35 = fArr3[i9];
                                                                                    f30 += f35;
                                                                                    float f36 = fArr3[i9 + 1];
                                                                                    f31 += f36;
                                                                                    if (i9 > 0) {
                                                                                        path.rLineTo(f35, f36);
                                                                                    } else {
                                                                                        path.rMoveTo(f35, f36);
                                                                                        f27 = f31;
                                                                                        f11 = f30;
                                                                                    }
                                                                                } else if (c4 == 's') {
                                                                                    if (c5 == 'c' || c5 == 's' || c5 == 'C' || c5 == 'S') {
                                                                                        f15 = f30 - f24;
                                                                                        f16 = f31 - f25;
                                                                                    } else {
                                                                                        f15 = 0.0f;
                                                                                        f16 = 0.0f;
                                                                                    }
                                                                                    int i18 = i9 + 1;
                                                                                    int i19 = i9 + 2;
                                                                                    int i20 = i9 + 3;
                                                                                    path.rCubicTo(f15, f16, fArr3[i9], fArr3[i18], fArr3[i19], fArr3[i20]);
                                                                                    f24 = fArr3[i9] + f30;
                                                                                    f25 = fArr3[i18] + f31;
                                                                                    f30 += fArr3[i19];
                                                                                    f8 = fArr3[i20];
                                                                                } else if (c4 != 't') {
                                                                                    c4 = c4;
                                                                                } else {
                                                                                    if (c5 == 'q' || c5 == 't' || c5 == 'Q' || c5 == 'T') {
                                                                                        f17 = f30 - f24;
                                                                                        f18 = f31 - f25;
                                                                                    } else {
                                                                                        f17 = 0.0f;
                                                                                        f18 = 0.0f;
                                                                                    }
                                                                                    int i21 = i9 + 1;
                                                                                    c4 = c4;
                                                                                    path.rQuadTo(f17, f18, fArr3[i9], fArr3[i21]);
                                                                                    float f37 = f17 + f30;
                                                                                    float f38 = f18 + f31;
                                                                                    f30 += fArr3[i9];
                                                                                    f31 += fArr3[i21];
                                                                                    f24 = f37;
                                                                                    f25 = f38;
                                                                                }
                                                                                dVar = dVar;
                                                                                f12 = f26;
                                                                                f11 = f30;
                                                                            } else {
                                                                                matrix4 = matrix4;
                                                                                c4 = c4;
                                                                                f13 = fArr3[i9];
                                                                                f14 = fArr3[i9 + 1];
                                                                                if (i9 > 0) {
                                                                                    path.lineTo(f13, f14);
                                                                                } else {
                                                                                    path.moveTo(f13, f14);
                                                                                    f11 = f13;
                                                                                    f27 = f14;
                                                                                }
                                                                            }
                                                                            dVar = dVar;
                                                                            f12 = f11;
                                                                            f31 = f27;
                                                                        } else {
                                                                            matrix4 = matrix4;
                                                                            c4 = c4;
                                                                            int i22 = i9 + 1;
                                                                            path.lineTo(fArr3[i9], fArr3[i22]);
                                                                            f13 = fArr3[i9];
                                                                            f14 = fArr3[i22];
                                                                        }
                                                                        f30 = f13;
                                                                        f31 = f14;
                                                                        dVar = dVar;
                                                                        f12 = f26;
                                                                        f11 = f30;
                                                                    } else {
                                                                        matrix4 = matrix4;
                                                                        path.rLineTo(0.0f, fArr3[i9]);
                                                                        f8 = fArr3[i9];
                                                                    }
                                                                    dVar = dVar;
                                                                    f31 += f8;
                                                                    f12 = f26;
                                                                    f11 = f30;
                                                                } else {
                                                                    int i23 = i9 + 1;
                                                                    int i24 = i9 + 2;
                                                                    int i25 = i9 + 3;
                                                                    path.rQuadTo(fArr3[i9], fArr3[i23], fArr3[i24], fArr3[i25]);
                                                                    f6 = fArr3[i9] + f30;
                                                                    f7 = fArr3[i23] + f31;
                                                                    f30 += fArr3[i24];
                                                                    f8 = fArr3[i25];
                                                                }
                                                                f25 = f31;
                                                                f31 = f10;
                                                                f24 = f30;
                                                                f30 = f9;
                                                            } else {
                                                                dVar = dVar;
                                                                matrix4 = matrix4;
                                                                c4 = c4;
                                                                path.rLineTo(fArr3[i9], 0.0f);
                                                                float f39 = f26;
                                                                f11 = fArr3[i9] + f30;
                                                                f12 = f39;
                                                            }
                                                            f9 = f11;
                                                            f10 = f31;
                                                            f30 = f24;
                                                            f31 = f25;
                                                            f26 = f12;
                                                            f25 = f31;
                                                            f31 = f10;
                                                            f24 = f30;
                                                            f30 = f9;
                                                        } else {
                                                            int i26 = i9 + 2;
                                                            int i27 = i9 + 3;
                                                            int i28 = i9 + 4;
                                                            int i29 = i9 + 5;
                                                            path.rCubicTo(fArr3[i9], fArr3[i9 + 1], fArr3[i26], fArr3[i27], fArr3[i28], fArr3[i29]);
                                                            f6 = fArr3[i26] + f30;
                                                            f7 = fArr3[i27] + f31;
                                                            f30 += fArr3[i28];
                                                            f8 = fArr3[i29];
                                                        }
                                                        f24 = f6;
                                                        f25 = f7;
                                                        f31 += f8;
                                                        f12 = f26;
                                                        f11 = f30;
                                                        f9 = f11;
                                                        f10 = f31;
                                                        f30 = f24;
                                                        f31 = f25;
                                                        f26 = f12;
                                                        f25 = f31;
                                                        f31 = f10;
                                                        f24 = f30;
                                                        f30 = f9;
                                                    } else {
                                                        int i30 = i9 + 5;
                                                        int i31 = i9 + 6;
                                                        d.a.C0005a.a(path, f30, f31, fArr3[i30] + f30, fArr3[i31] + f31, fArr3[i9], fArr3[i9 + 1], fArr3[i9 + 2], fArr3[i9 + 3] != 0.0f, fArr3[i9 + 4] != 0.0f);
                                                        f30 += fArr3[i30];
                                                        f31 += fArr3[i31];
                                                    }
                                                    i9 += i5;
                                                    matrix4 = matrix4;
                                                    c5 = c4;
                                                    c4 = c5;
                                                    dVar = dVar;
                                                } else {
                                                    int i32 = i9 + 2;
                                                    int i33 = i9 + 3;
                                                    int i34 = i9 + 4;
                                                    int i35 = i9 + 5;
                                                    path.cubicTo(fArr3[i9], fArr3[i9 + 1], fArr3[i32], fArr3[i33], fArr3[i34], fArr3[i35]);
                                                    float f40 = fArr3[i34];
                                                    float f41 = fArr3[i35];
                                                    f3 = fArr3[i32];
                                                    f4 = fArr3[i33];
                                                    f30 = f40;
                                                    f5 = f41;
                                                }
                                                f24 = f3;
                                                f25 = f4;
                                                f31 = f5;
                                                i9 += i5;
                                                matrix4 = matrix4;
                                                c5 = c4;
                                                c4 = c5;
                                                dVar = dVar;
                                            } else {
                                                int i36 = i9 + 5;
                                                int i37 = i9 + 6;
                                                d.a.C0005a.a(path, f30, f31, fArr3[i36], fArr3[i37], fArr3[i9], fArr3[i9 + 1], fArr3[i9 + 2], fArr3[i9 + 3] != 0.0f, fArr3[i9 + 4] != 0.0f);
                                                float f42 = fArr3[i36];
                                                f31 = fArr3[i37];
                                                f30 = f42;
                                            }
                                            f25 = f31;
                                            f24 = f30;
                                            i9 += i5;
                                            matrix4 = matrix4;
                                            c5 = c4;
                                            c4 = c5;
                                            dVar = dVar;
                                        }
                                    }
                                    fArr2[0] = f30;
                                    fArr2[1] = f31;
                                    fArr2[2] = f24;
                                    fArr2[3] = f25;
                                    fArr2[4] = f26;
                                    fArr2[5] = f27;
                                    i7++;
                                    c3 = c0005a.f517a;
                                    matrix3 = matrix5;
                                    c0005aArr = c0005aArr2;
                                    length = i8;
                                    fAbs = f28;
                                    fMin = f29;
                                    dVar = dVar;
                                }
                            }
                            d dVar2 = dVar;
                            float f43 = fAbs;
                            float f44 = fMin;
                            matrix2 = matrix3;
                            Matrix matrix6 = matrix4;
                            eVar = this;
                            Path path2 = eVar.f624b;
                            path2.reset();
                            if (dVar2 instanceof a) {
                                path2.addPath(path, matrix6);
                                canvas2 = canvas;
                                canvas2.clipPath(path2);
                                eVar3 = eVar;
                            } else {
                                canvas2 = canvas;
                                b bVar = (b) dVar2;
                                float f45 = bVar.f601j;
                                if (f45 != 0.0f || bVar.f602k != 1.0f) {
                                    float f46 = bVar.f603l;
                                    float f47 = (f45 + f46) % 1.0f;
                                    float f48 = (bVar.f602k + f46) % 1.0f;
                                    if (eVar.f628f == null) {
                                        eVar.f628f = new PathMeasure();
                                    }
                                    eVar.f628f.setPath(path, false);
                                    float length2 = eVar.f628f.getLength();
                                    float f49 = f47 * length2;
                                    float f50 = f48 * length2;
                                    path.reset();
                                    if (f49 > f50) {
                                        eVar.f628f.getSegment(f49, length2, path, true);
                                        f2 = 0.0f;
                                        eVar.f628f.getSegment(0.0f, f50, path, true);
                                    } else {
                                        f2 = 0.0f;
                                        eVar.f628f.getSegment(f49, f50, path, true);
                                    }
                                    path.rLineTo(f2, f2);
                                }
                                path2.addPath(path, matrix6);
                                if (bVar.f597f != 0) {
                                    if (eVar.f627e == null) {
                                        Paint paint = new Paint();
                                        eVar.f627e = paint;
                                        paint.setStyle(Paint.Style.FILL);
                                        eVar.f627e.setAntiAlias(true);
                                    }
                                    Paint paint2 = eVar.f627e;
                                    int i38 = bVar.f597f;
                                    float f51 = bVar.f600i;
                                    int i39 = f.f589f;
                                    paint2.setColor((i38 & 16777215) | (((int) (Color.alpha(i38) * f51)) << 24));
                                    paint2.setColorFilter(null);
                                    path2.setFillType(bVar.f599h == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                                    canvas2.drawPath(path2, paint2);
                                }
                                if (bVar.f595d != 0) {
                                    if (eVar.f626d == null) {
                                        Paint paint3 = new Paint();
                                        eVar.f626d = paint3;
                                        paint3.setStyle(Paint.Style.STROKE);
                                        eVar.f626d.setAntiAlias(true);
                                    }
                                    Paint paint4 = eVar.f626d;
                                    Paint.Join join = bVar.f605n;
                                    if (join != null) {
                                        paint4.setStrokeJoin(join);
                                    }
                                    Paint.Cap cap = bVar.f604m;
                                    if (cap != null) {
                                        paint4.setStrokeCap(cap);
                                    }
                                    paint4.setStrokeMiter(bVar.f606o);
                                    int i40 = bVar.f595d;
                                    float f52 = bVar.f598g;
                                    int i41 = f.f589f;
                                    paint4.setColor((16777215 & i40) | (((int) (Color.alpha(i40) * f52)) << 24));
                                    paint4.setColorFilter(null);
                                    paint4.setStrokeWidth(bVar.f596e * f44 * f43);
                                    canvas2.drawPath(path2, paint4);
                                }
                                eVar3 = eVar;
                            }
                            i6 = i4 + 1;
                            cVar2 = cVar;
                            eVar2 = eVar;
                            canvas3 = canvas2;
                            matrix3 = matrix2;
                            c2 = 0;
                        }
                    }
                    i6 = i4 + 1;
                    cVar2 = cVar;
                    eVar2 = eVar;
                    canvas3 = canvas2;
                    matrix3 = matrix2;
                    c2 = 0;
                }
                eVar = eVar2;
                canvas2 = canvas3;
                matrix2 = matrix3;
                i4 = i6;
                i6 = i4 + 1;
                cVar2 = cVar;
                eVar2 = eVar;
                canvas3 = canvas2;
                matrix3 = matrix2;
                c2 = 0;
            }
        }

        public e(e eVar) {
            this.f625c = new Matrix();
            this.f630h = 0.0f;
            this.f631i = 0.0f;
            this.f632j = 0.0f;
            this.f633k = 0.0f;
            this.f634l = 255;
            this.f635m = null;
            Map<String, Object> map = Build.VERSION.SDK_INT < 19 ? new HashMap<>() : new ArrayMap<>();
            this.f636n = map;
            this.f629g = new c(eVar.f629g, map);
            this.f623a = new Path(eVar.f623a);
            this.f624b = new Path(eVar.f624b);
            this.f630h = eVar.f630h;
            this.f631i = eVar.f631i;
            this.f632j = eVar.f632j;
            this.f633k = eVar.f633k;
            this.f634l = eVar.f634l;
            this.f635m = eVar.f635m;
            String str = eVar.f635m;
            if (str != null) {
                map.put(str, this);
            }
        }
    }

    public static class c {

        public final Matrix f607a;

        public final ArrayList<Object> f608b;

        public float f609c;

        public float f610d;

        public float f611e;

        public float f612f;

        public float f613g;

        public float f614h;

        public float f615i;

        public final Matrix f616j;

        public final int f617k;

        public String f618l;

        public c(c cVar, Map<String, Object> map) {
            d aVar;
            this.f607a = new Matrix();
            this.f608b = new ArrayList<>();
            this.f609c = 0.0f;
            this.f610d = 0.0f;
            this.f611e = 0.0f;
            this.f612f = 1.0f;
            this.f613g = 1.0f;
            this.f614h = 0.0f;
            this.f615i = 0.0f;
            Matrix matrix = new Matrix();
            this.f616j = matrix;
            this.f618l = null;
            this.f609c = cVar.f609c;
            this.f610d = cVar.f610d;
            this.f611e = cVar.f611e;
            this.f612f = cVar.f612f;
            this.f613g = cVar.f613g;
            this.f614h = cVar.f614h;
            this.f615i = cVar.f615i;
            String str = cVar.f618l;
            this.f618l = str;
            this.f617k = cVar.f617k;
            if (str != null) {
                map.put(str, this);
            }
            matrix.set(cVar.f616j);
            ArrayList<Object> arrayList = cVar.f608b;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                Object obj = arrayList.get(i2);
                if (obj instanceof c) {
                    this.f608b.add(new c((c) obj, map));
                } else {
                    if (obj instanceof b) {
                        aVar = new b((b) obj);
                    } else {
                        if (!(obj instanceof a)) {
                            throw new IllegalStateException("Unknown object in the tree!");
                        }
                        aVar = new a((a) obj);
                    }
                    this.f608b.add(aVar);
                    String str2 = aVar.f620b;
                    if (str2 != null) {
                        map.put(str2, aVar);
                    }
                }
            }
        }

        public c() {
            this.f607a = new Matrix();
            this.f608b = new ArrayList<>();
            this.f609c = 0.0f;
            this.f610d = 0.0f;
            this.f611e = 0.0f;
            this.f612f = 1.0f;
            this.f613g = 1.0f;
            this.f614h = 0.0f;
            this.f615i = 0.0f;
            this.f616j = new Matrix();
            this.f618l = null;
        }
    }
}
