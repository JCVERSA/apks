package com.yandex.mobile.ads.impl;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.text.StringSubstitutor;

final class zj2 {
    private static final Pattern c = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");
    private static final Pattern d = Pattern.compile("^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$");
    private final ag1 a = new ag1();
    private final StringBuilder b = new StringBuilder();

    @Nullable
    public static String b(ag1 ag1Var, StringBuilder sb) {
        b(ag1Var);
        if (ag1Var.a() == 0) {
            return null;
        }
        String strA = a(ag1Var, sb);
        if (!"".equals(strA)) {
            return strA;
        }
        return "" + ((char) ag1Var.t());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:100:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:102:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:104:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:105:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:107:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:108:0x0203  */
    /* JADX WARN: Code duplicated, block: B:110:0x020b  */
    /* JADX WARN: Code duplicated, block: B:116:0x021e  */
    /* JADX WARN: Code duplicated, block: B:118:0x0224  */
    /* JADX WARN: Code duplicated, block: B:120:0x022c  */
    /* JADX WARN: Code duplicated, block: B:122:0x0234  */
    /* JADX WARN: Code duplicated, block: B:123:0x0239  */
    /* JADX WARN: Code duplicated, block: B:125:0x0241  */
    /* JADX WARN: Code duplicated, block: B:126:0x0246  */
    /* JADX WARN: Code duplicated, block: B:128:0x024e  */
    /* JADX WARN: Code duplicated, block: B:130:0x0256  */
    /* JADX WARN: Code duplicated, block: B:131:0x025b  */
    /* JADX WARN: Code duplicated, block: B:133:0x0263  */
    /* JADX WARN: Code duplicated, block: B:135:0x026b  */
    /* JADX WARN: Code duplicated, block: B:136:0x0270  */
    /* JADX WARN: Code duplicated, block: B:138:0x0278  */
    /* JADX WARN: Code duplicated, block: B:140:0x0288  */
    /* JADX WARN: Code duplicated, block: B:141:0x02a2  */
    /* JADX WARN: Code duplicated, block: B:143:0x02b1  */
    /* JADX WARN: Code duplicated, block: B:144:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:147:0x02bc  */
    /* JADX WARN: Code duplicated, block: B:148:0x02be  */
    /* JADX WARN: Code duplicated, block: B:151:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:152:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:155:0x02d2  */
    /* JADX WARN: Code duplicated, block: B:159:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:160:0x02e1  */
    /* JADX WARN: Code duplicated, block: B:161:0x02e6  */
    /* JADX WARN: Code duplicated, block: B:173:0x02d6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:32:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:66:0x015b  */
    /* JADX WARN: Code duplicated, block: B:96:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:97:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:99:0x01d7  */
    /* JADX WARN: Instruction removed from duplicated block: B:140:0x0288, please report this as an issue */
    public final ArrayList a(ag1 ag1Var) {
        String strSubstring;
        String string;
        Matcher matcher;
        String strGroup;
        boolean z;
        int i = -1;
        int i2 = 0;
        this.b.setLength(0);
        int iD = ag1Var.d();
        while (!TextUtils.isEmpty(ag1Var.j())) {
        }
        this.a.a(ag1Var.d(), ag1Var.c());
        this.a.e(iD);
        ArrayList arrayList = new ArrayList();
        while (true) {
            ag1 ag1Var2 = this.a;
            StringBuilder sb = this.b;
            b(ag1Var2);
            if (ag1Var2.a() >= 5 && "::cue".equals(ag1Var2.a(5, lo.c))) {
                int iD2 = ag1Var2.d();
                String strB = b(ag1Var2, sb);
                if (strB == null) {
                    strSubstring = null;
                } else if ("{".equals(strB)) {
                    ag1Var2.e(iD2);
                    strSubstring = "";
                } else {
                    if ("(".equals(strB)) {
                        int iD3 = ag1Var2.d();
                        int iE = ag1Var2.e();
                        int i3 = i2;
                        while (iD3 < iE && i3 == 0) {
                            int i4 = iD3 + 1;
                            i3 = ((char) ag1Var2.c()[iD3]) == ')' ? 1 : i2;
                            iD3 = i4;
                        }
                        strSubstring = ag1Var2.a((iD3 + i) - ag1Var2.d(), lo.c).trim();
                    } else {
                        strSubstring = null;
                    }
                    if (!")".equals(b(ag1Var2, sb))) {
                        strSubstring = null;
                    }
                }
            } else {
                strSubstring = null;
            }
            if (strSubstring == null || !"{".equals(b(this.a, this.b))) {
                return arrayList;
            }
            ak2 ak2Var = new ak2();
            if (!"".equals(strSubstring)) {
                int iIndexOf = strSubstring.indexOf(91);
                if (iIndexOf != i) {
                    Matcher matcher2 = c.matcher(strSubstring.substring(iIndexOf));
                    if (matcher2.matches()) {
                        String strGroup2 = matcher2.group(1);
                        strGroup2.getClass();
                        ak2Var.d(strGroup2);
                    }
                    strSubstring = strSubstring.substring(i2, iIndexOf);
                }
                int i5 = f92.a;
                String[] strArrSplit = strSubstring.split("\\.", i);
                String str = strArrSplit[i2];
                int iIndexOf2 = str.indexOf(35);
                if (iIndexOf2 != i) {
                    ak2Var.c(str.substring(i2, iIndexOf2));
                    ak2Var.b(str.substring(iIndexOf2 + 1));
                } else {
                    ak2Var.c(str);
                }
                if (strArrSplit.length > 1) {
                    ak2Var.a((String[]) f92.a(strArrSplit, strArrSplit.length));
                }
            }
            int i6 = i2;
            String strB2 = null;
            while (i6 == 0) {
                int iD4 = this.a.d();
                strB2 = b(this.a, this.b);
                int i7 = (strB2 == null || StringSubstitutor.DEFAULT_VAR_END.equals(strB2)) ? 1 : i2;
                if (i7 == 0) {
                    this.a.e(iD4);
                    ag1 ag1Var3 = this.a;
                    StringBuilder sb2 = this.b;
                    b(ag1Var3);
                    String strA = a(ag1Var3, sb2);
                    if (!"".equals(strA) && StringUtils.PROCESS_POSTFIX_DELIMITER.equals(b(ag1Var3, sb2))) {
                        b(ag1Var3);
                        StringBuilder sb3 = new StringBuilder();
                        int i8 = i2;
                        while (true) {
                            if (i8 == 0) {
                                int iD5 = ag1Var3.d();
                                String strB3 = b(ag1Var3, sb2);
                                if (strB3 == null) {
                                    string = null;
                                } else if (StringSubstitutor.DEFAULT_VAR_END.equals(strB3) || ProcessInfo.SPLIT_NEW_VERSION.equals(strB3)) {
                                    ag1Var3.e(iD5);
                                    i8 = 1;
                                } else {
                                    sb3.append(strB3);
                                }
                            } else {
                                string = sb3.toString();
                            }
                        }
                        if (string != null && !"".equals(string)) {
                            int iD6 = ag1Var3.d();
                            String strB4 = b(ag1Var3, sb2);
                            if (ProcessInfo.SPLIT_NEW_VERSION.equals(strB4)) {
                                if ("color".equals(strA)) {
                                    ak2Var.b(sq.a(string));
                                } else if ("background-color".equals(strA)) {
                                    ak2Var.a(sq.a(string));
                                } else if ("ruby-position".equals(strA)) {
                                    if ("over".equals(string)) {
                                        ak2Var.d(1);
                                    } else if ("under".equals(string)) {
                                        ak2Var.d(2);
                                    }
                                } else if ("text-combine-upright".equals(strA)) {
                                    if (TtmlNode.COMBINE_ALL.equals(string)) {
                                        z = true;
                                    } else {
                                        z = true;
                                    }
                                    ak2Var.a(z);
                                } else if ("text-decoration".equals(strA)) {
                                    if (TtmlNode.UNDERLINE.equals(string)) {
                                        ak2Var.o();
                                    }
                                } else if ("font-family".equals(strA)) {
                                    ak2Var.a(string);
                                } else if ("font-weight".equals(strA)) {
                                    if (TtmlNode.BOLD.equals(string)) {
                                        ak2Var.m();
                                    }
                                } else if ("font-style".equals(strA)) {
                                    if (TtmlNode.ITALIC.equals(string)) {
                                        ak2Var.n();
                                    }
                                } else if ("font-size".equals(strA)) {
                                    matcher = d.matcher(fg.b(string));
                                    if (matcher.matches()) {
                                        strGroup = matcher.group(2);
                                        strGroup.getClass();
                                        switch (strGroup) {
                                            case "%":
                                                ak2Var.c(3);
                                                break;
                                            case "em":
                                                ak2Var.c(2);
                                                break;
                                            case "px":
                                                ak2Var.c(1);
                                                break;
                                            default:
                                                throw new IllegalStateException();
                                        }
                                        String strGroup3 = matcher.group(1);
                                        strGroup3.getClass();
                                        ak2Var.a(Float.parseFloat(strGroup3));
                                    } else {
                                        et0.d("WebvttCssParser", "Invalid font-size: '" + string + "'.");
                                    }
                                }
                            } else if (StringSubstitutor.DEFAULT_VAR_END.equals(strB4)) {
                                ag1Var3.e(iD6);
                                if ("color".equals(strA)) {
                                    ak2Var.b(sq.a(string));
                                } else if ("background-color".equals(strA)) {
                                    ak2Var.a(sq.a(string));
                                } else if ("ruby-position".equals(strA)) {
                                    if ("over".equals(string)) {
                                        ak2Var.d(1);
                                    } else if ("under".equals(string)) {
                                        ak2Var.d(2);
                                    }
                                } else if ("text-combine-upright".equals(strA)) {
                                    if (TtmlNode.COMBINE_ALL.equals(string) || string.startsWith("digits")) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    ak2Var.a(z);
                                } else if ("text-decoration".equals(strA)) {
                                    if (TtmlNode.UNDERLINE.equals(string)) {
                                        ak2Var.o();
                                    }
                                } else if ("font-family".equals(strA)) {
                                    ak2Var.a(string);
                                } else if ("font-weight".equals(strA)) {
                                    if (TtmlNode.BOLD.equals(string)) {
                                        ak2Var.m();
                                    }
                                } else if ("font-style".equals(strA)) {
                                    if (TtmlNode.ITALIC.equals(string)) {
                                        ak2Var.n();
                                    }
                                } else if ("font-size".equals(strA)) {
                                    matcher = d.matcher(fg.b(string));
                                    if (matcher.matches()) {
                                        et0.d("WebvttCssParser", "Invalid font-size: '" + string + "'.");
                                    } else {
                                        strGroup = matcher.group(2);
                                        strGroup.getClass();
                                        switch (strGroup) {
                                            case 37:
                                                if (strGroup.equals("%")) {
                                                }
                                                break;
                                            case 3240:
                                                if (strGroup.equals("em")) {
                                                }
                                                break;
                                            case 3592:
                                                if (strGroup.equals("px")) {
                                                }
                                                break;
                                            default:
                                                break;
                                        }
                                        /*  JADX ERROR: Method code generation error
                                            java.lang.NullPointerException: Switch insn not found in header
                                            	at java.base/java.util.Objects.requireNonNull(Objects.java:235)
                                            	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:246)
                                            	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:90)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                            	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:226)
                                            	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:173)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                            	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:175)
                                            	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:173)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                                            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                                            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                                            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                                            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
                                            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                                            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                                            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                                            */
                                        /*
                                            Method dump skipped, instruction units count: 808
                                            To view this dump add '--comments-level debug' option
                                        */
                                        throw new UnsupportedOperationException("Method not decompiled: com.yandex.mobile.ads.impl.zj2.a(com.yandex.mobile.ads.impl.ag1):java.util.ArrayList");
                                    }

                                    public static void b(ag1 ag1Var) {
                                        while (true) {
                                            for (boolean z = true; ag1Var.a() > 0 && z; z = false) {
                                                char c2 = (char) ag1Var.c()[ag1Var.d()];
                                                if (c2 != '\t' && c2 != '\n' && c2 != '\f' && c2 != '\r' && c2 != ' ') {
                                                    int iD = ag1Var.d();
                                                    int iE = ag1Var.e();
                                                    byte[] bArrC = ag1Var.c();
                                                    int i = iD + 2;
                                                    if (i <= iE) {
                                                        int i2 = iD + 1;
                                                        if (bArrC[iD] == 47 && bArrC[i2] == 42) {
                                                            while (true) {
                                                                int i3 = i + 1;
                                                                if (i3 >= iE) {
                                                                    break;
                                                                }
                                                                if (((char) bArrC[i]) == '*' && ((char) bArrC[i3]) == '/') {
                                                                    i += 2;
                                                                    iE = i;
                                                                } else {
                                                                    i = i3;
                                                                }
                                                            }
                                                            ag1Var.f(iE - ag1Var.d());
                                                        }
                                                    }
                                                } else {
                                                    ag1Var.f(1);
                                                }
                                            }
                                            return;
                                        }
                                    }

                                    private static String a(ag1 ag1Var, StringBuilder sb) {
                                        boolean z = false;
                                        sb.setLength(0);
                                        int iD = ag1Var.d();
                                        int iE = ag1Var.e();
                                        while (iD < iE && !z) {
                                            char c2 = (char) ag1Var.c()[iD];
                                            if ((c2 < 'A' || c2 > 'Z') && ((c2 < 'a' || c2 > 'z') && !((c2 >= '0' && c2 <= '9') || c2 == '#' || c2 == '-' || c2 == '.' || c2 == '_'))) {
                                                z = true;
                                            } else {
                                                iD++;
                                                sb.append(c2);
                                            }
                                        }
                                        ag1Var.f(iD - ag1Var.d());
                                        return sb.toString();
                                    }
                                }
