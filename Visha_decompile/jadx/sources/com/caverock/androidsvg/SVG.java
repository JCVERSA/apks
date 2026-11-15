package com.caverock.androidsvg;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Picture;
import android.graphics.RectF;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import defpackage.r09;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.mozilla.javascript.NativeSymbol;

public class SVG {
    public static boolean g = true;
    public d0 a = null;
    public String b = "";
    public String c = "";
    public float d = 96.0f;
    public CSSParser.n e = new CSSParser.n();
    public Map f = new HashMap();

    public enum GradientSpread {
        pad,
        reflect,
        repeat
    }

    public static class Style implements Cloneable {
        public String A;
        public Boolean B;
        public Boolean C;
        public m0 D;
        public Float E;
        public String F;
        public FillRule G;
        public String H;
        public m0 I;
        public Float J;
        public m0 K;
        public Float L;
        public VectorEffect M;
        public RenderQuality N;
        public long b = 0;
        public m0 c;
        public FillRule d;
        public Float e;
        public m0 f;
        public Float g;
        public o h;
        public LineCap i;
        public LineJoin j;
        public Float k;
        public o[] l;
        public o m;
        public Float n;
        public f o;
        public List p;
        public o q;
        public Integer r;
        public FontStyle s;
        public TextDecoration t;
        public TextDirection u;
        public TextAnchor v;
        public Boolean w;
        public c x;
        public String y;
        public String z;

        public enum FillRule {
            NonZero,
            EvenOdd
        }

        public enum FontStyle {
            Normal,
            Italic,
            Oblique
        }

        public enum LineCap {
            Butt,
            Round,
            Square
        }

        public enum LineJoin {
            Miter,
            Round,
            Bevel
        }

        public enum RenderQuality {
            auto,
            optimizeQuality,
            optimizeSpeed
        }

        public enum TextAnchor {
            Start,
            Middle,
            End
        }

        public enum TextDecoration {
            None,
            Underline,
            Overline,
            LineThrough,
            Blink
        }

        public enum TextDirection {
            LTR,
            RTL
        }

        public enum VectorEffect {
            None,
            NonScalingStroke
        }

        public static Style a() {
            Style style = new Style();
            style.b = -1L;
            f fVar = f.c;
            style.c = fVar;
            FillRule fillRule = FillRule.NonZero;
            style.d = fillRule;
            Float fValueOf = Float.valueOf(1.0f);
            style.e = fValueOf;
            style.f = null;
            style.g = fValueOf;
            style.h = new o(1.0f);
            style.i = LineCap.Butt;
            style.j = LineJoin.Miter;
            style.k = Float.valueOf(4.0f);
            style.l = null;
            style.m = new o(0.0f);
            style.n = fValueOf;
            style.o = fVar;
            style.p = null;
            style.q = new o(12.0f, Unit.pt);
            style.r = 400;
            style.s = FontStyle.Normal;
            style.t = TextDecoration.None;
            style.u = TextDirection.LTR;
            style.v = TextAnchor.Start;
            Boolean bool = Boolean.TRUE;
            style.w = bool;
            style.x = null;
            style.y = null;
            style.z = null;
            style.A = null;
            style.B = bool;
            style.C = bool;
            style.D = fVar;
            style.E = fValueOf;
            style.F = null;
            style.G = fillRule;
            style.H = null;
            style.I = null;
            style.J = fValueOf;
            style.K = null;
            style.L = fValueOf;
            style.M = VectorEffect.None;
            style.N = RenderQuality.auto;
            return style;
        }

        public void c(boolean z) {
            Boolean bool = Boolean.TRUE;
            this.B = bool;
            if (!z) {
                bool = Boolean.FALSE;
            }
            this.w = bool;
            this.x = null;
            this.F = null;
            this.n = Float.valueOf(1.0f);
            this.D = f.c;
            this.E = Float.valueOf(1.0f);
            this.H = null;
            this.I = null;
            this.J = Float.valueOf(1.0f);
            this.K = null;
            this.L = Float.valueOf(1.0f);
            this.M = VectorEffect.None;
        }

        public Object clone() {
            Style style = (Style) super.clone();
            o[] oVarArr = this.l;
            if (oVarArr != null) {
                style.l = (o[]) oVarArr.clone();
            }
            return style;
        }
    }

    public enum Unit {
        px,
        em,
        ex,
        in,
        cm,
        mm,
        pt,
        pc,
        percent
    }

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[Unit.values().length];
            a = iArr;
            try {
                iArr[Unit.px.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[Unit.em.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[Unit.ex.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[Unit.in.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[Unit.cm.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[Unit.mm.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[Unit.pt.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[Unit.pc.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[Unit.percent.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public static class a0 extends k {
        public o o;
        public o p;
        public o q;
        public o r;
        public o s;
        public o t;

        @Override
        public String n() {
            return "rect";
        }
    }

    public static class a1 extends l0 implements v0 {
        public String c;
        public z0 d;

        public a1(String str) {
            this.c = str;
        }

        @Override
        public z0 c() {
            return this.d;
        }

        public String toString() {
            return "TextChild: '" + this.c + "'";
        }
    }

    public static class b0 extends j0 implements h0 {
        @Override
        public List getChildren() {
            return Collections.emptyList();
        }

        @Override
        public void i(l0 l0Var) {
        }

        @Override
        public String n() {
            return "solidColor";
        }
    }

    public static class b1 extends l {
        public String p;
        public o q;
        public o r;
        public o s;
        public o t;

        @Override
        public String n() {
            return "use";
        }
    }

    public static class c {
        public o a;
        public o b;
        public o c;
        public o d;

        public c(o oVar, o oVar2, o oVar3, o oVar4) {
            this.a = oVar;
            this.b = oVar2;
            this.c = oVar3;
            this.d = oVar4;
        }
    }

    public static class c0 extends j0 implements h0 {
        public Float h;

        @Override
        public List getChildren() {
            return Collections.emptyList();
        }

        @Override
        public void i(l0 l0Var) {
        }

        @Override
        public String n() {
            return "stop";
        }
    }

    public static class c1 extends p0 implements s {
        @Override
        public String n() {
            return "view";
        }
    }

    public static class d extends k {
        public o o;
        public o p;
        public o q;

        @Override
        public String n() {
            return TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE;
        }
    }

    public static class d0 extends p0 {
        public o q;
        public o r;
        public o s;
        public o t;
        public String u;

        @Override
        public String n() {
            return "svg";
        }
    }

    public static class e extends l implements s {
        public Boolean p;

        @Override
        public String n() {
            return "clipPath";
        }
    }

    public interface e0 {
        String a();

        void b(Set set);

        void d(Set set);

        Set e();

        Set f();

        void g(Set set);

        Set h();

        void j(Set set);

        void k(String str);

        Set m();
    }

    public static class f extends m0 {
        public static final f c = new f(-16777216);
        public static final f d = new f(0);
        public int b;

        public f(int i) {
            this.b = i;
        }

        public String toString() {
            return String.format("#%08x", Integer.valueOf(this.b));
        }
    }

    public static abstract class f0 extends i0 implements h0, e0 {
        public List i = new ArrayList();
        public Set j = null;
        public String k = null;
        public Set l = null;
        public Set m = null;
        public Set n = null;

        @Override
        public String a() {
            return this.k;
        }

        @Override
        public void b(Set set) {
            this.n = set;
        }

        @Override
        public void d(Set set) {
            this.l = set;
        }

        @Override
        public Set e() {
            return this.m;
        }

        @Override
        public Set f() {
            return null;
        }

        @Override
        public void g(Set set) {
            this.j = set;
        }

        @Override
        public List getChildren() {
            return this.i;
        }

        @Override
        public Set h() {
            return this.j;
        }

        @Override
        public void i(l0 l0Var) {
            this.i.add(l0Var);
        }

        @Override
        public void j(Set set) {
            this.m = set;
        }

        @Override
        public void k(String str) {
            this.k = str;
        }

        @Override
        public Set m() {
            return this.n;
        }
    }

    public static class g extends m0 {
        public static g b = new g();

        public static g a() {
            return b;
        }
    }

    public static abstract class g0 extends i0 implements e0 {
        public Set i = null;
        public String j = null;
        public Set k = null;
        public Set l = null;
        public Set m = null;

        @Override
        public String a() {
            return this.j;
        }

        @Override
        public void b(Set set) {
            this.m = set;
        }

        @Override
        public void d(Set set) {
            this.k = set;
        }

        @Override
        public Set e() {
            return this.l;
        }

        @Override
        public Set f() {
            return this.k;
        }

        @Override
        public void g(Set set) {
            this.i = set;
        }

        @Override
        public Set h() {
            return this.i;
        }

        @Override
        public void j(Set set) {
            this.l = set;
        }

        @Override
        public void k(String str) {
            this.j = str;
        }

        @Override
        public Set m() {
            return this.m;
        }
    }

    public static class h extends l implements s {
        @Override
        public String n() {
            return "defs";
        }
    }

    public interface h0 {
        List getChildren();

        void i(l0 l0Var);
    }

    public static class i extends k {
        public o o;
        public o p;
        public o q;
        public o r;

        @Override
        public String n() {
            return "ellipse";
        }
    }

    public static abstract class i0 extends j0 {
        public b h = null;
    }

    public static abstract class j extends j0 implements h0 {
        public List h = new ArrayList();
        public Boolean i;
        public Matrix j;
        public GradientSpread k;
        public String l;

        @Override
        public List getChildren() {
            return this.h;
        }

        @Override
        public void i(l0 l0Var) throws SVGParseException {
            if (l0Var instanceof c0) {
                this.h.add(l0Var);
                return;
            }
            throw new SVGParseException("Gradient elements cannot contain " + l0Var + " elements.");
        }
    }

    public static abstract class j0 extends l0 {
        public String c = null;
        public Boolean d = null;
        public Style e = null;
        public Style f = null;
        public List g = null;

        public String toString() {
            return n();
        }
    }

    public static abstract class k extends g0 implements m {
        public Matrix n;

        @Override
        public void l(Matrix matrix) {
            this.n = matrix;
        }
    }

    public static class k0 extends j {
        public o m;
        public o n;
        public o o;
        public o p;

        @Override
        public String n() {
            return "linearGradient";
        }
    }

    public static class l extends f0 implements m {
        public Matrix o;

        @Override
        public void l(Matrix matrix) {
            this.o = matrix;
        }

        @Override
        public String n() {
            return "group";
        }
    }

    public static class l0 {
        public SVG a;
        public h0 b;

        public abstract String n();
    }

    public interface m {
        void l(Matrix matrix);
    }

    public static abstract class m0 implements Cloneable {
    }

    public static class n extends n0 implements m {
        public String p;
        public o q;
        public o r;
        public o s;
        public o t;
        public Matrix u;

        @Override
        public void l(Matrix matrix) {
            this.u = matrix;
        }

        @Override
        public String n() {
            return "image";
        }
    }

    public static abstract class n0 extends f0 {
        public PreserveAspectRatio o = null;
    }

    public static class o0 extends j {
        public o m;
        public o n;
        public o o;
        public o p;
        public o q;

        @Override
        public String n() {
            return "radialGradient";
        }
    }

    public static class p extends k {
        public o o;
        public o p;
        public o q;
        public o r;

        @Override
        public String n() {
            return "line";
        }
    }

    public static abstract class p0 extends n0 {
        public b p;
    }

    public static class q extends p0 implements s {
        public boolean q;
        public o r;
        public o s;
        public o t;
        public o u;
        public Float v;

        @Override
        public String n() {
            return "marker";
        }
    }

    public static class q0 extends l {
        @Override
        public String n() {
            return ClientABTestDTOKt.SWITCH;
        }
    }

    public static class r extends f0 implements s {
        public Boolean o;
        public Boolean p;
        public o q;
        public o r;
        public o s;
        public o t;

        @Override
        public String n() {
            return "mask";
        }
    }

    public static class r0 extends p0 implements s {
        @Override
        public String n() {
            return NativeSymbol.TYPE_NAME;
        }
    }

    public interface s {
    }

    public static class s0 extends w0 implements v0 {
        public String o;
        public z0 p;

        @Override
        public z0 c() {
            return this.p;
        }

        @Override
        public String n() {
            return "tref";
        }

        public void o(z0 z0Var) {
            this.p = z0Var;
        }
    }

    public static class t extends m0 {
        public String b;
        public m0 c;

        public t(String str, m0 m0Var) {
            this.b = str;
            this.c = m0Var;
        }

        public String toString() {
            return this.b + " " + this.c;
        }
    }

    public static class t0 extends y0 implements v0 {
        public z0 s;

        @Override
        public z0 c() {
            return this.s;
        }

        @Override
        public String n() {
            return "tspan";
        }

        public void o(z0 z0Var) {
            this.s = z0Var;
        }
    }

    public static class u extends k {
        public v o;
        public Float p;

        @Override
        public String n() {
            return "path";
        }
    }

    public static class u0 extends y0 implements z0, m {
        public Matrix s;

        @Override
        public void l(Matrix matrix) {
            this.s = matrix;
        }

        @Override
        public String n() {
            return "text";
        }
    }

    public static class v implements w {
        public int b = 0;
        public int d = 0;
        public byte[] a = new byte[8];
        public float[] c = new float[16];

        @Override
        public void a(float f, float f2) {
            f((byte) 0);
            g(2);
            float[] fArr = this.c;
            int i = this.d;
            int i2 = i + 1;
            this.d = i2;
            fArr[i] = f;
            this.d = i + 2;
            fArr[i2] = f2;
        }

        @Override
        public void b(float f, float f2) {
            f((byte) 1);
            g(2);
            float[] fArr = this.c;
            int i = this.d;
            int i2 = i + 1;
            this.d = i2;
            fArr[i] = f;
            this.d = i + 2;
            fArr[i2] = f2;
        }

        @Override
        public void c(float f, float f2, float f3, float f4) {
            f((byte) 3);
            g(4);
            float[] fArr = this.c;
            int i = this.d;
            int i2 = i + 1;
            this.d = i2;
            fArr[i] = f;
            int i3 = i + 2;
            this.d = i3;
            fArr[i2] = f2;
            int i4 = i + 3;
            this.d = i4;
            fArr[i3] = f3;
            this.d = i + 4;
            fArr[i4] = f4;
        }

        @Override
        public void close() {
            f((byte) 8);
        }

        @Override
        public void d(float f, float f2, float f3, float f4, float f5, float f6) {
            f((byte) 2);
            g(6);
            float[] fArr = this.c;
            int i = this.d;
            int i2 = i + 1;
            this.d = i2;
            fArr[i] = f;
            int i3 = i + 2;
            this.d = i3;
            fArr[i2] = f2;
            int i4 = i + 3;
            this.d = i4;
            fArr[i3] = f3;
            int i5 = i + 4;
            this.d = i5;
            fArr[i4] = f4;
            int i6 = i + 5;
            this.d = i6;
            fArr[i5] = f5;
            this.d = i + 6;
            fArr[i6] = f6;
        }

        @Override
        public void e(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5) {
            f((byte) ((z ? 2 : 0) | 4 | (z2 ? 1 : 0)));
            g(5);
            float[] fArr = this.c;
            int i = this.d;
            int i2 = i + 1;
            this.d = i2;
            fArr[i] = f;
            int i3 = i + 2;
            this.d = i3;
            fArr[i2] = f2;
            int i4 = i + 3;
            this.d = i4;
            fArr[i3] = f3;
            int i5 = i + 4;
            this.d = i5;
            fArr[i4] = f4;
            this.d = i + 5;
            fArr[i5] = f5;
        }

        public final void f(byte b) {
            int i = this.b;
            byte[] bArr = this.a;
            if (i == bArr.length) {
                byte[] bArr2 = new byte[bArr.length * 2];
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                this.a = bArr2;
            }
            byte[] bArr3 = this.a;
            int i2 = this.b;
            this.b = i2 + 1;
            bArr3[i2] = b;
        }

        public final void g(int i) {
            float[] fArr = this.c;
            if (fArr.length < this.d + i) {
                float[] fArr2 = new float[fArr.length * 2];
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                this.c = fArr2;
            }
        }

        public void h(w wVar) {
            int i = 0;
            for (int i2 = 0; i2 < this.b; i2++) {
                byte b = this.a[i2];
                if (b == 0) {
                    float[] fArr = this.c;
                    int i3 = i + 1;
                    float f = fArr[i];
                    i += 2;
                    wVar.a(f, fArr[i3]);
                } else if (b == 1) {
                    float[] fArr2 = this.c;
                    int i4 = i + 1;
                    float f2 = fArr2[i];
                    i += 2;
                    wVar.b(f2, fArr2[i4]);
                } else if (b == 2) {
                    float[] fArr3 = this.c;
                    float f3 = fArr3[i];
                    float f4 = fArr3[i + 1];
                    float f5 = fArr3[i + 2];
                    float f6 = fArr3[i + 3];
                    int i5 = i + 5;
                    float f7 = fArr3[i + 4];
                    i += 6;
                    wVar.d(f3, f4, f5, f6, f7, fArr3[i5]);
                } else if (b == 3) {
                    float[] fArr4 = this.c;
                    float f8 = fArr4[i];
                    float f9 = fArr4[i + 1];
                    int i6 = i + 3;
                    float f10 = fArr4[i + 2];
                    i += 4;
                    wVar.c(f8, f9, f10, fArr4[i6]);
                } else if (b != 8) {
                    boolean z = (b & 2) != 0;
                    boolean z2 = (b & 1) != 0;
                    float[] fArr5 = this.c;
                    float f11 = fArr5[i];
                    float f12 = fArr5[i + 1];
                    float f13 = fArr5[i + 2];
                    int i7 = i + 4;
                    float f14 = fArr5[i + 3];
                    i += 5;
                    wVar.e(f11, f12, f13, z, z2, f14, fArr5[i7]);
                } else {
                    wVar.close();
                }
            }
        }

        public boolean i() {
            return this.b == 0;
        }
    }

    public interface v0 {
        z0 c();
    }

    public interface w {
        void a(float f, float f2);

        void b(float f, float f2);

        void c(float f, float f2, float f3, float f4);

        void close();

        void d(float f, float f2, float f3, float f4, float f5, float f6);

        void e(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5);
    }

    public static abstract class w0 extends f0 {
        @Override
        public void i(l0 l0Var) throws SVGParseException {
            if (l0Var instanceof v0) {
                this.i.add(l0Var);
                return;
            }
            throw new SVGParseException("Text content elements cannot contain " + l0Var + " elements.");
        }
    }

    public static class x extends p0 implements s {
        public Boolean q;
        public Boolean r;
        public Matrix s;
        public o t;
        public o u;
        public o v;
        public o w;
        public String x;

        @Override
        public String n() {
            return "pattern";
        }
    }

    public static class x0 extends w0 implements v0 {
        public String o;
        public o p;
        public z0 q;

        @Override
        public z0 c() {
            return this.q;
        }

        @Override
        public String n() {
            return "textPath";
        }

        public void o(z0 z0Var) {
            this.q = z0Var;
        }
    }

    public static class y extends k {
        public float[] o;

        @Override
        public String n() {
            return "polyline";
        }
    }

    public static abstract class y0 extends w0 {
        public List o;
        public List p;
        public List q;
        public List r;
    }

    public static class z extends y {
        @Override
        public String n() {
            return "polygon";
        }
    }

    public interface z0 {
    }

    public static r09 k() {
        return null;
    }

    public static SVG l(InputStream inputStream) {
        return new SVGParser().z(inputStream, g);
    }

    public static SVG m(Context context, int i2) {
        return n(context.getResources(), i2);
    }

    public static SVG n(Resources resources, int i2) {
        SVGParser sVGParser = new SVGParser();
        InputStream inputStreamOpenRawResource = resources.openRawResource(i2);
        try {
            return sVGParser.z(inputStreamOpenRawResource, g);
        } finally {
            try {
                inputStreamOpenRawResource.close();
            } catch (IOException unused) {
            }
        }
    }

    public static SVG o(String str) {
        return new SVGParser().z(new ByteArrayInputStream(str.getBytes()), g);
    }

    public void A(String str) {
        this.b = str;
    }

    public void a(CSSParser.n nVar) {
        this.e.b(nVar);
    }

    public void b() {
        this.e.e(CSSParser.Source.RenderOptions);
    }

    public final String c(String str) {
        if (str.startsWith("\"") && str.endsWith("\"")) {
            str = str.substring(1, str.length() - 1).replace("\\\"", "\"");
        } else if (str.startsWith("'") && str.endsWith("'")) {
            str = str.substring(1, str.length() - 1).replace("\\'", "'");
        }
        return str.replace("\\\n", "").replace("\\A", "\n");
    }

    public List d() {
        return this.e.c();
    }

    public final b e(float f2) {
        Unit unit;
        Unit unit2;
        Unit unit3;
        Unit unit4;
        float fC;
        Unit unit5;
        d0 d0Var = this.a;
        o oVar = d0Var.s;
        o oVar2 = d0Var.t;
        if (oVar == null || oVar.i() || (unit = oVar.c) == (unit2 = Unit.percent) || unit == (unit3 = Unit.em) || unit == (unit4 = Unit.ex)) {
            return new b(-1.0f, -1.0f, -1.0f, -1.0f);
        }
        float fC2 = oVar.c(f2);
        if (oVar2 == null) {
            b bVar = this.a.p;
            fC = bVar != null ? (bVar.d * fC2) / bVar.c : fC2;
        } else {
            if (oVar2.i() || (unit5 = oVar2.c) == unit2 || unit5 == unit3 || unit5 == unit4) {
                return new b(-1.0f, -1.0f, -1.0f, -1.0f);
            }
            fC = oVar2.c(f2);
        }
        return new b(0.0f, 0.0f, fC2, fC);
    }

    public float f() {
        if (this.a != null) {
            return e(this.d).d;
        }
        throw new IllegalArgumentException("SVG document is empty");
    }

    public RectF g() {
        d0 d0Var = this.a;
        if (d0Var == null) {
            throw new IllegalArgumentException("SVG document is empty");
        }
        b bVar = d0Var.p;
        if (bVar == null) {
            return null;
        }
        return bVar.d();
    }

    public float h() {
        if (this.a != null) {
            return e(this.d).c;
        }
        throw new IllegalArgumentException("SVG document is empty");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final j0 i(h0 h0Var, String str) {
        j0 j0VarI;
        j0 j0Var = (j0) h0Var;
        if (str.equals(j0Var.c)) {
            return j0Var;
        }
        for (Object obj : h0Var.getChildren()) {
            if (obj instanceof j0) {
                j0 j0Var2 = (j0) obj;
                if (str.equals(j0Var2.c)) {
                    return j0Var2;
                }
                if ((obj instanceof h0) && (j0VarI = i((h0) obj, str)) != null) {
                    return j0VarI;
                }
            }
        }
        return null;
    }

    public j0 j(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        if (str.equals(this.a.c)) {
            return this.a;
        }
        if (this.f.containsKey(str)) {
            return (j0) this.f.get(str);
        }
        j0 j0VarI = i(this.a, str);
        this.f.put(str, j0VarI);
        return j0VarI;
    }

    public d0 p() {
        return this.a;
    }

    public boolean q() {
        return !this.e.d();
    }

    public Picture r() {
        return t(null);
    }

    public Picture s(int i2, int i3, com.caverock.androidsvg.a aVar) {
        Picture picture = new Picture();
        Canvas canvasBeginRecording = picture.beginRecording(i2, i3);
        if (aVar == null || aVar.f == null) {
            aVar = aVar == null ? new com.caverock.androidsvg.a() : new com.caverock.androidsvg.a(aVar);
            aVar.h(0.0f, 0.0f, i2, i3);
        }
        new com.caverock.androidsvg.b(canvasBeginRecording, this.d).G0(this, aVar);
        picture.endRecording();
        return picture;
    }

    public Picture t(com.caverock.androidsvg.a aVar) {
        o oVar;
        b bVar = (aVar == null || !aVar.f()) ? this.a.p : aVar.d;
        if (aVar != null && aVar.g()) {
            return s((int) Math.ceil(aVar.f.b()), (int) Math.ceil(aVar.f.c()), aVar);
        }
        d0 d0Var = this.a;
        o oVar2 = d0Var.s;
        if (oVar2 != null) {
            Unit unit = oVar2.c;
            Unit unit2 = Unit.percent;
            if (unit != unit2 && (oVar = d0Var.t) != null && oVar.c != unit2) {
                return s((int) Math.ceil(oVar2.c(this.d)), (int) Math.ceil(this.a.t.c(this.d)), aVar);
            }
        }
        if (oVar2 != null && bVar != null) {
            float fC = oVar2.c(this.d);
            return s((int) Math.ceil(fC), (int) Math.ceil((bVar.d * fC) / bVar.c), aVar);
        }
        o oVar3 = d0Var.t;
        if (oVar3 == null || bVar == null) {
            return s(512, 512, aVar);
        }
        float fC2 = oVar3.c(this.d);
        return s((int) Math.ceil((bVar.c * fC2) / bVar.d), (int) Math.ceil(fC2), aVar);
    }

    public l0 u(String str) {
        if (str == null) {
            return null;
        }
        String strC = c(str);
        if (strC.length() <= 1 || !strC.startsWith("#")) {
            return null;
        }
        return j(strC.substring(1));
    }

    public void v(String str) {
        this.c = str;
    }

    public void w(float f2) {
        d0 d0Var = this.a;
        if (d0Var == null) {
            throw new IllegalArgumentException("SVG document is empty");
        }
        d0Var.t = new o(f2);
    }

    public void x(float f2, float f3, float f4, float f5) {
        d0 d0Var = this.a;
        if (d0Var == null) {
            throw new IllegalArgumentException("SVG document is empty");
        }
        d0Var.p = new b(f2, f3, f4, f5);
    }

    public void y(float f2) {
        d0 d0Var = this.a;
        if (d0Var == null) {
            throw new IllegalArgumentException("SVG document is empty");
        }
        d0Var.s = new o(f2);
    }

    public void z(d0 d0Var) {
        this.a = d0Var;
    }

    public static class o implements Cloneable {
        public float b;
        public Unit c;

        public o(float f, Unit unit) {
            this.b = f;
            this.c = unit;
        }

        public float a() {
            return this.b;
        }

        public float c(float f) {
            int i = a.a[this.c.ordinal()];
            if (i == 1) {
                return this.b;
            }
            switch (i) {
                case 4:
                    return this.b * f;
                case 5:
                    return (this.b * f) / 2.54f;
                case 6:
                    return (this.b * f) / 25.4f;
                case 7:
                    return (this.b * f) / 72.0f;
                case 8:
                    return (this.b * f) / 6.0f;
                default:
                    return this.b;
            }
        }

        public float d(com.caverock.androidsvg.b bVar) {
            float fSqrt;
            if (this.c != Unit.percent) {
                return f(bVar);
            }
            b bVarS = bVar.S();
            if (bVarS == null) {
                return this.b;
            }
            float f = bVarS.c;
            float f2 = bVarS.d;
            if (f == f2) {
                fSqrt = this.b * f;
            } else {
                fSqrt = this.b * ((float) (Math.sqrt((f * f) + (f2 * f2)) / 1.414213562373095d));
            }
            return fSqrt / 100.0f;
        }

        public float e(com.caverock.androidsvg.b bVar, float f) {
            return this.c == Unit.percent ? (this.b * f) / 100.0f : f(bVar);
        }

        public float f(com.caverock.androidsvg.b bVar) {
            switch (a.a[this.c.ordinal()]) {
                case 1:
                    return this.b;
                case 2:
                    return this.b * bVar.Q();
                case 3:
                    return this.b * bVar.R();
                case 4:
                    return this.b * bVar.T();
                case 5:
                    return (this.b * bVar.T()) / 2.54f;
                case 6:
                    return (this.b * bVar.T()) / 25.4f;
                case 7:
                    return (this.b * bVar.T()) / 72.0f;
                case 8:
                    return (this.b * bVar.T()) / 6.0f;
                case 9:
                    b bVarS = bVar.S();
                    return bVarS == null ? this.b : (this.b * bVarS.c) / 100.0f;
                default:
                    return this.b;
            }
        }

        public float g(com.caverock.androidsvg.b bVar) {
            if (this.c != Unit.percent) {
                return f(bVar);
            }
            b bVarS = bVar.S();
            return bVarS == null ? this.b : (this.b * bVarS.d) / 100.0f;
        }

        public boolean h() {
            return this.b < 0.0f;
        }

        public boolean i() {
            return this.b == 0.0f;
        }

        public String toString() {
            return String.valueOf(this.b) + this.c;
        }

        public o(float f) {
            this.b = f;
            this.c = Unit.px;
        }
    }

    public static class b {
        public float a;
        public float b;
        public float c;
        public float d;

        public b(float f, float f2, float f3, float f4) {
            this.a = f;
            this.b = f2;
            this.c = f3;
            this.d = f4;
        }

        public static b a(float f, float f2, float f3, float f4) {
            return new b(f, f2, f3 - f, f4 - f2);
        }

        public float b() {
            return this.a + this.c;
        }

        public float c() {
            return this.b + this.d;
        }

        public RectF d() {
            return new RectF(this.a, this.b, b(), c());
        }

        public void e(b bVar) {
            float f = bVar.a;
            if (f < this.a) {
                this.a = f;
            }
            float f2 = bVar.b;
            if (f2 < this.b) {
                this.b = f2;
            }
            if (bVar.b() > b()) {
                this.c = bVar.b() - this.a;
            }
            if (bVar.c() > c()) {
                this.d = bVar.c() - this.b;
            }
        }

        public String toString() {
            return "[" + this.a + " " + this.b + " " + this.c + " " + this.d + "]";
        }

        public b(b bVar) {
            this.a = bVar.a;
            this.b = bVar.b;
            this.c = bVar.c;
            this.d = bVar.d;
        }
    }
}
