package androidx.compose.ui.text.platform.style;

import android.graphics.Paint;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.UpdateAppearance;
import androidx.compose.ui.graphics.c5;
import androidx.compose.ui.graphics.d5;
import kotlin.jvm.internal.Intrinsics;
import z.h;
import z.l;
import z.m;

public final class a extends CharacterStyle implements UpdateAppearance {

    private final h f6034a;

    public a(h hVar) {
        this.f6034a = hVar;
    }

    private final Paint.Cap a(int i10) {
        c5.a aVar = c5.f4009a;
        if (c5.e(i10, aVar.a())) {
            return Paint.Cap.BUTT;
        }
        if (c5.e(i10, aVar.b())) {
            return Paint.Cap.ROUND;
        }
        return c5.e(i10, aVar.c()) ? Paint.Cap.SQUARE : Paint.Cap.BUTT;
    }

    private final Paint.Join b(int i10) {
        d5.a aVar = d5.f4121a;
        if (d5.e(i10, aVar.b())) {
            return Paint.Join.MITER;
        }
        if (d5.e(i10, aVar.c())) {
            return Paint.Join.ROUND;
        }
        return d5.e(i10, aVar.a()) ? Paint.Join.BEVEL : Paint.Join.MITER;
    }

    @Override
    public void updateDrawState(TextPaint textPaint) {
        if (textPaint != null) {
            h hVar = this.f6034a;
            if (Intrinsics.c(hVar, l.f76454a)) {
                textPaint.setStyle(Paint.Style.FILL);
                return;
            }
            if (hVar instanceof m) {
                textPaint.setStyle(Paint.Style.STROKE);
                textPaint.setStrokeWidth(((m) this.f6034a).f());
                textPaint.setStrokeMiter(((m) this.f6034a).d());
                textPaint.setStrokeJoin(b(((m) this.f6034a).c()));
                textPaint.setStrokeCap(a(((m) this.f6034a).b()));
                ((m) this.f6034a).e();
                textPaint.setPathEffect(null);
            }
        }
    }
}
