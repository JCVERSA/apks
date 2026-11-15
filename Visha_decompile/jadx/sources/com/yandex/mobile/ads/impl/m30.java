package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.Typeface;
import androidx.annotation.Nullable;
import defpackage.bu2;
import defpackage.y45;

public final class m30 implements bu2 {
    private final Context a;

    public m30(Context context) {
        y45.j(context, "context");
        this.a = context;
    }

    @Override
    public final Typeface getBold() {
        Typeface typefaceA;
        ec0 ec0VarA = fc0.a(this.a);
        return (ec0VarA == null || (typefaceA = ec0VarA.a()) == null) ? Typeface.DEFAULT_BOLD : typefaceA;
    }

    @Override
    public final Typeface getLight() {
        ec0 ec0VarA = fc0.a(this.a);
        if (ec0VarA != null) {
            return ec0VarA.b();
        }
        return null;
    }

    @Override
    public final Typeface getMedium() {
        ec0 ec0VarA = fc0.a(this.a);
        if (ec0VarA != null) {
            return ec0VarA.c();
        }
        return null;
    }

    @Override
    public final Typeface getRegular() {
        ec0 ec0VarA = fc0.a(this.a);
        if (ec0VarA != null) {
            return ec0VarA.d();
        }
        return null;
    }

    @Override
    @Nullable
    public Typeface getTypefaceFor(int i) {
        return super.getTypefaceFor(i);
    }
}
