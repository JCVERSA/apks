package com.yandex.mobile.ads.impl;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.common.C;
import java.util.List;

public final class x72 extends uy1 {
    private final ag1 m = new ag1();
    private final boolean n;
    private final int o;
    private final int p;
    private final String q;
    private final float r;
    private final int s;

    public x72(List<byte[]> list) {
        int size = list.size();
        String str = C.SANS_SERIF_NAME;
        if (size != 1 || (list.get(0).length != 48 && list.get(0).length != 53)) {
            this.o = 0;
            this.p = -1;
            this.q = C.SANS_SERIF_NAME;
            this.n = false;
            this.r = 0.85f;
            this.s = -1;
            return;
        }
        byte[] bArr = list.get(0);
        this.o = bArr[24];
        this.p = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
        this.q = "Serif".equals(f92.a(bArr, 43, bArr.length - 43)) ? C.SERIF_NAME : str;
        int i = bArr[25] * 20;
        this.s = i;
        boolean z = (bArr[0] & 32) != 0;
        this.n = z;
        if (z) {
            this.r = f92.a(((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i);
        } else {
            this.r = 0.85f;
        }
    }

    private static void a(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            int i6 = i5 | 33;
            boolean z = (i & 1) != 0;
            boolean z2 = (i & 2) != 0;
            if (z) {
                if (z2) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i3, i4, i6);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i3, i4, i6);
                }
            } else if (z2) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i3, i4, i6);
            }
            boolean z3 = (i & 4) != 0;
            if (z3) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i3, i4, i6);
            }
            if (z3 || z || z2) {
                return;
            }
            spannableStringBuilder.setSpan(new StyleSpan(0), i3, i4, i6);
        }
    }

    @Override
    public final n32 a(byte[] bArr, int i, boolean z) throws p32 {
        String strA;
        char cF;
        int i2;
        int i3;
        int i4 = 1;
        int i5 = 8;
        this.m.a(i, bArr);
        ag1 ag1Var = this.m;
        int i6 = 2;
        if (ag1Var.a() >= 2) {
            int iZ = ag1Var.z();
            if (iZ == 0) {
                strA = "";
            } else if (ag1Var.a() >= 2 && ((cF = ag1Var.f()) == 65279 || cF == 65534)) {
                strA = ag1Var.a(iZ, lo.e);
            } else {
                strA = ag1Var.a(iZ, lo.c);
            }
            if (strA.isEmpty()) {
                return y72.c;
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(strA);
            a(spannableStringBuilder, this.o, 0, 0, spannableStringBuilder.length(), 16711680);
            int i7 = this.p;
            int length = spannableStringBuilder.length();
            int i8 = 0;
            if (i7 != -1) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan((i7 >>> 8) | ((i7 & 255) << 24)), 0, length, 16711713);
            }
            String str = this.q;
            int length2 = spannableStringBuilder.length();
            if (str != C.SANS_SERIF_NAME) {
                spannableStringBuilder.setSpan(new TypefaceSpan(str), 0, length2, 16711713);
            }
            float fMax = this.r;
            while (this.m.a() >= i5) {
                int iD = this.m.d();
                int iH = this.m.h();
                int iH2 = this.m.h();
                if (iH2 == 1937013100) {
                    if (this.m.a() >= i6) {
                        int iZ2 = this.m.z();
                        int i9 = i8;
                        while (i9 < iZ2) {
                            ag1 ag1Var2 = this.m;
                            if (ag1Var2.a() >= 12) {
                                int iZ3 = ag1Var2.z();
                                int iZ4 = ag1Var2.z();
                                ag1Var2.f(i6);
                                int iT = ag1Var2.t();
                                ag1Var2.f(i4);
                                int iH3 = ag1Var2.h();
                                if (iZ4 > spannableStringBuilder.length()) {
                                    et0.d("Tx3gDecoder", "Truncating styl end (" + iZ4 + ") to cueText.length() (" + spannableStringBuilder.length() + ").");
                                    iZ4 = spannableStringBuilder.length();
                                }
                                int i10 = iZ4;
                                if (iZ3 >= i10) {
                                    et0.d("Tx3gDecoder", "Ignoring styl with start (" + iZ3 + ") >= end (" + i10 + ").");
                                    i4 = 1;
                                    i3 = 8;
                                } else {
                                    a(spannableStringBuilder, iT, this.o, iZ3, i10, 0);
                                    if (iH3 != this.p) {
                                        i3 = 8;
                                        spannableStringBuilder.setSpan(new ForegroundColorSpan(((iH3 & 255) << 24) | (iH3 >>> 8)), iZ3, i10, 33);
                                    } else {
                                        i3 = 8;
                                    }
                                    i4 = 1;
                                }
                                i9++;
                                i5 = i3;
                                iZ2 = iZ2;
                                i6 = 2;
                            } else {
                                throw new p32("Unexpected subtitle format.");
                            }
                        }
                        i2 = i5;
                    } else {
                        throw new p32("Unexpected subtitle format.");
                    }
                } else {
                    i2 = i5;
                    if (iH2 == 1952608120 && this.n) {
                        i6 = 2;
                        if (this.m.a() >= 2) {
                            float fZ = this.m.z() / this.s;
                            int i11 = f92.a;
                            fMax = Math.max(0.0f, Math.min(fZ, 0.95f));
                        } else {
                            throw new p32("Unexpected subtitle format.");
                        }
                    } else {
                        i6 = 2;
                    }
                }
                this.m.e(iD + iH);
                i5 = i2;
                i8 = 0;
            }
            return new y72(new hv.a().a(spannableStringBuilder).a(0, fMax).a(0).a());
        }
        throw new p32("Unexpected subtitle format.");
    }
}
