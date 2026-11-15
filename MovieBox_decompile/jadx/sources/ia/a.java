package ia;

import android.graphics.PointF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import da.h;
import da.i;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class a extends h {

    private static final Pattern f61997t = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");

    private final boolean f61998o;

    private final b f61999p;

    private Map f62000q;

    private float f62001r;

    private float f62002s;

    public a() {
        this(null);
    }

    private void A(String str, b bVar, List list, List list2) {
        int i10;
        com.google.android.exoplayer2.util.a.a(str.startsWith("Dialogue:"));
        String[] strArrSplit = str.substring(9).split(",", bVar.f62007e);
        if (strArrSplit.length != bVar.f62007e) {
            s.i("SsaDecoder", "Skipping dialogue line with fewer columns than format: " + str);
            return;
        }
        long jF = F(strArrSplit[bVar.f62003a]);
        if (jF == C.TIME_UNSET) {
            s.i("SsaDecoder", "Skipping invalid timing: " + str);
            return;
        }
        long jF2 = F(strArrSplit[bVar.f62004b]);
        if (jF2 == C.TIME_UNSET) {
            s.i("SsaDecoder", "Skipping invalid timing: " + str);
            return;
        }
        Map map = this.f62000q;
        c cVar = (map == null || (i10 = bVar.f62005c) == -1) ? null : (c) map.get(strArrSplit[i10].trim());
        String str2 = strArrSplit[bVar.f62006d];
        da.b bVarZ = z(c.b.d(str2).replace("\\N", "\n").replace("\\n", "\n").replace("\\h", " "), cVar, c.b.b(str2), this.f62001r, this.f62002s);
        int iX = x(jF2, list2, list);
        for (int iX2 = x(jF, list2, list); iX2 < iX; iX2++) {
            ((List) list.get(iX2)).add(bVarZ);
        }
    }

    private void B(d0 d0Var, List list, List list2) {
        b bVarA = this.f61998o ? this.f61999p : null;
        while (true) {
            String strP = d0Var.p();
            if (strP == null) {
                return;
            }
            if (strP.startsWith("Format:")) {
                bVarA = b.a(strP);
            } else if (strP.startsWith("Dialogue:")) {
                if (bVarA == null) {
                    s.i("SsaDecoder", "Skipping dialogue line before complete format: " + strP);
                } else {
                    A(strP, bVarA, list, list2);
                }
            }
        }
    }

    private void C(d0 d0Var) {
        while (true) {
            String strP = d0Var.p();
            if (strP == null) {
                return;
            }
            if ("[Script Info]".equalsIgnoreCase(strP)) {
                D(d0Var);
            } else if ("[V4+ Styles]".equalsIgnoreCase(strP)) {
                this.f62000q = E(d0Var);
            } else if ("[V4 Styles]".equalsIgnoreCase(strP)) {
                s.f("SsaDecoder", "[V4 Styles] are not supported");
            } else if ("[Events]".equalsIgnoreCase(strP)) {
                return;
            }
        }
    }

    private void D(d0 d0Var) {
        while (true) {
            String strP = d0Var.p();
            if (strP == null) {
                return;
            }
            if (d0Var.a() != 0 && d0Var.h() == 91) {
                return;
            }
            String[] strArrSplit = strP.split(":");
            if (strArrSplit.length == 2) {
                String strE = com.google.common.base.a.e(strArrSplit[0].trim());
                strE.hashCode();
                if (strE.equals("playresx")) {
                    this.f62001r = Float.parseFloat(strArrSplit[1].trim());
                } else if (strE.equals("playresy")) {
                    try {
                        this.f62002s = Float.parseFloat(strArrSplit[1].trim());
                    } catch (NumberFormatException unused) {
                    }
                }
            }
        }
    }

    private static Map E(d0 d0Var) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        c.a aVarA = null;
        while (true) {
            String strP = d0Var.p();
            if (strP == null || (d0Var.a() != 0 && d0Var.h() == 91)) {
                break;
            }
            if (strP.startsWith("Format:")) {
                aVarA = c.a.a(strP);
            } else if (strP.startsWith("Style:")) {
                if (aVarA == null) {
                    s.i("SsaDecoder", "Skipping 'Style:' line before 'Format:' line: " + strP);
                } else {
                    c cVarB = c.b(strP, aVarA);
                    if (cVarB != null) {
                        linkedHashMap.put(cVarB.f62008a, cVarB);
                    }
                }
            }
        }
        return linkedHashMap;
    }

    private static long F(String str) {
        Matcher matcher = f61997t.matcher(str.trim());
        return !matcher.matches() ? C.TIME_UNSET : (Long.parseLong((String) p0.j(matcher.group(1))) * 3600000000L) + (Long.parseLong((String) p0.j(matcher.group(2))) * 60000000) + (Long.parseLong((String) p0.j(matcher.group(3))) * 1000000) + (Long.parseLong((String) p0.j(matcher.group(4))) * 10000);
    }

    private static int G(int i10) {
        switch (i10) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                s.i("SsaDecoder", "Unknown alignment: " + i10);
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

    private static int H(int i10) {
        switch (i10) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                s.i("SsaDecoder", "Unknown alignment: " + i10);
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

    private static Layout.Alignment I(int i10) {
        switch (i10) {
            case -1:
                return null;
            case 0:
            default:
                s.i("SsaDecoder", "Unknown alignment: " + i10);
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

    private static int x(long j10, List list, List list2) {
        int i10;
        int size = list.size() - 1;
        while (true) {
            if (size < 0) {
                i10 = 0;
                break;
            }
            if (((Long) list.get(size)).longValue() == j10) {
                return size;
            }
            if (((Long) list.get(size)).longValue() < j10) {
                i10 = size + 1;
                break;
            }
            size--;
        }
        list.add(i10, Long.valueOf(j10));
        list2.add(i10, i10 == 0 ? new ArrayList() : new ArrayList((Collection) list2.get(i10 - 1)));
        return i10;
    }

    private static float y(int i10) {
        if (i10 == 0) {
            return 0.05f;
        }
        if (i10 != 1) {
            return i10 != 2 ? -3.4028235E38f : 0.95f;
        }
        return 0.5f;
    }

    private static da.b z(String str, c cVar, c.b bVar, float f10, float f11) {
        SpannableString spannableString = new SpannableString(str);
        da.b.C0703b c0703bO = new da.b.C0703b().o(spannableString);
        if (cVar != null) {
            if (cVar.f62010c != null) {
                spannableString.setSpan(new ForegroundColorSpan(cVar.f62010c.intValue()), 0, spannableString.length(), 33);
            }
            if (cVar.f62017j == 3 && cVar.f62011d != null) {
                spannableString.setSpan(new BackgroundColorSpan(cVar.f62011d.intValue()), 0, spannableString.length(), 33);
            }
            float f12 = cVar.f62012e;
            if (f12 != -3.4028235E38f && f11 != -3.4028235E38f) {
                c0703bO.q(f12 / f11, 1);
            }
            boolean z10 = cVar.f62013f;
            if (z10 && cVar.f62014g) {
                spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
            } else if (z10) {
                spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
            } else if (cVar.f62014g) {
                spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
            }
            if (cVar.f62015h) {
                spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 33);
            }
            if (cVar.f62016i) {
                spannableString.setSpan(new StrikethroughSpan(), 0, spannableString.length(), 33);
            }
        }
        int i10 = bVar.f62033a;
        if (i10 == -1) {
            i10 = cVar != null ? cVar.f62009b : -1;
        }
        c0703bO.p(I(i10)).l(H(i10)).i(G(i10));
        PointF pointF = bVar.f62034b;
        if (pointF == null || f11 == -3.4028235E38f || f10 == -3.4028235E38f) {
            c0703bO.k(y(c0703bO.d()));
            c0703bO.h(y(c0703bO.c()), 0);
        } else {
            c0703bO.k(pointF.x / f10);
            c0703bO.h(bVar.f62034b.y / f11, 0);
        }
        return c0703bO.a();
    }

    @Override
    protected i w(byte[] bArr, int i10, boolean z10) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        d0 d0Var = new d0(bArr, i10);
        if (!this.f61998o) {
            C(d0Var);
        }
        B(d0Var, arrayList, arrayList2);
        return new d(arrayList, arrayList2);
    }

    public a(List list) {
        super("SsaDecoder");
        this.f62001r = -3.4028235E38f;
        this.f62002s = -3.4028235E38f;
        if (list == null || list.isEmpty()) {
            this.f61998o = false;
            this.f61999p = null;
            return;
        }
        this.f61998o = true;
        String strD = p0.D((byte[]) list.get(0));
        com.google.android.exoplayer2.util.a.a(strD.startsWith("Format:"));
        this.f61999p = (b) com.google.android.exoplayer2.util.a.e(b.a(strD));
        C(new d0((byte[]) list.get(1)));
    }
}
