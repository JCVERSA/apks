package com.yandex.mobile.ads.impl;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.time.DateUtils;

public final class l32 extends uy1 {
    private static final Pattern o = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*");
    private static final Pattern p = Pattern.compile("\\{\\\\.*?\\}");
    private final StringBuilder m = new StringBuilder();
    private final ArrayList<String> n = new ArrayList<>();

    private static long a(Matcher matcher, int i) {
        String strGroup = matcher.group(i + 1);
        long j = strGroup != null ? Long.parseLong(strGroup) * DateUtils.MILLIS_PER_HOUR : 0L;
        String strGroup2 = matcher.group(i + 2);
        strGroup2.getClass();
        long j2 = (Long.parseLong(strGroup2) * 60000) + j;
        String strGroup3 = matcher.group(i + 3);
        strGroup3.getClass();
        long j3 = (Long.parseLong(strGroup3) * 1000) + j2;
        String strGroup4 = matcher.group(i + 4);
        if (strGroup4 != null) {
            j3 += Long.parseLong(strGroup4);
        }
        return j3 * 1000;
    }

    /* JADX WARN: Code duplicated, block: B:132:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:134:0x0202 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:135:0x0204  */
    /* JADX WARN: Code duplicated, block: B:138:0x020c  */
    /* JADX WARN: Code duplicated, block: B:139:0x020e  */
    /* JADX WARN: Code duplicated, block: B:142:0x021b  */
    /* JADX WARN: Code duplicated, block: B:144:0x021e  */
    /* JADX WARN: Code duplicated, block: B:146:0x0221  */
    /* JADX WARN: Code duplicated, block: B:150:0x022a  */
    /* JADX WARN: Code duplicated, block: B:163:0x0206 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:164:0x0224 A[SYNTHETIC] */
    @Override
    public final n32 a(byte[] bArr, int i, boolean z) {
        String str;
        byte b;
        byte b2;
        int i2;
        int iC;
        float f;
        float f2;
        int iB;
        hv hvVarA;
        this = this;
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        gt0 gt0Var = new gt0(0);
        ag1 ag1Var = new ag1(i, bArr);
        while (true) {
            String strJ = ag1Var.j();
            if (strJ != null) {
                if (strJ.length() != 0) {
                    try {
                        Integer.parseInt(strJ);
                        String strJ2 = ag1Var.j();
                        if (strJ2 == null) {
                            et0.d("SubripDecoder", "Unexpected end");
                        } else {
                            Matcher matcher = o.matcher(strJ2);
                            if (!matcher.matches()) {
                                et0.d("SubripDecoder", "Skipping invalid timing: ".concat(strJ2));
                            } else {
                                gt0Var.a(a(matcher, 1));
                                gt0Var.a(a(matcher, 6));
                                this.m.setLength(i3);
                                this.n.clear();
                                for (String strJ3 = ag1Var.j(); !TextUtils.isEmpty(strJ3); strJ3 = ag1Var.j()) {
                                    if (this.m.length() > 0) {
                                        this.m.append("<br>");
                                    }
                                    StringBuilder sb = this.m;
                                    ArrayList<String> arrayList2 = this.n;
                                    String strTrim = strJ3.trim();
                                    StringBuilder sb2 = new StringBuilder(strTrim);
                                    Matcher matcher2 = p.matcher(strTrim);
                                    int i4 = i3;
                                    while (matcher2.find()) {
                                        String strGroup = matcher2.group();
                                        arrayList2.add(strGroup);
                                        int iStart = matcher2.start() - i4;
                                        int length = strGroup.length();
                                        sb2.replace(iStart, iStart + length, "");
                                        i4 += length;
                                    }
                                    sb.append(sb2.toString());
                                }
                                Spanned spannedFromHtml = Html.fromHtml(this.m.toString());
                                int i5 = i3;
                                while (true) {
                                    if (i5 < this.n.size()) {
                                        str = this.n.get(i5);
                                        if (!str.matches("\\{\\\\an[1-9]\\}")) {
                                            i5++;
                                        }
                                    } else {
                                        str = null;
                                    }
                                }
                                hv.a aVarA = new hv.a().a(spannedFromHtml);
                                if (str == null) {
                                    hvVarA = aVarA.a();
                                } else {
                                    switch (str) {
                                        case "{\an1}":
                                            b = 0;
                                            break;
                                        case "{\an2}":
                                            b = 6;
                                            break;
                                        case "{\an3}":
                                            b = 3;
                                            break;
                                        case "{\an4}":
                                            b = 1;
                                            break;
                                        case "{\an5}":
                                            b = 7;
                                            break;
                                        case "{\an6}":
                                            b = 4;
                                            break;
                                        case "{\an7}":
                                            b = 2;
                                            break;
                                        case "{\an8}":
                                            b = 8;
                                            break;
                                        case "{\an9}":
                                            b = 5;
                                            break;
                                        default:
                                            b = -1;
                                            break;
                                    }
                                    if (b == 0 || b == 1 || b == 2) {
                                        aVarA.b(0);
                                    } else if (b != 3 && b != 4 && b != 5) {
                                        aVarA.b(1);
                                    } else {
                                        aVarA.b(2);
                                    }
                                    switch (str) {
                                        case "{\an1}":
                                            b2 = 0;
                                            break;
                                        case "{\an2}":
                                            b2 = 1;
                                            break;
                                        case "{\an3}":
                                            b2 = 2;
                                            break;
                                        case "{\an4}":
                                            b2 = 6;
                                            break;
                                        case "{\an5}":
                                            b2 = 7;
                                            break;
                                        case "{\an6}":
                                            b2 = 8;
                                            break;
                                        case "{\an7}":
                                            b2 = 3;
                                            break;
                                        case "{\an8}":
                                            b2 = 4;
                                            break;
                                        case "{\an9}":
                                            b2 = 5;
                                            break;
                                        default:
                                            b2 = -1;
                                            break;
                                    }
                                    if (b2 == 0 || b2 == 1) {
                                        i2 = 2;
                                    } else {
                                        if (b2 != 2) {
                                            if (b2 != 3 && b2 != 4 && b2 != 5) {
                                                aVarA.a(1);
                                            } else {
                                                aVarA.a(0);
                                            }
                                            i2 = 2;
                                        } else {
                                            i2 = 2;
                                        }
                                        iC = aVarA.c();
                                        f = 0.5f;
                                        if (iC != 0) {
                                            f2 = 0.08f;
                                        } else if (iC != 1) {
                                            f2 = 0.5f;
                                        } else {
                                            if (iC == i2) {
                                                throw new IllegalArgumentException();
                                            }
                                            f2 = 0.92f;
                                        }
                                        hv.a aVarB = aVarA.b(f2);
                                        iB = aVarA.b();
                                        if (iB != 0) {
                                            f = 0.08f;
                                        } else if (iB != 1) {
                                            if (iB == 2) {
                                                throw new IllegalArgumentException();
                                            }
                                            f = 0.92f;
                                        }
                                        hvVarA = aVarB.a(0, f).a();
                                    }
                                    aVarA.a(i2);
                                    iC = aVarA.c();
                                    f = 0.5f;
                                    if (iC != 0) {
                                        f2 = 0.08f;
                                    } else if (iC != 1) {
                                        f2 = 0.5f;
                                    } else {
                                        if (iC == i2) {
                                            throw new IllegalArgumentException();
                                        }
                                        f2 = 0.92f;
                                    }
                                    hv.a aVarB2 = aVarA.b(f2);
                                    iB = aVarA.b();
                                    if (iB != 0) {
                                        f = 0.08f;
                                    } else if (iB != 1) {
                                        if (iB == 2) {
                                            throw new IllegalArgumentException();
                                        }
                                        f = 0.92f;
                                    }
                                    hvVarA = aVarB2.a(0, f).a();
                                }
                                arrayList.add(hvVarA);
                                arrayList.add(hv.s);
                                ag1Var = ag1Var;
                                gt0Var = gt0Var;
                            }
                            i3 = 0;
                        }
                    } catch (NumberFormatException unused) {
                        et0.d("SubripDecoder", "Skipping invalid index: ".concat(strJ));
                    }
                }
            }
        }
        return new m32((hv[]) arrayList.toArray(new hv[i3]), gt0Var.b());
    }
}
