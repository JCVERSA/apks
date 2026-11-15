package defpackage;

import android.text.Layout;
import androidx.media3.common.C;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.alibaba.android.arouter.utils.Consts;
import com.google.android.gms.internal.ads.zzajw;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

public final class fie implements bhe {
    public static final Pattern b = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");
    public static final Pattern c = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");
    public static final Pattern d = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");
    public static final Pattern e = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");
    public static final Pattern f = Pattern.compile("^([-+]?\\d+\\.?\\d*?)% ([-+]?\\d+\\.?\\d*?)%$");
    public static final Pattern g = Pattern.compile("^([-+]?\\d+\\.?\\d*?)px ([-+]?\\d+\\.?\\d*?)px$");
    public static final Pattern h = Pattern.compile("^(\\d+) (\\d+)$");
    public static final zhe i = new zhe(30.0f, 1, 1);
    public final XmlPullParserFactory a;

    public fie() {
        try {
            XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
            this.a = xmlPullParserFactoryNewInstance;
            xmlPullParserFactoryNewInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e2) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00f2  */
    public static long c(String str, zhe zheVar) throws zzajw {
        double d2;
        double d3;
        Matcher matcher = b.matcher(str);
        byte b2 = 2;
        if (matcher.matches()) {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            long j = Long.parseLong(strGroup) * 3600;
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            long j2 = Long.parseLong(strGroup2) * 60;
            String strGroup3 = matcher.group(3);
            strGroup3.getClass();
            double d4 = j + j2;
            double d5 = Long.parseLong(strGroup3);
            String strGroup4 = matcher.group(4);
            double d6 = 0.0d;
            double d7 = strGroup4 != null ? Double.parseDouble(strGroup4) : 0.0d;
            double d8 = d4 + d5;
            String strGroup5 = matcher.group(5);
            double d9 = strGroup5 != null ? Long.parseLong(strGroup5) / zheVar.a : 0.0d;
            double d10 = d8 + d7;
            String strGroup6 = matcher.group(6);
            if (strGroup6 != null) {
                d6 = (Long.parseLong(strGroup6) / ((double) zheVar.b)) / ((double) zheVar.a);
            }
            return (long) ((d10 + d9 + d6) * 1000000.0d);
        }
        Matcher matcher2 = c.matcher(str);
        if (!matcher2.matches()) {
            throw new zzajw("Malformed time expression: ".concat(String.valueOf(str)));
        }
        String strGroup7 = matcher2.group(1);
        strGroup7.getClass();
        double d11 = Double.parseDouble(strGroup7);
        String strGroup8 = matcher2.group(2);
        strGroup8.getClass();
        int iHashCode = strGroup8.hashCode();
        if (iHashCode != 102) {
            if (iHashCode != 104) {
                if (iHashCode != 109) {
                    if (iHashCode != 3494) {
                        if (iHashCode != 115) {
                            if (iHashCode == 116 && strGroup8.equals("t")) {
                                b2 = 5;
                            } else {
                                b2 = -1;
                            }
                        } else if (!strGroup8.equals("s")) {
                            b2 = -1;
                        }
                    } else if (strGroup8.equals("ms")) {
                        b2 = 3;
                    } else {
                        b2 = -1;
                    }
                } else if (strGroup8.equals(CmcdData.OBJECT_TYPE_MANIFEST)) {
                    b2 = 1;
                } else {
                    b2 = -1;
                }
            } else if (strGroup8.equals(CmcdData.STREAMING_FORMAT_HLS)) {
                b2 = 0;
            } else {
                b2 = -1;
            }
        } else if (strGroup8.equals("f")) {
            b2 = 4;
        } else {
            b2 = -1;
        }
        if (b2 != 0) {
            if (b2 != 1) {
                if (b2 == 3) {
                    d3 = 1000.0d;
                } else if (b2 == 4) {
                    d3 = zheVar.a;
                } else if (b2 == 5) {
                    d3 = zheVar.c;
                }
                d11 /= d3;
            } else {
                d2 = 60.0d;
            }
            return (long) (d11 * 1000000.0d);
        }
        d2 = 3600.0d;
        d11 *= d2;
        return (long) (d11 * 1000000.0d);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:20:0x0042  */
    public static Layout.Alignment d(String str) {
        byte b2;
        switch (d2i.a(str)) {
            case "center":
                b2 = 4;
                break;
            case "end":
                b2 = 3;
                break;
            case "left":
                b2 = 0;
                break;
            case "right":
                b2 = 2;
                break;
            case "start":
                b2 = 1;
                break;
            default:
                b2 = -1;
                break;
        }
        if (b2 == 0 || b2 == 1) {
            return Layout.Alignment.ALIGN_NORMAL;
        }
        if (b2 == 2 || b2 == 3) {
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        if (b2 != 4) {
            return null;
        }
        return Layout.Alignment.ALIGN_CENTER;
    }

    public static iie e(iie iieVar) {
        return iieVar == null ? new iie() : iieVar;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v19 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v20 */
    /* JADX WARN: Type inference failed for: r11v21 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v23 */
    /* JADX WARN: Type inference failed for: r11v24 */
    /* JADX WARN: Type inference failed for: r11v25 */
    /* JADX WARN: Type inference failed for: r11v26 */
    /* JADX WARN: Type inference failed for: r11v27 */
    /* JADX WARN: Type inference failed for: r11v28 */
    /* JADX WARN: Type inference failed for: r11v29 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v30 */
    /* JADX WARN: Type inference failed for: r11v31 */
    /* JADX WARN: Type inference failed for: r11v32 */
    /* JADX WARN: Type inference failed for: r11v33 */
    /* JADX WARN: Type inference failed for: r11v34 */
    /* JADX WARN: Type inference failed for: r11v35 */
    /* JADX WARN: Type inference failed for: r11v36 */
    /* JADX WARN: Type inference failed for: r11v37 */
    /* JADX WARN: Type inference failed for: r11v38 */
    /* JADX WARN: Type inference failed for: r11v39 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v40 */
    /* JADX WARN: Type inference failed for: r11v41 */
    /* JADX WARN: Type inference failed for: r11v42 */
    /* JADX WARN: Type inference failed for: r11v43 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v22 */
    /* JADX WARN: Type inference failed for: r7v24 */
    /* JADX WARN: Type inference failed for: r7v25 */
    /* JADX WARN: Type inference failed for: r7v27 */
    /* JADX WARN: Type inference failed for: r7v28 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v30 */
    /* JADX WARN: Type inference failed for: r7v31 */
    /* JADX WARN: Type inference failed for: r7v33 */
    /* JADX WARN: Type inference failed for: r7v34 */
    /* JADX WARN: Type inference failed for: r7v36 */
    /* JADX WARN: Type inference failed for: r7v37 */
    /* JADX WARN: Type inference failed for: r7v39 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v40 */
    /* JADX WARN: Type inference failed for: r7v42 */
    /* JADX WARN: Type inference failed for: r7v43 */
    /* JADX WARN: Type inference failed for: r7v45 */
    /* JADX WARN: Type inference failed for: r7v46 */
    /* JADX WARN: Type inference failed for: r7v48 */
    /* JADX WARN: Type inference failed for: r7v49 */
    /* JADX WARN: Type inference failed for: r7v50 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v87 */
    /* JADX WARN: Type inference failed for: r7v88 */
    /* JADX WARN: Type inference failed for: r7v9 */
    public static iie f(XmlPullParser xmlPullParser, iie iieVar) {
        ?? r7;
        Matcher matcher;
        int attributeCount = xmlPullParser.getAttributeCount();
        boolean z = false;
        iie iieVarE = iieVar;
        int i2 = 0;
        while (i2 < attributeCount) {
            String attributeValue = xmlPullParser.getAttributeValue(i2);
            String attributeName = xmlPullParser.getAttributeName(i2);
            ?? r11 = -1;
             = -1;
             = -1;
             = -1;
             = -1;
            ?? r12 = -1;
             = -1;
             = -1;
            ?? r13 = -1;
             = -1;
             = -1;
             = -1;
             = -1;
             = -1;
             = -1;
            ?? r14 = -1;
             = -1;
             = -1;
            ?? r15 = -1;
            r11 = -1;
            r11 = -1;
            r11 = -1;
            switch (attributeName.hashCode()) {
                case -1550943582:
                    r7 = !attributeName.equals(TtmlNode.ATTR_TTS_FONT_STYLE) ? -1 : 6;
                    break;
                case -1289044182:
                    r7 = !attributeName.equals(TtmlNode.ATTR_TTS_EXTENT) ? -1 : 16;
                    break;
                case -1224696685:
                    r7 = !attributeName.equals(TtmlNode.ATTR_TTS_FONT_FAMILY) ? -1 : 3;
                    break;
                case -1065511464:
                    r7 = !attributeName.equals(TtmlNode.ATTR_TTS_TEXT_ALIGN) ? -1 : 7;
                    break;
                case -1008619738:
                    r7 = !attributeName.equals("origin") ? -1 : 15;
                    break;
                case -879295043:
                    r7 = !attributeName.equals(TtmlNode.ATTR_TTS_TEXT_DECORATION) ? -1 : 12;
                    break;
                case -734428249:
                    r7 = !attributeName.equals(TtmlNode.ATTR_TTS_FONT_WEIGHT) ? -1 : 5;
                    break;
                case 3355:
                    r7 = !attributeName.equals(TtmlNode.ATTR_ID) ? -1 : z;
                    break;
                case 3511770:
                    r7 = !attributeName.equals(TtmlNode.ATTR_TTS_RUBY) ? -1 : 10;
                    break;
                case 94842723:
                    r7 = !attributeName.equals("color") ? -1 : 2;
                    break;
                case 109403361:
                    r7 = !attributeName.equals(TtmlNode.ATTR_TTS_SHEAR) ? -1 : 14;
                    break;
                case 110138194:
                    r7 = !attributeName.equals(TtmlNode.ATTR_TTS_TEXT_COMBINE) ? -1 : 9;
                    break;
                case 365601008:
                    r7 = !attributeName.equals(TtmlNode.ATTR_TTS_FONT_SIZE) ? -1 : 4;
                    break;
                case 921125321:
                    r7 = !attributeName.equals(TtmlNode.ATTR_TTS_TEXT_EMPHASIS) ? -1 : 13;
                    break;
                case 1115953443:
                    r7 = !attributeName.equals(TtmlNode.ATTR_TTS_RUBY_POSITION) ? -1 : 11;
                    break;
                case 1287124693:
                    r7 = !attributeName.equals(TtmlNode.ATTR_TTS_BACKGROUND_COLOR) ? -1 : 1;
                    break;
                case 1754920356:
                    r7 = !attributeName.equals(TtmlNode.ATTR_EBUTTS_MULTI_ROW_ALIGN) ? -1 : 8;
                    break;
                default:
                    r7 = -1;
                    break;
            }
            switch (r7) {
                case 0:
                    if ("style".equals(xmlPullParser.getName())) {
                        iieVarE = e(iieVarE);
                        iieVarE.H(attributeValue);
                    }
                    break;
                case 1:
                    iieVarE = e(iieVarE);
                    try {
                        iieVarE.A(qdg.b(attributeValue));
                    } catch (IllegalArgumentException unused) {
                        zrg.f("TtmlParser", "Failed parsing background value: ".concat(String.valueOf(attributeValue)));
                    }
                    break;
                case 2:
                    iieVarE = e(iieVarE);
                    try {
                        iieVarE.D(qdg.b(attributeValue));
                    } catch (IllegalArgumentException unused2) {
                        zrg.f("TtmlParser", "Failed parsing color value: ".concat(String.valueOf(attributeValue)));
                    }
                    break;
                case 3:
                    iieVarE = e(iieVarE);
                    iieVarE.E(attributeValue);
                    break;
                case 4:
                    try {
                        iieVarE = e(iieVarE);
                        int i3 = kfh.a;
                        String[] strArrSplit = attributeValue.split("\\s+", -1);
                        int length = strArrSplit.length;
                        if (length == 1) {
                            matcher = d.matcher(attributeValue);
                        } else {
                            if (length != 2) {
                                throw new zzajw("Invalid number of entries for fontSize: " + length + Consts.DOT);
                            }
                            matcher = d.matcher(strArrSplit[1]);
                            zrg.f("TtmlParser", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
                        }
                        if (!matcher.matches()) {
                            throw new zzajw("Invalid expression for fontSize: '" + attributeValue + "'.");
                        }
                        String strGroup = matcher.group(3);
                        if (strGroup == null) {
                            throw null;
                        }
                        int iHashCode = strGroup.hashCode();
                        if (iHashCode != 37) {
                            if (iHashCode != 3240) {
                                if (iHashCode == 3592 && strGroup.equals("px")) {
                                    r11 = 0;
                                }
                            } else if (strGroup.equals("em")) {
                                r11 = 1;
                            }
                        } else if (strGroup.equals("%")) {
                            r11 = 2;
                        }
                        if (r11 == 0) {
                            iieVarE.G(1);
                        } else if (r11 == 1) {
                            iieVarE.G(2);
                        } else {
                            if (r11 != 2) {
                                throw new zzajw("Invalid unit for fontSize: '" + strGroup + "'.");
                            }
                            iieVarE.G(3);
                        }
                        String strGroup2 = matcher.group(1);
                        if (strGroup2 == null) {
                            throw null;
                        }
                        iieVarE.F(Float.parseFloat(strGroup2));
                    } catch (zzajw unused3) {
                        zrg.f("TtmlParser", "Failed parsing fontSize value: ".concat(String.valueOf(attributeValue)));
                    }
                    break;
                case 5:
                    iieVarE = e(iieVarE);
                    iieVarE.B(TtmlNode.BOLD.equalsIgnoreCase(attributeValue));
                    break;
                case 6:
                    iieVarE = e(iieVarE);
                    iieVarE.I(TtmlNode.ITALIC.equalsIgnoreCase(attributeValue));
                    break;
                case 7:
                    iieVarE = e(iieVarE);
                    iieVarE.b(d(attributeValue));
                    break;
                case 8:
                    iieVarE = e(iieVarE);
                    iieVarE.K(d(attributeValue));
                    break;
                case 9:
                    String strA = d2i.a(attributeValue);
                    int iHashCode2 = strA.hashCode();
                    if (iHashCode2 != 96673) {
                        if (iHashCode2 == 3387192 && strA.equals("none")) {
                            r15 = z;
                        }
                    } else if (strA.equals(TtmlNode.COMBINE_ALL)) {
                        r15 = 1;
                    }
                    if (r15 == 0) {
                        iieVarE = e(iieVarE);
                        iieVarE.c(z);
                    } else if (r15 == 1) {
                        iieVarE = e(iieVarE);
                        iieVarE.c(true);
                    }
                    break;
                case 10:
                    String strA2 = d2i.a(attributeValue);
                    switch (strA2.hashCode()) {
                        case -618561360:
                            if (strA2.equals(TtmlNode.RUBY_BASE_CONTAINER)) {
                                r14 = 2;
                            }
                            break;
                        case -410956671:
                            if (strA2.equals(TtmlNode.RUBY_CONTAINER)) {
                                r14 = z;
                            }
                            break;
                        case -250518009:
                            if (strA2.equals(TtmlNode.RUBY_DELIMITER)) {
                                r14 = 5;
                            }
                            break;
                        case -136074796:
                            if (strA2.equals(TtmlNode.RUBY_TEXT_CONTAINER)) {
                                r14 = 4;
                            }
                            break;
                        case 3016401:
                            if (strA2.equals(TtmlNode.RUBY_BASE)) {
                                r14 = 1;
                            }
                            break;
                        case 3556653:
                            if (strA2.equals("text")) {
                                r14 = 3;
                            }
                            break;
                    }
                    if (r14 == 0) {
                        iieVarE = e(iieVarE);
                        iieVarE.N(1);
                    } else if (r14 == 1 || r14 == 2) {
                        iieVarE = e(iieVarE);
                        iieVarE.N(2);
                    } else if (r14 == 3 || r14 == 4) {
                        iieVarE = e(iieVarE);
                        iieVarE.N(3);
                    } else if (r14 == 5) {
                        iieVarE = e(iieVarE);
                        iieVarE.N(4);
                    }
                    break;
                case 11:
                    String strA3 = d2i.a(attributeValue);
                    int iHashCode3 = strA3.hashCode();
                    if (iHashCode3 != -1392885889) {
                        if (iHashCode3 == 92734940 && strA3.equals(TtmlNode.ANNOTATION_POSITION_AFTER)) {
                            r13 = 1;
                        }
                    } else if (strA3.equals(TtmlNode.ANNOTATION_POSITION_BEFORE)) {
                        r13 = z;
                    }
                    if (r13 == 0) {
                        iieVarE = e(iieVarE);
                        iieVarE.M(1);
                    } else if (r13 == 1) {
                        iieVarE = e(iieVarE);
                        iieVarE.M(2);
                    }
                    break;
                case 12:
                    String strA4 = d2i.a(attributeValue);
                    switch (strA4.hashCode()) {
                        case -1461280213:
                            if (strA4.equals(TtmlNode.NO_UNDERLINE)) {
                                r12 = 3;
                            }
                            break;
                        case -1026963764:
                            if (strA4.equals(TtmlNode.UNDERLINE)) {
                                r12 = 2;
                            }
                            break;
                        case 913457136:
                            if (strA4.equals(TtmlNode.NO_LINETHROUGH)) {
                                r12 = 1;
                            }
                            break;
                        case 1679736913:
                            if (strA4.equals(TtmlNode.LINETHROUGH)) {
                                r12 = z;
                            }
                            break;
                    }
                    if (r12 == 0) {
                        iieVarE = e(iieVarE);
                        iieVarE.J(true);
                    } else if (r12 == 1) {
                        iieVarE = e(iieVarE);
                        iieVarE.J(z);
                    } else if (r12 == 2) {
                        iieVarE = e(iieVarE);
                        iieVarE.e(true);
                    } else if (r12 == 3) {
                        iieVarE = e(iieVarE);
                        iieVarE.e(z);
                    }
                    break;
                case 13:
                    iieVarE = e(iieVarE);
                    iieVarE.d(xhe.a(attributeValue));
                    break;
                case 14:
                    iie iieVarE2 = e(iieVarE);
                    Matcher matcher2 = e.matcher(attributeValue);
                    float fMin = Float.MAX_VALUE;
                    if (matcher2.matches()) {
                        try {
                            String strGroup3 = matcher2.group(1);
                            if (strGroup3 == null) {
                                throw null;
                            }
                            fMin = Math.min(100.0f, Math.max(-100.0f, Float.parseFloat(strGroup3)));
                        } catch (NumberFormatException e2) {
                            zrg.g("TtmlParser", "Failed to parse shear: ".concat(String.valueOf(attributeValue)), e2);
                        }
                    } else {
                        zrg.f("TtmlParser", "Invalid value for shear: ".concat(String.valueOf(attributeValue)));
                    }
                    iieVarE2.a(fMin);
                    iieVarE = iieVarE2;
                    break;
                case 15:
                    iieVarE = e(iieVarE);
                    iieVarE.L(attributeValue);
                    break;
                case 16:
                    iieVarE = e(iieVarE);
                    iieVarE.C(attributeValue);
                    break;
            }
            i2++;
            z = false;
        }
        return iieVarE;
    }

    public static String[] g(String str) {
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            return new String[0];
        }
        int i2 = kfh.a;
        return strTrim.split("\\s+", -1);
    }

    @Override
    public final void a(byte[] bArr, int i2, int i3, wge wgeVar, qfg qfgVar) {
        sge.a(b(bArr, i2, i3), wgeVar, qfgVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:263:0x056a  */
    /* JADX WARN: Code duplicated, block: B:267:0x0570  */
    /* JADX WARN: Code duplicated, block: B:290:0x05c6  */
    /* JADX WARN: Code duplicated, block: B:296:0x05cf  */
    /* JADX WARN: Code duplicated, block: B:301:0x05e4 A[Catch: IOException -> 0x00a3, XmlPullParserException -> 0x00a7, TryCatch #19 {IOException -> 0x00a3, XmlPullParserException -> 0x00a7, blocks: (B:3:0x0010, B:5:0x006f, B:7:0x0079, B:10:0x0086, B:13:0x0094, B:15:0x009c, B:22:0x00ae, B:25:0x00ba, B:29:0x00cd, B:31:0x00e9, B:33:0x00f3, B:34:0x00f7, B:36:0x0103, B:38:0x010e, B:72:0x01aa, B:92:0x020b, B:95:0x0219, B:97:0x021f, B:99:0x0227, B:101:0x022f, B:103:0x0237, B:105:0x023f, B:107:0x0247, B:109:0x024d, B:111:0x0255, B:113:0x025d, B:115:0x0263, B:117:0x0269, B:119:0x026f, B:121:0x0277, B:124:0x0280, B:437:0x07f1, B:125:0x02b5, B:127:0x02bb, B:129:0x02c4, B:131:0x02d3, B:133:0x02de, B:135:0x02f2, B:137:0x02f8, B:303:0x05ee, B:140:0x030f, B:142:0x0317, B:144:0x031d, B:146:0x0326, B:148:0x032e, B:151:0x033f, B:155:0x0359, B:301:0x05e4, B:160:0x0376, B:162:0x037e, B:164:0x0384, B:166:0x038c, B:168:0x0392, B:171:0x03a9, B:173:0x03af, B:175:0x03bd, B:205:0x0464, B:207:0x046a, B:209:0x0470, B:211:0x0478, B:213:0x047e, B:216:0x0493, B:218:0x0499, B:220:0x04a7, B:249:0x053a, B:251:0x0542, B:271:0x0588, B:273:0x0590, B:299:0x05d7, B:222:0x04b9, B:224:0x04bb, B:225:0x04bc, B:228:0x04ce, B:231:0x04d8, B:234:0x04e5, B:236:0x04eb, B:238:0x04f2, B:240:0x04f8, B:242:0x050c, B:246:0x0514, B:245:0x0513, B:247:0x0520, B:178:0x03d5, B:180:0x03d7, B:181:0x03d8, B:182:0x03e9, B:185:0x03f5, B:189:0x040e, B:191:0x0414, B:193:0x041b, B:195:0x0421, B:197:0x0433, B:201:0x043b, B:200:0x043a, B:203:0x0445, B:308:0x0621, B:311:0x063f, B:345:0x069b, B:347:0x06a3, B:364:0x06eb, B:413:0x0771, B:352:0x06b7, B:355:0x06c1, B:359:0x06cf, B:362:0x06db, B:363:0x06e3, B:369:0x06fa, B:399:0x0745, B:401:0x0753, B:403:0x0758, B:390:0x072f, B:75:0x01b3, B:77:0x01bf, B:80:0x01ca, B:82:0x01d0, B:84:0x01db, B:86:0x01e8, B:88:0x01ea, B:89:0x01eb, B:42:0x0127, B:45:0x0135, B:48:0x013e, B:50:0x0144, B:52:0x014b, B:54:0x0151, B:60:0x0167, B:62:0x016e, B:71:0x01a1, B:67:0x0193, B:70:0x01a0, B:417:0x079d, B:419:0x07aa, B:422:0x07ae, B:424:0x07b8, B:426:0x07c2, B:430:0x07ce, B:428:0x07cb, B:433:0x07e5, B:436:0x07ee, B:441:0x0810), top: B:477:0x0010, inners: #5, #7, #16 }] */
    /* JADX WARN: Code duplicated, block: B:302:0x05ec  */
    /* JADX WARN: Code duplicated, block: B:306:0x05fb A[LOOP:1: B:127:0x02bb->B:306:0x05fb, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:332:0x0688  */
    /* JADX WARN: Code duplicated, block: B:497:0x05f4 A[SYNTHETIC] */
    public final tge b(byte[] bArr, int i2, int i3) {
        String str;
        String str2;
        XmlPullParser xmlPullParser;
        HashMap map;
        String str3;
        ArrayDeque arrayDeque;
        HashMap map2;
        HashMap map3;
        zhe zheVar;
        zzajw zzajwVar;
        yhe yheVar;
        long j;
        long j2;
        byte b2;
        float f2;
        float f3;
        String str4;
        float f4;
        float f5;
        float f6;
        int i4;
        int i5;
        gie gieVar;
        byte b3;
        byte b4;
        String strA;
        iie iieVar;
        String strA2;
        iie iieVar2;
        HashMap map4;
        String str5;
        float f7;
        boolean z;
        String str6 = "Ignoring region with malformed extent: ";
        String str7 = "Ignoring region with missing tts:extent: ";
        String str8 = "Ignoring region with malformed origin: ";
        String str9 = TtmlNode.ATTR_ID;
        String str10 = "image";
        String str11 = "";
        String str12 = "http://www.w3.org/ns/ttml#parameter";
        try {
            XmlPullParser xmlPullParserNewPullParser = this.a.newPullParser();
            HashMap map5 = new HashMap();
            HashMap map6 = new HashMap();
            HashMap map7 = new HashMap();
            map6.put("", new gie("", -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, -3.4028235E38f, Integer.MIN_VALUE));
            xmlPullParserNewPullParser.setInput(new ByteArrayInputStream(bArr, i2, i3), null);
            ArrayDeque arrayDeque2 = new ArrayDeque();
            int eventType = xmlPullParserNewPullParser.getEventType();
            zhe zheVar2 = i;
            jie jieVar = null;
            aie aieVar = null;
            zhe zheVar3 = zheVar2;
            int i6 = 15;
            int i7 = 0;
            int i8 = 1;
            while (eventType != i8) {
                yhe yheVar2 = (yhe) arrayDeque2.peek();
                String str13 = str11;
                if (i7 == 0) {
                    String name = xmlPullParserNewPullParser.getName();
                    ArrayDeque arrayDeque3 = arrayDeque2;
                    if (eventType == 2) {
                        boolean zEquals = TtmlNode.TAG_TT.equals(name);
                        String str14 = TtmlNode.ATTR_TTS_EXTENT;
                        map = map6;
                        if (zEquals) {
                            String attributeValue = xmlPullParserNewPullParser.getAttributeValue(str12, "frameRate");
                            int i9 = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
                            str3 = str6;
                            String attributeValue2 = xmlPullParserNewPullParser.getAttributeValue(str12, "frameRateMultiplier");
                            str = str7;
                            if (attributeValue2 != null) {
                                int i10 = kfh.a;
                                String[] strArrSplit = attributeValue2.split(" ", -1);
                                n7g.e(strArrSplit.length == 2, "frameRateMultiplier doesn't have 2 parts");
                                f7 = Integer.parseInt(strArrSplit[0]) / Integer.parseInt(strArrSplit[1]);
                            } else {
                                f7 = 1.0f;
                            }
                            int i11 = zheVar2.b;
                            String attributeValue3 = xmlPullParserNewPullParser.getAttributeValue(str12, "subFrameRate");
                            if (attributeValue3 != null) {
                                i11 = Integer.parseInt(attributeValue3);
                            }
                            int i12 = zheVar2.c;
                            String attributeValue4 = xmlPullParserNewPullParser.getAttributeValue(str12, "tickRate");
                            zhe zheVar4 = new zhe(i9 * f7, i11, attributeValue4 != null ? Integer.parseInt(attributeValue4) : i12);
                            String attributeValue5 = xmlPullParserNewPullParser.getAttributeValue(str12, "cellResolution");
                            if (attributeValue5 == null) {
                                str9 = str9;
                                zheVar3 = zheVar4;
                                str12 = str12;
                                i6 = 15;
                            } else {
                                Matcher matcher = h.matcher(attributeValue5);
                                if (matcher.matches()) {
                                    try {
                                        String strGroup = matcher.group(1);
                                        if (strGroup == null) {
                                            throw null;
                                        }
                                        int i13 = Integer.parseInt(strGroup);
                                        zheVar3 = zheVar4;
                                        try {
                                            String strGroup2 = matcher.group(2);
                                            if (strGroup2 == null) {
                                                throw null;
                                            }
                                            int i14 = Integer.parseInt(strGroup2);
                                            if (i13 == 0) {
                                                z = false;
                                            } else if (i14 != 0) {
                                                z = true;
                                            } else {
                                                i14 = 0;
                                                z = false;
                                            }
                                            try {
                                                StringBuilder sb = new StringBuilder();
                                                str9 = str9;
                                                try {
                                                    sb.append("Invalid cell resolution ");
                                                    sb.append(i13);
                                                    sb.append(" ");
                                                    sb.append(i14);
                                                    n7g.e(z, sb.toString());
                                                    i6 = i14;
                                                } catch (NumberFormatException unused) {
                                                    zrg.f("TtmlParser", "Ignoring malformed cell resolution: ".concat(attributeValue5));
                                                    i6 = 15;
                                                }
                                            } catch (NumberFormatException unused2) {
                                                str9 = str9;
                                            }
                                        } catch (NumberFormatException unused3) {
                                            str12 = str12;
                                        }
                                    } catch (NumberFormatException unused4) {
                                        zheVar3 = zheVar4;
                                    }
                                    str12 = str12;
                                    zrg.f("TtmlParser", "Ignoring malformed cell resolution: ".concat(attributeValue5));
                                    i6 = 15;
                                } else {
                                    zrg.f("TtmlParser", "Ignoring malformed cell resolution: ".concat(attributeValue5));
                                    str9 = str9;
                                    zheVar3 = zheVar4;
                                    str12 = str12;
                                    i6 = 15;
                                }
                            }
                            String strA3 = mgh.a(xmlPullParserNewPullParser, TtmlNode.ATTR_TTS_EXTENT);
                            if (strA3 == null) {
                                aieVar = null;
                            } else {
                                Matcher matcher2 = g.matcher(strA3);
                                if (matcher2.matches()) {
                                    try {
                                        String strGroup3 = matcher2.group(1);
                                        if (strGroup3 == null) {
                                            throw null;
                                        }
                                        int i15 = Integer.parseInt(strGroup3);
                                        String strGroup4 = matcher2.group(2);
                                        if (strGroup4 == null) {
                                            throw null;
                                        }
                                        aieVar = new aie(i15, Integer.parseInt(strGroup4));
                                    } catch (NumberFormatException unused5) {
                                        zrg.f("TtmlParser", "Ignoring malformed tts extent: ".concat(strA3));
                                        aieVar = null;
                                    }
                                } else {
                                    zrg.f("TtmlParser", "Ignoring non-pixel tts extent: ".concat(strA3));
                                }
                                aieVar = null;
                            }
                        } else {
                            map7 = map7;
                            str3 = str6;
                            str = str7;
                            str8 = str8;
                            str9 = str9;
                            zheVar2 = zheVar2;
                            str12 = str12;
                        }
                        zhe zheVar5 = zheVar3;
                        int i16 = i6;
                        aie aieVar2 = aieVar;
                        boolean zEquals2 = name.equals(TtmlNode.TAG_TT);
                        String str15 = TtmlNode.TAG_METADATA;
                        if (zEquals2 || name.equals("head") || name.equals(TtmlNode.TAG_BODY) || name.equals(TtmlNode.TAG_DIV) || name.equals(TtmlNode.TAG_P) || name.equals(TtmlNode.TAG_SPAN) || name.equals("br") || name.equals("style") || name.equals(TtmlNode.TAG_STYLING) || name.equals(TtmlNode.TAG_LAYOUT) || name.equals(TtmlNode.TAG_REGION) || name.equals(TtmlNode.TAG_METADATA) || name.equals(str10) || name.equals("data") || name.equals(TtmlNode.TAG_INFORMATION)) {
                            if ("head".equals(name)) {
                                while (true) {
                                    xmlPullParserNewPullParser.next();
                                    if (mgh.c(xmlPullParserNewPullParser, "style")) {
                                        String strA4 = mgh.a(xmlPullParserNewPullParser, "style");
                                        iie iieVarF = f(xmlPullParserNewPullParser, new iie());
                                        if (strA4 != null) {
                                            String[] strArrG = g(strA4);
                                            int i17 = 0;
                                            for (int length = strArrG.length; i17 < length; length = length) {
                                                iieVarF.z((iie) map5.get(strArrG[i17]));
                                                i17++;
                                            }
                                        }
                                        String strH = iieVarF.h();
                                        if (strH != null) {
                                            map5.put(strH, iieVarF);
                                        }
                                    } else {
                                        zheVar5 = zheVar5;
                                        if (mgh.c(xmlPullParserNewPullParser, TtmlNode.TAG_REGION)) {
                                            map3 = map7;
                                            String str16 = str9;
                                            String strA5 = mgh.a(xmlPullParserNewPullParser, str16);
                                            if (strA5 == null) {
                                                str2 = str16;
                                                str15 = str15;
                                                str8 = str8;
                                                gieVar = null;
                                            } else {
                                                String strA6 = mgh.a(xmlPullParserNewPullParser, "origin");
                                                if (strA6 == null && (strA2 = mgh.a(xmlPullParserNewPullParser, "style")) != null && (iieVar2 = (iie) map5.get(strA2)) != null) {
                                                    strA6 = iieVar2.i();
                                                }
                                                if (strA6 != null) {
                                                    Matcher matcher3 = f.matcher(strA6);
                                                    str2 = str16;
                                                    Matcher matcher4 = g.matcher(strA6);
                                                    if (matcher3.matches()) {
                                                        str15 = str15;
                                                        try {
                                                            String strGroup5 = matcher3.group(1);
                                                            if (strGroup5 == null) {
                                                                throw null;
                                                            }
                                                            float f8 = Float.parseFloat(strGroup5) / 100.0f;
                                                            String strGroup6 = matcher3.group(2);
                                                            if (strGroup6 == null) {
                                                                throw null;
                                                            }
                                                            f3 = f8;
                                                            f2 = Float.parseFloat(strGroup6) / 100.0f;
                                                            str = str;
                                                            str8 = str8;
                                                            str10 = str10;
                                                            map3 = map3;
                                                        } catch (NumberFormatException unused6) {
                                                            String str17 = str8;
                                                            zrg.f("TtmlParser", str17.concat(strA6));
                                                            str8 = str17;
                                                            gieVar = null;
                                                            str4 = str14;
                                                        }
                                                    } else {
                                                        str15 = str15;
                                                        str8 = str8;
                                                        if (!matcher4.matches()) {
                                                            map3 = map3;
                                                            str = str;
                                                            str10 = str10;
                                                            zrg.f("TtmlParser", "Ignoring region with unsupported origin: ".concat(strA6));
                                                        } else if (aieVar2 == null) {
                                                            str = str;
                                                            zrg.f("TtmlParser", str.concat(strA6));
                                                            str10 = str10;
                                                            map3 = map3;
                                                            gieVar = null;
                                                            str4 = str14;
                                                            if (gieVar != null) {
                                                                map = map;
                                                                map.put(gieVar.a, gieVar);
                                                            } else {
                                                                map = map;
                                                            }
                                                        } else {
                                                            str = str;
                                                            str10 = str10;
                                                            try {
                                                                String strGroup7 = matcher4.group(1);
                                                                if (strGroup7 == null) {
                                                                    throw null;
                                                                }
                                                                int i18 = Integer.parseInt(strGroup7);
                                                                map3 = map3;
                                                                try {
                                                                    String strGroup8 = matcher4.group(2);
                                                                    if (strGroup8 == null) {
                                                                        throw null;
                                                                    }
                                                                    int i19 = Integer.parseInt(strGroup8);
                                                                    float f9 = i18 / aieVar2.a;
                                                                    f2 = i19 / aieVar2.b;
                                                                    f3 = f9;
                                                                } catch (NumberFormatException unused7) {
                                                                    zrg.f("TtmlParser", str8.concat(strA6));
                                                                    gieVar = null;
                                                                    str4 = str14;
                                                                }
                                                            } catch (NumberFormatException unused8) {
                                                                map3 = map3;
                                                            }
                                                            zrg.f("TtmlParser", str8.concat(strA6));
                                                        }
                                                        gieVar = null;
                                                        str4 = str14;
                                                        if (gieVar != null) {
                                                            map = map;
                                                            map.put(gieVar.a, gieVar);
                                                        } else {
                                                            map = map;
                                                        }
                                                    }
                                                } else {
                                                    str2 = str16;
                                                    str15 = str15;
                                                    str = str;
                                                    str8 = str8;
                                                    str10 = str10;
                                                    map3 = map3;
                                                    f2 = 0.0f;
                                                    f3 = 0.0f;
                                                }
                                                String strA7 = mgh.a(xmlPullParserNewPullParser, str14);
                                                if (strA7 == null && (strA = mgh.a(xmlPullParserNewPullParser, "style")) != null && (iieVar = (iie) map5.get(strA)) != null) {
                                                    strA7 = iieVar.f();
                                                }
                                                if (strA7 != null) {
                                                    Matcher matcher5 = f.matcher(strA7);
                                                    str8 = str8;
                                                    Matcher matcher6 = g.matcher(strA7);
                                                    if (matcher5.matches()) {
                                                        try {
                                                            String strGroup9 = matcher5.group(1);
                                                            if (strGroup9 == null) {
                                                                throw null;
                                                            }
                                                            float f10 = Float.parseFloat(strGroup9) / 100.0f;
                                                            String strGroup10 = matcher5.group(2);
                                                            if (strGroup10 == null) {
                                                                throw null;
                                                            }
                                                            f5 = Float.parseFloat(strGroup10) / 100.0f;
                                                            f4 = f10;
                                                            str3 = str3;
                                                            str4 = str14;
                                                        } catch (NumberFormatException unused9) {
                                                            str3 = str3;
                                                            zrg.f("TtmlParser", str3.concat(String.valueOf(strA6)));
                                                            str4 = str14;
                                                            gieVar = null;
                                                        }
                                                    } else {
                                                        str3 = str3;
                                                        if (!matcher6.matches()) {
                                                            str4 = str14;
                                                            zrg.f("TtmlParser", "Ignoring region with unsupported extent: ".concat(String.valueOf(strA6)));
                                                        } else if (aieVar2 == null) {
                                                            zrg.f("TtmlParser", str.concat(String.valueOf(strA6)));
                                                            str4 = str14;
                                                        } else {
                                                            try {
                                                                String strGroup11 = matcher6.group(1);
                                                                if (strGroup11 == null) {
                                                                    throw null;
                                                                }
                                                                int i20 = Integer.parseInt(strGroup11);
                                                                str4 = str14;
                                                                try {
                                                                    String strGroup12 = matcher6.group(2);
                                                                    if (strGroup12 == null) {
                                                                        throw null;
                                                                    }
                                                                    int i21 = Integer.parseInt(strGroup12);
                                                                    float f11 = i20 / aieVar2.a;
                                                                    f5 = i21 / aieVar2.b;
                                                                    f4 = f11;
                                                                } catch (NumberFormatException unused10) {
                                                                    zrg.f("TtmlParser", str3.concat(String.valueOf(strA6)));
                                                                    gieVar = null;
                                                                }
                                                            } catch (NumberFormatException unused11) {
                                                                str4 = str14;
                                                            }
                                                            zrg.f("TtmlParser", str3.concat(String.valueOf(strA6)));
                                                        }
                                                        gieVar = null;
                                                        if (gieVar != null) {
                                                            map = map;
                                                            map.put(gieVar.a, gieVar);
                                                        } else {
                                                            map = map;
                                                        }
                                                    }
                                                } else {
                                                    str8 = str8;
                                                    str3 = str3;
                                                    str4 = str14;
                                                    f4 = 1.0f;
                                                    f5 = 1.0f;
                                                }
                                                String strA8 = mgh.a(xmlPullParserNewPullParser, TtmlNode.ATTR_TTS_DISPLAY_ALIGN);
                                                if (strA8 != null) {
                                                    String strA9 = d2i.a(strA8);
                                                    int iHashCode = strA9.hashCode();
                                                    if (iHashCode != -1364013995) {
                                                        if (iHashCode == 92734940 && strA9.equals(TtmlNode.ANNOTATION_POSITION_AFTER)) {
                                                            b4 = 1;
                                                        } else {
                                                            b4 = -1;
                                                        }
                                                    } else if (strA9.equals(TtmlNode.CENTER)) {
                                                        b4 = 0;
                                                    } else {
                                                        b4 = -1;
                                                    }
                                                    if (b4 == 0) {
                                                        f6 = f2 + (f5 / 2.0f);
                                                        i4 = 1;
                                                    } else if (b4 != 1) {
                                                        f6 = f2;
                                                        i4 = 0;
                                                    } else {
                                                        f6 = f2 + f5;
                                                        i4 = 2;
                                                    }
                                                } else {
                                                    f6 = f2;
                                                    i4 = 0;
                                                }
                                                float f12 = 1.0f / i16;
                                                String strA10 = mgh.a(xmlPullParserNewPullParser, TtmlNode.ATTR_TTS_WRITING_MODE);
                                                if (strA10 != null) {
                                                    String strA11 = d2i.a(strA10);
                                                    int iHashCode2 = strA11.hashCode();
                                                    if (iHashCode2 != 3694) {
                                                        if (iHashCode2 != 3553396) {
                                                            if (iHashCode2 == 3553576 && strA11.equals(TtmlNode.VERTICAL_RL)) {
                                                                b3 = 2;
                                                            } else {
                                                                b3 = -1;
                                                            }
                                                        } else if (strA11.equals(TtmlNode.VERTICAL_LR)) {
                                                            b3 = 1;
                                                        } else {
                                                            b3 = -1;
                                                        }
                                                    } else if (strA11.equals("tb")) {
                                                        b3 = 0;
                                                    } else {
                                                        b3 = -1;
                                                    }
                                                    if (b3 == 0 || b3 == 1) {
                                                        i5 = 2;
                                                    } else if (b3 != 2) {
                                                        i5 = Integer.MIN_VALUE;
                                                    } else {
                                                        i5 = 1;
                                                    }
                                                } else {
                                                    i5 = Integer.MIN_VALUE;
                                                }
                                                gieVar = new gie(strA5, f3, f6, 0, i4, f4, f5, 1, f12, i5);
                                                if (gieVar != null) {
                                                    map = map;
                                                    map.put(gieVar.a, gieVar);
                                                } else {
                                                    map = map;
                                                }
                                            }
                                            str4 = str14;
                                            if (gieVar != null) {
                                                map = map;
                                                map.put(gieVar.a, gieVar);
                                            } else {
                                                map = map;
                                            }
                                        } else {
                                            if (mgh.c(xmlPullParserNewPullParser, str15)) {
                                                while (true) {
                                                    xmlPullParserNewPullParser.next();
                                                    if (mgh.c(xmlPullParserNewPullParser, str10)) {
                                                        str5 = str9;
                                                        String strA12 = mgh.a(xmlPullParserNewPullParser, str5);
                                                        if (strA12 != null) {
                                                            map4 = map7;
                                                            map4.put(strA12, xmlPullParserNewPullParser.nextText());
                                                        } else {
                                                            map4 = map7;
                                                        }
                                                    } else {
                                                        map4 = map7;
                                                        str5 = str9;
                                                    }
                                                    if (mgh.b(xmlPullParserNewPullParser, str15)) {
                                                        str2 = str5;
                                                        map3 = map4;
                                                    } else {
                                                        str9 = str5;
                                                        map7 = map4;
                                                    }
                                                }
                                            }
                                            str3 = str3;
                                            str4 = str14;
                                        }
                                        if (mgh.b(xmlPullParserNewPullParser, "head")) {
                                            arrayDeque = arrayDeque3;
                                            xmlPullParser = xmlPullParserNewPullParser;
                                            zheVar = zheVar5;
                                        } else {
                                            map = map;
                                            zheVar5 = zheVar5;
                                            str15 = str15;
                                            str14 = str4;
                                            str9 = str2;
                                            str3 = str3;
                                            str10 = str10;
                                            map7 = map3;
                                            str8 = str8;
                                            str = str;
                                        }
                                    }
                                    map3 = map7;
                                    str2 = str9;
                                    str3 = str3;
                                    str4 = str14;
                                    if (mgh.b(xmlPullParserNewPullParser, "head")) {
                                        arrayDeque = arrayDeque3;
                                        xmlPullParser = xmlPullParserNewPullParser;
                                        zheVar = zheVar5;
                                    } else {
                                        map = map;
                                        zheVar5 = zheVar5;
                                        str15 = str15;
                                        str14 = str4;
                                        str9 = str2;
                                        str3 = str3;
                                        str10 = str10;
                                        map7 = map3;
                                        str8 = str8;
                                        str = str;
                                    }
                                }
                            } else {
                                zhe zheVar6 = zheVar5;
                                map = map;
                                str = str;
                                str8 = str8;
                                map3 = map7;
                                str2 = str9;
                                str10 = str10;
                                str3 = str3;
                                try {
                                    int attributeCount = xmlPullParserNewPullParser.getAttributeCount();
                                    iie iieVarF2 = f(xmlPullParserNewPullParser, null);
                                    int i22 = 0;
                                    long jC = -9223372036854775807L;
                                    long jC2 = -9223372036854775807L;
                                    long jC3 = -9223372036854775807L;
                                    String str18 = str13;
                                    String[] strArr = null;
                                    String strSubstring = null;
                                    while (i22 < attributeCount) {
                                        try {
                                            String attributeName = xmlPullParserNewPullParser.getAttributeName(i22);
                                            String attributeValue6 = xmlPullParserNewPullParser.getAttributeValue(i22);
                                            switch (attributeName) {
                                                case "region":
                                                    b2 = 4;
                                                    break;
                                                case "dur":
                                                    b2 = 2;
                                                    break;
                                                case "end":
                                                    b2 = 1;
                                                    break;
                                                case "begin":
                                                    b2 = 0;
                                                    break;
                                                case "style":
                                                    b2 = 3;
                                                    break;
                                                case "backgroundImage":
                                                    b2 = 5;
                                                    break;
                                                default:
                                                    b2 = -1;
                                                    break;
                                            }
                                            if (b2 == 0) {
                                                zheVar = zheVar6;
                                                jC2 = c(attributeValue6, zheVar);
                                            } else if (b2 == 1) {
                                                zheVar = zheVar6;
                                                jC = c(attributeValue6, zheVar);
                                            } else if (b2 != 2) {
                                                if (b2 == 3) {
                                                    String[] strArrG2 = g(attributeValue6);
                                                    if (strArrG2.length > 0) {
                                                        strArr = strArrG2;
                                                    }
                                                } else if (b2 != 4) {
                                                    if (b2 == 5) {
                                                        try {
                                                            if (attributeValue6.startsWith("#")) {
                                                                strSubstring = attributeValue6.substring(1);
                                                            }
                                                        } catch (zzajw e2) {
                                                            arrayDeque = arrayDeque3;
                                                            zzajwVar = e2;
                                                            xmlPullParser = xmlPullParserNewPullParser;
                                                            zheVar = zheVar6;
                                                            zrg.g("TtmlParser", "Suppressing parser error", zzajwVar);
                                                            i6 = i16;
                                                            aieVar = aieVar2;
                                                            zheVar3 = zheVar;
                                                            map2 = map3;
                                                            i8 = 1;
                                                            i7 = 1;
                                                            xmlPullParser.next();
                                                            eventType = xmlPullParser.getEventType();
                                                            map7 = map2;
                                                            map6 = map;
                                                            xmlPullParserNewPullParser = xmlPullParser;
                                                            str6 = str3;
                                                            arrayDeque2 = arrayDeque;
                                                            str7 = str;
                                                            str11 = str13;
                                                            str10 = str10;
                                                            str9 = str2;
                                                            zheVar2 = zheVar2;
                                                            str12 = str12;
                                                            str8 = str8;
                                                        }
                                                    }
                                                } else if (map.containsKey(attributeValue6)) {
                                                    str18 = attributeValue6;
                                                }
                                                zheVar = zheVar6;
                                            } else {
                                                zheVar = zheVar6;
                                                jC3 = c(attributeValue6, zheVar);
                                            }
                                            try {
                                                i22++;
                                                zheVar6 = zheVar;
                                            } catch (zzajw e3) {
                                                e = e3;
                                                arrayDeque = arrayDeque3;
                                                zzajwVar = e;
                                                xmlPullParser = xmlPullParserNewPullParser;
                                                zrg.g("TtmlParser", "Suppressing parser error", zzajwVar);
                                                i6 = i16;
                                                aieVar = aieVar2;
                                                zheVar3 = zheVar;
                                                map2 = map3;
                                                i8 = 1;
                                                i7 = 1;
                                                xmlPullParser.next();
                                                eventType = xmlPullParser.getEventType();
                                                map7 = map2;
                                                map6 = map;
                                                xmlPullParserNewPullParser = xmlPullParser;
                                                str6 = str3;
                                                arrayDeque2 = arrayDeque;
                                                str7 = str;
                                                str11 = str13;
                                                str10 = str10;
                                                str9 = str2;
                                                zheVar2 = zheVar2;
                                                str12 = str12;
                                                str8 = str8;
                                            }
                                        } catch (zzajw e4) {
                                            e = e4;
                                            zheVar = zheVar6;
                                        }
                                    }
                                    zheVar = zheVar6;
                                    if (yheVar2 != null) {
                                        yheVar = yheVar2;
                                        long j3 = yheVar.d;
                                        if (j3 != C.TIME_UNSET) {
                                            jC2 = jC2 != C.TIME_UNSET ? jC2 + j3 : -9223372036854775807L;
                                            if (jC != C.TIME_UNSET) {
                                                jC += j3;
                                            } else {
                                                jC = -9223372036854775807L;
                                            }
                                        }
                                        j = jC2;
                                    } else {
                                        yheVar = yheVar2;
                                        j = jC2;
                                        yheVar = null;
                                    }
                                    if (jC != C.TIME_UNSET) {
                                        xmlPullParser = xmlPullParserNewPullParser;
                                        j2 = jC;
                                    } else if (jC3 != C.TIME_UNSET) {
                                        xmlPullParser = xmlPullParserNewPullParser;
                                        j2 = j + jC3;
                                    } else {
                                        if (yheVar != null) {
                                            xmlPullParser = xmlPullParserNewPullParser;
                                            long j4 = yheVar.e;
                                            if (j4 != C.TIME_UNSET) {
                                                j2 = j4;
                                            }
                                        } else {
                                            xmlPullParser = xmlPullParserNewPullParser;
                                        }
                                        j2 = -9223372036854775807L;
                                    }
                                    try {
                                        yhe yheVarB = yhe.b(xmlPullParser.getName(), j, j2, iieVarF2, strArr, str18, strSubstring, yheVar);
                                        arrayDeque = arrayDeque3;
                                        try {
                                            arrayDeque.push(yheVarB);
                                            if (yheVar != null) {
                                                yheVar.f(yheVarB);
                                            }
                                        } catch (zzajw e5) {
                                            e = e5;
                                            zzajwVar = e;
                                            zrg.g("TtmlParser", "Suppressing parser error", zzajwVar);
                                            i6 = i16;
                                            aieVar = aieVar2;
                                            zheVar3 = zheVar;
                                            map2 = map3;
                                            i8 = 1;
                                            i7 = 1;
                                        }
                                    } catch (zzajw e6) {
                                        e = e6;
                                        arrayDeque = arrayDeque3;
                                    }
                                } catch (zzajw e7) {
                                    e = e7;
                                    arrayDeque = arrayDeque3;
                                    xmlPullParser = xmlPullParserNewPullParser;
                                    zheVar = zheVar6;
                                }
                            }
                            i6 = i16;
                            aieVar = aieVar2;
                            zheVar3 = zheVar;
                        } else {
                            zrg.e("TtmlParser", "Ignoring unsupported tag: " + xmlPullParserNewPullParser.getName());
                            arrayDeque = arrayDeque3;
                            zheVar3 = zheVar5;
                            i6 = i16;
                            aieVar = aieVar2;
                            xmlPullParser = xmlPullParserNewPullParser;
                            map = map;
                            str = str;
                            str8 = str8;
                            map2 = map7;
                            str2 = str9;
                            i8 = 1;
                            i7 = 1;
                            str10 = str10;
                            str3 = str3;
                        }
                    } else {
                        map3 = map7;
                        str = str7;
                        str8 = str8;
                        str2 = str9;
                        str10 = str10;
                        zheVar2 = zheVar2;
                        str12 = str12;
                        xmlPullParser = xmlPullParserNewPullParser;
                        map = map6;
                        arrayDeque = arrayDeque3;
                        str3 = str6;
                        if (eventType != 4) {
                            if (eventType == 3) {
                                if (xmlPullParser.getName().equals(TtmlNode.TAG_TT)) {
                                    yhe yheVar3 = (yhe) arrayDeque.peek();
                                    if (yheVar3 == null) {
                                        throw null;
                                    }
                                    map2 = map3;
                                    jieVar = new jie(yheVar3, map5, map, map2);
                                } else {
                                    map2 = map3;
                                }
                                arrayDeque.pop();
                            }
                            i8 = 1;
                        } else {
                            if (yheVar2 == null) {
                                throw null;
                            }
                            yheVar2.f(yhe.c(xmlPullParser.getText()));
                        }
                    }
                    map2 = map3;
                    i8 = 1;
                } else {
                    str = str7;
                    str8 = str8;
                    str2 = str9;
                    str10 = str10;
                    zheVar2 = zheVar2;
                    str12 = str12;
                    xmlPullParser = xmlPullParserNewPullParser;
                    map = map6;
                    str3 = str6;
                    arrayDeque = arrayDeque2;
                    map2 = map7;
                    if (eventType == 2) {
                        i8 = 1;
                        i7++;
                    } else {
                        i8 = 1;
                        if (eventType == 3) {
                            i7--;
                        }
                    }
                }
                xmlPullParser.next();
                eventType = xmlPullParser.getEventType();
                map7 = map2;
                map6 = map;
                xmlPullParserNewPullParser = xmlPullParser;
                str6 = str3;
                arrayDeque2 = arrayDeque;
                str7 = str;
                str11 = str13;
                str10 = str10;
                str9 = str2;
                zheVar2 = zheVar2;
                str12 = str12;
                str8 = str8;
            }
            if (jieVar != null) {
                return jieVar;
            }
            throw null;
        } catch (IOException e8) {
            throw new IllegalStateException("Unexpected error when reading input.", e8);
        } catch (XmlPullParserException e9) {
            throw new IllegalStateException("Unable to decode source", e9);
        }
    }
}
