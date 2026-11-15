package com.yandex.mobile.ads.impl;

import android.graphics.PointF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class f22 extends uy1 {
    private static final Pattern r = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");
    private final boolean m;

    @Nullable
    private final g22 n;
    private LinkedHashMap o;
    private float p = -3.4028235E38f;
    private float q = -3.4028235E38f;

    public f22(@Nullable List<byte[]> list) {
        if (list == null || list.isEmpty()) {
            this.m = false;
            this.n = null;
            return;
        }
        this.m = true;
        String strA = f92.a(list.get(0));
        hg.a(strA.startsWith("Format:"));
        this.n = (g22) hg.a(g22.a(strA));
        a(new ag1(list.get(1)));
    }

    private static int a(long j, ArrayList arrayList, ArrayList arrayList2) {
        int i;
        int size = arrayList.size() - 1;
        while (true) {
            if (size < 0) {
                i = 0;
                break;
            }
            if (((Long) arrayList.get(size)).longValue() == j) {
                return size;
            }
            if (((Long) arrayList.get(size)).longValue() < j) {
                i = size + 1;
                break;
            }
            size--;
        }
        arrayList.add(i, Long.valueOf(j));
        arrayList2.add(i, i == 0 ? new ArrayList() : new ArrayList((Collection) arrayList2.get(i - 1)));
        return i;
    }

    @Override
    public final n32 a(byte[] bArr, int i, boolean z) {
        ag1 ag1Var;
        int i2;
        Layout.Alignment alignment;
        int i3;
        float f;
        int i4;
        int i5;
        int i6;
        f22 f22Var = this;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ag1 ag1Var2 = new ag1(i, bArr);
        if (!f22Var.m) {
            f22Var.a(ag1Var2);
        }
        g22 g22VarA = f22Var.m ? f22Var.n : null;
        while (true) {
            String strJ = ag1Var2.j();
            if (strJ != null) {
                if (strJ.startsWith("Format:")) {
                    g22VarA = g22.a(strJ);
                } else {
                    if (strJ.startsWith("Dialogue:")) {
                        if (g22VarA == null) {
                            et0.d("SsaDecoder", "Skipping dialogue line before complete format: ".concat(strJ));
                        } else if (strJ.startsWith("Dialogue:")) {
                            String[] strArrSplit = strJ.substring(9).split(StringUtils.COMMA, g22VarA.e);
                            if (strArrSplit.length != g22VarA.e) {
                                et0.d("SsaDecoder", "Skipping dialogue line with fewer columns than format: ".concat(strJ));
                            } else {
                                if (a(strArrSplit[g22VarA.a]) == C.TIME_UNSET) {
                                    et0.d("SsaDecoder", "Skipping invalid timing: ".concat(strJ));
                                } else {
                                    long jA = a(strArrSplit[g22VarA.b]);
                                    if (jA == C.TIME_UNSET) {
                                        et0.d("SsaDecoder", "Skipping invalid timing: ".concat(strJ));
                                    } else {
                                        LinkedHashMap linkedHashMap = f22Var.o;
                                        h22 h22Var = (linkedHashMap == null || (i6 = g22VarA.c) == -1) ? null : (h22) linkedHashMap.get(strArrSplit[i6].trim());
                                        String str = strArrSplit[g22VarA.d];
                                        h22.b bVarA = h22.b.a(str);
                                        String strReplace = h22.b.c(str).replace("\\N", "\n").replace("\\n", "\n").replace("\\h", " ");
                                        float f2 = f22Var.p;
                                        float f3 = f22Var.q;
                                        SpannableString spannableString = new SpannableString(strReplace);
                                        hv.a aVarA = new hv.a().a(spannableString);
                                        if (h22Var != null) {
                                            ag1Var = ag1Var2;
                                            if (h22Var.c != null) {
                                                spannableString.setSpan(new ForegroundColorSpan(h22Var.c.intValue()), 0, spannableString.length(), 33);
                                            }
                                            if (h22Var.j == 3 && h22Var.d != null) {
                                                spannableString.setSpan(new BackgroundColorSpan(h22Var.d.intValue()), 0, spannableString.length(), 33);
                                            }
                                            float f4 = h22Var.e;
                                            if (f4 != -3.4028235E38f && f3 != -3.4028235E38f) {
                                                aVarA.b(1, f4 / f3);
                                            }
                                            boolean z2 = h22Var.f;
                                            if (z2 && h22Var.g) {
                                                i4 = 0;
                                                i5 = 33;
                                                spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
                                            } else {
                                                i4 = 0;
                                                i5 = 33;
                                                if (z2) {
                                                    spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
                                                } else if (h22Var.g) {
                                                    spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
                                                }
                                            }
                                            if (h22Var.h) {
                                                spannableString.setSpan(new UnderlineSpan(), i4, spannableString.length(), i5);
                                            }
                                            if (h22Var.i) {
                                                spannableString.setSpan(new StrikethroughSpan(), i4, spannableString.length(), i5);
                                            }
                                        } else {
                                            ag1Var = ag1Var2;
                                            g22VarA = g22VarA;
                                            jA = jA;
                                        }
                                        int i7 = bVarA.a;
                                        if (i7 != -1) {
                                            i2 = i7;
                                        } else {
                                            i2 = h22Var != null ? h22Var.b : -1;
                                        }
                                        switch (i2) {
                                            case 0:
                                            default:
                                                xr0.a("Unknown alignment: ", i2, "SsaDecoder");
                                            case -1:
                                                alignment = null;
                                                break;
                                            case 1:
                                            case 4:
                                            case 7:
                                                alignment = Layout.Alignment.ALIGN_NORMAL;
                                                break;
                                            case 2:
                                            case 5:
                                            case 8:
                                                alignment = Layout.Alignment.ALIGN_CENTER;
                                                break;
                                            case 3:
                                            case 6:
                                            case 9:
                                                alignment = Layout.Alignment.ALIGN_OPPOSITE;
                                                break;
                                        }
                                        hv.a aVarB = aVarA.b(alignment);
                                        int i8 = Integer.MIN_VALUE;
                                        switch (i2) {
                                            case 0:
                                            default:
                                                xr0.a("Unknown alignment: ", i2, "SsaDecoder");
                                            case -1:
                                                i3 = Integer.MIN_VALUE;
                                                break;
                                            case 1:
                                            case 4:
                                            case 7:
                                                i3 = 0;
                                                break;
                                            case 2:
                                            case 5:
                                            case 8:
                                                i3 = 1;
                                                break;
                                            case 3:
                                            case 6:
                                            case 9:
                                                i3 = 2;
                                                break;
                                        }
                                        hv.a aVarB2 = aVarB.b(i3);
                                        switch (i2) {
                                            case -1:
                                                break;
                                            case 0:
                                            default:
                                                xr0.a("Unknown alignment: ", i2, "SsaDecoder");
                                                break;
                                            case 1:
                                            case 2:
                                            case 3:
                                                i8 = 2;
                                                break;
                                            case 4:
                                            case 5:
                                            case 6:
                                                i8 = 1;
                                                break;
                                            case 7:
                                            case 8:
                                            case 9:
                                                i8 = 0;
                                                break;
                                        }
                                        aVarB2.a(i8);
                                        PointF pointF = bVarA.b;
                                        if (pointF != null && f3 != -3.4028235E38f && f2 != -3.4028235E38f) {
                                            aVarA.b(pointF.x / f2);
                                            aVarA.a(0, bVarA.b.y / f3);
                                        } else {
                                            int iC = aVarA.c();
                                            float f5 = 0.05f;
                                            if (iC == 0) {
                                                f = 0.05f;
                                            } else if (iC != 1) {
                                                f = iC != 2 ? -3.4028235E38f : 0.95f;
                                            } else {
                                                f = 0.5f;
                                            }
                                            aVarA.b(f);
                                            int iB = aVarA.b();
                                            if (iB != 0) {
                                                f5 = iB != 1 ? iB != 2 ? -3.4028235E38f : 0.95f : 0.5f;
                                            }
                                            aVarA.a(0, f5);
                                        }
                                        hv hvVarA = aVarA.a();
                                        int iA = a(jA, arrayList2, arrayList);
                                        for (int iA2 = a(r9, arrayList2, arrayList); iA2 < iA; iA2++) {
                                            ((List) arrayList.get(iA2)).add(hvVarA);
                                        }
                                    }
                                }
                            }
                        } else {
                            throw new IllegalArgumentException();
                        }
                        ag1Var = ag1Var2;
                        g22VarA = g22VarA;
                    } else {
                        ag1Var = ag1Var2;
                        g22VarA = g22VarA;
                    }
                    f22Var = this;
                    ag1Var2 = ag1Var;
                    g22VarA = g22VarA;
                }
            } else {
                return new i22(arrayList, arrayList2);
            }
        }
    }

    private void a(ag1 ag1Var) {
        while (true) {
            String strJ = ag1Var.j();
            if (strJ == null) {
                return;
            }
            if ("[Script Info]".equalsIgnoreCase(strJ)) {
                while (true) {
                    String strJ2 = ag1Var.j();
                    if (strJ2 == null || (ag1Var.a() != 0 && ag1Var.g() == 91)) {
                        break;
                    }
                    String[] strArrSplit = strJ2.split(StringUtils.PROCESS_POSTFIX_DELIMITER);
                    if (strArrSplit.length == 2) {
                        String strB = fg.b(strArrSplit[0].trim());
                        strB.getClass();
                        if (strB.equals("playresx")) {
                            this.p = Float.parseFloat(strArrSplit[1].trim());
                        } else if (strB.equals("playresy")) {
                            try {
                                this.q = Float.parseFloat(strArrSplit[1].trim());
                            } catch (NumberFormatException unused) {
                            }
                        }
                    }
                }
            } else if ("[V4+ Styles]".equalsIgnoreCase(strJ)) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                h22.a aVarA = null;
                while (true) {
                    String strJ3 = ag1Var.j();
                    if (strJ3 == null || (ag1Var.a() != 0 && ag1Var.g() == 91)) {
                        break;
                    }
                    if (strJ3.startsWith("Format:")) {
                        aVarA = h22.a.a(strJ3);
                    } else if (strJ3.startsWith("Style:")) {
                        if (aVarA == null) {
                            et0.d("SsaDecoder", "Skipping 'Style:' line before 'Format:' line: ".concat(strJ3));
                        } else {
                            h22 h22VarA = h22.a(strJ3, aVarA);
                            if (h22VarA != null) {
                                linkedHashMap.put(h22VarA.a, h22VarA);
                            }
                        }
                    }
                }
                this.o = linkedHashMap;
            } else if ("[V4 Styles]".equalsIgnoreCase(strJ)) {
                et0.c("SsaDecoder", "[V4 Styles] are not supported");
            } else if ("[Events]".equalsIgnoreCase(strJ)) {
                return;
            }
        }
    }

    private static long a(String str) {
        Matcher matcher = r.matcher(str.trim());
        if (!matcher.matches()) {
            return C.TIME_UNSET;
        }
        String strGroup = matcher.group(1);
        int i = f92.a;
        return (Long.parseLong(matcher.group(4)) * 10000) + (Long.parseLong(matcher.group(3)) * 1000000) + (Long.parseLong(matcher.group(2)) * 60000000) + (Long.parseLong(strGroup) * 3600000000L);
    }
}
