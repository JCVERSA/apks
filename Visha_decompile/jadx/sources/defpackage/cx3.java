package defpackage;

import android.widget.TextView;

public final class cx3 {
    public final TextView a;
    public int b;
    public int c;
    public int d;

    public cx3(TextView textView) {
        y45.j(textView, "view");
        this.a = textView;
        this.d = -1;
        textView.setIncludeFontPadding(false);
    }

    public final void d(int i) {
        if (i == -1) {
            i();
            return;
        }
        int iC = i - pha.c(this.a);
        if (iC < 0) {
            int i2 = iC / 2;
            this.b = i2;
            this.c = iC - i2;
        } else {
            int i3 = iC / 2;
            this.c = i3;
            this.b = iC - i3;
        }
        this.a.setLineSpacing(i - pha.b(this.a), 1.0f);
        j(false);
    }

    public final int e() {
        return this.c;
    }

    public final int f() {
        return this.b;
    }

    public final int g() {
        return this.d;
    }

    public final void h() {
        d(this.d);
    }

    public final void i() {
        this.b = 0;
        this.c = 0;
        this.a.setLineSpacing(0.0f, 1.0f);
        j(true);
    }

    public final void j(boolean z) {
        this.a.setFallbackLineSpacing(z);
    }

    public final void k(int i) {
        if (this.d == i) {
            return;
        }
        this.d = i;
        d(i);
    }
}
