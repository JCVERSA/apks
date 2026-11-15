package com.google.android.material.carousel;

import android.content.Context;
import com.google.android.material.R$dimen;

abstract class e {
    static float a(float f10, float f11, int i10) {
        return f10 + (Math.max(0, i10 - 1) * f11);
    }

    static float b(float f10, float f11, int i10) {
        return i10 > 0 ? f10 + (f11 / 2.0f) : f10;
    }

    static f c(Context context, float f10, float f11, a aVar) {
        float f12;
        float fMin = Math.min(f(context) + f10, aVar.f27782f);
        float f13 = fMin / 2.0f;
        float f14 = 0.0f - f13;
        float fB = b(0.0f, aVar.f27778b, aVar.f27779c);
        float fJ = j(0.0f, a(fB, aVar.f27778b, (int) Math.floor(aVar.f27779c / 2.0f)), aVar.f27778b, aVar.f27779c);
        float fB2 = b(fJ, aVar.f27781e, aVar.f27780d);
        float fJ2 = j(fJ, a(fB2, aVar.f27781e, (int) Math.floor(aVar.f27780d / 2.0f)), aVar.f27781e, aVar.f27780d);
        float fB3 = b(fJ2, aVar.f27782f, aVar.f27783g);
        float fJ3 = j(fJ2, a(fB3, aVar.f27782f, aVar.f27783g), aVar.f27782f, aVar.f27783g);
        float fB4 = b(fJ3, aVar.f27781e, aVar.f27780d);
        float fB5 = b(j(fJ3, a(fB4, aVar.f27781e, (int) Math.ceil(aVar.f27780d / 2.0f)), aVar.f27781e, aVar.f27780d), aVar.f27778b, aVar.f27779c);
        float f15 = f13 + f11;
        float fB6 = d.b(fMin, aVar.f27782f, f10);
        float fB7 = d.b(aVar.f27778b, aVar.f27782f, f10);
        float fB8 = d.b(aVar.f27781e, aVar.f27782f, f10);
        f.b bVarA = new f.b(aVar.f27782f, f11).a(f14, fB6, fMin);
        int i10 = aVar.f27779c;
        if (i10 > 0) {
            bVarA.g(fB, fB7, aVar.f27778b, (int) Math.floor(i10 / 2.0f));
        }
        int i11 = aVar.f27780d;
        if (i11 > 0) {
            bVarA.g(fB2, fB8, aVar.f27781e, (int) Math.floor(i11 / 2.0f));
        }
        bVarA.h(fB3, 0.0f, aVar.f27782f, aVar.f27783g, true);
        int i12 = aVar.f27780d;
        if (i12 > 0) {
            f12 = 2.0f;
            bVarA.g(fB4, fB8, aVar.f27781e, (int) Math.ceil(i12 / 2.0f));
        } else {
            f12 = 2.0f;
        }
        int i13 = aVar.f27779c;
        if (i13 > 0) {
            bVarA.g(fB5, fB7, aVar.f27778b, (int) Math.ceil(i13 / f12));
        }
        bVarA.a(f15, fB6, fMin);
        return bVarA.i();
    }

    static f d(Context context, float f10, float f11, a aVar, int i10) {
        return i10 == 1 ? c(context, f10, f11, aVar) : e(context, f10, f11, aVar);
    }

    static f e(Context context, float f10, float f11, a aVar) {
        float fMin = Math.min(f(context) + f10, aVar.f27782f);
        float f12 = fMin / 2.0f;
        float f13 = 0.0f - f12;
        float fB = b(0.0f, aVar.f27782f, aVar.f27783g);
        float fJ = j(0.0f, a(fB, aVar.f27782f, aVar.f27783g), aVar.f27782f, aVar.f27783g);
        float fB2 = b(fJ, aVar.f27781e, aVar.f27780d);
        float fB3 = b(j(fJ, fB2, aVar.f27781e, aVar.f27780d), aVar.f27778b, aVar.f27779c);
        float f14 = f12 + f11;
        float fB4 = d.b(fMin, aVar.f27782f, f10);
        float fB5 = d.b(aVar.f27778b, aVar.f27782f, f10);
        float fB6 = d.b(aVar.f27781e, aVar.f27782f, f10);
        f.b bVarH = new f.b(aVar.f27782f, f11).a(f13, fB4, fMin).h(fB, 0.0f, aVar.f27782f, aVar.f27783g, true);
        if (aVar.f27780d > 0) {
            bVarH.b(fB2, fB6, aVar.f27781e);
        }
        int i10 = aVar.f27779c;
        if (i10 > 0) {
            bVarH.g(fB3, fB5, aVar.f27778b, i10);
        }
        bVarH.a(f14, fB4, fMin);
        return bVarH.i();
    }

    static float f(Context context) {
        return context.getResources().getDimension(R$dimen.m3_carousel_gone_size);
    }

    static float g(Context context) {
        return context.getResources().getDimension(R$dimen.m3_carousel_small_item_size_max);
    }

    static float h(Context context) {
        return context.getResources().getDimension(R$dimen.m3_carousel_small_item_size_min);
    }

    static int i(int[] iArr) {
        int i10 = Integer.MIN_VALUE;
        for (int i11 : iArr) {
            if (i11 > i10) {
                i10 = i11;
            }
        }
        return i10;
    }

    static float j(float f10, float f11, float f12, int i10) {
        return i10 > 0 ? f11 + (f12 / 2.0f) : f10;
    }
}
