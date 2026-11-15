package cb;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import com.google.android.material.R$styleable;

public class n {

    public static final d f16848m = new l(0.5f);

    e f16849a;

    e f16850b;

    e f16851c;

    e f16852d;

    d f16853e;

    d f16854f;

    d f16855g;

    d f16856h;

    g f16857i;

    g f16858j;

    g f16859k;

    g f16860l;

    public interface c {
        d a(d dVar);
    }

    public static b a() {
        return new b();
    }

    public static b b(Context context, int i10, int i11) {
        return c(context, i10, i11, 0);
    }

    private static b c(Context context, int i10, int i11, int i12) {
        return d(context, i10, i11, new cb.a(i12));
    }

    private static b d(Context context, int i10, int i11, d dVar) {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i10);
        if (i11 != 0) {
            contextThemeWrapper = new ContextThemeWrapper(contextThemeWrapper, i11);
        }
        TypedArray typedArrayObtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(R$styleable.ShapeAppearance);
        try {
            int i12 = typedArrayObtainStyledAttributes.getInt(R$styleable.ShapeAppearance_cornerFamily, 0);
            int i13 = typedArrayObtainStyledAttributes.getInt(R$styleable.ShapeAppearance_cornerFamilyTopLeft, i12);
            int i14 = typedArrayObtainStyledAttributes.getInt(R$styleable.ShapeAppearance_cornerFamilyTopRight, i12);
            int i15 = typedArrayObtainStyledAttributes.getInt(R$styleable.ShapeAppearance_cornerFamilyBottomRight, i12);
            int i16 = typedArrayObtainStyledAttributes.getInt(R$styleable.ShapeAppearance_cornerFamilyBottomLeft, i12);
            d dVarM = m(typedArrayObtainStyledAttributes, R$styleable.ShapeAppearance_cornerSize, dVar);
            d dVarM2 = m(typedArrayObtainStyledAttributes, R$styleable.ShapeAppearance_cornerSizeTopLeft, dVarM);
            d dVarM3 = m(typedArrayObtainStyledAttributes, R$styleable.ShapeAppearance_cornerSizeTopRight, dVarM);
            d dVarM4 = m(typedArrayObtainStyledAttributes, R$styleable.ShapeAppearance_cornerSizeBottomRight, dVarM);
            return new b().F(i13, dVarM2).K(i14, dVarM3).z(i15, dVarM4).u(i16, m(typedArrayObtainStyledAttributes, R$styleable.ShapeAppearance_cornerSizeBottomLeft, dVarM));
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static b e(Context context, AttributeSet attributeSet, int i10, int i11) {
        return f(context, attributeSet, i10, i11, 0);
    }

    public static b f(Context context, AttributeSet attributeSet, int i10, int i11, int i12) {
        return g(context, attributeSet, i10, i11, new cb.a(i12));
    }

    public static b g(Context context, AttributeSet attributeSet, int i10, int i11, d dVar) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MaterialShape, i10, i11);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialShape_shapeAppearance, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialShape_shapeAppearanceOverlay, 0);
        typedArrayObtainStyledAttributes.recycle();
        return d(context, resourceId, resourceId2, dVar);
    }

    private static d m(TypedArray typedArray, int i10, d dVar) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i10);
        if (typedValuePeekValue == null) {
            return dVar;
        }
        int i11 = typedValuePeekValue.type;
        if (i11 == 5) {
            return new cb.a(TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArray.getResources().getDisplayMetrics()));
        }
        return i11 == 6 ? new l(typedValuePeekValue.getFraction(1.0f, 1.0f)) : dVar;
    }

    public g h() {
        return this.f16859k;
    }

    public e i() {
        return this.f16852d;
    }

    public d j() {
        return this.f16856h;
    }

    public e k() {
        return this.f16851c;
    }

    public d l() {
        return this.f16855g;
    }

    public g n() {
        return this.f16860l;
    }

    public g o() {
        return this.f16858j;
    }

    public g p() {
        return this.f16857i;
    }

    public e q() {
        return this.f16849a;
    }

    public d r() {
        return this.f16853e;
    }

    public e s() {
        return this.f16850b;
    }

    public d t() {
        return this.f16854f;
    }

    public boolean u(RectF rectF) {
        boolean z10 = this.f16860l.getClass().equals(g.class) && this.f16858j.getClass().equals(g.class) && this.f16857i.getClass().equals(g.class) && this.f16859k.getClass().equals(g.class);
        float fA = this.f16853e.a(rectF);
        return z10 && ((this.f16854f.a(rectF) > fA ? 1 : (this.f16854f.a(rectF) == fA ? 0 : -1)) == 0 && (this.f16856h.a(rectF) > fA ? 1 : (this.f16856h.a(rectF) == fA ? 0 : -1)) == 0 && (this.f16855g.a(rectF) > fA ? 1 : (this.f16855g.a(rectF) == fA ? 0 : -1)) == 0) && ((this.f16850b instanceof m) && (this.f16849a instanceof m) && (this.f16851c instanceof m) && (this.f16852d instanceof m));
    }

    public b v() {
        return new b(this);
    }

    public n w(float f10) {
        return v().o(f10).m();
    }

    public n x(d dVar) {
        return v().p(dVar).m();
    }

    public n y(c cVar) {
        return v().I(cVar.a(r())).N(cVar.a(t())).x(cVar.a(j())).C(cVar.a(l())).m();
    }

    private n(b bVar) {
        this.f16849a = bVar.f16861a;
        this.f16850b = bVar.f16862b;
        this.f16851c = bVar.f16863c;
        this.f16852d = bVar.f16864d;
        this.f16853e = bVar.f16865e;
        this.f16854f = bVar.f16866f;
        this.f16855g = bVar.f16867g;
        this.f16856h = bVar.f16868h;
        this.f16857i = bVar.f16869i;
        this.f16858j = bVar.f16870j;
        this.f16859k = bVar.f16871k;
        this.f16860l = bVar.f16872l;
    }

    public static final class b {

        private e f16861a;

        private e f16862b;

        private e f16863c;

        private e f16864d;

        private d f16865e;

        private d f16866f;

        private d f16867g;

        private d f16868h;

        private g f16869i;

        private g f16870j;

        private g f16871k;

        private g f16872l;

        public b() {
            this.f16861a = j.b();
            this.f16862b = j.b();
            this.f16863c = j.b();
            this.f16864d = j.b();
            this.f16865e = new cb.a(0.0f);
            this.f16866f = new cb.a(0.0f);
            this.f16867g = new cb.a(0.0f);
            this.f16868h = new cb.a(0.0f);
            this.f16869i = j.c();
            this.f16870j = j.c();
            this.f16871k = j.c();
            this.f16872l = j.c();
        }

        private static float n(e eVar) {
            if (eVar instanceof m) {
                return ((m) eVar).f16847a;
            }
            if (eVar instanceof f) {
                return ((f) eVar).f16792a;
            }
            return -1.0f;
        }

        public b A(e eVar) {
            this.f16863c = eVar;
            float fN = n(eVar);
            if (fN != -1.0f) {
                B(fN);
            }
            return this;
        }

        public b B(float f10) {
            this.f16867g = new cb.a(f10);
            return this;
        }

        public b C(d dVar) {
            this.f16867g = dVar;
            return this;
        }

        public b D(g gVar) {
            this.f16869i = gVar;
            return this;
        }

        public b E(int i10, float f10) {
            return G(j.a(i10)).H(f10);
        }

        public b F(int i10, d dVar) {
            return G(j.a(i10)).I(dVar);
        }

        public b G(e eVar) {
            this.f16861a = eVar;
            float fN = n(eVar);
            if (fN != -1.0f) {
                H(fN);
            }
            return this;
        }

        public b H(float f10) {
            this.f16865e = new cb.a(f10);
            return this;
        }

        public b I(d dVar) {
            this.f16865e = dVar;
            return this;
        }

        public b J(int i10, float f10) {
            return L(j.a(i10)).M(f10);
        }

        public b K(int i10, d dVar) {
            return L(j.a(i10)).N(dVar);
        }

        public b L(e eVar) {
            this.f16862b = eVar;
            float fN = n(eVar);
            if (fN != -1.0f) {
                M(fN);
            }
            return this;
        }

        public b M(float f10) {
            this.f16866f = new cb.a(f10);
            return this;
        }

        public b N(d dVar) {
            this.f16866f = dVar;
            return this;
        }

        public n m() {
            return new n(this);
        }

        public b o(float f10) {
            return H(f10).M(f10).B(f10).w(f10);
        }

        public b p(d dVar) {
            return I(dVar).N(dVar).C(dVar).x(dVar);
        }

        public b q(int i10, float f10) {
            return r(j.a(i10)).o(f10);
        }

        public b r(e eVar) {
            return G(eVar).L(eVar).A(eVar).v(eVar);
        }

        public b s(g gVar) {
            this.f16871k = gVar;
            return this;
        }

        public b t(int i10, float f10) {
            return v(j.a(i10)).w(f10);
        }

        public b u(int i10, d dVar) {
            return v(j.a(i10)).x(dVar);
        }

        public b v(e eVar) {
            this.f16864d = eVar;
            float fN = n(eVar);
            if (fN != -1.0f) {
                w(fN);
            }
            return this;
        }

        public b w(float f10) {
            this.f16868h = new cb.a(f10);
            return this;
        }

        public b x(d dVar) {
            this.f16868h = dVar;
            return this;
        }

        public b y(int i10, float f10) {
            return A(j.a(i10)).B(f10);
        }

        public b z(int i10, d dVar) {
            return A(j.a(i10)).C(dVar);
        }

        public b(n nVar) {
            this.f16861a = j.b();
            this.f16862b = j.b();
            this.f16863c = j.b();
            this.f16864d = j.b();
            this.f16865e = new cb.a(0.0f);
            this.f16866f = new cb.a(0.0f);
            this.f16867g = new cb.a(0.0f);
            this.f16868h = new cb.a(0.0f);
            this.f16869i = j.c();
            this.f16870j = j.c();
            this.f16871k = j.c();
            this.f16872l = j.c();
            this.f16861a = nVar.f16849a;
            this.f16862b = nVar.f16850b;
            this.f16863c = nVar.f16851c;
            this.f16864d = nVar.f16852d;
            this.f16865e = nVar.f16853e;
            this.f16866f = nVar.f16854f;
            this.f16867g = nVar.f16855g;
            this.f16868h = nVar.f16856h;
            this.f16869i = nVar.f16857i;
            this.f16870j = nVar.f16858j;
            this.f16871k = nVar.f16859k;
            this.f16872l = nVar.f16860l;
        }
    }

    public n() {
        this.f16849a = j.b();
        this.f16850b = j.b();
        this.f16851c = j.b();
        this.f16852d = j.b();
        this.f16853e = new cb.a(0.0f);
        this.f16854f = new cb.a(0.0f);
        this.f16855g = new cb.a(0.0f);
        this.f16856h = new cb.a(0.0f);
        this.f16857i = j.c();
        this.f16858j = j.c();
        this.f16859k = j.c();
        this.f16860l = j.c();
    }
}
