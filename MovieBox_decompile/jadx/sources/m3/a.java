package m3;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.m;
import androidx.media3.common.util.u;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import h3.e;
import h3.k;
import h3.r;
import h3.s;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class a implements s {

    private static final Pattern f66241d = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*");

    private static final Pattern f66242e = Pattern.compile("\\{\\\\.*?\\}");

    private final StringBuilder f66243a = new StringBuilder();

    private final ArrayList f66244b = new ArrayList();

    private final j0 f66245c = new j0();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:36:0x007b  */
    /* JADX WARN: Code duplicated, block: B:77:0x00e6  */
    private u1.a d(Spanned spanned, String str) {
        byte b10;
        byte b11;
        u1.a.b bVarO = new u1.a.b().o(spanned);
        if (str == null) {
            return bVarO.a();
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
            bVarO.l(0);
        } else if (b10 == 3 || b10 == 4 || b10 == 5) {
            bVarO.l(2);
        } else {
            bVarO.l(1);
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
            bVarO.i(2);
        } else if (b11 == 3 || b11 == 4 || b11 == 5) {
            bVarO.i(0);
        } else {
            bVarO.i(1);
        }
        return bVarO.k(f(bVarO.d())).h(f(bVarO.c()), 0).a();
    }

    private Charset e(j0 j0Var) {
        Charset charsetR = j0Var.R();
        return charsetR != null ? charsetR : StandardCharsets.UTF_8;
    }

    public static float f(int i10) {
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

    private static long g(Matcher matcher, int i10) {
        String strGroup = matcher.group(i10 + 1);
        long j10 = (strGroup != null ? Long.parseLong(strGroup) * 3600000 : 0L) + (Long.parseLong((String) androidx.media3.common.util.a.e(matcher.group(i10 + 2))) * 60000) + (Long.parseLong((String) androidx.media3.common.util.a.e(matcher.group(i10 + 3))) * 1000);
        String strGroup2 = matcher.group(i10 + 4);
        if (strGroup2 != null) {
            j10 += Long.parseLong(strGroup2);
        }
        return j10 * 1000;
    }

    private String h(String str, ArrayList arrayList) {
        String strTrim = str.trim();
        StringBuilder sb2 = new StringBuilder(strTrim);
        Matcher matcher = f66242e.matcher(strTrim);
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

    @Override
    public k a(byte[] bArr, int i10, int i11) {
        return r.a(this, bArr, i10, i11);
    }

    @Override
    public void b(byte[] bArr, int i10, int i11, s.b bVar, m mVar) {
        String str;
        String str2;
        m mVar2;
        m mVar3 = mVar;
        String str3 = "SubripParser";
        this.f66245c.U(bArr, i10 + i11);
        this.f66245c.W(i10);
        Charset charsetE = e(this.f66245c);
        ArrayList arrayList = (bVar.f61266a == C.TIME_UNSET || !bVar.f61267b) ? null : new ArrayList();
        while (true) {
            String strT = this.f66245c.t(charsetE);
            if (strT == null) {
                break;
            }
            if (strT.length() != 0) {
                try {
                    Integer.parseInt(strT);
                    String strT2 = this.f66245c.t(charsetE);
                    if (strT2 == null) {
                        u.h(str3, "Unexpected end");
                        break;
                    }
                    Matcher matcher = f66241d.matcher(strT2);
                    if (matcher.matches()) {
                        long jG = g(matcher, 1);
                        long jG2 = g(matcher, 6);
                        int i12 = 0;
                        this.f66243a.setLength(0);
                        this.f66244b.clear();
                        String strT3 = this.f66245c.t(charsetE);
                        while (!TextUtils.isEmpty(strT3)) {
                            if (this.f66243a.length() > 0) {
                                this.f66243a.append("<br>");
                            }
                            this.f66243a.append(h(strT3, this.f66244b));
                            strT3 = this.f66245c.t(charsetE);
                        }
                        Spanned spannedFromHtml = Html.fromHtml(this.f66243a.toString());
                        while (true) {
                            if (i12 >= this.f66244b.size()) {
                                str2 = null;
                                break;
                            }
                            str2 = (String) this.f66244b.get(i12);
                            if (str2.matches("\\{\\\\an[1-9]\\}")) {
                                break;
                            } else {
                                i12++;
                            }
                        }
                        long j10 = bVar.f61266a;
                        if (j10 == C.TIME_UNSET || jG >= j10) {
                            mVar2 = mVar;
                            mVar2.accept(new e(ImmutableList.of(d(spannedFromHtml, str2)), jG, jG2 - jG));
                        } else {
                            if (arrayList != null) {
                                arrayList.add(new e(ImmutableList.of(d(spannedFromHtml, str2)), jG, jG2 - jG));
                            }
                            mVar2 = mVar;
                        }
                        mVar3 = mVar2;
                        str3 = str3;
                    } else {
                        str = str3;
                        u.h(str, "Skipping invalid timing: " + strT2);
                        mVar3 = mVar3;
                        str3 = str;
                    }
                } catch (NumberFormatException unused) {
                    str = str3;
                    u.h(str, "Skipping invalid index: " + strT);
                }
            }
        }
        m mVar4 = mVar3;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                mVar4.accept((e) it.next());
            }
        }
    }

    @Override
    public int c() {
        return 1;
    }

    @Override
    public void reset() {
        r.b(this);
    }
}
