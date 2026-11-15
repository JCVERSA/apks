package com.google.android.material.carousel;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R$dimen;
import com.google.android.material.R$styleable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public class CarouselLayoutManager extends RecyclerView.m implements com.google.android.material.carousel.b, RecyclerView.w.b {

    int f27748a;

    int f27749b;

    int f27750c;

    private boolean f27751d;

    private final c f27752e;

    private com.google.android.material.carousel.d f27753f;

    private g f27754g;

    private f f27755h;

    private int f27756i;

    private Map f27757j;

    private com.google.android.material.carousel.c f27758k;

    private final View.OnLayoutChangeListener f27759l;

    private int f27760m;

    private int f27761n;

    private int f27762o;

    class a extends androidx.recyclerview.widget.h {
        a(Context context) {
            super(context);
        }

        @Override
        public PointF a(int i10) {
            return CarouselLayoutManager.this.computeScrollVectorForPosition(i10);
        }

        @Override
        public int t(View view, int i10) {
            if (CarouselLayoutManager.this.f27754g == null || !CarouselLayoutManager.this.d()) {
                return 0;
            }
            CarouselLayoutManager carouselLayoutManager = CarouselLayoutManager.this;
            return carouselLayoutManager.A(carouselLayoutManager.getPosition(view));
        }

        @Override
        public int u(View view, int i10) {
            if (CarouselLayoutManager.this.f27754g == null || CarouselLayoutManager.this.d()) {
                return 0;
            }
            CarouselLayoutManager carouselLayoutManager = CarouselLayoutManager.this;
            return carouselLayoutManager.A(carouselLayoutManager.getPosition(view));
        }
    }

    private static final class b {

        final View f27764a;

        final float f27765b;

        final float f27766c;

        final d f27767d;

        b(View view, float f10, float f11, d dVar) {
            this.f27764a = view;
            this.f27765b = f10;
            this.f27766c = f11;
            this.f27767d = dVar;
        }
    }

    private static class c extends RecyclerView.l {

        private final Paint f27768a;

        private List f27769b;

        c() {
            Paint paint = new Paint();
            this.f27768a = paint;
            this.f27769b = Collections.unmodifiableList(new ArrayList());
            paint.setStrokeWidth(5.0f);
            paint.setColor(-65281);
        }

        void d(List list) {
            this.f27769b = Collections.unmodifiableList(list);
        }

        @Override
        public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.x xVar) {
            super.onDrawOver(canvas, recyclerView, xVar);
            this.f27768a.setStrokeWidth(recyclerView.getResources().getDimension(R$dimen.m3_carousel_debug_keyline_width));
            for (f.c cVar : this.f27769b) {
                this.f27768a.setColor(z0.b.d(-65281, -16776961, cVar.f27805c));
                if (((CarouselLayoutManager) recyclerView.getLayoutManager()).d()) {
                    canvas.drawLine(cVar.f27804b, ((CarouselLayoutManager) recyclerView.getLayoutManager()).S(), cVar.f27804b, ((CarouselLayoutManager) recyclerView.getLayoutManager()).N(), this.f27768a);
                } else {
                    canvas.drawLine(((CarouselLayoutManager) recyclerView.getLayoutManager()).P(), cVar.f27804b, ((CarouselLayoutManager) recyclerView.getLayoutManager()).Q(), cVar.f27804b, this.f27768a);
                }
            }
        }
    }

    private static class d {

        final f.c f27770a;

        final f.c f27771b;

        d(f.c cVar, f.c cVar2) {
            androidx.core.util.i.a(cVar.f27803a <= cVar2.f27803a);
            this.f27770a = cVar;
            this.f27771b = cVar2;
        }
    }

    public CarouselLayoutManager() {
        this(new i());
    }

    private static int B(int i10, int i11, int i12, int i13) {
        int i14 = i11 + i10;
        if (i14 < i12) {
            return i12 - i11;
        }
        return i14 > i13 ? i13 - i11 : i10;
    }

    private int C(g gVar) {
        boolean zX = X();
        f fVarH = zX ? gVar.h() : gVar.l();
        return (int) (R() - t((zX ? fVarH.h() : fVarH.a()).f27803a, fVarH.f() / 2.0f));
    }

    private void D(RecyclerView.t tVar, RecyclerView.x xVar) {
        g0(tVar);
        if (getChildCount() == 0) {
            w(tVar, this.f27756i - 1);
            v(tVar, xVar, this.f27756i);
        } else {
            int position = getPosition(getChildAt(0));
            int position2 = getPosition(getChildAt(getChildCount() - 1));
            w(tVar, position - 1);
            v(tVar, xVar, position2 + 1);
        }
        o0();
    }

    private View E() {
        return getChildAt(X() ? 0 : getChildCount() - 1);
    }

    private View F() {
        return getChildAt(X() ? getChildCount() - 1 : 0);
    }

    private int G() {
        return d() ? a() : b();
    }

    private float H(View view) {
        Rect rect = new Rect();
        super.getDecoratedBoundsWithMargins(view, rect);
        return d() ? rect.centerX() : rect.centerY();
    }

    private int I() {
        int i10;
        int i11;
        if (getChildCount() <= 0) {
            return 0;
        }
        RecyclerView.n nVar = (RecyclerView.n) getChildAt(0).getLayoutParams();
        if (this.f27758k.f27785a == 0) {
            i10 = ((ViewGroup.MarginLayoutParams) nVar).leftMargin;
            i11 = ((ViewGroup.MarginLayoutParams) nVar).rightMargin;
        } else {
            i10 = ((ViewGroup.MarginLayoutParams) nVar).topMargin;
            i11 = ((ViewGroup.MarginLayoutParams) nVar).bottomMargin;
        }
        return i10 + i11;
    }

    private f J(int i10) {
        f fVar;
        Map map = this.f27757j;
        return (map == null || (fVar = (f) map.get(Integer.valueOf(d1.a.b(i10, 0, Math.max(0, getItemCount() + (-1)))))) == null) ? this.f27754g.g() : fVar;
    }

    private int K() {
        if (getClipToPadding() || !this.f27753f.f()) {
            return 0;
        }
        return getOrientation() == 1 ? getPaddingTop() : getPaddingLeft();
    }

    private float L(float f10, d dVar) {
        f.c cVar = dVar.f27770a;
        float f11 = cVar.f27806d;
        f.c cVar2 = dVar.f27771b;
        return qa.a.b(f11, cVar2.f27806d, cVar.f27804b, cVar2.f27804b, f10);
    }

    public int N() {
        return this.f27758k.g();
    }

    private int O() {
        return this.f27758k.h();
    }

    public int P() {
        return this.f27758k.i();
    }

    public int Q() {
        return this.f27758k.j();
    }

    private int R() {
        return this.f27758k.k();
    }

    public int S() {
        return this.f27758k.l();
    }

    private int T() {
        if (getClipToPadding() || !this.f27753f.f()) {
            return 0;
        }
        return getOrientation() == 1 ? getPaddingBottom() : getPaddingRight();
    }

    private int U(int i10, f fVar) {
        return X() ? (int) (((G() - fVar.h().f27803a) - (i10 * fVar.f())) - (fVar.f() / 2.0f)) : (int) (((i10 * fVar.f()) - fVar.a().f27803a) + (fVar.f() / 2.0f));
    }

    private int V(int i10, f fVar) {
        int i11 = Integer.MAX_VALUE;
        for (f.c cVar : fVar.e()) {
            float f10 = (i10 * fVar.f()) + (fVar.f() / 2.0f);
            int iG = (X() ? (int) ((G() - cVar.f27803a) - f10) : (int) (f10 - cVar.f27803a)) - this.f27748a;
            if (Math.abs(i11) > Math.abs(iG)) {
                i11 = iG;
            }
        }
        return i11;
    }

    private static d W(List list, float f10, boolean z10) {
        float f11 = Float.MAX_VALUE;
        int i10 = -1;
        int i11 = -1;
        int i12 = -1;
        int i13 = -1;
        float f12 = -3.4028235E38f;
        float f13 = Float.MAX_VALUE;
        float f14 = Float.MAX_VALUE;
        for (int i14 = 0; i14 < list.size(); i14++) {
            f.c cVar = (f.c) list.get(i14);
            float f15 = z10 ? cVar.f27804b : cVar.f27803a;
            float fAbs = Math.abs(f15 - f10);
            if (f15 <= f10 && fAbs <= f11) {
                i10 = i14;
                f11 = fAbs;
            }
            if (f15 > f10 && fAbs <= f13) {
                i12 = i14;
                f13 = fAbs;
            }
            if (f15 <= f14) {
                i11 = i14;
                f14 = f15;
            }
            if (f15 > f12) {
                i13 = i14;
                f12 = f15;
            }
        }
        if (i10 == -1) {
            i10 = i11;
        }
        if (i12 == -1) {
            i12 = i13;
        }
        return new d((f.c) list.get(i10), (f.c) list.get(i12));
    }

    private boolean Y(float f10, d dVar) {
        float fT = t(f10, L(f10, dVar) / 2.0f);
        if (X()) {
            if (fT >= 0.0f) {
                return false;
            }
        } else if (fT <= G()) {
            return false;
        }
        return true;
    }

    private boolean Z(float f10, d dVar) {
        float fS = s(f10, L(f10, dVar) / 2.0f);
        if (X()) {
            if (fS <= G()) {
                return false;
            }
        } else if (fS >= 0.0f) {
            return false;
        }
        return true;
    }

    public void a0(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        if (i10 == i14 && i11 == i15 && i12 == i16 && i13 == i17) {
            return;
        }
        view.post(new Runnable() {
            @Override
            public final void run() {
                this.f71977a.f0();
            }
        });
    }

    private void b0() {
        if (this.f27751d && Log.isLoggable("CarouselLayoutManager", 3)) {
            for (int i10 = 0; i10 < getChildCount(); i10++) {
                View childAt = getChildAt(i10);
                float fH = H(childAt);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("item position ");
                sb2.append(getPosition(childAt));
                sb2.append(", center:");
                sb2.append(fH);
                sb2.append(", child index:");
                sb2.append(i10);
            }
        }
    }

    private b c0(RecyclerView.t tVar, float f10, int i10) {
        View viewO = tVar.o(i10);
        measureChildWithMargins(viewO, 0, 0);
        float fS = s(f10, this.f27755h.f() / 2.0f);
        d dVarW = W(this.f27755h.g(), fS, false);
        return new b(viewO, fS, x(viewO, fS, dVarW), dVarW);
    }

    private int convertFocusDirectionToLayoutDirection(int i10) {
        int orientation = getOrientation();
        if (i10 == 1) {
            return -1;
        }
        if (i10 == 2) {
            return 1;
        }
        if (i10 == 17) {
            if (orientation == 0) {
                return X() ? 1 : -1;
            }
            return Integer.MIN_VALUE;
        }
        if (i10 == 33) {
            return orientation == 1 ? -1 : Integer.MIN_VALUE;
        }
        if (i10 == 66) {
            if (orientation == 0) {
                return X() ? -1 : 1;
            }
            return Integer.MIN_VALUE;
        }
        if (i10 == 130) {
            return orientation == 1 ? 1 : Integer.MIN_VALUE;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Unknown focus request:");
        sb2.append(i10);
        return Integer.MIN_VALUE;
    }

    private float d0(View view, float f10, float f11, Rect rect) {
        float fS = s(f10, f11);
        d dVarW = W(this.f27755h.g(), fS, false);
        float fX = x(view, fS, dVarW);
        super.getDecoratedBoundsWithMargins(view, rect);
        l0(view, fS, dVarW);
        this.f27758k.o(view, rect, f11, fX);
        return fX;
    }

    private void e0(RecyclerView.t tVar) {
        View viewO = tVar.o(0);
        measureChildWithMargins(viewO, 0, 0);
        f fVarG = this.f27753f.g(this, viewO);
        if (X()) {
            fVarG = f.n(fVarG, G());
        }
        this.f27754g = g.f(this, fVarG, I(), K(), T());
    }

    public void f0() {
        this.f27754g = null;
        requestLayout();
    }

    private void g0(RecyclerView.t tVar) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(0);
            float fH = H(childAt);
            if (!Z(fH, W(this.f27755h.g(), fH, true))) {
                break;
            } else {
                removeAndRecycleView(childAt, tVar);
            }
        }
        while (getChildCount() - 1 >= 0) {
            View childAt2 = getChildAt(getChildCount() - 1);
            float fH2 = H(childAt2);
            if (!Y(fH2, W(this.f27755h.g(), fH2, true))) {
                return;
            } else {
                removeAndRecycleView(childAt2, tVar);
            }
        }
    }

    private void h0(RecyclerView recyclerView, int i10) {
        if (d()) {
            recyclerView.scrollBy(i10, 0);
        } else {
            recyclerView.scrollBy(0, i10);
        }
    }

    private void j0(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Carousel);
            i0(typedArrayObtainStyledAttributes.getInt(R$styleable.Carousel_carousel_alignment, 0));
            setOrientation(typedArrayObtainStyledAttributes.getInt(R$styleable.RecyclerView_android_orientation, 0));
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void l0(View view, float f10, d dVar) {
        if (view instanceof h) {
            f.c cVar = dVar.f27770a;
            float f11 = cVar.f27805c;
            f.c cVar2 = dVar.f27771b;
            float fB = qa.a.b(f11, cVar2.f27805c, cVar.f27803a, cVar2.f27803a, f10);
            float height = view.getHeight();
            float width = view.getWidth();
            RectF rectFF = this.f27758k.f(height, width, qa.a.b(0.0f, height / 2.0f, 0.0f, 1.0f, fB), qa.a.b(0.0f, width / 2.0f, 0.0f, 1.0f, fB));
            float fX = x(view, f10, dVar);
            RectF rectF = new RectF(fX - (rectFF.width() / 2.0f), fX - (rectFF.height() / 2.0f), fX + (rectFF.width() / 2.0f), (rectFF.height() / 2.0f) + fX);
            RectF rectF2 = new RectF(P(), S(), Q(), N());
            if (this.f27753f.f()) {
                this.f27758k.a(rectFF, rectF, rectF2);
            }
            this.f27758k.n(rectFF, rectF, rectF2);
            ((h) view).setMaskRectF(rectFF);
        }
    }

    private void m0(g gVar) {
        int i10 = this.f27750c;
        int i11 = this.f27749b;
        if (i10 <= i11) {
            this.f27755h = X() ? gVar.h() : gVar.l();
        } else {
            this.f27755h = gVar.j(this.f27748a, i11, i10);
        }
        this.f27752e.d(this.f27755h.g());
    }

    private void n0() {
        int itemCount = getItemCount();
        int i10 = this.f27760m;
        if (itemCount == i10 || this.f27754g == null) {
            return;
        }
        if (this.f27753f.h(this, i10)) {
            f0();
        }
        this.f27760m = itemCount;
    }

    private void o0() {
        if (!this.f27751d || getChildCount() < 1) {
            return;
        }
        int i10 = 0;
        while (i10 < getChildCount() - 1) {
            int position = getPosition(getChildAt(i10));
            int i11 = i10 + 1;
            int position2 = getPosition(getChildAt(i11));
            if (position > position2) {
                b0();
                throw new IllegalStateException("Detected invalid child order. Child at index [" + i10 + "] had adapter position [" + position + "] and child at index [" + i11 + "] had adapter position [" + position2 + "].");
            }
            i10 = i11;
        }
    }

    private void r(View view, int i10, b bVar) {
        float f10 = this.f27755h.f() / 2.0f;
        addView(view, i10);
        float f11 = bVar.f27766c;
        this.f27758k.m(view, (int) (f11 - f10), (int) (f11 + f10));
        l0(view, bVar.f27765b, bVar.f27767d);
    }

    private float s(float f10, float f11) {
        return X() ? f10 - f11 : f10 + f11;
    }

    private int scrollBy(int i10, RecyclerView.t tVar, RecyclerView.x xVar) {
        if (getChildCount() == 0 || i10 == 0) {
            return 0;
        }
        if (this.f27754g == null) {
            e0(tVar);
        }
        int iB = B(i10, this.f27748a, this.f27749b, this.f27750c);
        this.f27748a += iB;
        m0(this.f27754g);
        float f10 = this.f27755h.f() / 2.0f;
        float fY = y(getPosition(getChildAt(0)));
        Rect rect = new Rect();
        float f11 = X() ? this.f27755h.h().f27804b : this.f27755h.a().f27804b;
        float f12 = Float.MAX_VALUE;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            float fAbs = Math.abs(f11 - d0(childAt, fY, f10, rect));
            if (childAt != null && fAbs < f12) {
                this.f27761n = getPosition(childAt);
                f12 = fAbs;
            }
            fY = s(fY, this.f27755h.f());
        }
        D(tVar, xVar);
        return iB;
    }

    private float t(float f10, float f11) {
        return X() ? f10 + f11 : f10 - f11;
    }

    private void u(RecyclerView.t tVar, int i10, int i11) {
        if (i10 < 0 || i10 >= getItemCount()) {
            return;
        }
        b bVarC0 = c0(tVar, y(i10), i10);
        r(bVarC0.f27764a, i11, bVarC0);
    }

    private void v(RecyclerView.t tVar, RecyclerView.x xVar, int i10) {
        float fY = y(i10);
        while (i10 < xVar.b()) {
            b bVarC0 = c0(tVar, fY, i10);
            if (Y(bVarC0.f27766c, bVarC0.f27767d)) {
                return;
            }
            fY = s(fY, this.f27755h.f());
            if (!Z(bVarC0.f27766c, bVarC0.f27767d)) {
                r(bVarC0.f27764a, -1, bVarC0);
            }
            i10++;
        }
    }

    private void w(RecyclerView.t tVar, int i10) {
        float fY = y(i10);
        while (i10 >= 0) {
            b bVarC0 = c0(tVar, fY, i10);
            if (Z(bVarC0.f27766c, bVarC0.f27767d)) {
                return;
            }
            fY = t(fY, this.f27755h.f());
            if (!Y(bVarC0.f27766c, bVarC0.f27767d)) {
                r(bVarC0.f27764a, 0, bVarC0);
            }
            i10--;
        }
    }

    private float x(View view, float f10, d dVar) {
        f.c cVar = dVar.f27770a;
        float f11 = cVar.f27804b;
        f.c cVar2 = dVar.f27771b;
        float fB = qa.a.b(f11, cVar2.f27804b, cVar.f27803a, cVar2.f27803a, f10);
        if (dVar.f27771b != this.f27755h.c() && dVar.f27770a != this.f27755h.j()) {
            return fB;
        }
        float fE = this.f27758k.e((RecyclerView.n) view.getLayoutParams()) / this.f27755h.f();
        f.c cVar3 = dVar.f27771b;
        return fB + ((f10 - cVar3.f27803a) * ((1.0f - cVar3.f27805c) + fE));
    }

    private float y(int i10) {
        return s(R() - this.f27748a, this.f27755h.f() * i10);
    }

    private int z(RecyclerView.x xVar, g gVar) {
        boolean zX = X();
        f fVarL = zX ? gVar.l() : gVar.h();
        f.c cVarA = zX ? fVarL.a() : fVarL.h();
        int iB = (int) (((((xVar.b() - 1) * fVarL.f()) * (zX ? -1.0f : 1.0f)) - (cVarA.f27803a - R())) + (O() - cVarA.f27803a) + (zX ? -cVarA.f27809g : cVarA.f27810h));
        return zX ? Math.min(0, iB) : Math.max(0, iB);
    }

    int A(int i10) {
        return (int) (this.f27748a - U(i10, J(i10)));
    }

    int M(int i10, f fVar) {
        return U(i10, fVar) - this.f27748a;
    }

    boolean X() {
        return d() && getLayoutDirection() == 1;
    }

    @Override
    public int a() {
        return getWidth();
    }

    @Override
    public int b() {
        return getHeight();
    }

    @Override
    public int c() {
        return this.f27762o;
    }

    @Override
    public boolean canScrollHorizontally() {
        return d();
    }

    @Override
    public boolean canScrollVertically() {
        return !d();
    }

    @Override
    public int computeHorizontalScrollExtent(RecyclerView.x xVar) {
        if (getChildCount() == 0 || this.f27754g == null || getItemCount() <= 1) {
            return 0;
        }
        return (int) (getWidth() * (this.f27754g.g().f() / computeHorizontalScrollRange(xVar)));
    }

    @Override
    public int computeHorizontalScrollOffset(RecyclerView.x xVar) {
        return this.f27748a;
    }

    @Override
    public int computeHorizontalScrollRange(RecyclerView.x xVar) {
        return this.f27750c - this.f27749b;
    }

    @Override
    public PointF computeScrollVectorForPosition(int i10) {
        if (this.f27754g == null) {
            return null;
        }
        int iM = M(i10, J(i10));
        return d() ? new PointF(iM, 0.0f) : new PointF(0.0f, iM);
    }

    @Override
    public int computeVerticalScrollExtent(RecyclerView.x xVar) {
        if (getChildCount() == 0 || this.f27754g == null || getItemCount() <= 1) {
            return 0;
        }
        return (int) (getHeight() * (this.f27754g.g().f() / computeVerticalScrollRange(xVar)));
    }

    @Override
    public int computeVerticalScrollOffset(RecyclerView.x xVar) {
        return this.f27748a;
    }

    @Override
    public int computeVerticalScrollRange(RecyclerView.x xVar) {
        return this.f27750c - this.f27749b;
    }

    @Override
    public boolean d() {
        return this.f27758k.f27785a == 0;
    }

    @Override
    public RecyclerView.n generateDefaultLayoutParams() {
        return new RecyclerView.n(-2, -2);
    }

    @Override
    public void getDecoratedBoundsWithMargins(View view, Rect rect) {
        super.getDecoratedBoundsWithMargins(view, rect);
        float fCenterY = rect.centerY();
        if (d()) {
            fCenterY = rect.centerX();
        }
        float fL = L(fCenterY, W(this.f27755h.g(), fCenterY, true));
        float fWidth = d() ? (rect.width() - fL) / 2.0f : 0.0f;
        float fHeight = d() ? 0.0f : (rect.height() - fL) / 2.0f;
        rect.set((int) (rect.left + fWidth), (int) (rect.top + fHeight), (int) (rect.right - fWidth), (int) (rect.bottom - fHeight));
    }

    public int getOrientation() {
        return this.f27758k.f27785a;
    }

    public void i0(int i10) {
        this.f27762o = i10;
        f0();
    }

    @Override
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    public void k0(com.google.android.material.carousel.d dVar) {
        this.f27753f = dVar;
        f0();
    }

    @Override
    public void measureChildWithMargins(View view, int i10, int i11) {
        if (!(view instanceof h)) {
            throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
        }
        RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
        Rect rect = new Rect();
        calculateItemDecorationsForChild(view, rect);
        int i12 = i10 + rect.left + rect.right;
        int i13 = i11 + rect.top + rect.bottom;
        g gVar = this.f27754g;
        float f10 = (gVar == null || this.f27758k.f27785a != 0) ? ((ViewGroup.MarginLayoutParams) nVar).width : gVar.g().f();
        g gVar2 = this.f27754g;
        view.measure(RecyclerView.m.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + ((ViewGroup.MarginLayoutParams) nVar).leftMargin + ((ViewGroup.MarginLayoutParams) nVar).rightMargin + i12, (int) f10, canScrollHorizontally()), RecyclerView.m.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + ((ViewGroup.MarginLayoutParams) nVar).topMargin + ((ViewGroup.MarginLayoutParams) nVar).bottomMargin + i13, (int) ((gVar2 == null || this.f27758k.f27785a != 1) ? ((ViewGroup.MarginLayoutParams) nVar).height : gVar2.g().f()), canScrollVertically()));
    }

    @Override
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.f27753f.e(recyclerView.getContext());
        f0();
        recyclerView.addOnLayoutChangeListener(this.f27759l);
    }

    @Override
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.t tVar) {
        super.onDetachedFromWindow(recyclerView, tVar);
        recyclerView.removeOnLayoutChangeListener(this.f27759l);
    }

    @Override
    public View onFocusSearchFailed(View view, int i10, RecyclerView.t tVar, RecyclerView.x xVar) {
        int iConvertFocusDirectionToLayoutDirection;
        if (getChildCount() == 0 || (iConvertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i10)) == Integer.MIN_VALUE) {
            return null;
        }
        if (iConvertFocusDirectionToLayoutDirection == -1) {
            if (getPosition(view) == 0) {
                return null;
            }
            u(tVar, getPosition(getChildAt(0)) - 1, 0);
            return F();
        }
        if (getPosition(view) == getItemCount() - 1) {
            return null;
        }
        u(tVar, getPosition(getChildAt(getChildCount() - 1)) + 1, -1);
        return E();
    }

    @Override
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(getPosition(getChildAt(0)));
            accessibilityEvent.setToIndex(getPosition(getChildAt(getChildCount() - 1)));
        }
    }

    @Override
    public void onItemsAdded(RecyclerView recyclerView, int i10, int i11) {
        super.onItemsAdded(recyclerView, i10, i11);
        n0();
    }

    @Override
    public void onItemsRemoved(RecyclerView recyclerView, int i10, int i11) {
        super.onItemsRemoved(recyclerView, i10, i11);
        n0();
    }

    @Override
    public void onLayoutChildren(RecyclerView.t tVar, RecyclerView.x xVar) {
        if (xVar.b() <= 0 || G() <= 0.0f) {
            removeAndRecycleAllViews(tVar);
            this.f27756i = 0;
            return;
        }
        boolean zX = X();
        boolean z10 = this.f27754g == null;
        if (z10) {
            e0(tVar);
        }
        int iC = C(this.f27754g);
        int iZ = z(xVar, this.f27754g);
        this.f27749b = zX ? iZ : iC;
        if (zX) {
            iZ = iC;
        }
        this.f27750c = iZ;
        if (z10) {
            this.f27748a = iC;
            this.f27757j = this.f27754g.i(getItemCount(), this.f27749b, this.f27750c, X());
            int i10 = this.f27761n;
            if (i10 != -1) {
                this.f27748a = U(i10, J(i10));
            }
        }
        int i11 = this.f27748a;
        this.f27748a = i11 + B(0, i11, this.f27749b, this.f27750c);
        this.f27756i = d1.a.b(this.f27756i, 0, xVar.b());
        m0(this.f27754g);
        detachAndScrapAttachedViews(tVar);
        D(tVar, xVar);
        this.f27760m = getItemCount();
    }

    @Override
    public void onLayoutCompleted(RecyclerView.x xVar) {
        super.onLayoutCompleted(xVar);
        if (getChildCount() == 0) {
            this.f27756i = 0;
        } else {
            this.f27756i = getPosition(getChildAt(0));
        }
        o0();
    }

    @Override
    public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z10, boolean z11) {
        int iV;
        if (this.f27754g == null || (iV = V(getPosition(view), J(getPosition(view)))) == 0) {
            return false;
        }
        h0(recyclerView, V(getPosition(view), this.f27754g.j(this.f27748a + B(iV, this.f27748a, this.f27749b, this.f27750c), this.f27749b, this.f27750c)));
        return true;
    }

    @Override
    public int scrollHorizontallyBy(int i10, RecyclerView.t tVar, RecyclerView.x xVar) {
        if (canScrollHorizontally()) {
            return scrollBy(i10, tVar, xVar);
        }
        return 0;
    }

    @Override
    public void scrollToPosition(int i10) {
        this.f27761n = i10;
        if (this.f27754g == null) {
            return;
        }
        this.f27748a = U(i10, J(i10));
        this.f27756i = d1.a.b(i10, 0, Math.max(0, getItemCount() - 1));
        m0(this.f27754g);
        requestLayout();
    }

    @Override
    public int scrollVerticallyBy(int i10, RecyclerView.t tVar, RecyclerView.x xVar) {
        if (canScrollVertically()) {
            return scrollBy(i10, tVar, xVar);
        }
        return 0;
    }

    public void setOrientation(int i10) {
        if (i10 != 0 && i10 != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i10);
        }
        assertNotInLayoutOrScroll(null);
        com.google.android.material.carousel.c cVar = this.f27758k;
        if (cVar == null || i10 != cVar.f27785a) {
            this.f27758k = com.google.android.material.carousel.c.c(this, i10);
            f0();
        }
    }

    @Override
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.x xVar, int i10) {
        a aVar = new a(recyclerView.getContext());
        aVar.p(i10);
        startSmoothScroll(aVar);
    }

    public CarouselLayoutManager(com.google.android.material.carousel.d dVar) {
        this(dVar, 0);
    }

    public CarouselLayoutManager(com.google.android.material.carousel.d dVar, int i10) {
        this.f27751d = false;
        this.f27752e = new c();
        this.f27756i = 0;
        this.f27759l = new View.OnLayoutChangeListener() {
            @Override
            public final void onLayoutChange(View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
                this.f71976a.a0(view, i11, i12, i13, i14, i15, i16, i17, i18);
            }
        };
        this.f27761n = -1;
        this.f27762o = 0;
        k0(dVar);
        setOrientation(i10);
    }

    @SuppressLint({"UnknownNullness"})
    public CarouselLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        this.f27751d = false;
        this.f27752e = new c();
        this.f27756i = 0;
        this.f27759l = new View.OnLayoutChangeListener() {
            @Override
            public final void onLayoutChange(View view, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
                this.f71976a.a0(view, i12, i13, i14, i15, i16, i17, i18, i19);
            }
        };
        this.f27761n = -1;
        this.f27762o = 0;
        k0(new i());
        j0(context, attributeSet);
    }
}
