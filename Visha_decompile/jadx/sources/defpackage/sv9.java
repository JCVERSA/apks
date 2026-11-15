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
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class sv9 extends rm9 {
    public static final Pattern t = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");
    public final boolean o;
    public final tv9 p;
    public Map q;
    public float r;
    public float s;

    public sv9(List list) {
        super("SsaDecoder");
        this.r = -3.4028235E38f;
        this.s = -3.4028235E38f;
        if (list == null || list.isEmpty()) {
            this.o = false;
            this.p = null;
            return;
        }
        this.o = true;
        String strA = blb.A((byte[]) list.get(0));
        zi.a(strA.startsWith("Format:"));
        this.p = (tv9) zi.e(tv9.a(strA));
        C(new qw7((byte[]) list.get(1)));
    }

    public static Map E(qw7 qw7Var) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        uv9.a aVarA = null;
        while (true) {
            String line = qw7Var.readLine();
            if (line == null || (qw7Var.a() != 0 && qw7Var.h() == 91)) {
                break;
            }
            if (line.startsWith("Format:")) {
                aVarA = uv9.a.a(line);
            } else if (line.startsWith("Style:")) {
                if (aVarA == null) {
                    op5.i("SsaDecoder", "Skipping 'Style:' line before 'Format:' line: " + line);
                } else {
                    uv9 uv9VarB = uv9.b(line, aVarA);
                    if (uv9VarB != null) {
                        linkedHashMap.put(uv9VarB.a, uv9VarB);
                    }
                }
            }
        }
        return linkedHashMap;
    }

    public static long F(String str) {
        Matcher matcher = t.matcher(str.trim());
        return !matcher.matches() ? C.TIME_UNSET : (Long.parseLong((String) blb.j(matcher.group(1))) * 3600000000L) + (Long.parseLong((String) blb.j(matcher.group(2))) * 60000000) + (Long.parseLong((String) blb.j(matcher.group(3))) * 1000000) + (Long.parseLong((String) blb.j(matcher.group(4))) * 10000);
    }

    public static int G(int i) {
        switch (i) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                op5.i("SsaDecoder", "Unknown alignment: " + i);
                return Integer.MIN_VALUE;
            case 1:
            case 2:
            case 3:
                return 2;
            case 4:
            case 5:
            case 6:
                return 1;
            case 7:
            case 8:
            case 9:
                return 0;
        }
    }

    public static int H(int i) {
        switch (i) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                op5.i("SsaDecoder", "Unknown alignment: " + i);
                return Integer.MIN_VALUE;
            case 1:
            case 4:
            case 7:
                return 0;
            case 2:
            case 5:
            case 8:
                return 1;
            case 3:
            case 6:
            case 9:
                return 2;
        }
    }

    public static Layout.Alignment I(int i) {
        switch (i) {
            case -1:
                return null;
            case 0:
            default:
                op5.i("SsaDecoder", "Unknown alignment: " + i);
                return null;
            case 1:
            case 4:
            case 7:
                return Layout.Alignment.ALIGN_NORMAL;
            case 2:
            case 5:
            case 8:
                return Layout.Alignment.ALIGN_CENTER;
            case 3:
            case 6:
            case 9:
                return Layout.Alignment.ALIGN_OPPOSITE;
        }
    }

    public static int x(long j, List list, List list2) {
        int i;
        int size = list.size() - 1;
        while (true) {
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
            size--;
        }
        list.add(i, Long.valueOf(j));
        list2.add(i, i == 0 ? new ArrayList() : new ArrayList((Collection) list2.get(i - 1)));
        return i;
    }

    public static float y(int i) {
        if (i == 0) {
            return 0.05f;
        }
        if (i != 1) {
            return i != 2 ? -3.4028235E38f : 0.95f;
        }
        return 0.5f;
    }

    public static jm1 z(String str, uv9 uv9Var, uv9.b bVar, float f, float f2) {
        SpannableString spannableString = new SpannableString(str);
        jm1.b bVarO = new jm1.b().o(spannableString);
        if (uv9Var != null) {
            if (uv9Var.c != null) {
                spannableString.setSpan(new ForegroundColorSpan(uv9Var.c.intValue()), 0, spannableString.length(), 33);
            }
            if (uv9Var.j == 3 && uv9Var.d != null) {
                spannableString.setSpan(new BackgroundColorSpan(uv9Var.d.intValue()), 0, spannableString.length(), 33);
            }
            float f3 = uv9Var.e;
            if (f3 != -3.4028235E38f && f2 != -3.4028235E38f) {
                bVarO.q(f3 / f2, 1);
            }
            boolean z = uv9Var.f;
            if (z && uv9Var.g) {
                spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
            } else if (z) {
                spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
            } else if (uv9Var.g) {
                spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
            }
            if (uv9Var.h) {
                spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 33);
            }
            if (uv9Var.i) {
                spannableString.setSpan(new StrikethroughSpan(), 0, spannableString.length(), 33);
            }
        }
        int i = bVar.a;
        if (i == -1) {
            i = uv9Var != null ? uv9Var.b : -1;
        }
        bVarO.p(I(i)).l(H(i)).i(G(i));
        PointF pointF = bVar.b;
        if (pointF == null || f2 == -3.4028235E38f || f == -3.4028235E38f) {
            bVarO.k(y(bVarO.d()));
            bVarO.h(y(bVarO.c()), 0);
        } else {
            bVarO.k(pointF.x / f);
            bVarO.h(bVar.b.y / f2, 0);
        }
        return bVarO.a();
    }

    public final void A(String str, tv9 tv9Var, List list, List list2) {
        int i;
        zi.a(str.startsWith("Dialogue:"));
        String[] strArrSplit = str.substring(9).split(StringUtils.COMMA, tv9Var.e);
        if (strArrSplit.length != tv9Var.e) {
            op5.i("SsaDecoder", "Skipping dialogue line with fewer columns than format: " + str);
            return;
        }
        long jF = F(strArrSplit[tv9Var.a]);
        if (jF == C.TIME_UNSET) {
            op5.i("SsaDecoder", "Skipping invalid timing: " + str);
            return;
        }
        long jF2 = F(strArrSplit[tv9Var.b]);
        if (jF2 == C.TIME_UNSET) {
            op5.i("SsaDecoder", "Skipping invalid timing: " + str);
            return;
        }
        Map map = this.q;
        uv9 uv9Var = (map == null || (i = tv9Var.c) == -1) ? null : (uv9) map.get(strArrSplit[i].trim());
        String str2 = strArrSplit[tv9Var.d];
        jm1 jm1VarZ = z(uv9.b.d(str2).replace("\\N", "\n").replace("\\n", "\n").replace("\\h", " "), uv9Var, uv9.b.b(str2), this.r, this.s);
        int iX = x(jF2, list2, list);
        for (int iX2 = x(jF, list2, list); iX2 < iX; iX2++) {
            ((List) list.get(iX2)).add(jm1VarZ);
        }
    }

    public final void B(qw7 qw7Var, List list, List list2) {
        tv9 tv9VarA = this.o ? this.p : null;
        while (true) {
            String line = qw7Var.readLine();
            if (line == null) {
                return;
            }
            if (line.startsWith("Format:")) {
                tv9VarA = tv9.a(line);
            } else if (line.startsWith("Dialogue:")) {
                if (tv9VarA == null) {
                    op5.i("SsaDecoder", "Skipping dialogue line before complete format: " + line);
                } else {
                    A(line, tv9VarA, list, list2);
                }
            }
        }
    }

    public final void C(qw7 qw7Var) {
        while (true) {
            String line = qw7Var.readLine();
            if (line == null) {
                return;
            }
            if ("[Script Info]".equalsIgnoreCase(line)) {
                D(qw7Var);
            } else if ("[V4+ Styles]".equalsIgnoreCase(line)) {
                this.q = E(qw7Var);
            } else if ("[V4 Styles]".equalsIgnoreCase(line)) {
                op5.f("SsaDecoder", "[V4 Styles] are not supported");
            } else if ("[Events]".equalsIgnoreCase(line)) {
                return;
            }
        }
    }

    public final void D(qw7 qw7Var) {
        while (true) {
            String line = qw7Var.readLine();
            if (line == null) {
                return;
            }
            if (qw7Var.a() != 0 && qw7Var.h() == 91) {
                return;
            }
            String[] strArrSplit = line.split(StringUtils.PROCESS_POSTFIX_DELIMITER);
            if (strArrSplit.length == 2) {
                String strE = ui.e(strArrSplit[0].trim());
                strE.hashCode();
                if (strE.equals("playresx")) {
                    this.r = Float.parseFloat(strArrSplit[1].trim());
                } else if (strE.equals("playresy")) {
                    try {
                        this.s = Float.parseFloat(strArrSplit[1].trim());
                    } catch (NumberFormatException unused) {
                    }
                }
            }
        }
    }

    @Override
    public l2a v(byte[] bArr, int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        qw7 qw7Var = new qw7(bArr, i);
        if (!this.o) {
            C(qw7Var);
        }
        B(qw7Var, arrayList, arrayList2);
        return new vv9(arrayList, arrayList2);
    }
}
