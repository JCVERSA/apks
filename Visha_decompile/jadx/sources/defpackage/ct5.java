package defpackage;

import android.graphics.Bitmap;

public class ct5 {
    public final int a;
    public final int b;
    public final String c;
    public final String d;
    public final String e;
    public Bitmap f;

    public ct5(int i, int i2, String str, String str2, String str3) {
        this.a = i;
        this.b = i2;
        this.c = str;
        this.d = str2;
        this.e = str3;
    }

    public ct5 a(float f) {
        ct5 ct5Var = new ct5((int) (this.a * f), (int) (this.b * f), this.c, this.d, this.e);
        Bitmap bitmap = this.f;
        if (bitmap != null) {
            ct5Var.g(Bitmap.createScaledBitmap(bitmap, ct5Var.a, ct5Var.b, true));
        }
        return ct5Var;
    }

    public Bitmap b() {
        return this.f;
    }

    public String c() {
        return this.d;
    }

    public int d() {
        return this.b;
    }

    public String e() {
        return this.c;
    }

    public int f() {
        return this.a;
    }

    public void g(Bitmap bitmap) {
        this.f = bitmap;
    }
}
