package defpackage;

import android.graphics.PointF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.common.C;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class rhe implements bhe {
    public static final Pattern g = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");
    public final boolean a;
    public final qhe b;
    public Map d;
    public float e = -3.4028235E38f;
    public float f = -3.4028235E38f;
    public final u4h c = new u4h();

    public rhe(List list) {
        if (list == null || list.isEmpty()) {
            this.a = false;
            this.b = null;
            return;
        }
        this.a = true;
        String strB = kfh.b((byte[]) list.get(0));
        n7g.d(strB.startsWith("Format:"));
        qhe qheVarA = qhe.a(strB);
        qheVarA.getClass();
        this.b = qheVarA;
        e(new u4h((byte[]) list.get(1)), StandardCharsets.UTF_8);
    }

    private static float b(int i) {
        if (i == 0) {
            return 0.05f;
        }
        if (i != 1) {
            return i != 2 ? -3.4028235E38f : 0.95f;
        }
        return 0.5f;
    }

    public static int c(long j, List list, List list2) {
        int i;
        int size = list.size();
        while (true) {
            size--;
            if (size < 0) {
                i = 0;
                break;
            }
            if (((Long) list.get(size)).longValue() == j) {
                return size;
            }
            if (((Long) list.get(size)).longValue() < j) {
                i = size + 1;
                break;
            }
        }
        list.add(i, Long.valueOf(j));
        list2.add(i, i == 0 ? new ArrayList() : new ArrayList((Collection) list2.get(i - 1)));
        return i;
    }

    public static long d(String str) {
        Matcher matcher = g.matcher(str.trim());
        if (!matcher.matches()) {
            return C.TIME_UNSET;
        }
        String strGroup = matcher.group(1);
        int i = kfh.a;
        long j = Long.parseLong(strGroup) * 3600000000L;
        long j2 = Long.parseLong(matcher.group(2)) * 60000000;
        return j + j2 + (Long.parseLong(matcher.group(3)) * 1000000) + (Long.parseLong(matcher.group(4)) * 10000);
    }

    /* JADX WARN: Code duplicated, block: B:119:0x02aa  */
    /* JADX WARN: Code duplicated, block: B:132:0x02d9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x0194  */
    /* JADX WARN: Code duplicated, block: B:68:0x01a4  */
    @Override
    public final void a(byte[] bArr, int i, int i2, wge wgeVar, qfg qfgVar) {
        qhe qheVarA;
        int i3;
        qhe qheVar;
        int i4;
        Layout.Alignment alignment;
        int i5;
        int i6;
        int i7;
        Integer num;
        int i8;
        rhe rheVar = this;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        u4h u4hVar = rheVar.c;
        u4hVar.j(bArr, i + i2);
        u4hVar.l(i);
        Charset charsetC = u4hVar.c();
        if (charsetC == null) {
            charsetC = StandardCharsets.UTF_8;
        }
        if (rheVar.a) {
            qheVarA = rheVar.b;
        } else {
            rheVar.e(u4hVar, charsetC);
            qheVarA = null;
        }
        while (true) {
            String strT = u4hVar.T(charsetC);
            if (strT == null) {
                int i9 = 0;
                while (i9 < arrayList.size()) {
                    List list = (List) arrayList.get(i9);
                    if (!list.isEmpty()) {
                        if (i9 != arrayList.size() - 1) {
                            throw new IllegalStateException();
                        }
                        qfgVar.zza(new qge(list, ((Long) arrayList2.get(i9)).longValue(), ((Long) arrayList2.get(i9 + 1)).longValue() - ((Long) arrayList2.get(i9)).longValue()));
                        i3 = 1;
                    } else if (i9 != 0) {
                        i3 = 1;
                    } else {
                        i9 = 0;
                        if (i9 != arrayList.size() - 1) {
                            throw new IllegalStateException();
                        }
                        qfgVar.zza(new qge(list, ((Long) arrayList2.get(i9)).longValue(), ((Long) arrayList2.get(i9 + 1)).longValue() - ((Long) arrayList2.get(i9)).longValue()));
                        i3 = 1;
                    }
                    i9 += i3;
                }
                return;
            }
            if (strT.startsWith("Format:")) {
                qheVarA = qhe.a(strT);
            } else {
                if (strT.startsWith("Dialogue:")) {
                    if (qheVarA == null) {
                        zrg.f("SsaParser", "Skipping dialogue line before complete format: ".concat(strT));
                    } else {
                        n7g.d(strT.startsWith("Dialogue:"));
                        String strSubstring = strT.substring(9);
                        int i10 = qheVarA.e;
                        String[] strArrSplit = strSubstring.split(StringUtils.COMMA, i10);
                        if (strArrSplit.length != i10) {
                            zrg.f("SsaParser", "Skipping dialogue line with fewer columns than format: ".concat(strT));
                        } else {
                            long jD = d(strArrSplit[qheVarA.a]);
                            if (jD == C.TIME_UNSET) {
                                zrg.f("SsaParser", "Skipping invalid timing: ".concat(strT));
                            } else {
                                long jD2 = d(strArrSplit[qheVarA.b]);
                                if (jD2 == C.TIME_UNSET || jD2 <= jD) {
                                    qheVar = qheVarA;
                                    u4hVar = u4hVar;
                                    zrg.f("SsaParser", "Skipping invalid timing: ".concat(strT));
                                } else {
                                    Map map = rheVar.d;
                                    uhe uheVar = (map == null || (i8 = qheVarA.c) == -1) ? null : (uhe) map.get(strArrSplit[i8].trim());
                                    String str = strArrSplit[qheVarA.d];
                                    the theVarA = the.a(str);
                                    String strReplace = the.b(str).replace("\\N", "\n").replace("\\n", "\n").replace("\\h", " ");
                                    float f = rheVar.e;
                                    float f2 = rheVar.f;
                                    SpannableString spannableString = new SpannableString(strReplace);
                                    zvf zvfVar = new zvf();
                                    zvfVar.l(spannableString);
                                    if (uheVar != null) {
                                        Integer num2 = uheVar.c;
                                        qheVar = qheVarA;
                                        if (num2 != null) {
                                            spannableString.setSpan(new ForegroundColorSpan(num2.intValue()), 0, spannableString.length(), 33);
                                        }
                                        if (uheVar.j == 3 && (num = uheVar.d) != null) {
                                            spannableString.setSpan(new BackgroundColorSpan(num.intValue()), 0, spannableString.length(), 33);
                                        }
                                        float f3 = uheVar.e;
                                        if (f3 != -3.4028235E38f && f2 != -3.4028235E38f) {
                                            zvfVar.n(f3 / f2, 1);
                                        }
                                        if (!uheVar.f) {
                                            i6 = 0;
                                            i7 = 33;
                                            if (uheVar.g) {
                                                i4 = 2;
                                                spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
                                            }
                                            if (uheVar.h) {
                                                spannableString.setSpan(new UnderlineSpan(), i6, spannableString.length(), i7);
                                            }
                                            if (uheVar.i) {
                                                spannableString.setSpan(new StrikethroughSpan(), i6, spannableString.length(), i7);
                                            }
                                        } else if (uheVar.g) {
                                            i6 = 0;
                                            i7 = 33;
                                            spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
                                        } else {
                                            i6 = 0;
                                            i7 = 33;
                                            spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
                                        }
                                        i4 = 2;
                                        if (uheVar.h) {
                                            spannableString.setSpan(new UnderlineSpan(), i6, spannableString.length(), i7);
                                        }
                                        if (uheVar.i) {
                                            spannableString.setSpan(new StrikethroughSpan(), i6, spannableString.length(), i7);
                                        }
                                    } else {
                                        qheVar = qheVarA;
                                        u4hVar = u4hVar;
                                        jD2 = jD2;
                                        i4 = 2;
                                    }
                                    int i11 = theVarA.a;
                                    if (i11 == -1) {
                                        i11 = uheVar != null ? uheVar.b : -1;
                                    }
                                    switch (i11) {
                                        case 0:
                                        default:
                                            zrg.f("SsaParser", "Unknown alignment: " + i11);
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
                                    zvfVar.m(alignment);
                                    int i12 = Integer.MIN_VALUE;
                                    switch (i11) {
                                        case 0:
                                        default:
                                            zrg.f("SsaParser", "Unknown alignment: " + i11);
                                        case -1:
                                            i5 = Integer.MIN_VALUE;
                                            break;
                                        case 1:
                                        case 4:
                                        case 7:
                                            i5 = 0;
                                            break;
                                        case 2:
                                        case 5:
                                        case 8:
                                            i5 = 1;
                                            break;
                                        case 3:
                                        case 6:
                                        case 9:
                                            i5 = i4;
                                            break;
                                    }
                                    zvfVar.i(i5);
                                    switch (i11) {
                                        case -1:
                                            break;
                                        case 0:
                                        default:
                                            zrg.f("SsaParser", "Unknown alignment: " + i11);
                                            break;
                                        case 1:
                                        case 2:
                                        case 3:
                                            i12 = i4;
                                            break;
                                        case 4:
                                        case 5:
                                        case 6:
                                            i12 = 1;
                                            break;
                                        case 7:
                                        case 8:
                                        case 9:
                                            i12 = 0;
                                            break;
                                    }
                                    zvfVar.f(i12);
                                    PointF pointF = theVarA.b;
                                    if (pointF == null || f2 == -3.4028235E38f || f == -3.4028235E38f) {
                                        zvfVar.h(b(zvfVar.b()));
                                        zvfVar.e(b(zvfVar.a()), 0);
                                    } else {
                                        zvfVar.h(pointF.x / f);
                                        zvfVar.e(pointF.y / f2, 0);
                                    }
                                    fyf fyfVarP = zvfVar.p();
                                    int iC = c(jD2, arrayList2, arrayList);
                                    for (int iC2 = c(jD, arrayList2, arrayList); iC2 < iC; iC2++) {
                                        ((List) arrayList.get(iC2)).add(fyfVarP);
                                    }
                                }
                            }
                        }
                    }
                    qheVar = qheVarA;
                    u4hVar = u4hVar;
                } else {
                    qheVar = qheVarA;
                    u4hVar = u4hVar;
                }
                rheVar = this;
                charsetC = charsetC;
                qheVarA = qheVar;
                u4hVar = u4hVar;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:23:0x0053  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void e(u4h u4hVar, Charset charset) {
        while (true) {
            String strT = u4hVar.T(charset);
            if (strT == null) {
                return;
            }
            if ("[Script Info]".equalsIgnoreCase(strT)) {
                while (true) {
                    String strT2 = u4hVar.T(charset);
                    if (strT2 == null || (u4hVar.u() != 0 && u4hVar.y(charset) == 91)) {
                        break;
                    }
                    String[] strArrSplit = strT2.split(StringUtils.PROCESS_POSTFIX_DELIMITER);
                    if (strArrSplit.length == 2) {
                        byte b = 0;
                        String strA = d2i.a(strArrSplit[0].trim());
                        switch (strA.hashCode()) {
                            case 1879649548:
                                if (!strA.equals("playresx")) {
                                    b = -1;
                                }
                                break;
                            case 1879649549:
                                if (!strA.equals("playresy")) {
                                    b = -1;
                                } else {
                                    b = 1;
                                }
                                break;
                            default:
                                b = -1;
                                break;
                        }
                        if (b == 0) {
                            this.e = Float.parseFloat(strArrSplit[1].trim());
                        } else if (b == 1) {
                            try {
                                this.f = Float.parseFloat(strArrSplit[1].trim());
                            } catch (NumberFormatException unused) {
                            }
                        }
                    }
                }
            } else if ("[V4+ Styles]".equalsIgnoreCase(strT)) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                she sheVarA = null;
                while (true) {
                    String strT3 = u4hVar.T(charset);
                    if (strT3 != null && (u4hVar.u() == 0 || u4hVar.y(charset) != 91)) {
                        if (strT3.startsWith("Format:")) {
                            sheVarA = she.a(strT3);
                        } else if (strT3.startsWith("Style:")) {
                            if (sheVarA == null) {
                                zrg.f("SsaParser", "Skipping 'Style:' line before 'Format:' line: ".concat(strT3));
                            } else {
                                uhe uheVarB = uhe.b(strT3, sheVarA);
                                if (uheVarB != null) {
                                    linkedHashMap.put(uheVarB.a, uheVarB);
                                }
                            }
                        }
                    }
                }
                this.d = linkedHashMap;
            } else if ("[V4 Styles]".equalsIgnoreCase(strT)) {
                zrg.e("SsaParser", "[V4 Styles] are not supported");
            } else if ("[Events]".equalsIgnoreCase(strT)) {
                return;
            }
        }
    }
}
