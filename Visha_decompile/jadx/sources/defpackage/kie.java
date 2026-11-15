package defpackage;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.common.C;
import com.google.android.gms.internal.ads.zzfww;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;

public final class kie implements bhe {
    public final u4h a = new u4h();
    public final boolean b;
    public final int c;
    public final int d;
    public final String e;
    public final float f;
    public final int g;

    public kie(List list) {
        int size = list.size();
        String str = C.SANS_SERIF_NAME;
        if (size != 1 || (((byte[]) list.get(0)).length != 48 && ((byte[]) list.get(0)).length != 53)) {
            this.c = 0;
            this.d = -1;
            this.e = C.SANS_SERIF_NAME;
            this.b = false;
            this.f = 0.85f;
            this.g = -1;
            return;
        }
        byte[] bArr = (byte[]) list.get(0);
        this.c = bArr[24];
        this.d = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
        this.e = true == "Serif".equals(kfh.c(bArr, 43, bArr.length + (-43))) ? C.SERIF_NAME : str;
        int i = bArr[25] * 20;
        this.g = i;
        boolean z = (bArr[0] & 32) != 0;
        this.b = z;
        if (z) {
            this.f = Math.max(0.0f, Math.min(((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i, 0.95f));
        } else {
            this.f = 0.85f;
        }
    }

    public static void b(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i >>> 8) | ((i & 255) << 24)), i3, i4, i5 | 33);
        }
    }

    public static void c(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            int i6 = i5 | 33;
            int i7 = i & 1;
            int i8 = i & 2;
            boolean z = true;
            if (i7 != 0) {
                if (i8 != 0) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i3, i4, i6);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i3, i4, i6);
                    z = false;
                }
            } else if (i8 != 0) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i3, i4, i6);
            } else {
                z = false;
            }
            if ((i & 4) != 0) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i3, i4, i6);
            } else {
                if (i7 != 0 || z) {
                    return;
                }
                spannableStringBuilder.setSpan(new StyleSpan(0), i3, i4, i6);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void a(byte[] bArr, int i, int i2, wge wgeVar, qfg qfgVar) {
        String strB;
        int i3;
        int i4;
        int length;
        u4h u4hVar = this.a;
        u4hVar.j(bArr, i + i2);
        u4hVar.l(i);
        int i5 = 1;
        int i6 = 0;
        int i7 = 2;
        n7g.d(u4hVar.u() >= 2);
        int iK = u4hVar.K();
        if (iK == 0) {
            strB = "";
        } else {
            int iW = u4hVar.w();
            Charset charsetC = u4hVar.c();
            int iW2 = u4hVar.w() - iW;
            if (charsetC == null) {
                charsetC = StandardCharsets.UTF_8;
            }
            strB = u4hVar.b(iK - iW2, charsetC);
        }
        if (strB.isEmpty()) {
            qfgVar.zza(new qge(zzfww.zzn(), C.TIME_UNSET, C.TIME_UNSET));
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(strB);
        int i8 = this.c;
        c(spannableStringBuilder, i8, 0, 0, spannableStringBuilder.length(), 16711680);
        int i9 = this.d;
        b(spannableStringBuilder, i9, -1, 0, spannableStringBuilder.length(), 16711680);
        String str = this.e;
        int length2 = spannableStringBuilder.length();
        if (str != C.SANS_SERIF_NAME) {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), 0, length2, 16711713);
        }
        float fMax = this.f;
        while (u4hVar.u() >= 8) {
            int iW3 = u4hVar.w();
            int iA = u4hVar.A();
            int iA2 = u4hVar.A();
            if (iA2 == 1937013100) {
                n7g.d(u4hVar.u() >= i7 ? i5 : i6);
                int iK2 = u4hVar.K();
                int i10 = i6;
                while (i10 < iK2) {
                    n7g.d(u4hVar.u() >= 12 ? i5 : i6);
                    int iK3 = u4hVar.K();
                    int iK4 = u4hVar.K();
                    u4hVar.m(i7);
                    int iG = u4hVar.G();
                    u4hVar.m(i5);
                    int iA3 = u4hVar.A();
                    if (iK4 > spannableStringBuilder.length()) {
                        zrg.f("Tx3gParser", "Truncating styl end (" + iK4 + ") to cueText.length() (" + spannableStringBuilder.length() + ").");
                        length = spannableStringBuilder.length();
                    } else {
                        length = iK4;
                    }
                    if (iK3 >= length) {
                        zrg.f("Tx3gParser", "Ignoring styl with start (" + iK3 + ") >= end (" + length + ").");
                    } else {
                        int i11 = length;
                        c(spannableStringBuilder, iG, i8, iK3, i11, 0);
                        b(spannableStringBuilder, iA3, i9, iK3, i11, 0);
                    }
                    i10++;
                    iK2 = iK2;
                    i5 = 1;
                    i6 = 0;
                    i7 = 2;
                }
                i3 = i5;
                i4 = i7;
            } else {
                i3 = i5;
                if (iA2 == 1952608120 && this.b) {
                    i4 = 2;
                    n7g.d(u4hVar.u() >= 2 ? i3 : 0);
                    float fK = u4hVar.K();
                    int i12 = this.g;
                    int i13 = kfh.a;
                    fMax = Math.max(0.0f, Math.min(fK / i12, 0.95f));
                } else {
                    i4 = 2;
                }
            }
            u4hVar.l(iW3 + iA);
            i5 = i3;
            i7 = i4;
            i6 = 0;
        }
        zvf zvfVar = new zvf();
        zvfVar.l(spannableStringBuilder);
        zvfVar.e(fMax, 0);
        zvfVar.f(0);
        qfgVar.zza(new qge(zzfww.zzo(zvfVar.p()), C.TIME_UNSET, C.TIME_UNSET));
    }
}
