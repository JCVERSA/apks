package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;

final class c extends h {

    private float f28600b;

    private float f28601c;

    private float f28602d;

    private boolean f28603e;

    private float f28604f;

    c(e eVar) {
        super(eVar);
    }

    private void h(Canvas canvas, Paint paint, float f10, float f11, int i10, int i11, int i12) {
        float f12 = f11 >= f10 ? f11 - f10 : (f11 + 1.0f) - f10;
        float f13 = f10 % 1.0f;
        if (this.f28604f < 1.0f) {
            float f14 = f13 + f12;
            if (f14 > 1.0f) {
                h(canvas, paint, f13, 1.0f, i10, i11, 0);
                h(canvas, paint, 1.0f, f14, i10, 0, i12);
                return;
            }
        }
        float degrees = (float) Math.toDegrees(this.f28601c / this.f28602d);
        if (f13 == 0.0f && f12 >= 0.99f) {
            f12 += ((f12 - 0.99f) * ((degrees * 2.0f) / 360.0f)) / 0.01f;
        }
        float fD = xa.a.d(1.0f - this.f28604f, 1.0f, f13);
        float fD2 = xa.a.d(0.0f, this.f28604f, f12);
        float degrees2 = (float) Math.toDegrees(i11 / this.f28602d);
        float degrees3 = ((fD2 * 360.0f) - degrees2) - ((float) Math.toDegrees(i12 / this.f28602d));
        float f15 = (fD * 360.0f) + degrees2;
        if (degrees3 <= 0.0f) {
            return;
        }
        paint.setAntiAlias(true);
        paint.setColor(i10);
        paint.setStrokeWidth(this.f28600b);
        float f16 = degrees * 2.0f;
        if (degrees3 < f16) {
            float f17 = degrees3 / f16;
            paint.setStyle(Paint.Style.FILL);
            j(canvas, paint, f15 + (degrees * f17), this.f28601c * 2.0f, this.f28600b, f17);
            return;
        }
        float f18 = this.f28602d;
        RectF rectF = new RectF(-f18, -f18, f18, f18);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(this.f28603e ? Paint.Cap.ROUND : Paint.Cap.BUTT);
        float f19 = f15 + degrees;
        canvas.drawArc(rectF, f19, degrees3 - f16, false, paint);
        if (this.f28603e || this.f28601c <= 0.0f) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        i(canvas, paint, f19, this.f28601c * 2.0f, this.f28600b);
        i(canvas, paint, (f15 + degrees3) - degrees, this.f28601c * 2.0f, this.f28600b);
    }

    private void i(Canvas canvas, Paint paint, float f10, float f11, float f12) {
        j(canvas, paint, f10, f11, f12, 1.0f);
    }

    private void j(Canvas canvas, Paint paint, float f10, float f11, float f12, float f13) {
        float fMin = (int) Math.min(f12, this.f28600b);
        float f14 = f11 / 2.0f;
        float fMin2 = Math.min(f14, (this.f28601c * fMin) / this.f28600b);
        RectF rectF = new RectF((-fMin) / 2.0f, (-f11) / 2.0f, fMin / 2.0f, f14);
        canvas.save();
        double d10 = f10;
        canvas.translate((float) (((double) this.f28602d) * Math.cos(Math.toRadians(d10))), (float) (((double) this.f28602d) * Math.sin(Math.toRadians(d10))));
        canvas.rotate(f10);
        canvas.scale(f13, f13);
        canvas.drawRoundRect(rectF, fMin2, fMin2, paint);
        canvas.restore();
    }

    private int k() {
        b bVar = this.f28646a;
        return ((e) bVar).f28620h + (((e) bVar).f28621i * 2);
    }

    @Override
    void a(Canvas canvas, Rect rect, float f10, boolean z10, boolean z11) {
        float fWidth = rect.width() / f();
        float fHeight = rect.height() / e();
        b bVar = this.f28646a;
        float f11 = (((e) bVar).f28620h / 2.0f) + ((e) bVar).f28621i;
        canvas.translate((f11 * fWidth) + rect.left, (f11 * fHeight) + rect.top);
        canvas.rotate(-90.0f);
        canvas.scale(fWidth, fHeight);
        if (((e) this.f28646a).f28622j != 0) {
            canvas.scale(1.0f, -1.0f);
        }
        float f12 = -f11;
        canvas.clipRect(f12, f12, f11, f11);
        b bVar2 = this.f28646a;
        this.f28603e = ((e) bVar2).f28593a / 2 <= ((e) bVar2).f28594b;
        this.f28600b = ((e) bVar2).f28593a * f10;
        this.f28601c = Math.min(((e) bVar2).f28593a / 2, ((e) bVar2).f28594b) * f10;
        b bVar3 = this.f28646a;
        float f13 = (((e) bVar3).f28620h - ((e) bVar3).f28593a) / 2.0f;
        this.f28602d = f13;
        if (z10 || z11) {
            if ((z10 && ((e) bVar3).f28597e == 2) || (z11 && ((e) bVar3).f28598f == 1)) {
                this.f28602d = f13 + (((1.0f - f10) * ((e) bVar3).f28593a) / 2.0f);
            } else if ((z10 && ((e) bVar3).f28597e == 1) || (z11 && ((e) bVar3).f28598f == 2)) {
                this.f28602d = f13 - (((1.0f - f10) * ((e) bVar3).f28593a) / 2.0f);
            }
        }
        if (z11 && ((e) bVar3).f28598f == 3) {
            this.f28604f = f10;
        } else {
            this.f28604f = 1.0f;
        }
    }

    @Override
    void b(Canvas canvas, Paint paint, int i10, int i11) {
    }

    @Override
    void c(Canvas canvas, Paint paint, h.a aVar, int i10) {
        int iA = com.google.android.material.color.b.a(aVar.f28649c, i10);
        float f10 = aVar.f28647a;
        float f11 = aVar.f28648b;
        int i11 = aVar.f28650d;
        h(canvas, paint, f10, f11, iA, i11, i11);
    }

    @Override
    void d(Canvas canvas, Paint paint, float f10, float f11, int i10, int i11, int i12) {
        h(canvas, paint, f10, f11, com.google.android.material.color.b.a(i10, i11), i12, i12);
    }

    @Override
    int e() {
        return k();
    }

    @Override
    int f() {
        return k();
    }
}
