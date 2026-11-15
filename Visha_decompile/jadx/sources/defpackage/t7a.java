package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import androidx.core.content.ContextCompat;

public class t7a {
    public Context a;
    public Drawable b;
    public Drawable c;
    public String d;
    public ColorStateList e;
    public int f;
    public Typeface g;
    public int h;
    public int i = -2;
    public int j = -2;
    public int k = 0;

    public t7a(Context context) {
        this.a = context;
    }

    public Drawable a() {
        return this.b;
    }

    public int b() {
        return this.j;
    }

    public Drawable c() {
        return this.c;
    }

    public String d() {
        return this.d;
    }

    public int e() {
        return this.h;
    }

    public int f() {
        return this.f;
    }

    public Typeface g() {
        return this.g;
    }

    public ColorStateList h() {
        return this.e;
    }

    public int i() {
        return this.k;
    }

    public int j() {
        return this.i;
    }

    public t7a k(int i) {
        this.b = new ColorDrawable(i);
        return this;
    }

    public t7a l(int i) {
        this.j = i;
        return this;
    }

    public t7a m(int i) {
        return n(ContextCompat.getDrawable(this.a, i));
    }

    public t7a n(Drawable drawable) {
        this.c = drawable;
        return this;
    }

    public t7a o(int i) {
        this.i = i;
        return this;
    }
}
