package defpackage;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.time.DateUtils;

public final class v1a extends rm9 {
    public static final Pattern q = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*");
    public static final Pattern r = Pattern.compile("\\{\\\\.*?\\}");
    public final StringBuilder o;
    public final ArrayList p;

    public v1a() {
        super("SubripDecoder");
        this.o = new StringBuilder();
        this.p = new ArrayList();
    }

    public static float y(int i) {
        if (i == 0) {
            return 0.08f;
        }
        if (i == 1) {
            return 0.5f;
        }
        if (i == 2) {
            return 0.92f;
        }
        throw new IllegalArgumentException();
    }

    public static long z(Matcher matcher, int i) {
        String strGroup = matcher.group(i + 1);
        long j = (strGroup != null ? Long.parseLong(strGroup) * DateUtils.MILLIS_PER_HOUR : 0L) + (Long.parseLong((String) zi.e(matcher.group(i + 2))) * 60000) + (Long.parseLong((String) zi.e(matcher.group(i + 3))) * 1000);
        String strGroup2 = matcher.group(i + 4);
        if (strGroup2 != null) {
            j += Long.parseLong(strGroup2);
        }
        return j * 1000;
    }

    public final String A(String str, ArrayList arrayList) {
        String strTrim = str.trim();
        StringBuilder sb = new StringBuilder(strTrim);
        Matcher matcher = r.matcher(strTrim);
        int i = 0;
        while (matcher.find()) {
            String strGroup = matcher.group();
            arrayList.add(strGroup);
            int iStart = matcher.start() - i;
            int length = strGroup.length();
            sb.replace(iStart, iStart + length, "");
            i += length;
        }
        return sb.toString();
    }

    @Override
    public l2a v(byte[] bArr, int i, boolean z) {
        String str;
        ArrayList arrayList = new ArrayList();
        zq5 zq5Var = new zq5();
        qw7 qw7Var = new qw7(bArr, i);
        while (true) {
            String line = qw7Var.readLine();
            int i2 = 0;
            if (line == null) {
                break;
            }
            if (line.length() != 0) {
                try {
                    Integer.parseInt(line);
                    String line2 = qw7Var.readLine();
                    if (line2 == null) {
                        op5.i("SubripDecoder", "Unexpected end");
                        break;
                    }
                    Matcher matcher = q.matcher(line2);
                    if (matcher.matches()) {
                        zq5Var.a(z(matcher, 1));
                        zq5Var.a(z(matcher, 6));
                        this.o.setLength(0);
                        this.p.clear();
                        for (String line3 = qw7Var.readLine(); !TextUtils.isEmpty(line3); line3 = qw7Var.readLine()) {
                            if (this.o.length() > 0) {
                                this.o.append("<br>");
                            }
                            this.o.append(A(line3, this.p));
                        }
                        Spanned spannedFromHtml = Html.fromHtml(this.o.toString());
                        while (true) {
                            if (i2 >= this.p.size()) {
                                str = null;
                                break;
                            }
                            str = (String) this.p.get(i2);
                            if (str.matches("\\{\\\\an[1-9]\\}")) {
                                break;
                            }
                            i2++;
                        }
                        arrayList.add(x(spannedFromHtml, str));
                        arrayList.add(jm1.s);
                    } else {
                        op5.i("SubripDecoder", "Skipping invalid timing: " + line2);
                    }
                } catch (NumberFormatException unused) {
                    op5.i("SubripDecoder", "Skipping invalid index: " + line);
                }
            }
        }
        return new w1a((jm1[]) arrayList.toArray(new jm1[0]), zq5Var.d());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:36:0x0084  */
    /* JADX WARN: Code duplicated, block: B:77:0x00ef  */
    public final jm1 x(Spanned spanned, String str) {
        byte b;
        byte b2;
        jm1.b bVarO = new jm1.b().o(spanned);
        if (str == null) {
            return bVarO.a();
        }
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
            bVarO.l(0);
        } else if (b == 3 || b == 4 || b == 5) {
            bVarO.l(2);
        } else {
            bVarO.l(1);
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
        if (b2 == 0 || b2 == 1 || b2 == 2) {
            bVarO.i(2);
        } else if (b2 == 3 || b2 == 4 || b2 == 5) {
            bVarO.i(0);
        } else {
            bVarO.i(1);
        }
        return bVarO.k(y(bVarO.d())).h(y(bVarO.c()), 0).a();
    }
}
