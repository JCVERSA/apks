package cb;

import android.graphics.Outline;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewOutlineProvider;

class s extends r {

    private boolean f16924f = false;

    private float f16925g = 0.0f;

    class a extends ViewOutlineProvider {
        a() {
        }

        @Override
        public void getOutline(View view, Outline outline) {
            s sVar = s.this;
            if (sVar.f16921c == null || sVar.f16922d.isEmpty()) {
                return;
            }
            s sVar2 = s.this;
            RectF rectF = sVar2.f16922d;
            outline.setRoundRect((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom, sVar2.f16925g);
        }
    }

    s(View view) {
        n(view);
    }

    private float m() {
        RectF rectF;
        n nVar = this.f16921c;
        if (nVar == null || (rectF = this.f16922d) == null) {
            return 0.0f;
        }
        return nVar.f16854f.a(rectF);
    }

    private void n(View view) {
        view.setOutlineProvider(new a());
    }

    private boolean o() {
        n nVar;
        if (this.f16922d.isEmpty() || (nVar = this.f16921c) == null) {
            return false;
        }
        return nVar.u(this.f16922d);
    }

    private boolean p() {
        n nVar;
        if (!this.f16922d.isEmpty() && (nVar = this.f16921c) != null && this.f16920b && !nVar.u(this.f16922d) && q(this.f16921c)) {
            float fA = this.f16921c.r().a(this.f16922d);
            float fA2 = this.f16921c.t().a(this.f16922d);
            float fA3 = this.f16921c.j().a(this.f16922d);
            float fA4 = this.f16921c.l().a(this.f16922d);
            if (fA == 0.0f && fA3 == 0.0f && fA2 == fA4) {
                RectF rectF = this.f16922d;
                rectF.set(rectF.left - fA2, rectF.top, rectF.right, rectF.bottom);
                this.f16925g = fA2;
                return true;
            }
            if (fA == 0.0f && fA2 == 0.0f && fA3 == fA4) {
                RectF rectF2 = this.f16922d;
                rectF2.set(rectF2.left, rectF2.top - fA3, rectF2.right, rectF2.bottom);
                this.f16925g = fA3;
                return true;
            }
            if (fA2 == 0.0f && fA4 == 0.0f && fA == fA3) {
                RectF rectF3 = this.f16922d;
                rectF3.set(rectF3.left, rectF3.top, rectF3.right + fA, rectF3.bottom);
                this.f16925g = fA;
                return true;
            }
            if (fA3 == 0.0f && fA4 == 0.0f && fA == fA2) {
                RectF rectF4 = this.f16922d;
                rectF4.set(rectF4.left, rectF4.top, rectF4.right, rectF4.bottom + fA);
                this.f16925g = fA;
                return true;
            }
        }
        return false;
    }

    private static boolean q(n nVar) {
        return (nVar.q() instanceof m) && (nVar.s() instanceof m) && (nVar.i() instanceof m) && (nVar.k() instanceof m);
    }

    @Override
    void b(View view) {
        this.f16925g = m();
        this.f16924f = o() || p();
        view.setClipToOutline(!j());
        if (j()) {
            view.invalidate();
        } else {
            view.invalidateOutline();
        }
    }

    @Override
    boolean j() {
        return !this.f16924f || this.f16919a;
    }
}
