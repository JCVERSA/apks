package ja;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.t;
import da.h;
import da.i;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class a extends h {

    private static final Pattern f63082q = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*");

    private static final Pattern f63083r = Pattern.compile("\\{\\\\.*?\\}");

    private final StringBuilder f63084o;

    private final ArrayList f63085p;

    public a() {
        super("SubripDecoder");
        this.f63084o = new StringBuilder();
        this.f63085p = new ArrayList();
    }

    private String A(String str, ArrayList arrayList) {
        String strTrim = str.trim();
        StringBuilder sb2 = new StringBuilder(strTrim);
        Matcher matcher = f63083r.matcher(strTrim);
        int i10 = 0;
        while (matcher.find()) {
            String strGroup = matcher.group();
            arrayList.add(strGroup);
            int iStart = matcher.start() - i10;
            int length = strGroup.length();
            sb2.replace(iStart, iStart + length, "");
            i10 += length;
        }
        return sb2.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:36:0x007b  */
    /* JADX WARN: Code duplicated, block: B:77:0x00e6  */
    private da.b x(Spanned spanned, String str) {
        byte b10;
        byte b11;
        da.b.C0703b c0703bO = new da.b.C0703b().o(spanned);
        if (str == null) {
            return c0703bO.a();
        }
        switch (str) {
            case "{\an1}":
                b10 = 0;
                break;
            case "{\an2}":
                b10 = 6;
                break;
            case "{\an3}":
                b10 = 3;
                break;
            case "{\an4}":
                b10 = 1;
                break;
            case "{\an5}":
                b10 = 7;
                break;
            case "{\an6}":
                b10 = 4;
                break;
            case "{\an7}":
                b10 = 2;
                break;
            case "{\an8}":
                b10 = 8;
                break;
            case "{\an9}":
                b10 = 5;
                break;
            default:
                b10 = -1;
                break;
        }
        if (b10 == 0 || b10 == 1 || b10 == 2) {
            c0703bO.l(0);
        } else if (b10 == 3 || b10 == 4 || b10 == 5) {
            c0703bO.l(2);
        } else {
            c0703bO.l(1);
        }
        switch (str) {
            case "{\an1}":
                b11 = 0;
                break;
            case "{\an2}":
                b11 = 1;
                break;
            case "{\an3}":
                b11 = 2;
                break;
            case "{\an4}":
                b11 = 6;
                break;
            case "{\an5}":
                b11 = 7;
                break;
            case "{\an6}":
                b11 = 8;
                break;
            case "{\an7}":
                b11 = 3;
                break;
            case "{\an8}":
                b11 = 4;
                break;
            case "{\an9}":
                b11 = 5;
                break;
            default:
                b11 = -1;
                break;
        }
        if (b11 == 0 || b11 == 1 || b11 == 2) {
            c0703bO.i(2);
        } else if (b11 == 3 || b11 == 4 || b11 == 5) {
            c0703bO.i(0);
        } else {
            c0703bO.i(1);
        }
        return c0703bO.k(y(c0703bO.d())).h(y(c0703bO.c()), 0).a();
    }

    static float y(int i10) {
        if (i10 == 0) {
            return 0.08f;
        }
        if (i10 == 1) {
            return 0.5f;
        }
        if (i10 == 2) {
            return 0.92f;
        }
        throw new IllegalArgumentException();
    }

    private static long z(Matcher matcher, int i10) {
        String strGroup = matcher.group(i10 + 1);
        long j10 = (strGroup != null ? Long.parseLong(strGroup) * 3600000 : 0L) + (Long.parseLong((String) com.google.android.exoplayer2.util.a.e(matcher.group(i10 + 2))) * 60000) + (Long.parseLong((String) com.google.android.exoplayer2.util.a.e(matcher.group(i10 + 3))) * 1000);
        String strGroup2 = matcher.group(i10 + 4);
        if (strGroup2 != null) {
            j10 += Long.parseLong(strGroup2);
        }
        return j10 * 1000;
    }

    @Override
    protected i w(byte[] bArr, int i10, boolean z10) {
        String str;
        ArrayList arrayList = new ArrayList();
        t tVar = new t();
        d0 d0Var = new d0(bArr, i10);
        while (true) {
            String strP = d0Var.p();
            int i11 = 0;
            if (strP == null) {
                break;
            }
            if (strP.length() != 0) {
                try {
                    Integer.parseInt(strP);
                    String strP2 = d0Var.p();
                    if (strP2 == null) {
                        s.i("SubripDecoder", "Unexpected end");
                        break;
                    }
                    Matcher matcher = f63082q.matcher(strP2);
                    if (matcher.matches()) {
                        tVar.a(z(matcher, 1));
                        tVar.a(z(matcher, 6));
                        this.f63084o.setLength(0);
                        this.f63085p.clear();
                        for (String strP3 = d0Var.p(); !TextUtils.isEmpty(strP3); strP3 = d0Var.p()) {
                            if (this.f63084o.length() > 0) {
                                this.f63084o.append("<br>");
                            }
                            this.f63084o.append(A(strP3, this.f63085p));
                        }
                        Spanned spannedFromHtml = Html.fromHtml(this.f63084o.toString());
                        while (true) {
                            if (i11 >= this.f63085p.size()) {
                                str = null;
                                break;
                            }
                            str = (String) this.f63085p.get(i11);
                            if (str.matches("\\{\\\\an[1-9]\\}")) {
                                break;
                            }
                            i11++;
                        }
                        arrayList.add(x(spannedFromHtml, str));
                        arrayList.add(da.b.f58922r);
                    } else {
                        s.i("SubripDecoder", "Skipping invalid timing: " + strP2);
                    }
                } catch (NumberFormatException unused) {
                    s.i("SubripDecoder", "Skipping invalid index: " + strP);
                }
            }
        }
        return new b((da.b[]) arrayList.toArray(new da.b[0]), tVar.d());
    }
}
