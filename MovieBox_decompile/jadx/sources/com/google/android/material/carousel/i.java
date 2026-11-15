package com.google.android.material.carousel;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

public final class i extends d {

    private static final int[] f27818d = {1};

    private static final int[] f27819e = {1, 0};

    private int f27820c = 0;

    @Override
    f g(b bVar, View view) {
        float fB = bVar.b();
        if (bVar.d()) {
            fB = bVar.a();
        }
        RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
        float f10 = ((ViewGroup.MarginLayoutParams) nVar).topMargin + ((ViewGroup.MarginLayoutParams) nVar).bottomMargin;
        float measuredHeight = view.getMeasuredHeight();
        if (bVar.d()) {
            f10 = ((ViewGroup.MarginLayoutParams) nVar).leftMargin + ((ViewGroup.MarginLayoutParams) nVar).rightMargin;
            measuredHeight = view.getMeasuredWidth();
        }
        float f11 = f10;
        float fD = d() + f11;
        float fMax = Math.max(c() + f11, fD);
        float fMin = Math.min(measuredHeight + f11, fB);
        float fA = d1.a.a((measuredHeight / 3.0f) + f11, fD + f11, fMax + f11);
        float f12 = (fMin + fA) / 2.0f;
        int[] iArrA = f27818d;
        if (fB < 2.0f * fD) {
            iArrA = new int[]{0};
        }
        int[] iArrA2 = f27819e;
        if (bVar.c() == 1) {
            iArrA = d.a(iArrA);
            iArrA2 = d.a(iArrA2);
        }
        int[] iArr = iArrA;
        int[] iArr2 = iArrA2;
        int iMax = (int) Math.max(1.0d, Math.floor(((fB - (e.i(iArr2) * f12)) - (e.i(iArr) * fMax)) / fMin));
        int iCeil = (int) Math.ceil(fB / fMin);
        int i10 = (iCeil - iMax) + 1;
        int[] iArr3 = new int[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            iArr3[i11] = iCeil - i11;
        }
        a aVarC = a.c(fB, fA, fD, fMax, iArr, f12, iArr2, fMin, iArr3);
        this.f27820c = aVarC.e();
        if (i(aVarC, bVar.getItemCount())) {
            aVarC = a.c(fB, fA, fD, fMax, new int[]{aVarC.f27779c}, f12, new int[]{aVarC.f27780d}, fMin, new int[]{aVarC.f27783g});
        }
        return e.d(view.getContext(), f11, fB, aVarC, bVar.c());
    }

    @Override
    boolean h(b bVar, int i10) {
        return (i10 < this.f27820c && bVar.getItemCount() >= this.f27820c) || (i10 >= this.f27820c && bVar.getItemCount() < this.f27820c);
    }

    boolean i(a aVar, int i10) {
        int iE = aVar.e() - i10;
        boolean z10 = iE > 0 && (aVar.f27779c > 0 || aVar.f27780d > 1);
        while (iE > 0) {
            int i11 = aVar.f27779c;
            if (i11 > 0) {
                aVar.f27779c = i11 - 1;
            } else {
                int i12 = aVar.f27780d;
                if (i12 > 1) {
                    aVar.f27780d = i12 - 1;
                }
            }
            iE--;
        }
        return z10;
    }
}
