package com.yandex.div.core.util.mask;

import defpackage.e74;
import defpackage.g1a;
import defpackage.j1a;
import defpackage.l1a;
import defpackage.wn8;
import defpackage.y45;
import defpackage.y71;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.List;
import java.util.Locale;

public final class a extends BaseInputMask {
    public final e74 e;
    public final char f;
    public final List g;
    public NumberFormat h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Locale locale, e74 e74Var) {
        super(new BaseInputMask.b("", y71.k(), false));
        y45.j(locale, CommonUrlParts.LOCALE);
        y45.j(e74Var, "onError");
        this.e = e74Var;
        this.f = (char) 164;
        this.g = y71.n('.', ',');
        NumberFormat currencyInstance = NumberFormat.getCurrencyInstance(locale);
        y45.i(currencyInstance, "getCurrencyInstance(locale)");
        this.h = A(currencyInstance);
    }

    public final NumberFormat A(NumberFormat numberFormat) throws IOException {
        DecimalFormat decimalFormat = numberFormat instanceof DecimalFormat ? (DecimalFormat) numberFormat : null;
        if (decimalFormat != null) {
            String pattern = decimalFormat.toPattern();
            y45.i(pattern, "toPattern()");
            StringBuilder sb = new StringBuilder();
            int length = pattern.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = pattern.charAt(i);
                if (cCharAt != this.f) {
                    sb.append(cCharAt);
                }
            }
            String string = sb.toString();
            y45.i(string, "toString(...)");
            decimalFormat.applyPattern(j1a.i1(string).toString());
        }
        return numberFormat;
    }

    public final String B(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (Character.isDigit(cCharAt)) {
                sb.append('#');
            } else {
                sb.append(cCharAt);
            }
        }
        String string = sb.toString();
        y45.i(string, "toString(...)");
        return string;
    }

    public final DecimalFormatSymbols C() {
        NumberFormat numberFormat = this.h;
        y45.h(numberFormat, "null cannot be cast to non-null type java.text.DecimalFormat");
        DecimalFormatSymbols decimalFormatSymbols = ((DecimalFormat) numberFormat).getDecimalFormatSymbols();
        y45.i(decimalFormatSymbols, "currencyFormatter as Dec…mat).decimalFormatSymbols");
        return decimalFormatSymbols;
    }

    public final String D(String str) {
        return g1a.M(str, ' ', (char) 160, false, 4, null);
    }

    public final boolean E(e eVar, int i) {
        return eVar.c() <= i && i < eVar.c() + eVar.a();
    }

    public final void F(Number number) {
        String str = this.h.format(number);
        y45.i(str, "formatted");
        String strB = B(str);
        BaseInputMask.c cVar = new BaseInputMask.c('#', "\\d", '0');
        char decimalSeparator = C().getDecimalSeparator();
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        sb.append(C().getDecimalSeparator());
        sb.append(']');
        y(new BaseInputMask.b(strB, y71.n(cVar, new BaseInputMask.c(decimalSeparator, sb.toString(), C().getDecimalSeparator())), o().a()), false);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x004e  */
    public final String G(String str, e eVar) {
        int i;
        int iC;
        int i2;
        char decimalSeparator = C().getDecimalSeparator();
        int i3 = 0;
        while (true) {
            i = -1;
            if (i3 >= str.length()) {
                i3 = -1;
                break;
            }
            if (str.charAt(i3) == decimalSeparator && !E(eVar, i3)) {
                break;
            }
            i3++;
        }
        if (eVar.a() != 1 || eVar.b() != 0) {
            iC = -1;
        } else if (this.g.contains(Character.valueOf(str.charAt(eVar.c())))) {
            iC = eVar.c();
        } else {
            iC = -1;
        }
        int maximumFractionDigits = this.h.getMaximumFractionDigits();
        if (i3 != -1) {
            i2 = maximumFractionDigits;
            for (int i4 = i3; i4 < str.length(); i4++) {
                if (Character.isDigit(str.charAt(i4)) && !E(eVar, i4)) {
                    i2--;
                }
            }
        } else {
            int i5 = 0;
            int i6 = 0;
            boolean z = false;
            i2 = maximumFractionDigits;
            while (i5 < str.length()) {
                char cCharAt = str.charAt(i5);
                int i7 = i6 + 1;
                boolean zE = E(eVar, i6);
                if (cCharAt == decimalSeparator) {
                    z = true;
                } else if (!zE && z && Character.isDigit(cCharAt)) {
                    i2--;
                }
                i5++;
                i6 = i7;
            }
        }
        boolean z2 = j1a.W(str, decimalSeparator, false, 2, null) || iC != -1;
        StringBuilder sb = new StringBuilder();
        boolean z3 = false;
        for (int length = str.length() - 1; length >= 0; length--) {
            char cCharAt2 = str.charAt(length);
            boolean z4 = sb.length() <= maximumFractionDigits;
            if (Character.isDigit(cCharAt2)) {
                if (!E(eVar, length) || z3 || !z2) {
                    sb.append(cCharAt2);
                } else if (i2 > 0) {
                    sb.append(cCharAt2);
                    i2--;
                }
            } else if (z4 && i3 == -1 && length == iC) {
                sb.append(decimalSeparator);
                z3 = true;
            } else if (z4 && cCharAt2 == decimalSeparator && (i3 == length || i3 == -1)) {
                sb.append(decimalSeparator);
                z3 = true;
                i3 = length;
            }
        }
        String string = sb.toString();
        y45.i(string, "toString(...)");
        String string2 = l1a.s1(string).toString();
        int length2 = string2.length();
        for (int i8 = 0; i8 < length2; i8++) {
            if (string2.charAt(i8) != C().getZeroDigit()) {
                i = i8;
                break;
            }
        }
        if (i <= 0) {
            return string2;
        }
        return string2.charAt(i) == C().getDecimalSeparator() ? l1a.n1(string2, i - 1) : l1a.n1(string2, i);
    }

    public final void H(Locale locale) {
        y45.j(locale, CommonUrlParts.LOCALE);
        String strM = g1a.M(p(), C().getDecimalSeparator(), '.', false, 4, null);
        NumberFormat currencyInstance = NumberFormat.getCurrencyInstance(locale);
        y45.i(currencyInstance, "getCurrencyInstance(locale)");
        this.h = A(currencyInstance);
        BaseInputMask.b(this, g1a.M(strM, '.', C().getDecimalSeparator(), false, 4, null), null, 2, null);
    }

    @Override
    public void a(String str, Integer num) throws ParseException {
        String strValueOf;
        int iAbs;
        y45.j(str, "newValue");
        e eVarA = e.d.a(q(), D(str));
        char decimalSeparator = C().getDecimalSeparator();
        String strQ = q();
        int length = strQ.length() - 1;
        if (length < 0) {
            length = -1;
            break;
        }
        while (true) {
            int i = length - 1;
            if (strQ.charAt(length) == decimalSeparator) {
                break;
            }
            if (i < 0) {
                length = -1;
                break;
            }
            length = i;
        }
        int length2 = str.length() - 1;
        if (length2 < 0) {
            length2 = -1;
            break;
        }
        while (true) {
            int i2 = length2 - 1;
            if (str.charAt(length2) == decimalSeparator) {
                break;
            }
            if (i2 < 0) {
                length2 = -1;
                break;
            }
            length2 = i2;
        }
        boolean z = length != length2 || (length == -1 && length2 == -1);
        String strG = G(str, eVarA);
        NumberFormat numberFormat = this.h;
        if (j1a.R0(strG, decimalSeparator, false, 2, null)) {
            strValueOf = C().getZeroDigit() + strG;
        } else {
            strValueOf = j1a.o0(strG) ? String.valueOf(C().getZeroDigit()) : strG;
        }
        Number number = numberFormat.parse(strValueOf);
        if (number == null) {
            number = 0;
        }
        h(eVarA);
        if (z) {
            F(number);
        }
        BaseInputMask.v(this, strG, 0, null, 4, null);
        if (q().length() <= eVarA.c() || q().charAt(eVarA.c()) != C().getGroupingSeparator()) {
            iAbs = Math.abs(q().length() - (str.length() - (num != null ? num.intValue() : l())));
        } else {
            iAbs = num != null ? num.intValue() : l();
        }
        w(wn8.g(iAbs, q().length()));
    }

    @Override
    public void r(Exception exc) {
        y45.j(exc, "exception");
        this.e.invoke(exc);
    }

    @Override
    public void s(String str) throws ParseException {
        y45.j(str, "newRawValue");
        Number number = this.h.parse(str);
        if (number == null) {
            number = 0;
        }
        F(number);
        super.s(str);
    }
}
