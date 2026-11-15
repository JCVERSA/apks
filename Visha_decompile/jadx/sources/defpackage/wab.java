package defpackage;

import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import java.util.ArrayDeque;
import java.util.Map;
import org.apache.commons.io.IOUtils;

public abstract class wab {
    public static void a(Spannable spannable, int i, int i2, xab xabVar, uab uabVar, Map map, int i3) {
        uab uabVarE;
        xab xabVarF;
        int i4;
        if (xabVar.l() != -1) {
            spannable.setSpan(new StyleSpan(xabVar.l()), i, i2, 33);
        }
        if (xabVar.s()) {
            spannable.setSpan(new StrikethroughSpan(), i, i2, 33);
        }
        if (xabVar.t()) {
            spannable.setSpan(new UnderlineSpan(), i, i2, 33);
        }
        if (xabVar.q()) {
            hu9.a(spannable, new ForegroundColorSpan(xabVar.c()), i, i2, 33);
        }
        if (xabVar.p()) {
            hu9.a(spannable, new BackgroundColorSpan(xabVar.b()), i, i2, 33);
        }
        if (xabVar.d() != null) {
            hu9.a(spannable, new TypefaceSpan(xabVar.d()), i, i2, 33);
        }
        if (xabVar.o() != null) {
            eha ehaVar = (eha) zi.e(xabVar.o());
            int i5 = ehaVar.a;
            if (i5 == -1) {
                i5 = (i3 == 2 || i3 == 1) ? 3 : 1;
                i4 = 1;
            } else {
                i4 = ehaVar.b;
            }
            int i6 = ehaVar.c;
            if (i6 == -2) {
                i6 = 1;
            }
            hu9.a(spannable, new fha(i5, i4, i6), i, i2, 33);
        }
        int iJ = xabVar.j();
        if (iJ == 2) {
            uab uabVarD = d(uabVar, map);
            if (uabVarD != null && (uabVarE = e(uabVarD, map)) != null) {
                if (uabVarE.g() != 1 || uabVarE.f(0).b == null) {
                    op5.f("TtmlRenderUtil", "Skipping rubyText node without exactly one text child.");
                } else {
                    String str = (String) blb.j(uabVarE.f(0).b);
                    xab xabVarF2 = f(uabVarE.f, uabVarE.l(), map);
                    int i7 = xabVarF2 != null ? xabVarF2.i() : -1;
                    if (i7 == -1 && (xabVarF = f(uabVarD.f, uabVarD.l(), map)) != null) {
                        i7 = xabVarF.i();
                    }
                    spannable.setSpan(new rw8(str, i7), i, i2, 33);
                }
            }
        } else if (iJ == 3 || iJ == 4) {
            spannable.setSpan(new h82(), i, i2, 33);
        }
        if (xabVar.n()) {
            hu9.a(spannable, new xr4(), i, i2, 33);
        }
        int iF = xabVar.f();
        if (iF == 1) {
            hu9.a(spannable, new AbsoluteSizeSpan((int) xabVar.e(), true), i, i2, 33);
        } else if (iF == 2) {
            hu9.a(spannable, new RelativeSizeSpan(xabVar.e()), i, i2, 33);
        } else {
            if (iF != 3) {
                return;
            }
            hu9.a(spannable, new RelativeSizeSpan(xabVar.e() / 100.0f), i, i2, 33);
        }
    }

    public static String b(String str) {
        return str.replaceAll(IOUtils.LINE_SEPARATOR_WINDOWS, "\n").replaceAll(" *\n *", "\n").replaceAll("\n", " ").replaceAll("[ \t\\x0B\f\r]+", " ");
    }

    public static void c(SpannableStringBuilder spannableStringBuilder) {
        int length = spannableStringBuilder.length() - 1;
        while (length >= 0 && spannableStringBuilder.charAt(length) == ' ') {
            length--;
        }
        if (length < 0 || spannableStringBuilder.charAt(length) == '\n') {
            return;
        }
        spannableStringBuilder.append('\n');
    }

    public static uab d(uab uabVar, Map map) {
        while (uabVar != null) {
            xab xabVarF = f(uabVar.f, uabVar.l(), map);
            if (xabVarF != null && xabVarF.j() == 1) {
                return uabVar;
            }
            uabVar = uabVar.j;
        }
        return null;
    }

    public static uab e(uab uabVar, Map map) {
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(uabVar);
        while (!arrayDeque.isEmpty()) {
            uab uabVar2 = (uab) arrayDeque.pop();
            xab xabVarF = f(uabVar2.f, uabVar2.l(), map);
            if (xabVarF != null && xabVarF.j() == 3) {
                return uabVar2;
            }
            for (int iG = uabVar2.g() - 1; iG >= 0; iG--) {
                arrayDeque.push(uabVar2.f(iG));
            }
        }
        return null;
    }

    public static xab f(xab xabVar, String[] strArr, Map map) {
        int i = 0;
        if (xabVar == null) {
            if (strArr == null) {
                return null;
            }
            if (strArr.length == 1) {
                return (xab) map.get(strArr[0]);
            }
            if (strArr.length > 1) {
                xab xabVar2 = new xab();
                int length = strArr.length;
                while (i < length) {
                    xabVar2.a((xab) map.get(strArr[i]));
                    i++;
                }
                return xabVar2;
            }
        } else {
            if (strArr != null && strArr.length == 1) {
                return xabVar.a((xab) map.get(strArr[0]));
            }
            if (strArr != null && strArr.length > 1) {
                int length2 = strArr.length;
                while (i < length2) {
                    xabVar.a((xab) map.get(strArr[i]));
                    i++;
                }
            }
        }
        return xabVar;
    }
}
