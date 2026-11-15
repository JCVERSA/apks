package androidx.emoji2.text;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;

public class p {

    private static final ThreadLocal f8828d = new ThreadLocal();

    private final int f8829a;

    private final n f8830b;

    private volatile int f8831c = 0;

    p(n nVar, int i10) {
        this.f8830b = nVar;
        this.f8829a = i10;
    }

    private androidx.emoji2.text.flatbuffer.b g() {
        ThreadLocal threadLocal = f8828d;
        androidx.emoji2.text.flatbuffer.b bVar = (androidx.emoji2.text.flatbuffer.b) threadLocal.get();
        if (bVar == null) {
            bVar = new androidx.emoji2.text.flatbuffer.b();
            threadLocal.set(bVar);
        }
        this.f8830b.d().k(bVar, this.f8829a);
        return bVar;
    }

    public void a(Canvas canvas, float f10, float f11, Paint paint) {
        Typeface typefaceG = this.f8830b.g();
        Typeface typeface = paint.getTypeface();
        paint.setTypeface(typefaceG);
        canvas.drawText(this.f8830b.c(), this.f8829a * 2, 2, f10, f11, paint);
        paint.setTypeface(typeface);
    }

    public int b(int i10) {
        return g().i(i10);
    }

    public int c() {
        return g().j();
    }

    public int d() {
        return this.f8831c & 3;
    }

    public int e() {
        return g().l();
    }

    public int f() {
        return g().m();
    }

    public short h() {
        return g().n();
    }

    public int i() {
        return g().o();
    }

    public boolean j() {
        return g().k();
    }

    public boolean k() {
        return (this.f8831c & 4) > 0;
    }

    public void l(boolean z10) {
        int iD = d();
        if (z10) {
            this.f8831c = iD | 4;
        } else {
            this.f8831c = iD;
        }
    }

    public void m(boolean z10) {
        int i10 = this.f8831c & 4;
        this.f8831c = z10 ? i10 | 2 : i10 | 1;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        sb2.append(", id:");
        sb2.append(Integer.toHexString(f()));
        sb2.append(", codepoints:");
        int iC = c();
        for (int i10 = 0; i10 < iC; i10++) {
            sb2.append(Integer.toHexString(b(i10)));
            sb2.append(" ");
        }
        return sb2.toString();
    }
}
