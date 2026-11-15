package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;

class a implements c {
    a() {
    }

    private d p(b bVar) {
        return (d) bVar.d();
    }

    @Override
    public void a(b bVar, float f10) {
        p(bVar).h(f10);
    }

    @Override
    public float b(b bVar) {
        return p(bVar).d();
    }

    @Override
    public void c(b bVar, float f10) {
        bVar.f().setElevation(f10);
    }

    @Override
    public float d(b bVar) {
        return p(bVar).c();
    }

    @Override
    public ColorStateList e(b bVar) {
        return p(bVar).b();
    }

    @Override
    public float f(b bVar) {
        return b(bVar) * 2.0f;
    }

    @Override
    public void g(b bVar) {
        o(bVar, d(bVar));
    }

    @Override
    public void h(b bVar, Context context, ColorStateList colorStateList, float f10, float f11, float f12) {
        bVar.b(new d(colorStateList, f10));
        View viewF = bVar.f();
        viewF.setClipToOutline(true);
        viewF.setElevation(f11);
        o(bVar, f12);
    }

    @Override
    public float i(b bVar) {
        return bVar.f().getElevation();
    }

    @Override
    public void j(b bVar) {
        o(bVar, d(bVar));
    }

    @Override
    public void k(b bVar) {
        if (!bVar.c()) {
            bVar.a(0, 0, 0, 0);
            return;
        }
        float fD = d(bVar);
        float fB = b(bVar);
        int iCeil = (int) Math.ceil(e.a(fD, fB, bVar.e()));
        int iCeil2 = (int) Math.ceil(e.b(fD, fB, bVar.e()));
        bVar.a(iCeil, iCeil2, iCeil, iCeil2);
    }

    @Override
    public float m(b bVar) {
        return b(bVar) * 2.0f;
    }

    @Override
    public void n(b bVar, ColorStateList colorStateList) {
        p(bVar).f(colorStateList);
    }

    @Override
    public void o(b bVar, float f10) {
        p(bVar).g(f10, bVar.c(), bVar.e());
        k(bVar);
    }

    @Override
    public void l() {
    }
}
