package com.caverock.androidsvg;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Base64;
import android.util.Log;
import androidx.media3.common.C;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.Stack;

public class b {
    public static HashSet i;
    public Canvas a;
    public float b;
    public SVG c;
    public h d;
    public Stack e;
    public Stack f;
    public Stack g;
    public CSSParser.m h = null;

    public static class a {
        public static final int[] a;
        public static final int[] b;
        public static final int[] c;

        static {
            int[] iArr = new int[SVG.Style.LineJoin.values().length];
            c = iArr;
            try {
                iArr[SVG.Style.LineJoin.Miter.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                c[SVG.Style.LineJoin.Round.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                c[SVG.Style.LineJoin.Bevel.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[SVG.Style.LineCap.values().length];
            b = iArr2;
            try {
                iArr2[SVG.Style.LineCap.Butt.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                b[SVG.Style.LineCap.Round.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                b[SVG.Style.LineCap.Square.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr3 = new int[PreserveAspectRatio.Alignment.values().length];
            a = iArr3;
            try {
                iArr3[PreserveAspectRatio.Alignment.xMidYMin.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[PreserveAspectRatio.Alignment.xMidYMid.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[PreserveAspectRatio.Alignment.xMidYMax.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[PreserveAspectRatio.Alignment.xMaxYMin.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[PreserveAspectRatio.Alignment.xMaxYMid.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                a[PreserveAspectRatio.Alignment.xMaxYMax.ordinal()] = 6;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                a[PreserveAspectRatio.Alignment.xMinYMid.ordinal()] = 7;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                a[PreserveAspectRatio.Alignment.xMinYMax.ordinal()] = 8;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    public class C0032b implements SVG.w {
        public float b;
        public float c;
        public boolean h;
        public List a = new ArrayList();
        public c d = null;
        public boolean e = false;
        public boolean f = true;
        public int g = -1;

        public C0032b(SVG.v vVar) {
            if (vVar == null) {
                return;
            }
            vVar.h(this);
            if (this.h) {
                this.d.b((c) this.a.get(this.g));
                this.a.set(this.g, this.d);
                this.h = false;
            }
            c cVar = this.d;
            if (cVar != null) {
                this.a.add(cVar);
            }
        }

        @Override
        public void a(float f, float f2) {
            if (this.h) {
                this.d.b((c) this.a.get(this.g));
                this.a.set(this.g, this.d);
                this.h = false;
            }
            c cVar = this.d;
            if (cVar != null) {
                this.a.add(cVar);
            }
            this.b = f;
            this.c = f2;
            this.d = b.this.new c(f, f2, 0.0f, 0.0f);
            this.g = this.a.size();
        }

        @Override
        public void b(float f, float f2) {
            this.d.a(f, f2);
            this.a.add(this.d);
            b bVar = b.this;
            c cVar = this.d;
            this.d = bVar.new c(f, f2, f - cVar.a, f2 - cVar.b);
            this.h = false;
        }

        @Override
        public void c(float f, float f2, float f3, float f4) {
            this.d.a(f, f2);
            this.a.add(this.d);
            this.d = b.this.new c(f3, f4, f3 - f, f4 - f2);
            this.h = false;
        }

        @Override
        public void close() {
            this.a.add(this.d);
            b(this.b, this.c);
            this.h = true;
        }

        @Override
        public void d(float f, float f2, float f3, float f4, float f5, float f6) {
            if (this.f || this.e) {
                this.d.a(f, f2);
                this.a.add(this.d);
                this.e = false;
            }
            this.d = b.this.new c(f5, f6, f5 - f3, f6 - f4);
            this.h = false;
        }

        @Override
        public void e(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5) {
            this.e = true;
            this.f = false;
            c cVar = this.d;
            b.h(cVar.a, cVar.b, f, f2, f3, z, z2, f4, f5, this);
            this.f = true;
            this.h = false;
        }

        public List f() {
            return this.a;
        }
    }

    public class c {
        public float a;
        public float b;
        public float c;
        public float d;
        public boolean e = false;

        public c(float f, float f2, float f3, float f4) {
            this.c = 0.0f;
            this.d = 0.0f;
            this.a = f;
            this.b = f2;
            double dSqrt = Math.sqrt((f3 * f3) + (f4 * f4));
            if (dSqrt != 0.0d) {
                this.c = (float) (((double) f3) / dSqrt);
                this.d = (float) (((double) f4) / dSqrt);
            }
        }

        public void a(float f, float f2) {
            float f3 = f - this.a;
            float f4 = f2 - this.b;
            double dSqrt = Math.sqrt((f3 * f3) + (f4 * f4));
            if (dSqrt != 0.0d) {
                f3 = (float) (((double) f3) / dSqrt);
                f4 = (float) (((double) f4) / dSqrt);
            }
            float f5 = this.c;
            if (f3 != (-f5) || f4 != (-this.d)) {
                this.c = f5 + f3;
                this.d += f4;
            } else {
                this.e = true;
                this.c = -f4;
                this.d = f3;
            }
        }

        public void b(c cVar) {
            float f = cVar.c;
            float f2 = this.c;
            if (f == (-f2)) {
                float f3 = cVar.d;
                if (f3 == (-this.d)) {
                    this.e = true;
                    this.c = -f3;
                    this.d = cVar.c;
                    return;
                }
            }
            this.c = f2 + f;
            this.d += cVar.d;
        }

        public String toString() {
            return "(" + this.a + StringUtils.COMMA + this.b + " " + this.c + StringUtils.COMMA + this.d + ")";
        }
    }

    public class d implements SVG.w {
        public Path a = new Path();
        public float b;
        public float c;

        public d(SVG.v vVar) {
            if (vVar == null) {
                return;
            }
            vVar.h(this);
        }

        @Override
        public void a(float f, float f2) {
            this.a.moveTo(f, f2);
            this.b = f;
            this.c = f2;
        }

        @Override
        public void b(float f, float f2) {
            this.a.lineTo(f, f2);
            this.b = f;
            this.c = f2;
        }

        @Override
        public void c(float f, float f2, float f3, float f4) {
            this.a.quadTo(f, f2, f3, f4);
            this.b = f3;
            this.c = f4;
        }

        @Override
        public void close() {
            this.a.close();
        }

        @Override
        public void d(float f, float f2, float f3, float f4, float f5, float f6) {
            this.a.cubicTo(f, f2, f3, f4, f5, f6);
            this.b = f5;
            this.c = f6;
        }

        @Override
        public void e(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5) {
            b.h(this.b, this.c, f, f2, f3, z, z2, f4, f5, this);
            this.b = f4;
            this.c = f5;
        }

        public Path f() {
            return this.a;
        }
    }

    public class e extends f {
        public Path e;

        public e(Path path, float f, float f2) {
            super(f, f2);
            this.e = path;
        }

        @Override
        public void b(String str) {
            if (b.this.Y0()) {
                if (b.this.d.b) {
                    b.this.a.drawTextOnPath(str, this.e, this.b, this.c, b.this.d.d);
                }
                if (b.this.d.c) {
                    b.this.a.drawTextOnPath(str, this.e, this.b, this.c, b.this.d.e);
                }
            }
            this.b += b.this.d.d.measureText(str);
        }
    }

    public class f extends j {
        public float b;
        public float c;

        public f(float f, float f2) {
            super(b.this, null);
            this.b = f;
            this.c = f2;
        }

        @Override
        public void b(String str) {
            b.y("TextSequence render", new Object[0]);
            if (b.this.Y0()) {
                if (b.this.d.b) {
                    b.this.a.drawText(str, this.b, this.c, b.this.d.d);
                }
                if (b.this.d.c) {
                    b.this.a.drawText(str, this.b, this.c, b.this.d.e);
                }
            }
            this.b += b.this.d.d.measureText(str);
        }
    }

    public class g extends j {
        public float b;
        public float c;
        public Path d;

        public g(float f, float f2, Path path) {
            super(b.this, null);
            this.b = f;
            this.c = f2;
            this.d = path;
        }

        @Override
        public boolean a(SVG.w0 w0Var) {
            if (!(w0Var instanceof SVG.x0)) {
                return true;
            }
            b.Z0("Using <textPath> elements in a clip path is not supported.", new Object[0]);
            return false;
        }

        @Override
        public void b(String str) {
            if (b.this.Y0()) {
                Path path = new Path();
                b.this.d.d.getTextPath(str, 0, str.length(), this.b, this.c, path);
                this.d.addPath(path);
            }
            this.b += b.this.d.d.measureText(str);
        }
    }

    public class i extends j {
        public float b;
        public float c;
        public RectF d;

        public i(float f, float f2) {
            super(b.this, null);
            this.d = new RectF();
            this.b = f;
            this.c = f2;
        }

        @Override
        public boolean a(SVG.w0 w0Var) {
            if (!(w0Var instanceof SVG.x0)) {
                return true;
            }
            SVG.x0 x0Var = (SVG.x0) w0Var;
            SVG.l0 l0VarU = w0Var.a.u(x0Var.o);
            if (l0VarU == null) {
                b.F("TextPath path reference '%s' not found", x0Var.o);
                return false;
            }
            SVG.u uVar = (SVG.u) l0VarU;
            Path pathF = b.this.new d(uVar.o).f();
            Matrix matrix = uVar.n;
            if (matrix != null) {
                pathF.transform(matrix);
            }
            RectF rectF = new RectF();
            pathF.computeBounds(rectF, true);
            this.d.union(rectF);
            return false;
        }

        @Override
        public void b(String str) {
            if (b.this.Y0()) {
                Rect rect = new Rect();
                b.this.d.d.getTextBounds(str, 0, str.length(), rect);
                RectF rectF = new RectF(rect);
                rectF.offset(this.b, this.c);
                this.d.union(rectF);
            }
            this.b += b.this.d.d.measureText(str);
        }
    }

    public abstract class j {
        public j() {
        }

        public boolean a(SVG.w0 w0Var) {
            return true;
        }

        public abstract void b(String str);

        public j(b bVar, a aVar) {
            this();
        }
    }

    public b(Canvas canvas, float f2) {
        this.a = canvas;
        this.b = f2;
    }

    public static void F(String str, Object... objArr) {
        Log.e("SVGAndroidRenderer", String.format(str, objArr));
    }

    public static synchronized void V() {
        HashSet hashSet = new HashSet();
        i = hashSet;
        hashSet.add("Structure");
        i.add("BasicStructure");
        i.add("ConditionalProcessing");
        i.add("Image");
        i.add("Style");
        i.add("ViewportAttribute");
        i.add("Shape");
        i.add("BasicText");
        i.add("PaintAttribute");
        i.add("BasicPaintAttribute");
        i.add("OpacityAttribute");
        i.add("BasicGraphicsAttribute");
        i.add("Marker");
        i.add("Gradient");
        i.add("Pattern");
        i.add("Clip");
        i.add("BasicClip");
        i.add("Mask");
        i.add("View");
    }

    public static void Z0(String str, Object... objArr) {
        Log.w("SVGAndroidRenderer", String.format(str, objArr));
    }

    public static void h(float f2, float f3, float f4, float f5, float f6, boolean z, boolean z2, float f7, float f8, SVG.w wVar) {
        if (f2 == f7 && f3 == f8) {
            return;
        }
        if (f4 == 0.0f || f5 == 0.0f) {
            wVar.b(f7, f8);
            return;
        }
        float fAbs = Math.abs(f4);
        float fAbs2 = Math.abs(f5);
        double radians = Math.toRadians(((double) f6) % 360.0d);
        double dCos = Math.cos(radians);
        double dSin = Math.sin(radians);
        double d2 = ((double) (f2 - f7)) / 2.0d;
        double d3 = ((double) (f3 - f8)) / 2.0d;
        double d4 = (dCos * d2) + (dSin * d3);
        double d5 = ((-dSin) * d2) + (d3 * dCos);
        double d6 = fAbs * fAbs;
        double d7 = fAbs2 * fAbs2;
        double d8 = d4 * d4;
        double d9 = d5 * d5;
        double d10 = (d8 / d6) + (d9 / d7);
        if (d10 > 0.99999d) {
            double dSqrt = Math.sqrt(d10) * 1.00001d;
            fAbs = (float) (((double) fAbs) * dSqrt);
            fAbs2 = (float) (dSqrt * ((double) fAbs2));
            d6 = fAbs * fAbs;
            d7 = fAbs2 * fAbs2;
        }
        double d11 = z == z2 ? -1.0d : 1.0d;
        double d12 = d6 * d7;
        double d13 = d6 * d9;
        double d14 = d7 * d8;
        double d15 = ((d12 - d13) - d14) / (d13 + d14);
        if (d15 < 0.0d) {
            d15 = 0.0d;
        }
        double dSqrt2 = d11 * Math.sqrt(d15);
        double d16 = fAbs;
        double d17 = fAbs2;
        double d18 = ((d16 * d5) / d17) * dSqrt2;
        float f9 = fAbs;
        float f10 = fAbs2;
        double d19 = dSqrt2 * (-((d17 * d4) / d16));
        double d20 = (((double) (f2 + f7)) / 2.0d) + ((dCos * d18) - (dSin * d19));
        double d21 = (((double) (f3 + f8)) / 2.0d) + (dSin * d18) + (dCos * d19);
        double d22 = (d4 - d18) / d16;
        double d23 = (d5 - d19) / d17;
        double d24 = ((-d4) - d18) / d16;
        double d25 = ((-d5) - d19) / d17;
        double d26 = (d22 * d22) + (d23 * d23);
        double dAcos = (d23 < 0.0d ? -1.0d : 1.0d) * Math.acos(d22 / Math.sqrt(d26));
        double dV = ((d22 * d25) - (d23 * d24) < 0.0d ? -1.0d : 1.0d) * v(((d22 * d24) + (d23 * d25)) / Math.sqrt(d26 * ((d24 * d24) + (d25 * d25))));
        if (!z2 && dV > 0.0d) {
            dV -= 6.283185307179586d;
        } else if (z2 && dV < 0.0d) {
            dV += 6.283185307179586d;
        }
        float[] fArrI = i(dAcos % 6.283185307179586d, dV % 6.283185307179586d);
        Matrix matrix = new Matrix();
        matrix.postScale(f9, f10);
        matrix.postRotate(f6);
        matrix.postTranslate((float) d20, (float) d21);
        matrix.mapPoints(fArrI);
        fArrI[fArrI.length - 2] = f7;
        fArrI[fArrI.length - 1] = f8;
        for (int i2 = 0; i2 < fArrI.length; i2 += 6) {
            wVar.d(fArrI[i2], fArrI[i2 + 1], fArrI[i2 + 2], fArrI[i2 + 3], fArrI[i2 + 4], fArrI[i2 + 5]);
        }
    }

    public static float[] i(double d2, double d3) {
        int iCeil = (int) Math.ceil((Math.abs(d3) * 2.0d) / 3.141592653589793d);
        double d4 = d3 / ((double) iCeil);
        double d5 = d4 / 2.0d;
        double dSin = (Math.sin(d5) * 1.3333333333333333d) / (Math.cos(d5) + 1.0d);
        float[] fArr = new float[iCeil * 6];
        int i2 = 0;
        int i3 = 0;
        while (i2 < iCeil) {
            double d6 = d2 + (((double) i2) * d4);
            double dCos = Math.cos(d6);
            double dSin2 = Math.sin(d6);
            double d7 = d4;
            fArr[i3] = (float) (dCos - (dSin * dSin2));
            fArr[i3 + 1] = (float) (dSin2 + (dCos * dSin));
            double d8 = d6 + d7;
            double dCos2 = Math.cos(d8);
            double dSin3 = Math.sin(d8);
            fArr[i3 + 2] = (float) ((dSin * dSin3) + dCos2);
            fArr[i3 + 3] = (float) (dSin3 - (dSin * dCos2));
            int i4 = i3 + 5;
            fArr[i3 + 4] = (float) dCos2;
            i3 += 6;
            fArr[i4] = (float) dSin3;
            i2++;
            d4 = d7;
        }
        return fArr;
    }

    public static double v(double d2) {
        if (d2 < -1.0d) {
            return 3.141592653589793d;
        }
        if (d2 > 1.0d) {
            return 0.0d;
        }
        return Math.acos(d2);
    }

    public static int w(float f2) {
        int i2 = (int) (f2 * 256.0f);
        if (i2 < 0) {
            return 0;
        }
        if (i2 > 255) {
            return 255;
        }
        return i2;
    }

    public static int x(int i2, float f2) {
        int i3 = 255;
        int iRound = Math.round(((i2 >> 24) & 255) * f2);
        if (iRound < 0) {
            i3 = 0;
        } else if (iRound <= 255) {
            i3 = iRound;
        }
        return (i2 & 16777215) | (i3 << 24);
    }

    public static void y(String str, Object... objArr) {
    }

    public final boolean A() {
        Boolean bool = this.d.a.B;
        if (bool != null) {
            return bool.booleanValue();
        }
        return true;
    }

    public final void A0(SVG.l0 l0Var) {
        if (l0Var instanceof SVG.s) {
            return;
        }
        S0();
        u(l0Var);
        if (l0Var instanceof SVG.d0) {
            x0((SVG.d0) l0Var);
        } else if (l0Var instanceof SVG.b1) {
            E0((SVG.b1) l0Var);
        } else if (l0Var instanceof SVG.q0) {
            B0((SVG.q0) l0Var);
        } else if (l0Var instanceof SVG.l) {
            q0((SVG.l) l0Var);
        } else if (l0Var instanceof SVG.n) {
            r0((SVG.n) l0Var);
        } else if (l0Var instanceof SVG.u) {
            t0((SVG.u) l0Var);
        } else if (l0Var instanceof SVG.a0) {
            w0((SVG.a0) l0Var);
        } else if (l0Var instanceof SVG.d) {
            o0((SVG.d) l0Var);
        } else if (l0Var instanceof SVG.i) {
            p0((SVG.i) l0Var);
        } else if (l0Var instanceof SVG.p) {
            s0((SVG.p) l0Var);
        } else if (l0Var instanceof SVG.z) {
            v0((SVG.z) l0Var);
        } else if (l0Var instanceof SVG.y) {
            u0((SVG.y) l0Var);
        } else if (l0Var instanceof SVG.u0) {
            D0((SVG.u0) l0Var);
        }
        R0();
    }

    public final void B(SVG.i0 i0Var, Path path) {
        SVG.m0 m0Var = this.d.a.c;
        if (m0Var instanceof SVG.t) {
            SVG.l0 l0VarU = this.c.u(((SVG.t) m0Var).b);
            if (l0VarU instanceof SVG.x) {
                L(i0Var, path, (SVG.x) l0VarU);
                return;
            }
        }
        this.a.drawPath(path, this.d.d);
    }

    public final void B0(SVG.q0 q0Var) {
        y("Switch render", new Object[0]);
        W0(this.d, q0Var);
        if (A()) {
            Matrix matrix = q0Var.o;
            if (matrix != null) {
                this.a.concat(matrix);
            }
            p(q0Var);
            boolean zM0 = m0();
            K0(q0Var);
            if (zM0) {
                j0(q0Var);
            }
            U0(q0Var);
        }
    }

    public final void C(Path path) {
        h hVar = this.d;
        if (hVar.a.M != SVG.Style.VectorEffect.NonScalingStroke) {
            this.a.drawPath(path, hVar.e);
            return;
        }
        Matrix matrix = this.a.getMatrix();
        Path path2 = new Path();
        path.transform(matrix, path2);
        this.a.setMatrix(new Matrix());
        Shader shader = this.d.e.getShader();
        Matrix matrix2 = new Matrix();
        if (shader != null) {
            shader.getLocalMatrix(matrix2);
            Matrix matrix3 = new Matrix(matrix2);
            matrix3.postConcat(matrix);
            shader.setLocalMatrix(matrix3);
        }
        this.a.drawPath(path2, this.d.e);
        this.a.setMatrix(matrix);
        if (shader != null) {
            shader.setLocalMatrix(matrix2);
        }
    }

    public final void C0(SVG.r0 r0Var, SVG.b bVar) {
        y("Symbol render", new Object[0]);
        if (bVar.c == 0.0f || bVar.d == 0.0f) {
            return;
        }
        PreserveAspectRatio preserveAspectRatio = r0Var.o;
        if (preserveAspectRatio == null) {
            preserveAspectRatio = PreserveAspectRatio.e;
        }
        W0(this.d, r0Var);
        h hVar = this.d;
        hVar.f = bVar;
        if (!hVar.a.w.booleanValue()) {
            SVG.b bVar2 = this.d.f;
            O0(bVar2.a, bVar2.b, bVar2.c, bVar2.d);
        }
        SVG.b bVar3 = r0Var.p;
        if (bVar3 != null) {
            this.a.concat(o(this.d.f, bVar3, preserveAspectRatio));
            this.d.g = r0Var.p;
        } else {
            Canvas canvas = this.a;
            SVG.b bVar4 = this.d.f;
            canvas.translate(bVar4.a, bVar4.b);
        }
        boolean zM0 = m0();
        F0(r0Var, true);
        if (zM0) {
            j0(r0Var);
        }
        U0(r0Var);
    }

    public final float D(float f2, float f3, float f4, float f5) {
        return (f2 * f4) + (f3 * f5);
    }

    public final void D0(SVG.u0 u0Var) {
        y("Text render", new Object[0]);
        W0(this.d, u0Var);
        if (A()) {
            Matrix matrix = u0Var.s;
            if (matrix != null) {
                this.a.concat(matrix);
            }
            List list = u0Var.o;
            float fG = 0.0f;
            float f2 = (list == null || list.size() == 0) ? 0.0f : ((SVG.o) u0Var.o.get(0)).f(this);
            List list2 = u0Var.p;
            float fG2 = (list2 == null || list2.size() == 0) ? 0.0f : ((SVG.o) u0Var.p.get(0)).g(this);
            List list3 = u0Var.q;
            float f3 = (list3 == null || list3.size() == 0) ? 0.0f : ((SVG.o) u0Var.q.get(0)).f(this);
            List list4 = u0Var.r;
            if (list4 != null && list4.size() != 0) {
                fG = ((SVG.o) u0Var.r.get(0)).g(this);
            }
            SVG.Style.TextAnchor textAnchorO = O();
            if (textAnchorO != SVG.Style.TextAnchor.Start) {
                float fN = n(u0Var);
                if (textAnchorO == SVG.Style.TextAnchor.Middle) {
                    fN /= 2.0f;
                }
                f2 -= fN;
            }
            if (u0Var.h == null) {
                i iVar = new i(f2, fG2);
                E(u0Var, iVar);
                RectF rectF = iVar.d;
                u0Var.h = new SVG.b(rectF.left, rectF.top, rectF.width(), iVar.d.height());
            }
            U0(u0Var);
            r(u0Var);
            p(u0Var);
            boolean zM0 = m0();
            E(u0Var, new f(f2 + f3, fG2 + fG));
            if (zM0) {
                j0(u0Var);
            }
        }
    }

    public final void E(SVG.w0 w0Var, j jVar) {
        if (A()) {
            Iterator it = w0Var.i.iterator();
            boolean z = true;
            while (it.hasNext()) {
                SVG.l0 l0Var = (SVG.l0) it.next();
                if (l0Var instanceof SVG.a1) {
                    jVar.b(T0(((SVG.a1) l0Var).c, z, !it.hasNext()));
                } else {
                    l0(l0Var, jVar);
                }
                z = false;
            }
        }
    }

    public final void E0(SVG.b1 b1Var) {
        y("Use render", new Object[0]);
        SVG.o oVar = b1Var.s;
        if (oVar == null || !oVar.i()) {
            SVG.o oVar2 = b1Var.t;
            if (oVar2 == null || !oVar2.i()) {
                W0(this.d, b1Var);
                if (A()) {
                    SVG.l0 l0VarU = b1Var.a.u(b1Var.p);
                    if (l0VarU == null) {
                        F("Use reference '%s' not found", b1Var.p);
                        return;
                    }
                    Matrix matrix = b1Var.o;
                    if (matrix != null) {
                        this.a.concat(matrix);
                    }
                    SVG.o oVar3 = b1Var.q;
                    float f2 = oVar3 != null ? oVar3.f(this) : 0.0f;
                    SVG.o oVar4 = b1Var.r;
                    this.a.translate(f2, oVar4 != null ? oVar4.g(this) : 0.0f);
                    p(b1Var);
                    boolean zM0 = m0();
                    i0(b1Var);
                    if (l0VarU instanceof SVG.d0) {
                        SVG.b bVarF0 = f0(null, null, b1Var.s, b1Var.t);
                        S0();
                        y0((SVG.d0) l0VarU, bVarF0);
                        R0();
                    } else if (l0VarU instanceof SVG.r0) {
                        SVG.o oVar5 = b1Var.s;
                        if (oVar5 == null) {
                            oVar5 = new SVG.o(100.0f, SVG.Unit.percent);
                        }
                        SVG.o oVar6 = b1Var.t;
                        if (oVar6 == null) {
                            oVar6 = new SVG.o(100.0f, SVG.Unit.percent);
                        }
                        SVG.b bVarF1 = f0(null, null, oVar5, oVar6);
                        S0();
                        C0((SVG.r0) l0VarU, bVarF1);
                        R0();
                    } else {
                        A0(l0VarU);
                    }
                    h0();
                    if (zM0) {
                        j0(b1Var);
                    }
                    U0(b1Var);
                }
            }
        }
    }

    public final void F0(SVG.h0 h0Var, boolean z) {
        if (z) {
            i0(h0Var);
        }
        Iterator it = h0Var.getChildren().iterator();
        while (it.hasNext()) {
            A0((SVG.l0) it.next());
        }
        if (z) {
            h0();
        }
    }

    public final void G(SVG.w0 w0Var, StringBuilder sb) {
        Iterator it = w0Var.i.iterator();
        boolean z = true;
        while (it.hasNext()) {
            SVG.l0 l0Var = (SVG.l0) it.next();
            if (l0Var instanceof SVG.w0) {
                G((SVG.w0) l0Var, sb);
            } else if (l0Var instanceof SVG.a1) {
                sb.append(T0(((SVG.a1) l0Var).c, z, !it.hasNext()));
            }
            z = false;
        }
    }

    public void G0(SVG svg, com.caverock.androidsvg.a aVar) {
        SVG.b bVar;
        PreserveAspectRatio preserveAspectRatio;
        if (aVar == null) {
            throw new NullPointerException("renderOptions shouldn't be null");
        }
        this.c = svg;
        SVG.d0 d0VarP = svg.p();
        if (d0VarP == null) {
            Z0("Nothing to render. Document is empty.", new Object[0]);
            return;
        }
        if (aVar.e()) {
            SVG.j0 j0VarJ = this.c.j(aVar.e);
            if (j0VarJ == null || !(j0VarJ instanceof SVG.c1)) {
                Log.w("SVGAndroidRenderer", String.format("View element with id \"%s\" not found.", aVar.e));
                return;
            }
            SVG.c1 c1Var = (SVG.c1) j0VarJ;
            bVar = c1Var.p;
            if (bVar == null) {
                Log.w("SVGAndroidRenderer", String.format("View element with id \"%s\" is missing a viewBox attribute.", aVar.e));
                return;
            }
            preserveAspectRatio = c1Var.o;
        } else {
            bVar = aVar.f() ? aVar.d : d0VarP.p;
            preserveAspectRatio = aVar.c() ? aVar.b : d0VarP.o;
        }
        if (aVar.b()) {
            svg.a(aVar.a);
        }
        if (aVar.d()) {
            CSSParser.m mVar = new CSSParser.m();
            this.h = mVar;
            mVar.a = svg.j(aVar.c);
        }
        N0();
        u(d0VarP);
        S0();
        SVG.b bVar2 = new SVG.b(aVar.f);
        SVG.o oVar = d0VarP.s;
        if (oVar != null) {
            bVar2.c = oVar.e(this, bVar2.c);
        }
        SVG.o oVar2 = d0VarP.t;
        if (oVar2 != null) {
            bVar2.d = oVar2.e(this, bVar2.d);
        }
        z0(d0VarP, bVar2, bVar, preserveAspectRatio);
        R0();
        if (aVar.b()) {
            svg.b();
        }
    }

    public final void H(SVG.j jVar, String str) {
        SVG.l0 l0VarU = jVar.a.u(str);
        if (l0VarU == null) {
            Z0("Gradient reference '%s' not found", str);
            return;
        }
        if (!(l0VarU instanceof SVG.j)) {
            F("Gradient href attributes must point to other gradient elements", new Object[0]);
            return;
        }
        if (l0VarU == jVar) {
            F("Circular reference in gradient href attribute '%s'", str);
            return;
        }
        SVG.j jVar2 = (SVG.j) l0VarU;
        if (jVar.i == null) {
            jVar.i = jVar2.i;
        }
        if (jVar.j == null) {
            jVar.j = jVar2.j;
        }
        if (jVar.k == null) {
            jVar.k = jVar2.k;
        }
        if (jVar.h.isEmpty()) {
            jVar.h = jVar2.h;
        }
        try {
            if (jVar instanceof SVG.k0) {
                I((SVG.k0) jVar, (SVG.k0) l0VarU);
            } else {
                J((SVG.o0) jVar, (SVG.o0) l0VarU);
            }
        } catch (ClassCastException unused) {
        }
        String str2 = jVar2.l;
        if (str2 != null) {
            H(jVar, str2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0033  */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0101, code lost:
    
        if (r7 != 8) goto L68;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void H0(SVG.q qVar, c cVar) {
        float fFloatValue;
        float f2;
        float f3;
        float f4;
        S0();
        Float f5 = qVar.v;
        float f6 = 0.0f;
        if (f5 == null) {
            fFloatValue = 0.0f;
        } else if (Float.isNaN(f5.floatValue())) {
            float f7 = cVar.c;
            if (f7 == 0.0f && cVar.d == 0.0f) {
                fFloatValue = 0.0f;
            } else {
                fFloatValue = (float) Math.toDegrees(Math.atan2(cVar.d, f7));
            }
        } else {
            fFloatValue = qVar.v.floatValue();
        }
        float fC = qVar.q ? 1.0f : this.d.a.h.c(this.b);
        this.d = M(qVar);
        Matrix matrix = new Matrix();
        matrix.preTranslate(cVar.a, cVar.b);
        matrix.preRotate(fFloatValue);
        matrix.preScale(fC, fC);
        SVG.o oVar = qVar.r;
        float f8 = oVar != null ? oVar.f(this) : 0.0f;
        SVG.o oVar2 = qVar.s;
        float fG = oVar2 != null ? oVar2.g(this) : 0.0f;
        SVG.o oVar3 = qVar.t;
        float f9 = oVar3 != null ? oVar3.f(this) : 3.0f;
        SVG.o oVar4 = qVar.u;
        float fG2 = oVar4 != null ? oVar4.g(this) : 3.0f;
        SVG.b bVar = qVar.p;
        if (bVar != null) {
            float fMax = f9 / bVar.c;
            float f10 = fG2 / bVar.d;
            PreserveAspectRatio preserveAspectRatio = qVar.o;
            if (preserveAspectRatio == null) {
                preserveAspectRatio = PreserveAspectRatio.e;
            }
            if (!preserveAspectRatio.equals(PreserveAspectRatio.d)) {
                fMax = preserveAspectRatio.b() == PreserveAspectRatio.Scale.slice ? Math.max(fMax, f10) : Math.min(fMax, f10);
                f10 = fMax;
            }
            matrix.preTranslate((-f8) * fMax, (-fG) * f10);
            this.a.concat(matrix);
            SVG.b bVar2 = qVar.p;
            float f11 = bVar2.c * fMax;
            float f12 = bVar2.d * f10;
            int[] iArr = a.a;
            switch (iArr[preserveAspectRatio.a().ordinal()]) {
                case 1:
                case 2:
                case 3:
                    f2 = (f9 - f11) / 2.0f;
                    f3 = 0.0f - f2;
                    break;
                case 4:
                case 5:
                case 6:
                    f2 = f9 - f11;
                    f3 = 0.0f - f2;
                    break;
                default:
                    f3 = 0.0f;
                    break;
            }
            int i2 = iArr[preserveAspectRatio.a().ordinal()];
            if (i2 == 2) {
                f4 = (fG2 - f12) / 2.0f;
                f6 = 0.0f - f4;
            } else {
                if (i2 != 3) {
                    if (i2 != 5) {
                        if (i2 != 6) {
                            if (i2 != 7) {
                            }
                        }
                    }
                    f4 = (fG2 - f12) / 2.0f;
                    f6 = 0.0f - f4;
                }
                f4 = fG2 - f12;
                f6 = 0.0f - f4;
            }
            if (!this.d.a.w.booleanValue()) {
                O0(f3, f6, f9, fG2);
            }
            matrix.reset();
            matrix.preScale(fMax, f10);
            this.a.concat(matrix);
        } else {
            matrix.preTranslate(-f8, -fG);
            this.a.concat(matrix);
            if (!this.d.a.w.booleanValue()) {
                O0(0.0f, 0.0f, f9, fG2);
            }
        }
        boolean zM0 = m0();
        F0(qVar, false);
        if (zM0) {
            j0(qVar);
        }
        R0();
    }

    public final void I(SVG.k0 k0Var, SVG.k0 k0Var2) {
        if (k0Var.m == null) {
            k0Var.m = k0Var2.m;
        }
        if (k0Var.n == null) {
            k0Var.n = k0Var2.n;
        }
        if (k0Var.o == null) {
            k0Var.o = k0Var2.o;
        }
        if (k0Var.p == null) {
            k0Var.p = k0Var2.p;
        }
    }

    public final void I0(SVG.k kVar) {
        SVG.q qVar;
        SVG.q qVar2;
        SVG.q qVar3;
        List listK;
        int size;
        SVG.Style style = this.d.a;
        String str = style.y;
        if (str == null && style.z == null && style.A == null) {
            return;
        }
        if (str == null) {
            qVar = null;
        } else {
            SVG.l0 l0VarU = kVar.a.u(str);
            if (l0VarU != null) {
                qVar = (SVG.q) l0VarU;
            } else {
                F("Marker reference '%s' not found", this.d.a.y);
                qVar = null;
            }
        }
        String str2 = this.d.a.z;
        if (str2 == null) {
            qVar2 = null;
        } else {
            SVG.l0 l0VarU2 = kVar.a.u(str2);
            if (l0VarU2 != null) {
                qVar2 = (SVG.q) l0VarU2;
            } else {
                F("Marker reference '%s' not found", this.d.a.z);
                qVar2 = null;
            }
        }
        String str3 = this.d.a.A;
        if (str3 == null) {
            qVar3 = null;
        } else {
            SVG.l0 l0VarU3 = kVar.a.u(str3);
            if (l0VarU3 != null) {
                qVar3 = (SVG.q) l0VarU3;
            } else {
                F("Marker reference '%s' not found", this.d.a.A);
                qVar3 = null;
            }
        }
        if (kVar instanceof SVG.u) {
            listK = new C0032b(((SVG.u) kVar).o).f();
        } else {
            listK = kVar instanceof SVG.p ? k((SVG.p) kVar) : l((SVG.y) kVar);
        }
        if (listK == null || (size = listK.size()) == 0) {
            return;
        }
        SVG.Style style2 = this.d.a;
        style2.A = null;
        style2.z = null;
        style2.y = null;
        if (qVar != null) {
            H0(qVar, (c) listK.get(0));
        }
        if (qVar2 != null && listK.size() > 2) {
            c cVarN0 = (c) listK.get(0);
            c cVar = (c) listK.get(1);
            int i2 = 1;
            while (i2 < size - 1) {
                i2++;
                c cVar2 = (c) listK.get(i2);
                cVarN0 = cVar.e ? n0(cVarN0, cVar, cVar2) : cVar;
                H0(qVar2, cVarN0);
                cVar = cVar2;
            }
        }
        if (qVar3 != null) {
            H0(qVar3, (c) listK.get(size - 1));
        }
    }

    public final void J(SVG.o0 o0Var, SVG.o0 o0Var2) {
        if (o0Var.m == null) {
            o0Var.m = o0Var2.m;
        }
        if (o0Var.n == null) {
            o0Var.n = o0Var2.n;
        }
        if (o0Var.o == null) {
            o0Var.o = o0Var2.o;
        }
        if (o0Var.p == null) {
            o0Var.p = o0Var2.p;
        }
        if (o0Var.q == null) {
            o0Var.q = o0Var2.q;
        }
    }

    public final void J0(SVG.r rVar, SVG.i0 i0Var, SVG.b bVar) {
        float f2;
        float fG;
        y("Mask render", new Object[0]);
        Boolean bool = rVar.o;
        if (bool == null || !bool.booleanValue()) {
            SVG.o oVar = rVar.s;
            float fE = oVar != null ? oVar.e(this, 1.0f) : 1.2f;
            SVG.o oVar2 = rVar.t;
            float fE2 = oVar2 != null ? oVar2.e(this, 1.0f) : 1.2f;
            f2 = fE * bVar.c;
            fG = fE2 * bVar.d;
        } else {
            SVG.o oVar3 = rVar.s;
            f2 = oVar3 != null ? oVar3.f(this) : bVar.c;
            SVG.o oVar4 = rVar.t;
            fG = oVar4 != null ? oVar4.g(this) : bVar.d;
        }
        if (f2 == 0.0f || fG == 0.0f) {
            return;
        }
        S0();
        h hVarM = M(rVar);
        this.d = hVarM;
        hVarM.a.n = Float.valueOf(1.0f);
        boolean zM0 = m0();
        this.a.save();
        Boolean bool2 = rVar.p;
        if (bool2 != null && !bool2.booleanValue()) {
            this.a.translate(bVar.a, bVar.b);
            this.a.scale(bVar.c, bVar.d);
        }
        F0(rVar, false);
        this.a.restore();
        if (zM0) {
            k0(i0Var, bVar);
        }
        R0();
    }

    public final void K(SVG.x xVar, String str) {
        SVG.l0 l0VarU = xVar.a.u(str);
        if (l0VarU == null) {
            Z0("Pattern reference '%s' not found", str);
            return;
        }
        if (!(l0VarU instanceof SVG.x)) {
            F("Pattern href attributes must point to other pattern elements", new Object[0]);
            return;
        }
        if (l0VarU == xVar) {
            F("Circular reference in pattern href attribute '%s'", str);
            return;
        }
        SVG.x xVar2 = (SVG.x) l0VarU;
        if (xVar.q == null) {
            xVar.q = xVar2.q;
        }
        if (xVar.r == null) {
            xVar.r = xVar2.r;
        }
        if (xVar.s == null) {
            xVar.s = xVar2.s;
        }
        if (xVar.t == null) {
            xVar.t = xVar2.t;
        }
        if (xVar.u == null) {
            xVar.u = xVar2.u;
        }
        if (xVar.v == null) {
            xVar.v = xVar2.v;
        }
        if (xVar.w == null) {
            xVar.w = xVar2.w;
        }
        if (xVar.i.isEmpty()) {
            xVar.i = xVar2.i;
        }
        if (xVar.p == null) {
            xVar.p = xVar2.p;
        }
        if (xVar.o == null) {
            xVar.o = xVar2.o;
        }
        String str2 = xVar2.x;
        if (str2 != null) {
            K(xVar, str2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void K0(SVG.q0 q0Var) {
        Set setF;
        String language = Locale.getDefault().getLanguage();
        SVG.k();
        for (SVG.l0 l0Var : q0Var.getChildren()) {
            if (l0Var instanceof SVG.e0) {
                SVG.e0 e0Var = (SVG.e0) l0Var;
                if (e0Var.a() == null && ((setF = e0Var.f()) == null || (!setF.isEmpty() && setF.contains(language)))) {
                    Set setH = e0Var.h();
                    if (setH != null) {
                        if (i == null) {
                            V();
                        }
                        if (setH.isEmpty() || !i.containsAll(setH)) {
                        }
                    }
                    Set setE = e0Var.e();
                    if (setE != null) {
                        setE.isEmpty();
                    } else {
                        Set setM = e0Var.m();
                        if (setM == null) {
                            A0(l0Var);
                            return;
                        }
                        setM.isEmpty();
                    }
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01f6 A[LOOP:3: B:100:0x01f0->B:102:0x01f6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:75:0x015d  */
    public final void L(SVG.i0 i0Var, Path path, SVG.x xVar) {
        float f2;
        float fG;
        float fG2;
        float f3;
        boolean z;
        boolean z2;
        PreserveAspectRatio preserveAspectRatio;
        Iterator it;
        Boolean bool = xVar.q;
        boolean z3 = bool != null && bool.booleanValue();
        String str = xVar.x;
        if (str != null) {
            K(xVar, str);
        }
        if (z3) {
            SVG.o oVar = xVar.t;
            f2 = oVar != null ? oVar.f(this) : 0.0f;
            SVG.o oVar2 = xVar.u;
            fG2 = oVar2 != null ? oVar2.g(this) : 0.0f;
            SVG.o oVar3 = xVar.v;
            f3 = oVar3 != null ? oVar3.f(this) : 0.0f;
            SVG.o oVar4 = xVar.w;
            fG = oVar4 != null ? oVar4.g(this) : 0.0f;
        } else {
            SVG.o oVar5 = xVar.t;
            float fE = oVar5 != null ? oVar5.e(this, 1.0f) : 0.0f;
            SVG.o oVar6 = xVar.u;
            float fE2 = oVar6 != null ? oVar6.e(this, 1.0f) : 0.0f;
            SVG.o oVar7 = xVar.v;
            float fE3 = oVar7 != null ? oVar7.e(this, 1.0f) : 0.0f;
            SVG.o oVar8 = xVar.w;
            float fE4 = oVar8 != null ? oVar8.e(this, 1.0f) : 0.0f;
            SVG.b bVar = i0Var.h;
            float f4 = bVar.a;
            float f5 = bVar.c;
            f2 = (fE * f5) + f4;
            float f6 = bVar.b;
            float f7 = bVar.d;
            float f8 = fE3 * f5;
            fG = fE4 * f7;
            fG2 = (fE2 * f7) + f6;
            f3 = f8;
        }
        if (f3 == 0.0f || fG == 0.0f) {
            return;
        }
        PreserveAspectRatio preserveAspectRatio2 = xVar.o;
        if (preserveAspectRatio2 == null) {
            preserveAspectRatio2 = PreserveAspectRatio.e;
        }
        S0();
        this.a.clipPath(path);
        h hVar = new h();
        V0(hVar, SVG.Style.a());
        hVar.a.w = Boolean.FALSE;
        this.d = N(xVar, hVar);
        SVG.b bVar2 = i0Var.h;
        Matrix matrix = xVar.s;
        if (matrix != null) {
            this.a.concat(matrix);
            Matrix matrix2 = new Matrix();
            if (xVar.s.invert(matrix2)) {
                SVG.b bVar3 = i0Var.h;
                float f9 = bVar3.a;
                float f10 = bVar3.b;
                float fB = bVar3.b();
                SVG.b bVar4 = i0Var.h;
                float f11 = bVar4.b;
                float fB2 = bVar4.b();
                float fC = i0Var.h.c();
                SVG.b bVar5 = i0Var.h;
                float[] fArr = {f9, f10, fB, f11, fB2, fC, bVar5.a, bVar5.c()};
                matrix2.mapPoints(fArr);
                z2 = false;
                float f12 = fArr[0];
                float f13 = fArr[1];
                RectF rectF = new RectF(f12, f13, f12, f13);
                for (int i2 = 2; i2 <= 6; i2 += 2) {
                    float f14 = fArr[i2];
                    if (f14 < rectF.left) {
                        rectF.left = f14;
                    }
                    if (f14 > rectF.right) {
                        rectF.right = f14;
                    }
                    float f15 = fArr[i2 + 1];
                    if (f15 < rectF.top) {
                        rectF.top = f15;
                    }
                    if (f15 > rectF.bottom) {
                        rectF.bottom = f15;
                    }
                }
                z = true;
                float f16 = rectF.left;
                float f17 = rectF.top;
                bVar2 = new SVG.b(f16, f17, rectF.right - f16, rectF.bottom - f17);
            } else {
                z = true;
                z2 = false;
            }
        } else {
            z = true;
            z2 = false;
        }
        float fFloor = f2 + (((float) Math.floor((bVar2.a - f2) / f3)) * f3);
        float fFloor2 = fG2 + (((float) Math.floor((bVar2.b - fG2) / fG)) * fG);
        float fB3 = bVar2.b();
        float fC2 = bVar2.c();
        SVG.b bVar6 = new SVG.b(0.0f, 0.0f, f3, fG);
        boolean zM0 = m0();
        while (fFloor2 < fC2) {
            float f18 = fFloor;
            while (f18 < fB3) {
                bVar6.a = f18;
                bVar6.b = fFloor2;
                S0();
                if (!this.d.a.w.booleanValue()) {
                    O0(bVar6.a, bVar6.b, bVar6.c, bVar6.d);
                }
                SVG.b bVar7 = xVar.p;
                if (bVar7 != null) {
                    preserveAspectRatio = preserveAspectRatio2;
                    this.a.concat(o(bVar6, bVar7, preserveAspectRatio));
                } else {
                    preserveAspectRatio = preserveAspectRatio2;
                    Boolean bool2 = xVar.r;
                    boolean z4 = (bool2 == null || bool2.booleanValue()) ? z : z2;
                    this.a.translate(f18, fFloor2);
                    if (!z4) {
                        Canvas canvas = this.a;
                        SVG.b bVar8 = i0Var.h;
                        canvas.scale(bVar8.c, bVar8.d);
                    }
                    it = xVar.i.iterator();
                    while (it.hasNext()) {
                        A0((SVG.l0) it.next());
                    }
                    R0();
                    f18 += f3;
                    preserveAspectRatio2 = preserveAspectRatio;
                    z = true;
                }
                it = xVar.i.iterator();
                while (it.hasNext()) {
                    A0((SVG.l0) it.next());
                }
                R0();
                f18 += f3;
                preserveAspectRatio2 = preserveAspectRatio;
                z = true;
            }
            fFloor2 += fG;
            z = true;
        }
        if (zM0) {
            j0(xVar);
        }
        R0();
    }

    public final void L0(SVG.x0 x0Var) {
        y("TextPath render", new Object[0]);
        W0(this.d, x0Var);
        if (A() && Y0()) {
            SVG.l0 l0VarU = x0Var.a.u(x0Var.o);
            if (l0VarU == null) {
                F("TextPath reference '%s' not found", x0Var.o);
                return;
            }
            SVG.u uVar = (SVG.u) l0VarU;
            Path pathF = new d(uVar.o).f();
            Matrix matrix = uVar.n;
            if (matrix != null) {
                pathF.transform(matrix);
            }
            PathMeasure pathMeasure = new PathMeasure(pathF, false);
            SVG.o oVar = x0Var.p;
            float fE = oVar != null ? oVar.e(this, pathMeasure.getLength()) : 0.0f;
            SVG.Style.TextAnchor textAnchorO = O();
            if (textAnchorO != SVG.Style.TextAnchor.Start) {
                float fN = n(x0Var);
                if (textAnchorO == SVG.Style.TextAnchor.Middle) {
                    fN /= 2.0f;
                }
                fE -= fN;
            }
            r((SVG.i0) x0Var.c());
            boolean zM0 = m0();
            E(x0Var, new e(pathF, fE, 0.0f));
            if (zM0) {
                j0(x0Var);
            }
        }
    }

    public final h M(SVG.l0 l0Var) {
        h hVar = new h();
        V0(hVar, SVG.Style.a());
        return N(l0Var, hVar);
    }

    public final boolean M0() {
        return this.d.a.n.floatValue() < 1.0f || this.d.a.H != null;
    }

    public final h N(SVG.l0 l0Var, h hVar) {
        ArrayList arrayList = new ArrayList();
        while (true) {
            if (l0Var instanceof SVG.j0) {
                arrayList.add(0, (SVG.j0) l0Var);
            }
            Object obj = l0Var.b;
            if (obj == null) {
                break;
            }
            l0Var = (SVG.l0) obj;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            W0(hVar, (SVG.j0) it.next());
        }
        h hVar2 = this.d;
        hVar.g = hVar2.g;
        hVar.f = hVar2.f;
        return hVar;
    }

    public final void N0() {
        this.d = new h();
        this.e = new Stack();
        V0(this.d, SVG.Style.a());
        h hVar = this.d;
        hVar.f = null;
        hVar.h = false;
        this.e.push(new h(hVar));
        this.g = new Stack();
        this.f = new Stack();
    }

    public final SVG.Style.TextAnchor O() {
        SVG.Style.TextAnchor textAnchor;
        SVG.Style style = this.d.a;
        if (style.u == SVG.Style.TextDirection.LTR || (textAnchor = style.v) == SVG.Style.TextAnchor.Middle) {
            return style.v;
        }
        SVG.Style.TextAnchor textAnchor2 = SVG.Style.TextAnchor.Start;
        return textAnchor == textAnchor2 ? SVG.Style.TextAnchor.End : textAnchor2;
    }

    public final void O0(float f2, float f3, float f4, float f5) {
        float f6 = f4 + f2;
        float fG = f5 + f3;
        SVG.c cVar = this.d.a.x;
        if (cVar != null) {
            f2 += cVar.d.f(this);
            f3 += this.d.a.x.a.g(this);
            f6 -= this.d.a.x.b.f(this);
            fG -= this.d.a.x.c.g(this);
        }
        this.a.clipRect(f2, f3, f6, fG);
    }

    public final Path.FillType P() {
        SVG.Style.FillRule fillRule = this.d.a.G;
        return (fillRule == null || fillRule != SVG.Style.FillRule.EvenOdd) ? Path.FillType.WINDING : Path.FillType.EVEN_ODD;
    }

    public final void P0(h hVar, boolean z, SVG.m0 m0Var) {
        int i2;
        SVG.Style style = hVar.a;
        float fFloatValue = (z ? style.e : style.g).floatValue();
        if (m0Var instanceof SVG.f) {
            i2 = ((SVG.f) m0Var).b;
        } else if (!(m0Var instanceof SVG.g)) {
            return;
        } else {
            i2 = hVar.a.o.b;
        }
        int iX = x(i2, fFloatValue);
        if (z) {
            hVar.d.setColor(iX);
        } else {
            hVar.e.setColor(iX);
        }
    }

    public float Q() {
        return this.d.d.getTextSize();
    }

    public final void Q0(boolean z, SVG.b0 b0Var) {
        if (z) {
            if (W(b0Var.e, 2147483648L)) {
                h hVar = this.d;
                SVG.Style style = hVar.a;
                SVG.m0 m0Var = b0Var.e.I;
                style.c = m0Var;
                hVar.b = m0Var != null;
            }
            if (W(b0Var.e, 4294967296L)) {
                this.d.a.e = b0Var.e.J;
            }
            if (W(b0Var.e, 6442450944L)) {
                h hVar2 = this.d;
                P0(hVar2, z, hVar2.a.c);
                return;
            }
            return;
        }
        if (W(b0Var.e, 2147483648L)) {
            h hVar3 = this.d;
            SVG.Style style2 = hVar3.a;
            SVG.m0 m0Var2 = b0Var.e.I;
            style2.f = m0Var2;
            hVar3.c = m0Var2 != null;
        }
        if (W(b0Var.e, 4294967296L)) {
            this.d.a.g = b0Var.e.J;
        }
        if (W(b0Var.e, 6442450944L)) {
            h hVar4 = this.d;
            P0(hVar4, z, hVar4.a.f);
        }
    }

    public float R() {
        return this.d.d.getTextSize() / 2.0f;
    }

    public final void R0() {
        this.a.restore();
        this.d = (h) this.e.pop();
    }

    public SVG.b S() {
        h hVar = this.d;
        SVG.b bVar = hVar.g;
        return bVar != null ? bVar : hVar.f;
    }

    public final void S0() {
        this.a.save();
        this.e.push(this.d);
        this.d = new h(this.d);
    }

    public float T() {
        return this.b;
    }

    public final String T0(String str, boolean z, boolean z2) {
        if (this.d.h) {
            return str.replaceAll("[\\n\\t]", " ");
        }
        String strReplaceAll = str.replaceAll("\\n", "").replaceAll("\\t", " ");
        if (z) {
            strReplaceAll = strReplaceAll.replaceAll("^\\s+", "");
        }
        if (z2) {
            strReplaceAll = strReplaceAll.replaceAll("\\s+$", "");
        }
        return strReplaceAll.replaceAll("\\s{2,}", " ");
    }

    public final Path.FillType U() {
        SVG.Style.FillRule fillRule = this.d.a.d;
        return (fillRule == null || fillRule != SVG.Style.FillRule.EvenOdd) ? Path.FillType.WINDING : Path.FillType.EVEN_ODD;
    }

    public final void U0(SVG.i0 i0Var) {
        if (i0Var.b == null || i0Var.h == null) {
            return;
        }
        Matrix matrix = new Matrix();
        if (((Matrix) this.g.peek()).invert(matrix)) {
            SVG.b bVar = i0Var.h;
            float f2 = bVar.a;
            float f3 = bVar.b;
            float fB = bVar.b();
            SVG.b bVar2 = i0Var.h;
            float f4 = bVar2.b;
            float fB2 = bVar2.b();
            float fC = i0Var.h.c();
            SVG.b bVar3 = i0Var.h;
            float[] fArr = {f2, f3, fB, f4, fB2, fC, bVar3.a, bVar3.c()};
            matrix.preConcat(this.a.getMatrix());
            matrix.mapPoints(fArr);
            float f5 = fArr[0];
            float f6 = fArr[1];
            RectF rectF = new RectF(f5, f6, f5, f6);
            for (int i2 = 2; i2 <= 6; i2 += 2) {
                float f7 = fArr[i2];
                if (f7 < rectF.left) {
                    rectF.left = f7;
                }
                if (f7 > rectF.right) {
                    rectF.right = f7;
                }
                float f8 = fArr[i2 + 1];
                if (f8 < rectF.top) {
                    rectF.top = f8;
                }
                if (f8 > rectF.bottom) {
                    rectF.bottom = f8;
                }
            }
            SVG.i0 i0Var2 = (SVG.i0) this.f.peek();
            SVG.b bVar4 = i0Var2.h;
            if (bVar4 == null) {
                i0Var2.h = SVG.b.a(rectF.left, rectF.top, rectF.right, rectF.bottom);
            } else {
                bVar4.e(SVG.b.a(rectF.left, rectF.top, rectF.right, rectF.bottom));
            }
        }
    }

    public final void V0(h hVar, SVG.Style style) {
        if (W(style, 4096L)) {
            hVar.a.o = style.o;
        }
        if (W(style, 2048L)) {
            hVar.a.n = style.n;
        }
        if (W(style, 1L)) {
            hVar.a.c = style.c;
            SVG.m0 m0Var = style.c;
            hVar.b = (m0Var == null || m0Var == SVG.f.d) ? false : true;
        }
        if (W(style, 4L)) {
            hVar.a.e = style.e;
        }
        if (W(style, 6149L)) {
            P0(hVar, true, hVar.a.c);
        }
        if (W(style, 2L)) {
            hVar.a.d = style.d;
        }
        if (W(style, 8L)) {
            hVar.a.f = style.f;
            SVG.m0 m0Var2 = style.f;
            hVar.c = (m0Var2 == null || m0Var2 == SVG.f.d) ? false : true;
        }
        if (W(style, 16L)) {
            hVar.a.g = style.g;
        }
        if (W(style, 6168L)) {
            P0(hVar, false, hVar.a.f);
        }
        if (W(style, 34359738368L)) {
            hVar.a.M = style.M;
        }
        if (W(style, 32L)) {
            SVG.Style style2 = hVar.a;
            SVG.o oVar = style.h;
            style2.h = oVar;
            hVar.e.setStrokeWidth(oVar.d(this));
        }
        if (W(style, 64L)) {
            hVar.a.i = style.i;
            int i2 = a.b[style.i.ordinal()];
            if (i2 == 1) {
                hVar.e.setStrokeCap(Paint.Cap.BUTT);
            } else if (i2 == 2) {
                hVar.e.setStrokeCap(Paint.Cap.ROUND);
            } else if (i2 == 3) {
                hVar.e.setStrokeCap(Paint.Cap.SQUARE);
            }
        }
        if (W(style, 128L)) {
            hVar.a.j = style.j;
            int i3 = a.c[style.j.ordinal()];
            if (i3 == 1) {
                hVar.e.setStrokeJoin(Paint.Join.MITER);
            } else if (i3 == 2) {
                hVar.e.setStrokeJoin(Paint.Join.ROUND);
            } else if (i3 == 3) {
                hVar.e.setStrokeJoin(Paint.Join.BEVEL);
            }
        }
        if (W(style, 256L)) {
            hVar.a.k = style.k;
            hVar.e.setStrokeMiter(style.k.floatValue());
        }
        if (W(style, 512L)) {
            hVar.a.l = style.l;
        }
        if (W(style, 1024L)) {
            hVar.a.m = style.m;
        }
        Typeface typefaceT = null;
        if (W(style, 1536L)) {
            SVG.o[] oVarArr = hVar.a.l;
            if (oVarArr == null) {
                hVar.e.setPathEffect(null);
            } else {
                int length = oVarArr.length;
                int i4 = length % 2 == 0 ? length : length * 2;
                float[] fArr = new float[i4];
                float f2 = 0.0f;
                for (int i5 = 0; i5 < i4; i5++) {
                    float fD = hVar.a.l[i5 % length].d(this);
                    fArr[i5] = fD;
                    f2 += fD;
                }
                if (f2 == 0.0f) {
                    hVar.e.setPathEffect(null);
                } else {
                    float fD2 = hVar.a.m.d(this);
                    if (fD2 < 0.0f) {
                        fD2 = (fD2 % f2) + f2;
                    }
                    hVar.e.setPathEffect(new DashPathEffect(fArr, fD2));
                }
            }
        }
        if (W(style, 16384L)) {
            float fQ = Q();
            hVar.a.q = style.q;
            hVar.d.setTextSize(style.q.e(this, fQ));
            hVar.e.setTextSize(style.q.e(this, fQ));
        }
        if (W(style, 8192L)) {
            hVar.a.p = style.p;
        }
        if (W(style, 32768L)) {
            if (style.r.intValue() == -1 && hVar.a.r.intValue() > 100) {
                SVG.Style style3 = hVar.a;
                style3.r = Integer.valueOf(style3.r.intValue() - 100);
            } else if (style.r.intValue() != 1 || hVar.a.r.intValue() >= 900) {
                hVar.a.r = style.r;
            } else {
                SVG.Style style4 = hVar.a;
                style4.r = Integer.valueOf(style4.r.intValue() + 100);
            }
        }
        if (W(style, 65536L)) {
            hVar.a.s = style.s;
        }
        if (W(style, 106496L)) {
            if (hVar.a.p != null && this.c != null) {
                SVG.k();
                for (String str : hVar.a.p) {
                    SVG.Style style5 = hVar.a;
                    typefaceT = t(str, style5.r, style5.s);
                    if (typefaceT != null) {
                        break;
                    }
                }
            }
            if (typefaceT == null) {
                SVG.Style style6 = hVar.a;
                typefaceT = t(C.SERIF_NAME, style6.r, style6.s);
            }
            hVar.d.setTypeface(typefaceT);
            hVar.e.setTypeface(typefaceT);
        }
        if (W(style, 131072L)) {
            hVar.a.t = style.t;
            Paint paint = hVar.d;
            SVG.Style.TextDecoration textDecoration = style.t;
            SVG.Style.TextDecoration textDecoration2 = SVG.Style.TextDecoration.LineThrough;
            paint.setStrikeThruText(textDecoration == textDecoration2);
            Paint paint2 = hVar.d;
            SVG.Style.TextDecoration textDecoration3 = style.t;
            SVG.Style.TextDecoration textDecoration4 = SVG.Style.TextDecoration.Underline;
            paint2.setUnderlineText(textDecoration3 == textDecoration4);
            hVar.e.setStrikeThruText(style.t == textDecoration2);
            hVar.e.setUnderlineText(style.t == textDecoration4);
        }
        if (W(style, 68719476736L)) {
            hVar.a.u = style.u;
        }
        if (W(style, PlaybackStateCompat.ACTION_SET_REPEAT_MODE)) {
            hVar.a.v = style.v;
        }
        if (W(style, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED)) {
            hVar.a.w = style.w;
        }
        if (W(style, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE)) {
            hVar.a.y = style.y;
        }
        if (W(style, PlaybackStateCompat.ACTION_SET_PLAYBACK_SPEED)) {
            hVar.a.z = style.z;
        }
        if (W(style, 8388608L)) {
            hVar.a.A = style.A;
        }
        if (W(style, 16777216L)) {
            hVar.a.B = style.B;
        }
        if (W(style, 33554432L)) {
            hVar.a.C = style.C;
        }
        if (W(style, 1048576L)) {
            hVar.a.x = style.x;
        }
        if (W(style, 268435456L)) {
            hVar.a.F = style.F;
        }
        if (W(style, 536870912L)) {
            hVar.a.G = style.G;
        }
        if (W(style, 1073741824L)) {
            hVar.a.H = style.H;
        }
        if (W(style, 67108864L)) {
            hVar.a.D = style.D;
        }
        if (W(style, 134217728L)) {
            hVar.a.E = style.E;
        }
        if (W(style, 8589934592L)) {
            hVar.a.K = style.K;
        }
        if (W(style, 17179869184L)) {
            hVar.a.L = style.L;
        }
        if (W(style, 137438953472L)) {
            hVar.a.N = style.N;
        }
    }

    public final boolean W(SVG.Style style, long j2) {
        return (style.b & j2) != 0;
    }

    public final void W0(h hVar, SVG.j0 j0Var) {
        hVar.a.c(j0Var.b == null);
        SVG.Style style = j0Var.e;
        if (style != null) {
            V0(hVar, style);
        }
        if (this.c.q()) {
            for (CSSParser.l lVar : this.c.d()) {
                if (CSSParser.l(this.h, lVar.a, j0Var)) {
                    V0(hVar, lVar.b);
                }
            }
        }
        SVG.Style style2 = j0Var.f;
        if (style2 != null) {
            V0(hVar, style2);
        }
    }

    public final void X(boolean z, SVG.b bVar, SVG.k0 k0Var) {
        float f2;
        float fE;
        float f3;
        float f4;
        String str = k0Var.l;
        if (str != null) {
            H(k0Var, str);
        }
        Boolean bool = k0Var.i;
        int i2 = 0;
        boolean z2 = bool != null && bool.booleanValue();
        h hVar = this.d;
        Paint paint = z ? hVar.d : hVar.e;
        if (z2) {
            SVG.b bVarS = S();
            SVG.o oVar = k0Var.m;
            float f5 = oVar != null ? oVar.f(this) : 0.0f;
            SVG.o oVar2 = k0Var.n;
            float fG = oVar2 != null ? oVar2.g(this) : 0.0f;
            SVG.o oVar3 = k0Var.o;
            float f6 = oVar3 != null ? oVar3.f(this) : bVarS.c;
            SVG.o oVar4 = k0Var.p;
            f4 = f6;
            f2 = f5;
            f3 = fG;
            fE = oVar4 != null ? oVar4.g(this) : 0.0f;
        } else {
            SVG.o oVar5 = k0Var.m;
            float fE2 = oVar5 != null ? oVar5.e(this, 1.0f) : 0.0f;
            SVG.o oVar6 = k0Var.n;
            float fE3 = oVar6 != null ? oVar6.e(this, 1.0f) : 0.0f;
            SVG.o oVar7 = k0Var.o;
            float fE4 = oVar7 != null ? oVar7.e(this, 1.0f) : 1.0f;
            SVG.o oVar8 = k0Var.p;
            f2 = fE2;
            fE = oVar8 != null ? oVar8.e(this, 1.0f) : 0.0f;
            f3 = fE3;
            f4 = fE4;
        }
        S0();
        this.d = M(k0Var);
        Matrix matrix = new Matrix();
        if (!z2) {
            matrix.preTranslate(bVar.a, bVar.b);
            matrix.preScale(bVar.c, bVar.d);
        }
        Matrix matrix2 = k0Var.j;
        if (matrix2 != null) {
            matrix.preConcat(matrix2);
        }
        int size = k0Var.h.size();
        if (size == 0) {
            R0();
            if (z) {
                this.d.b = false;
                return;
            } else {
                this.d.c = false;
                return;
            }
        }
        int[] iArr = new int[size];
        float[] fArr = new float[size];
        Iterator it = k0Var.h.iterator();
        float f7 = -1.0f;
        while (it.hasNext()) {
            SVG.c0 c0Var = (SVG.c0) ((SVG.l0) it.next());
            Float f8 = c0Var.h;
            float fFloatValue = f8 != null ? f8.floatValue() : 0.0f;
            if (i2 == 0 || fFloatValue >= f7) {
                fArr[i2] = fFloatValue;
                f7 = fFloatValue;
            } else {
                fArr[i2] = f7;
            }
            S0();
            W0(this.d, c0Var);
            SVG.Style style = this.d.a;
            SVG.f fVar = (SVG.f) style.D;
            if (fVar == null) {
                fVar = SVG.f.c;
            }
            iArr[i2] = x(fVar.b, style.E.floatValue());
            i2++;
            R0();
        }
        if ((f2 == f4 && f3 == fE) || size == 1) {
            R0();
            paint.setColor(iArr[size - 1]);
            return;
        }
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        SVG.GradientSpread gradientSpread = k0Var.k;
        if (gradientSpread != null) {
            if (gradientSpread == SVG.GradientSpread.reflect) {
                tileMode = Shader.TileMode.MIRROR;
            } else if (gradientSpread == SVG.GradientSpread.repeat) {
                tileMode = Shader.TileMode.REPEAT;
            }
        }
        Shader.TileMode tileMode2 = tileMode;
        R0();
        LinearGradient linearGradient = new LinearGradient(f2, f3, f4, fE, iArr, fArr, tileMode2);
        linearGradient.setLocalMatrix(matrix);
        paint.setShader(linearGradient);
        paint.setAlpha(w(this.d.a.e.floatValue()));
    }

    public final void X0() {
        int iX;
        SVG.Style style = this.d.a;
        SVG.m0 m0Var = style.K;
        if (m0Var instanceof SVG.f) {
            iX = ((SVG.f) m0Var).b;
        } else if (!(m0Var instanceof SVG.g)) {
            return;
        } else {
            iX = style.o.b;
        }
        Float f2 = style.L;
        if (f2 != null) {
            iX = x(iX, f2.floatValue());
        }
        this.a.drawColor(iX);
    }

    public final Path Y(SVG.d dVar) {
        SVG.o oVar = dVar.o;
        float f2 = oVar != null ? oVar.f(this) : 0.0f;
        SVG.o oVar2 = dVar.p;
        float fG = oVar2 != null ? oVar2.g(this) : 0.0f;
        float fD = dVar.q.d(this);
        float f3 = f2 - fD;
        float f4 = fG - fD;
        float f5 = f2 + fD;
        float f6 = fG + fD;
        if (dVar.h == null) {
            float f7 = 2.0f * fD;
            dVar.h = new SVG.b(f3, f4, f7, f7);
        }
        float f8 = fD * 0.5522848f;
        Path path = new Path();
        path.moveTo(f2, f4);
        float f9 = f2 + f8;
        float f10 = fG - f8;
        path.cubicTo(f9, f4, f5, f10, f5, fG);
        float f11 = fG + f8;
        path.cubicTo(f5, f11, f9, f6, f2, f6);
        float f12 = f2 - f8;
        path.cubicTo(f12, f6, f3, f11, f3, fG);
        path.cubicTo(f3, f10, f12, f4, f2, f4);
        path.close();
        return path;
    }

    public final boolean Y0() {
        Boolean bool = this.d.a.C;
        if (bool != null) {
            return bool.booleanValue();
        }
        return true;
    }

    public final Path Z(SVG.i iVar) {
        SVG.o oVar = iVar.o;
        float f2 = oVar != null ? oVar.f(this) : 0.0f;
        SVG.o oVar2 = iVar.p;
        float fG = oVar2 != null ? oVar2.g(this) : 0.0f;
        float f3 = iVar.q.f(this);
        float fG2 = iVar.r.g(this);
        float f4 = f2 - f3;
        float f5 = fG - fG2;
        float f6 = f2 + f3;
        float f7 = fG + fG2;
        if (iVar.h == null) {
            iVar.h = new SVG.b(f4, f5, f3 * 2.0f, 2.0f * fG2);
        }
        float f8 = f3 * 0.5522848f;
        float f9 = fG2 * 0.5522848f;
        Path path = new Path();
        path.moveTo(f2, f5);
        float f10 = f2 + f8;
        float f11 = fG - f9;
        path.cubicTo(f10, f5, f6, f11, f6, fG);
        float f12 = f9 + fG;
        path.cubicTo(f6, f12, f10, f7, f2, f7);
        float f13 = f2 - f8;
        path.cubicTo(f13, f7, f4, f12, f4, fG);
        path.cubicTo(f4, f11, f13, f5, f2, f5);
        path.close();
        return path;
    }

    public final Path a0(SVG.p pVar) {
        SVG.o oVar = pVar.o;
        float f2 = oVar == null ? 0.0f : oVar.f(this);
        SVG.o oVar2 = pVar.p;
        float fG = oVar2 == null ? 0.0f : oVar2.g(this);
        SVG.o oVar3 = pVar.q;
        float f3 = oVar3 == null ? 0.0f : oVar3.f(this);
        SVG.o oVar4 = pVar.r;
        float fG2 = oVar4 != null ? oVar4.g(this) : 0.0f;
        if (pVar.h == null) {
            pVar.h = new SVG.b(Math.min(f2, f3), Math.min(fG, fG2), Math.abs(f3 - f2), Math.abs(fG2 - fG));
        }
        Path path = new Path();
        path.moveTo(f2, fG);
        path.lineTo(f3, fG2);
        return path;
    }

    public final Path b0(SVG.y yVar) {
        Path path = new Path();
        float[] fArr = yVar.o;
        path.moveTo(fArr[0], fArr[1]);
        int i2 = 2;
        while (true) {
            float[] fArr2 = yVar.o;
            if (i2 >= fArr2.length) {
                break;
            }
            path.lineTo(fArr2[i2], fArr2[i2 + 1]);
            i2 += 2;
        }
        if (yVar instanceof SVG.z) {
            path.close();
        }
        if (yVar.h == null) {
            yVar.h = m(path);
        }
        return path;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0048  */
    /* JADX WARN: Code duplicated, block: B:17:0x004d  */
    /* JADX WARN: Code duplicated, block: B:20:0x0052  */
    /* JADX WARN: Code duplicated, block: B:21:0x0058  */
    /* JADX WARN: Code duplicated, block: B:24:0x0069  */
    /* JADX WARN: Code duplicated, block: B:31:0x00da  */
    public final Path c0(SVG.a0 a0Var) {
        float f2;
        float fG;
        float fMin;
        SVG.o oVar;
        float f3;
        SVG.o oVar2;
        float fG2;
        float f4;
        float fG3;
        float f5;
        float f6;
        Path path;
        SVG.o oVar3 = a0Var.s;
        if (oVar3 == null && a0Var.t == null) {
            f2 = 0.0f;
        } else {
            if (oVar3 != null) {
                if (a0Var.t == null) {
                    f2 = oVar3.f(this);
                } else {
                    f2 = oVar3.f(this);
                    fG = a0Var.t.g(this);
                }
                fMin = Math.min(f2, a0Var.q.f(this) / 2.0f);
                float fMin2 = Math.min(fG, a0Var.r.g(this) / 2.0f);
                oVar = a0Var.o;
                if (oVar != null) {
                    f3 = oVar.f(this);
                } else {
                    f3 = 0.0f;
                }
                oVar2 = a0Var.p;
                if (oVar2 != null) {
                    fG2 = oVar2.g(this);
                } else {
                    fG2 = 0.0f;
                }
                f4 = a0Var.q.f(this);
                fG3 = a0Var.r.g(this);
                if (a0Var.h == null) {
                    a0Var.h = new SVG.b(f3, fG2, f4, fG3);
                }
                f5 = f3 + f4;
                f6 = fG3 + fG2;
                path = new Path();
                if (fMin != 0.0f || fMin2 == 0.0f) {
                    path.moveTo(f3, fG2);
                    path.lineTo(f5, fG2);
                    path.lineTo(f5, f6);
                    path.lineTo(f3, f6);
                    path.lineTo(f3, fG2);
                } else {
                    float f7 = fMin * 0.5522848f;
                    float f8 = 0.5522848f * fMin2;
                    float f9 = fG2 + fMin2;
                    path.moveTo(f3, f9);
                    float f10 = f9 - f8;
                    float f11 = f3 + fMin;
                    float f12 = f11 - f7;
                    path.cubicTo(f3, f10, f12, fG2, f11, fG2);
                    float f13 = f5 - fMin;
                    path.lineTo(f13, fG2);
                    float f14 = f13 + f7;
                    path.cubicTo(f14, fG2, f5, f10, f5, f9);
                    float f15 = f6 - fMin2;
                    path.lineTo(f5, f15);
                    float f16 = f15 + f8;
                    path.cubicTo(f5, f16, f14, f6, f13, f6);
                    path.lineTo(f11, f6);
                    path.cubicTo(f12, f6, f3, f16, f3, f15);
                    path.lineTo(f3, f9);
                }
                path.close();
                return path;
            }
            f2 = a0Var.t.g(this);
        }
        fG = f2;
        fMin = Math.min(f2, a0Var.q.f(this) / 2.0f);
        float fMin3 = Math.min(fG, a0Var.r.g(this) / 2.0f);
        oVar = a0Var.o;
        if (oVar != null) {
            f3 = oVar.f(this);
        } else {
            f3 = 0.0f;
        }
        oVar2 = a0Var.p;
        if (oVar2 != null) {
            fG2 = oVar2.g(this);
        } else {
            fG2 = 0.0f;
        }
        f4 = a0Var.q.f(this);
        fG3 = a0Var.r.g(this);
        if (a0Var.h == null) {
            a0Var.h = new SVG.b(f3, fG2, f4, fG3);
        }
        f5 = f3 + f4;
        f6 = fG3 + fG2;
        path = new Path();
        if (fMin != 0.0f) {
            path.moveTo(f3, fG2);
            path.lineTo(f5, fG2);
            path.lineTo(f5, f6);
            path.lineTo(f3, f6);
            path.lineTo(f3, fG2);
        } else {
            path.moveTo(f3, fG2);
            path.lineTo(f5, fG2);
            path.lineTo(f5, f6);
            path.lineTo(f3, f6);
            path.lineTo(f3, fG2);
        }
        path.close();
        return path;
    }

    public final Path d0(SVG.u0 u0Var) {
        List list = u0Var.o;
        float fG = 0.0f;
        float f2 = (list == null || list.size() == 0) ? 0.0f : ((SVG.o) u0Var.o.get(0)).f(this);
        List list2 = u0Var.p;
        float fG2 = (list2 == null || list2.size() == 0) ? 0.0f : ((SVG.o) u0Var.p.get(0)).g(this);
        List list3 = u0Var.q;
        float f3 = (list3 == null || list3.size() == 0) ? 0.0f : ((SVG.o) u0Var.q.get(0)).f(this);
        List list4 = u0Var.r;
        if (list4 != null && list4.size() != 0) {
            fG = ((SVG.o) u0Var.r.get(0)).g(this);
        }
        if (this.d.a.v != SVG.Style.TextAnchor.Start) {
            float fN = n(u0Var);
            if (this.d.a.v == SVG.Style.TextAnchor.Middle) {
                fN /= 2.0f;
            }
            f2 -= fN;
        }
        if (u0Var.h == null) {
            i iVar = new i(f2, fG2);
            E(u0Var, iVar);
            RectF rectF = iVar.d;
            u0Var.h = new SVG.b(rectF.left, rectF.top, rectF.width(), iVar.d.height());
        }
        Path path = new Path();
        E(u0Var, new g(f2 + f3, fG2 + fG, path));
        return path;
    }

    public final void e0(boolean z, SVG.b bVar, SVG.o0 o0Var) {
        float f2;
        float fE;
        float f3;
        String str = o0Var.l;
        if (str != null) {
            H(o0Var, str);
        }
        Boolean bool = o0Var.i;
        int i2 = 0;
        boolean z2 = bool != null && bool.booleanValue();
        h hVar = this.d;
        Paint paint = z ? hVar.d : hVar.e;
        if (z2) {
            SVG.o oVar = new SVG.o(50.0f, SVG.Unit.percent);
            SVG.o oVar2 = o0Var.m;
            float f4 = oVar2 != null ? oVar2.f(this) : oVar.f(this);
            SVG.o oVar3 = o0Var.n;
            float fG = oVar3 != null ? oVar3.g(this) : oVar.g(this);
            SVG.o oVar4 = o0Var.o;
            fE = oVar4 != null ? oVar4.d(this) : oVar.d(this);
            f2 = f4;
            f3 = fG;
        } else {
            SVG.o oVar5 = o0Var.m;
            float fE2 = oVar5 != null ? oVar5.e(this, 1.0f) : 0.5f;
            SVG.o oVar6 = o0Var.n;
            float fE3 = oVar6 != null ? oVar6.e(this, 1.0f) : 0.5f;
            SVG.o oVar7 = o0Var.o;
            f2 = fE2;
            fE = oVar7 != null ? oVar7.e(this, 1.0f) : 0.5f;
            f3 = fE3;
        }
        S0();
        this.d = M(o0Var);
        Matrix matrix = new Matrix();
        if (!z2) {
            matrix.preTranslate(bVar.a, bVar.b);
            matrix.preScale(bVar.c, bVar.d);
        }
        Matrix matrix2 = o0Var.j;
        if (matrix2 != null) {
            matrix.preConcat(matrix2);
        }
        int size = o0Var.h.size();
        if (size == 0) {
            R0();
            if (z) {
                this.d.b = false;
                return;
            } else {
                this.d.c = false;
                return;
            }
        }
        int[] iArr = new int[size];
        float[] fArr = new float[size];
        Iterator it = o0Var.h.iterator();
        float f5 = -1.0f;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            SVG.c0 c0Var = (SVG.c0) ((SVG.l0) it.next());
            Float f6 = c0Var.h;
            float fFloatValue = f6 != null ? f6.floatValue() : 0.0f;
            if (i2 == 0 || fFloatValue >= f5) {
                fArr[i2] = fFloatValue;
                f5 = fFloatValue;
            } else {
                fArr[i2] = f5;
            }
            S0();
            W0(this.d, c0Var);
            SVG.Style style = this.d.a;
            SVG.f fVar = (SVG.f) style.D;
            if (fVar == null) {
                fVar = SVG.f.c;
            }
            iArr[i2] = x(fVar.b, style.E.floatValue());
            i2++;
            R0();
        }
        if (fE == 0.0f || size == 1) {
            R0();
            paint.setColor(iArr[size - 1]);
            return;
        }
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        SVG.GradientSpread gradientSpread = o0Var.k;
        if (gradientSpread != null) {
            if (gradientSpread == SVG.GradientSpread.reflect) {
                tileMode = Shader.TileMode.MIRROR;
            } else if (gradientSpread == SVG.GradientSpread.repeat) {
                tileMode = Shader.TileMode.REPEAT;
            }
        }
        Shader.TileMode tileMode2 = tileMode;
        R0();
        RadialGradient radialGradient = new RadialGradient(f2, f3, fE, iArr, fArr, tileMode2);
        radialGradient.setLocalMatrix(matrix);
        paint.setShader(radialGradient);
        paint.setAlpha(w(this.d.a.e.floatValue()));
    }

    public final SVG.b f0(SVG.o oVar, SVG.o oVar2, SVG.o oVar3, SVG.o oVar4) {
        float f2 = oVar != null ? oVar.f(this) : 0.0f;
        float fG = oVar2 != null ? oVar2.g(this) : 0.0f;
        SVG.b bVarS = S();
        return new SVG.b(f2, fG, oVar3 != null ? oVar3.f(this) : bVarS.c, oVar4 != null ? oVar4.g(this) : bVarS.d);
    }

    public final Path g0(SVG.i0 i0Var, boolean z) {
        Path pathD0;
        Path pathJ;
        this.e.push(this.d);
        h hVar = new h(this.d);
        this.d = hVar;
        W0(hVar, i0Var);
        if (!A() || !Y0()) {
            this.d = (h) this.e.pop();
            return null;
        }
        if (i0Var instanceof SVG.b1) {
            if (!z) {
                F("<use> elements inside a <clipPath> cannot reference another <use>", new Object[0]);
            }
            SVG.b1 b1Var = (SVG.b1) i0Var;
            SVG.l0 l0VarU = i0Var.a.u(b1Var.p);
            if (l0VarU == null) {
                F("Use reference '%s' not found", b1Var.p);
                this.d = (h) this.e.pop();
                return null;
            }
            if (!(l0VarU instanceof SVG.i0)) {
                this.d = (h) this.e.pop();
                return null;
            }
            pathD0 = g0((SVG.i0) l0VarU, false);
            if (pathD0 == null) {
                return null;
            }
            if (b1Var.h == null) {
                b1Var.h = m(pathD0);
            }
            Matrix matrix = b1Var.o;
            if (matrix != null) {
                pathD0.transform(matrix);
            }
        } else if (i0Var instanceof SVG.k) {
            SVG.k kVar = (SVG.k) i0Var;
            if (i0Var instanceof SVG.u) {
                pathD0 = new d(((SVG.u) i0Var).o).f();
                if (i0Var.h == null) {
                    i0Var.h = m(pathD0);
                }
            } else if (i0Var instanceof SVG.a0) {
                pathD0 = c0((SVG.a0) i0Var);
            } else if (i0Var instanceof SVG.d) {
                pathD0 = Y((SVG.d) i0Var);
            } else if (i0Var instanceof SVG.i) {
                pathD0 = Z((SVG.i) i0Var);
            } else {
                pathD0 = i0Var instanceof SVG.y ? b0((SVG.y) i0Var) : null;
            }
            if (pathD0 == null) {
                return null;
            }
            if (kVar.h == null) {
                kVar.h = m(pathD0);
            }
            Matrix matrix2 = kVar.n;
            if (matrix2 != null) {
                pathD0.transform(matrix2);
            }
            pathD0.setFillType(P());
        } else {
            if (!(i0Var instanceof SVG.u0)) {
                F("Invalid %s element found in clipPath definition", i0Var.n());
                return null;
            }
            SVG.u0 u0Var = (SVG.u0) i0Var;
            pathD0 = d0(u0Var);
            if (pathD0 == null) {
                return null;
            }
            Matrix matrix3 = u0Var.s;
            if (matrix3 != null) {
                pathD0.transform(matrix3);
            }
            pathD0.setFillType(P());
        }
        if (this.d.a.F != null && (pathJ = j(i0Var, i0Var.h)) != null) {
            pathD0.op(pathJ, Path.Op.INTERSECT);
        }
        this.d = (h) this.e.pop();
        return pathD0;
    }

    public final void h0() {
        this.f.pop();
        this.g.pop();
    }

    public final void i0(SVG.h0 h0Var) {
        this.f.push(h0Var);
        this.g.push(this.a.getMatrix());
    }

    public final Path j(SVG.i0 i0Var, SVG.b bVar) {
        Path pathG0;
        SVG.l0 l0VarU = i0Var.a.u(this.d.a.F);
        if (l0VarU == null) {
            F("ClipPath reference '%s' not found", this.d.a.F);
            return null;
        }
        SVG.e eVar = (SVG.e) l0VarU;
        this.e.push(this.d);
        this.d = M(eVar);
        Boolean bool = eVar.p;
        boolean z = bool == null || bool.booleanValue();
        Matrix matrix = new Matrix();
        if (!z) {
            matrix.preTranslate(bVar.a, bVar.b);
            matrix.preScale(bVar.c, bVar.d);
        }
        Matrix matrix2 = eVar.o;
        if (matrix2 != null) {
            matrix.preConcat(matrix2);
        }
        Path path = new Path();
        for (SVG.l0 l0Var : eVar.i) {
            if ((l0Var instanceof SVG.i0) && (pathG0 = g0((SVG.i0) l0Var, true)) != null) {
                path.op(pathG0, Path.Op.UNION);
            }
        }
        if (this.d.a.F != null) {
            if (eVar.h == null) {
                eVar.h = m(path);
            }
            Path pathJ = j(eVar, eVar.h);
            if (pathJ != null) {
                path.op(pathJ, Path.Op.INTERSECT);
            }
        }
        path.transform(matrix);
        this.d = (h) this.e.pop();
        return path;
    }

    public final void j0(SVG.i0 i0Var) {
        k0(i0Var, i0Var.h);
    }

    public final List k(SVG.p pVar) {
        SVG.o oVar = pVar.o;
        float f2 = oVar != null ? oVar.f(this) : 0.0f;
        SVG.o oVar2 = pVar.p;
        float fG = oVar2 != null ? oVar2.g(this) : 0.0f;
        SVG.o oVar3 = pVar.q;
        float f3 = oVar3 != null ? oVar3.f(this) : 0.0f;
        SVG.o oVar4 = pVar.r;
        float fG2 = oVar4 != null ? oVar4.g(this) : 0.0f;
        ArrayList arrayList = new ArrayList(2);
        float f4 = f3 - f2;
        float f5 = fG2 - fG;
        arrayList.add(new c(f2, fG, f4, f5));
        arrayList.add(new c(f3, fG2, f4, f5));
        return arrayList;
    }

    public final void k0(SVG.i0 i0Var, SVG.b bVar) {
        if (this.d.a.H != null) {
            Paint paint = new Paint();
            PorterDuff.Mode mode = PorterDuff.Mode.DST_IN;
            paint.setXfermode(new PorterDuffXfermode(mode));
            this.a.saveLayer(null, paint, 31);
            Paint paint2 = new Paint();
            paint2.setColorFilter(new ColorMatrixColorFilter(new ColorMatrix(new float[]{0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.2127f, 0.7151f, 0.0722f, 0.0f, 0.0f})));
            this.a.saveLayer(null, paint2, 31);
            SVG.r rVar = (SVG.r) this.c.u(this.d.a.H);
            J0(rVar, i0Var, bVar);
            this.a.restore();
            Paint paint3 = new Paint();
            paint3.setXfermode(new PorterDuffXfermode(mode));
            this.a.saveLayer(null, paint3, 31);
            J0(rVar, i0Var, bVar);
            this.a.restore();
            this.a.restore();
        }
        R0();
    }

    public final List l(SVG.y yVar) {
        int length = yVar.o.length;
        int i2 = 2;
        if (length < 2) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        float[] fArr = yVar.o;
        c cVar = new c(fArr[0], fArr[1], 0.0f, 0.0f);
        float f2 = 0.0f;
        float f3 = 0.0f;
        while (i2 < length) {
            float[] fArr2 = yVar.o;
            float f4 = fArr2[i2];
            float f5 = fArr2[i2 + 1];
            cVar.a(f4, f5);
            arrayList.add(cVar);
            i2 += 2;
            cVar = new c(f4, f5, f4 - cVar.a, f5 - cVar.b);
            f3 = f5;
            f2 = f4;
        }
        if (yVar instanceof SVG.z) {
            float[] fArr3 = yVar.o;
            float f6 = fArr3[0];
            if (f2 != f6) {
                float f7 = fArr3[1];
                if (f3 != f7) {
                    cVar.a(f6, f7);
                    arrayList.add(cVar);
                    c cVar2 = new c(f6, f7, f6 - cVar.a, f7 - cVar.b);
                    cVar2.b((c) arrayList.get(0));
                    arrayList.add(cVar2);
                    arrayList.set(0, cVar2);
                }
            }
        } else {
            arrayList.add(cVar);
        }
        return arrayList;
    }

    public final void l0(SVG.l0 l0Var, j jVar) {
        float f2;
        float fG;
        float f3;
        SVG.Style.TextAnchor textAnchorO;
        if (jVar.a((SVG.w0) l0Var)) {
            if (l0Var instanceof SVG.x0) {
                S0();
                L0((SVG.x0) l0Var);
                R0();
                return;
            }
            if (!(l0Var instanceof SVG.t0)) {
                if (l0Var instanceof SVG.s0) {
                    S0();
                    SVG.s0 s0Var = (SVG.s0) l0Var;
                    W0(this.d, s0Var);
                    if (A()) {
                        r((SVG.i0) s0Var.c());
                        SVG.l0 l0VarU = l0Var.a.u(s0Var.o);
                        if (l0VarU == null || !(l0VarU instanceof SVG.w0)) {
                            F("Tref reference '%s' not found", s0Var.o);
                        } else {
                            StringBuilder sb = new StringBuilder();
                            G((SVG.w0) l0VarU, sb);
                            if (sb.length() > 0) {
                                jVar.b(sb.toString());
                            }
                        }
                    }
                    R0();
                    return;
                }
                return;
            }
            y("TSpan render", new Object[0]);
            S0();
            SVG.t0 t0Var = (SVG.t0) l0Var;
            W0(this.d, t0Var);
            if (A()) {
                List list = t0Var.o;
                boolean z = list != null && list.size() > 0;
                boolean z2 = jVar instanceof f;
                float fG2 = 0.0f;
                if (z2) {
                    float f4 = !z ? ((f) jVar).b : ((SVG.o) t0Var.o.get(0)).f(this);
                    List list2 = t0Var.p;
                    fG = (list2 == null || list2.size() == 0) ? ((f) jVar).c : ((SVG.o) t0Var.p.get(0)).g(this);
                    List list3 = t0Var.q;
                    f3 = (list3 == null || list3.size() == 0) ? 0.0f : ((SVG.o) t0Var.q.get(0)).f(this);
                    List list4 = t0Var.r;
                    if (list4 != null && list4.size() != 0) {
                        fG2 = ((SVG.o) t0Var.r.get(0)).g(this);
                    }
                    f2 = fG2;
                    fG2 = f4;
                } else {
                    f2 = 0.0f;
                    fG = 0.0f;
                    f3 = 0.0f;
                }
                if (z && (textAnchorO = O()) != SVG.Style.TextAnchor.Start) {
                    float fN = n(t0Var);
                    if (textAnchorO == SVG.Style.TextAnchor.Middle) {
                        fN /= 2.0f;
                    }
                    fG2 -= fN;
                }
                r((SVG.i0) t0Var.c());
                if (z2) {
                    f fVar = (f) jVar;
                    fVar.b = fG2 + f3;
                    fVar.c = fG + f2;
                }
                boolean zM0 = m0();
                E(t0Var, jVar);
                if (zM0) {
                    j0(t0Var);
                }
            }
            R0();
        }
    }

    public final SVG.b m(Path path) {
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        return new SVG.b(rectF.left, rectF.top, rectF.width(), rectF.height());
    }

    public final boolean m0() {
        SVG.l0 l0VarU;
        if (!M0()) {
            return false;
        }
        this.a.saveLayerAlpha(null, w(this.d.a.n.floatValue()), 31);
        this.e.push(this.d);
        h hVar = new h(this.d);
        this.d = hVar;
        String str = hVar.a.H;
        if (str != null && ((l0VarU = this.c.u(str)) == null || !(l0VarU instanceof SVG.r))) {
            F("Mask reference '%s' not found", this.d.a.H);
            this.d.a.H = null;
        }
        return true;
    }

    public final float n(SVG.w0 w0Var) {
        k kVar = new k(this, null);
        E(w0Var, kVar);
        return kVar.b;
    }

    public final c n0(c cVar, c cVar2, c cVar3) {
        float fD = D(cVar2.c, cVar2.d, cVar2.a - cVar.a, cVar2.b - cVar.b);
        if (fD == 0.0f) {
            fD = D(cVar2.c, cVar2.d, cVar3.a - cVar2.a, cVar3.b - cVar2.b);
        }
        if (fD > 0.0f) {
            return cVar2;
        }
        if (fD == 0.0f && (cVar2.c > 0.0f || cVar2.d >= 0.0f)) {
            return cVar2;
        }
        cVar2.c = -cVar2.c;
        cVar2.d = -cVar2.d;
        return cVar2;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0075  */
    /* JADX WARN: Code duplicated, block: B:25:0x0078  */
    /* JADX WARN: Code duplicated, block: B:27:0x007b  */
    /* JADX WARN: Code duplicated, block: B:29:0x007e  */
    /* JADX WARN: Code duplicated, block: B:31:0x0081  */
    /* JADX WARN: Code duplicated, block: B:36:0x008b  */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0083, code lost:
    
        if (r11 != 8) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Matrix o(SVG.b bVar, SVG.b bVar2, PreserveAspectRatio preserveAspectRatio) {
        int i2;
        float f2;
        float f3;
        Matrix matrix = new Matrix();
        if (preserveAspectRatio != null && preserveAspectRatio.a() != null) {
            float f4 = bVar.c / bVar2.c;
            float f5 = bVar.d / bVar2.d;
            float f6 = -bVar2.a;
            float f7 = -bVar2.b;
            if (preserveAspectRatio.equals(PreserveAspectRatio.d)) {
                matrix.preTranslate(bVar.a, bVar.b);
                matrix.preScale(f4, f5);
                matrix.preTranslate(f6, f7);
                return matrix;
            }
            float fMax = preserveAspectRatio.b() == PreserveAspectRatio.Scale.slice ? Math.max(f4, f5) : Math.min(f4, f5);
            float f8 = bVar.c / fMax;
            float f9 = bVar.d / fMax;
            int[] iArr = a.a;
            switch (iArr[preserveAspectRatio.a().ordinal()]) {
                case 1:
                case 2:
                case 3:
                    f3 = (bVar2.c - f8) / 2.0f;
                    break;
                case 4:
                case 5:
                case 6:
                    f3 = bVar2.c - f8;
                    break;
                default:
                    i2 = iArr[preserveAspectRatio.a().ordinal()];
                    if (i2 == 2) {
                        f2 = (bVar2.d - f9) / 2.0f;
                        f7 -= f2;
                    } else {
                        if (i2 != 3) {
                            if (i2 != 5) {
                                if (i2 != 6) {
                                    if (i2 != 7) {
                                    }
                                }
                            }
                            f2 = (bVar2.d - f9) / 2.0f;
                            f7 -= f2;
                        }
                        f2 = bVar2.d - f9;
                        f7 -= f2;
                    }
                    matrix.preTranslate(bVar.a, bVar.b);
                    matrix.preScale(fMax, fMax);
                    matrix.preTranslate(f6, f7);
                    break;
            }
            f6 -= f3;
            i2 = iArr[preserveAspectRatio.a().ordinal()];
            if (i2 == 2) {
                f2 = (bVar2.d - f9) / 2.0f;
                f7 -= f2;
            } else {
                if (i2 != 3) {
                    if (i2 != 5) {
                        if (i2 != 6) {
                            if (i2 != 7) {
                            }
                        }
                    }
                    f2 = (bVar2.d - f9) / 2.0f;
                    f7 -= f2;
                }
                f2 = bVar2.d - f9;
                f7 -= f2;
            }
            matrix.preTranslate(bVar.a, bVar.b);
            matrix.preScale(fMax, fMax);
            matrix.preTranslate(f6, f7);
        }
        return matrix;
    }

    public final void o0(SVG.d dVar) {
        y("Circle render", new Object[0]);
        SVG.o oVar = dVar.q;
        if (oVar == null || oVar.i()) {
            return;
        }
        W0(this.d, dVar);
        if (A() && Y0()) {
            Matrix matrix = dVar.n;
            if (matrix != null) {
                this.a.concat(matrix);
            }
            Path pathY = Y(dVar);
            U0(dVar);
            r(dVar);
            p(dVar);
            boolean zM0 = m0();
            if (this.d.b) {
                B(dVar, pathY);
            }
            if (this.d.c) {
                C(pathY);
            }
            if (zM0) {
                j0(dVar);
            }
        }
    }

    public final void p(SVG.i0 i0Var) {
        q(i0Var, i0Var.h);
    }

    public final void p0(SVG.i iVar) {
        y("Ellipse render", new Object[0]);
        SVG.o oVar = iVar.q;
        if (oVar == null || iVar.r == null || oVar.i() || iVar.r.i()) {
            return;
        }
        W0(this.d, iVar);
        if (A() && Y0()) {
            Matrix matrix = iVar.n;
            if (matrix != null) {
                this.a.concat(matrix);
            }
            Path pathZ = Z(iVar);
            U0(iVar);
            r(iVar);
            p(iVar);
            boolean zM0 = m0();
            if (this.d.b) {
                B(iVar, pathZ);
            }
            if (this.d.c) {
                C(pathZ);
            }
            if (zM0) {
                j0(iVar);
            }
        }
    }

    public final void q(SVG.i0 i0Var, SVG.b bVar) {
        Path pathJ;
        if (this.d.a.F == null || (pathJ = j(i0Var, bVar)) == null) {
            return;
        }
        this.a.clipPath(pathJ);
    }

    public final void q0(SVG.l lVar) {
        y("Group render", new Object[0]);
        W0(this.d, lVar);
        if (A()) {
            Matrix matrix = lVar.o;
            if (matrix != null) {
                this.a.concat(matrix);
            }
            p(lVar);
            boolean zM0 = m0();
            F0(lVar, true);
            if (zM0) {
                j0(lVar);
            }
            U0(lVar);
        }
    }

    public final void r(SVG.i0 i0Var) {
        SVG.m0 m0Var = this.d.a.c;
        if (m0Var instanceof SVG.t) {
            z(true, i0Var.h, (SVG.t) m0Var);
        }
        SVG.m0 m0Var2 = this.d.a.f;
        if (m0Var2 instanceof SVG.t) {
            z(false, i0Var.h, (SVG.t) m0Var2);
        }
    }

    public final void r0(SVG.n nVar) {
        SVG.o oVar;
        String str;
        y("Image render", new Object[0]);
        SVG.o oVar2 = nVar.s;
        if (oVar2 == null || oVar2.i() || (oVar = nVar.t) == null || oVar.i() || (str = nVar.p) == null) {
            return;
        }
        PreserveAspectRatio preserveAspectRatio = nVar.o;
        if (preserveAspectRatio == null) {
            preserveAspectRatio = PreserveAspectRatio.e;
        }
        Bitmap bitmapS = s(str);
        if (bitmapS == null) {
            SVG.k();
            return;
        }
        SVG.b bVar = new SVG.b(0.0f, 0.0f, bitmapS.getWidth(), bitmapS.getHeight());
        W0(this.d, nVar);
        if (A() && Y0()) {
            Matrix matrix = nVar.u;
            if (matrix != null) {
                this.a.concat(matrix);
            }
            SVG.o oVar3 = nVar.q;
            float f2 = oVar3 != null ? oVar3.f(this) : 0.0f;
            SVG.o oVar4 = nVar.r;
            this.d.f = new SVG.b(f2, oVar4 != null ? oVar4.g(this) : 0.0f, nVar.s.f(this), nVar.t.f(this));
            if (!this.d.a.w.booleanValue()) {
                SVG.b bVar2 = this.d.f;
                O0(bVar2.a, bVar2.b, bVar2.c, bVar2.d);
            }
            nVar.h = this.d.f;
            U0(nVar);
            p(nVar);
            boolean zM0 = m0();
            X0();
            this.a.save();
            this.a.concat(o(this.d.f, bVar, preserveAspectRatio));
            this.a.drawBitmap(bitmapS, 0.0f, 0.0f, new Paint(this.d.a.N != SVG.Style.RenderQuality.optimizeSpeed ? 2 : 0));
            this.a.restore();
            if (zM0) {
                j0(nVar);
            }
        }
    }

    public final Bitmap s(String str) {
        int iIndexOf;
        if (!str.startsWith("data:") || str.length() < 14 || (iIndexOf = str.indexOf(44)) < 12 || !";base64".equals(str.substring(iIndexOf - 7, iIndexOf))) {
            return null;
        }
        try {
            byte[] bArrDecode = Base64.decode(str.substring(iIndexOf + 1), 0);
            return BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
        } catch (Exception e2) {
            Log.e("SVGAndroidRenderer", "Could not decode bad Data URL", e2);
            return null;
        }
    }

    public final void s0(SVG.p pVar) {
        y("Line render", new Object[0]);
        W0(this.d, pVar);
        if (A() && Y0() && this.d.c) {
            Matrix matrix = pVar.n;
            if (matrix != null) {
                this.a.concat(matrix);
            }
            Path pathA0 = a0(pVar);
            U0(pVar);
            r(pVar);
            p(pVar);
            boolean zM0 = m0();
            C(pathA0);
            I0(pVar);
            if (zM0) {
                j0(pVar);
            }
        }
    }

    public final Typeface t(String str, Integer num, SVG.Style.FontStyle fontStyle) {
        int i2;
        boolean z = fontStyle == SVG.Style.FontStyle.Italic;
        if (num.intValue() > 500) {
            i2 = z ? 3 : 1;
        } else {
            i2 = z ? 2 : 0;
        }
        str.hashCode();
        switch (str) {
            case "sans-serif":
                return Typeface.create(Typeface.SANS_SERIF, i2);
            case "monospace":
                return Typeface.create(Typeface.MONOSPACE, i2);
            case "fantasy":
                return Typeface.create(Typeface.SANS_SERIF, i2);
            case "serif":
                return Typeface.create(Typeface.SERIF, i2);
            case "cursive":
                return Typeface.create(Typeface.SANS_SERIF, i2);
            default:
                return null;
        }
    }

    public final void t0(SVG.u uVar) {
        y("Path render", new Object[0]);
        if (uVar.o == null) {
            return;
        }
        W0(this.d, uVar);
        if (A() && Y0()) {
            h hVar = this.d;
            if (hVar.c || hVar.b) {
                Matrix matrix = uVar.n;
                if (matrix != null) {
                    this.a.concat(matrix);
                }
                Path pathF = new d(uVar.o).f();
                if (uVar.h == null) {
                    uVar.h = m(pathF);
                }
                U0(uVar);
                r(uVar);
                p(uVar);
                boolean zM0 = m0();
                if (this.d.b) {
                    pathF.setFillType(U());
                    B(uVar, pathF);
                }
                if (this.d.c) {
                    C(pathF);
                }
                I0(uVar);
                if (zM0) {
                    j0(uVar);
                }
            }
        }
    }

    public final void u(SVG.l0 l0Var) {
        Boolean bool;
        if ((l0Var instanceof SVG.j0) && (bool = ((SVG.j0) l0Var).d) != null) {
            this.d.h = bool.booleanValue();
        }
    }

    public final void u0(SVG.y yVar) {
        y("PolyLine render", new Object[0]);
        W0(this.d, yVar);
        if (A() && Y0()) {
            h hVar = this.d;
            if (hVar.c || hVar.b) {
                Matrix matrix = yVar.n;
                if (matrix != null) {
                    this.a.concat(matrix);
                }
                if (yVar.o.length < 2) {
                    return;
                }
                Path pathB0 = b0(yVar);
                U0(yVar);
                pathB0.setFillType(U());
                r(yVar);
                p(yVar);
                boolean zM0 = m0();
                if (this.d.b) {
                    B(yVar, pathB0);
                }
                if (this.d.c) {
                    C(pathB0);
                }
                I0(yVar);
                if (zM0) {
                    j0(yVar);
                }
            }
        }
    }

    public final void v0(SVG.z zVar) {
        y("Polygon render", new Object[0]);
        W0(this.d, zVar);
        if (A() && Y0()) {
            h hVar = this.d;
            if (hVar.c || hVar.b) {
                Matrix matrix = zVar.n;
                if (matrix != null) {
                    this.a.concat(matrix);
                }
                if (zVar.o.length < 2) {
                    return;
                }
                Path pathB0 = b0(zVar);
                U0(zVar);
                r(zVar);
                p(zVar);
                boolean zM0 = m0();
                if (this.d.b) {
                    B(zVar, pathB0);
                }
                if (this.d.c) {
                    C(pathB0);
                }
                I0(zVar);
                if (zM0) {
                    j0(zVar);
                }
            }
        }
    }

    public final void w0(SVG.a0 a0Var) {
        y("Rect render", new Object[0]);
        SVG.o oVar = a0Var.q;
        if (oVar == null || a0Var.r == null || oVar.i() || a0Var.r.i()) {
            return;
        }
        W0(this.d, a0Var);
        if (A() && Y0()) {
            Matrix matrix = a0Var.n;
            if (matrix != null) {
                this.a.concat(matrix);
            }
            Path pathC0 = c0(a0Var);
            U0(a0Var);
            r(a0Var);
            p(a0Var);
            boolean zM0 = m0();
            if (this.d.b) {
                B(a0Var, pathC0);
            }
            if (this.d.c) {
                C(pathC0);
            }
            if (zM0) {
                j0(a0Var);
            }
        }
    }

    public final void x0(SVG.d0 d0Var) {
        z0(d0Var, f0(d0Var.q, d0Var.r, d0Var.s, d0Var.t), d0Var.p, d0Var.o);
    }

    public final void y0(SVG.d0 d0Var, SVG.b bVar) {
        z0(d0Var, bVar, d0Var.p, d0Var.o);
    }

    public final void z(boolean z, SVG.b bVar, SVG.t tVar) {
        SVG.l0 l0VarU = this.c.u(tVar.b);
        if (l0VarU == null) {
            F("%s reference '%s' not found", z ? "Fill" : "Stroke", tVar.b);
            SVG.m0 m0Var = tVar.c;
            if (m0Var != null) {
                P0(this.d, z, m0Var);
                return;
            } else if (z) {
                this.d.b = false;
                return;
            } else {
                this.d.c = false;
                return;
            }
        }
        if (l0VarU instanceof SVG.k0) {
            X(z, bVar, (SVG.k0) l0VarU);
        } else if (l0VarU instanceof SVG.o0) {
            e0(z, bVar, (SVG.o0) l0VarU);
        } else if (l0VarU instanceof SVG.b0) {
            Q0(z, (SVG.b0) l0VarU);
        }
    }

    public final void z0(SVG.d0 d0Var, SVG.b bVar, SVG.b bVar2, PreserveAspectRatio preserveAspectRatio) {
        y("Svg render", new Object[0]);
        if (bVar.c == 0.0f || bVar.d == 0.0f) {
            return;
        }
        if (preserveAspectRatio == null && (preserveAspectRatio = d0Var.o) == null) {
            preserveAspectRatio = PreserveAspectRatio.e;
        }
        W0(this.d, d0Var);
        if (A()) {
            h hVar = this.d;
            hVar.f = bVar;
            if (!hVar.a.w.booleanValue()) {
                SVG.b bVar3 = this.d.f;
                O0(bVar3.a, bVar3.b, bVar3.c, bVar3.d);
            }
            q(d0Var, this.d.f);
            if (bVar2 != null) {
                this.a.concat(o(this.d.f, bVar2, preserveAspectRatio));
                this.d.g = d0Var.p;
            } else {
                Canvas canvas = this.a;
                SVG.b bVar4 = this.d.f;
                canvas.translate(bVar4.a, bVar4.b);
            }
            boolean zM0 = m0();
            X0();
            F0(d0Var, true);
            if (zM0) {
                j0(d0Var);
            }
            U0(d0Var);
        }
    }

    public class k extends j {
        public float b;

        public k() {
            super(b.this, null);
            this.b = 0.0f;
        }

        @Override
        public void b(String str) {
            this.b += b.this.d.d.measureText(str);
        }

        public k(b bVar, a aVar) {
            this();
        }
    }

    public class h {
        public SVG.Style a;
        public boolean b;
        public boolean c;
        public Paint d;
        public Paint e;
        public SVG.b f;
        public SVG.b g;
        public boolean h;

        public h() {
            Paint paint = new Paint();
            this.d = paint;
            paint.setFlags(193);
            this.d.setHinting(0);
            this.d.setStyle(Paint.Style.FILL);
            Paint paint2 = this.d;
            Typeface typeface = Typeface.DEFAULT;
            paint2.setTypeface(typeface);
            Paint paint3 = new Paint();
            this.e = paint3;
            paint3.setFlags(193);
            this.e.setHinting(0);
            this.e.setStyle(Paint.Style.STROKE);
            this.e.setTypeface(typeface);
            this.a = SVG.Style.a();
        }

        public h(h hVar) {
            this.b = hVar.b;
            this.c = hVar.c;
            this.d = new Paint(hVar.d);
            this.e = new Paint(hVar.e);
            SVG.b bVar = hVar.f;
            if (bVar != null) {
                this.f = new SVG.b(bVar);
            }
            SVG.b bVar2 = hVar.g;
            if (bVar2 != null) {
                this.g = new SVG.b(bVar2);
            }
            this.h = hVar.h;
            try {
                this.a = (SVG.Style) hVar.a.clone();
            } catch (CloneNotSupportedException e) {
                Log.e("SVGAndroidRenderer", "Unexpected clone error", e);
                this.a = SVG.Style.a();
            }
        }
    }
}
