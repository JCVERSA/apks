package defpackage;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzfww;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.time.DateUtils;

public final class vhe implements bhe {
    public static final Pattern d = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*");
    public static final Pattern e = Pattern.compile("\\{\\\\.*?\\}");
    public final StringBuilder a = new StringBuilder();
    public final ArrayList b = new ArrayList();
    public final u4h c = new u4h();

    public static float b(int i) {
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

    public static long c(Matcher matcher, int i) {
        String strGroup = matcher.group(i + 1);
        long j = strGroup != null ? Long.parseLong(strGroup) * DateUtils.MILLIS_PER_HOUR : 0L;
        String strGroup2 = matcher.group(i + 2);
        strGroup2.getClass();
        long j2 = j + (Long.parseLong(strGroup2) * 60000);
        String strGroup3 = matcher.group(i + 3);
        strGroup3.getClass();
        long j3 = j2 + (Long.parseLong(strGroup3) * 1000);
        String strGroup4 = matcher.group(i + 4);
        if (strGroup4 != null) {
            j3 += Long.parseLong(strGroup4);
        }
        return j3 * 1000;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:59:0x0132  */
    /* JADX WARN: Code duplicated, block: B:94:0x018c  */
    @Override
    public final void a(byte[] bArr, int i, int i2, wge wgeVar, qfg qfgVar) {
        u4h u4hVar;
        String str;
        byte b;
        byte b2;
        int i3;
        fyf fyfVarP;
        vhe vheVar = this;
        u4h u4hVar2 = vheVar.c;
        u4hVar2.j(bArr, i + i2);
        u4hVar2.l(i);
        Charset charsetC = u4hVar2.c();
        if (charsetC == null) {
            charsetC = StandardCharsets.UTF_8;
        }
        while (true) {
            String strT = u4hVar2.T(charsetC);
            if (strT == null) {
                return;
            }
            if (strT.length() != 0) {
                try {
                    Integer.parseInt(strT);
                    u4h u4hVar3 = vheVar.c;
                    String strT2 = u4hVar3.T(charsetC);
                    if (strT2 == null) {
                        zrg.f("SubripParser", "Unexpected end");
                        return;
                    }
                    Matcher matcher = d.matcher(strT2);
                    if (matcher.matches()) {
                        long jC = c(matcher, 1);
                        long jC2 = c(matcher, 6);
                        StringBuilder sb = vheVar.a;
                        int i4 = 0;
                        sb.setLength(0);
                        ArrayList arrayList = vheVar.b;
                        arrayList.clear();
                        String strT3 = u4hVar3.T(charsetC);
                        while (!TextUtils.isEmpty(strT3)) {
                            if (sb.length() > 0) {
                                sb.append("<br>");
                            }
                            String strTrim = strT3.trim();
                            StringBuilder sb2 = new StringBuilder(strTrim);
                            Matcher matcher2 = e.matcher(strTrim);
                            int i5 = i4;
                            while (matcher2.find()) {
                                String strGroup = matcher2.group();
                                arrayList.add(strGroup);
                                int iStart = matcher2.start() - i5;
                                int length = strGroup.length();
                                sb2.replace(iStart, iStart + length, "");
                                i5 += length;
                                u4hVar2 = u4hVar2;
                            }
                            sb.append(sb2.toString());
                            strT3 = u4hVar3.T(charsetC);
                            i4 = 0;
                        }
                        u4hVar = u4hVar2;
                        Spanned spannedFromHtml = Html.fromHtml(sb.toString());
                        int i6 = 0;
                        while (true) {
                            if (i6 < arrayList.size()) {
                                str = (String) arrayList.get(i6);
                                if (!str.matches("\\{\\\\an[1-9]\\}")) {
                                    i6++;
                                }
                            } else {
                                str = null;
                            }
                        }
                        zvf zvfVar = new zvf();
                        zvfVar.l(spannedFromHtml);
                        if (str == null) {
                            fyfVarP = zvfVar.p();
                        } else {
                            switch (str) {
                                case "{\an1}":
                                    b = 0;
                                    break;
                                case "{\an3}":
                                    b = 3;
                                    break;
                                case "{\an4}":
                                    b = 1;
                                    break;
                                case "{\an6}":
                                    b = 4;
                                    break;
                                case "{\an7}":
                                    b = 2;
                                    break;
                                case "{\an9}":
                                    b = 5;
                                    break;
                                default:
                                    b = -1;
                                    break;
                            }
                            if (b == 0 || b == 1 || b == 2) {
                                zvfVar.i(0);
                            } else if (b == 3 || b == 4 || b == 5) {
                                zvfVar.i(2);
                            } else {
                                zvfVar.i(1);
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
                                i3 = 2;
                            } else {
                                if (b2 == 2) {
                                    i3 = 2;
                                } else if (b2 == 3 || b2 == 4 || b2 == 5) {
                                    zvfVar.f(0);
                                } else {
                                    zvfVar.f(1);
                                }
                                zvfVar.h(b(zvfVar.b()));
                                zvfVar.e(b(zvfVar.a()), 0);
                                fyfVarP = zvfVar.p();
                            }
                            zvfVar.f(i3);
                            zvfVar.h(b(zvfVar.b()));
                            zvfVar.e(b(zvfVar.a()), 0);
                            fyfVarP = zvfVar.p();
                        }
                        qfgVar.zza(new qge(zzfww.zzo(fyfVarP), jC, jC2 - jC));
                    } else {
                        u4hVar = u4hVar2;
                        zrg.f("SubripParser", "Skipping invalid timing: ".concat(strT2));
                    }
                } catch (NumberFormatException unused) {
                    u4hVar = u4hVar2;
                    zrg.f("SubripParser", "Skipping invalid index: ".concat(strT));
                }
            } else {
                u4hVar = u4hVar2;
            }
            vheVar = this;
            u4hVar2 = u4hVar;
        }
    }
}
