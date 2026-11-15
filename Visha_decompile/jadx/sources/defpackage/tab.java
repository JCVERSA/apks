package defpackage;

import android.text.Layout;
import androidx.media3.common.C;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.alibaba.android.arouter.utils.Consts;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.mozilla.classfile.ByteCode;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

public final class tab extends rm9 {
    public static final Pattern p = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");
    public static final Pattern q = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");
    public static final Pattern r = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");
    public static final Pattern s = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");
    public static final Pattern t = Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");
    public static final Pattern u = Pattern.compile("^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$");
    public static final Pattern v = Pattern.compile("^(\\d+) (\\d+)$");
    public static final b w = new b(30.0f, 1, 1);
    public static final a x = new a(32, 15);
    public final XmlPullParserFactory o;

    public static final class a {
        public final int a;
        public final int b;

        public a(int i, int i2) {
            this.a = i;
            this.b = i2;
        }
    }

    public static final class b {
        public final float a;
        public final int b;
        public final int c;

        public b(float f, int i, int i2) {
            this.a = f;
            this.b = i;
            this.c = i2;
        }
    }

    public static final class c {
        public final int a;
        public final int b;

        public c(int i, int i2) {
            this.a = i;
            this.b = i2;
        }
    }

    public tab() {
        super("TtmlDecoder");
        try {
            XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
            this.o = xmlPullParserFactoryNewInstance;
            xmlPullParserFactoryNewInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }

    public static a A(XmlPullParser xmlPullParser, a aVar) throws SubtitleDecoderException {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "cellResolution");
        if (attributeValue == null) {
            return aVar;
        }
        Matcher matcher = v.matcher(attributeValue);
        if (!matcher.matches()) {
            op5.i("TtmlDecoder", "Ignoring malformed cell resolution: " + attributeValue);
            return aVar;
        }
        try {
            int i = Integer.parseInt((String) zi.e(matcher.group(1)));
            int i2 = Integer.parseInt((String) zi.e(matcher.group(2)));
            if (i != 0 && i2 != 0) {
                return new a(i, i2);
            }
            throw new SubtitleDecoderException("Invalid cell resolution " + i + " " + i2);
        } catch (NumberFormatException unused) {
            op5.i("TtmlDecoder", "Ignoring malformed cell resolution: " + attributeValue);
            return aVar;
        }
    }

    public static void B(String str, xab xabVar) throws SubtitleDecoderException {
        Matcher matcher;
        String[] strArrF0 = blb.F0(str, "\\s+");
        if (strArrF0.length == 1) {
            matcher = r.matcher(str);
        } else {
            if (strArrF0.length != 2) {
                throw new SubtitleDecoderException("Invalid number of entries for fontSize: " + strArrF0.length + Consts.DOT);
            }
            matcher = r.matcher(strArrF0[1]);
            op5.i("TtmlDecoder", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        }
        if (!matcher.matches()) {
            throw new SubtitleDecoderException("Invalid expression for fontSize: '" + str + "'.");
        }
        String str2 = (String) zi.e(matcher.group(3));
        str2.hashCode();
        switch (str2) {
            case "%":
                xabVar.z(3);
                break;
            case "em":
                xabVar.z(2);
                break;
            case "px":
                xabVar.z(1);
                break;
            default:
                throw new SubtitleDecoderException("Invalid unit for fontSize: '" + str2 + "'.");
        }
        xabVar.y(Float.parseFloat((String) zi.e(matcher.group(1))));
    }

    public static b C(XmlPullParser xmlPullParser) throws SubtitleDecoderException {
        float f;
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRate");
        int i = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
        String attributeValue2 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRateMultiplier");
        if (attributeValue2 != null) {
            String[] strArrF0 = blb.F0(attributeValue2, " ");
            if (strArrF0.length != 2) {
                throw new SubtitleDecoderException("frameRateMultiplier doesn't have 2 parts");
            }
            f = Integer.parseInt(strArrF0[0]) / Integer.parseInt(strArrF0[1]);
        } else {
            f = 1.0f;
        }
        b bVar = w;
        int i2 = bVar.b;
        String attributeValue3 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "subFrameRate");
        if (attributeValue3 != null) {
            i2 = Integer.parseInt(attributeValue3);
        }
        int i3 = bVar.c;
        String attributeValue4 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "tickRate");
        if (attributeValue4 != null) {
            i3 = Integer.parseInt(attributeValue4);
        }
        return new b(i * f, i2, i3);
    }

    public static Map D(XmlPullParser xmlPullParser, Map map, a aVar, c cVar, Map map2, Map map3) throws XmlPullParserException, IOException {
        do {
            xmlPullParser.next();
            if (zrc.e(xmlPullParser, "style")) {
                String strA = zrc.a(xmlPullParser, "style");
                xab xabVarI = I(xmlPullParser, new xab());
                if (strA != null) {
                    for (String str : J(strA)) {
                        xabVarI.a((xab) map.get(str));
                    }
                }
                String strG = xabVarI.g();
                if (strG != null) {
                    map.put(strG, xabVarI);
                }
            } else if (zrc.e(xmlPullParser, TtmlNode.TAG_REGION)) {
                vab vabVarG = G(xmlPullParser, aVar, cVar);
                if (vabVarG != null) {
                    map2.put(vabVarG.a, vabVarG);
                }
            } else if (zrc.e(xmlPullParser, TtmlNode.TAG_METADATA)) {
                E(xmlPullParser, map3);
            }
        } while (!zrc.c(xmlPullParser, "head"));
        return map;
    }

    public static void E(XmlPullParser xmlPullParser, Map map) throws XmlPullParserException, IOException {
        String strA;
        do {
            xmlPullParser.next();
            if (zrc.e(xmlPullParser, "image") && (strA = zrc.a(xmlPullParser, TtmlNode.ATTR_ID)) != null) {
                map.put(strA, xmlPullParser.nextText());
            }
        } while (!zrc.c(xmlPullParser, TtmlNode.TAG_METADATA));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:67:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:6:0x0039  */
    public static uab F(XmlPullParser xmlPullParser, uab uabVar, Map map, b bVar) throws SubtitleDecoderException {
        long j;
        long j2;
        int attributeCount = xmlPullParser.getAttributeCount();
        xab xabVarI = I(xmlPullParser, null);
        String strSubstring = null;
        String str = "";
        long jK = C.TIME_UNSET;
        long jK2 = C.TIME_UNSET;
        long jK3 = C.TIME_UNSET;
        String[] strArr = null;
        for (int i = 0; i < attributeCount; i++) {
            String attributeName = xmlPullParser.getAttributeName(i);
            String attributeValue = xmlPullParser.getAttributeValue(i);
            attributeName.hashCode();
            switch (attributeName) {
                case "region":
                    if (map.containsKey(attributeValue)) {
                        str = attributeValue;
                        continue;
                    }
                    break;
                case "dur":
                    jK3 = K(attributeValue, bVar);
                    break;
                case "end":
                    jK2 = K(attributeValue, bVar);
                    break;
                case "begin":
                    jK = K(attributeValue, bVar);
                    break;
                case "style":
                    String[] strArrJ = J(attributeValue);
                    if (strArrJ.length > 0) {
                        strArr = strArrJ;
                    }
                    break;
                case "backgroundImage":
                    if (attributeValue.startsWith("#")) {
                        strSubstring = attributeValue.substring(1);
                        break;
                    }
                    break;
            }
        }
        if (uabVar != null) {
            long j3 = uabVar.d;
            j = C.TIME_UNSET;
            if (j3 != C.TIME_UNSET) {
                if (jK != C.TIME_UNSET) {
                    jK += j3;
                }
                if (jK2 != C.TIME_UNSET) {
                    jK2 += j3;
                }
            }
        } else {
            j = C.TIME_UNSET;
        }
        long j4 = jK;
        if (jK2 != j) {
            j2 = jK2;
        } else if (jK3 != j) {
            j2 = j4 + jK3;
        } else if (uabVar != null) {
            long j5 = uabVar.e;
            if (j5 != j) {
                j2 = j5;
            } else {
                j2 = jK2;
            }
        } else {
            j2 = jK2;
        }
        return uab.c(xmlPullParser.getName(), j4, j2, xabVarI, strArr, str, strSubstring, uabVar);
    }

    /* JADX WARN: Code duplicated, block: B:45:0x016c  */
    /* JADX WARN: Code duplicated, block: B:66:0x01bd  */
    public static vab G(XmlPullParser xmlPullParser, a aVar, c cVar) {
        float f;
        float f2;
        float f3;
        float f4;
        int i;
        int i2;
        byte b2 = 0;
        int i3 = 1;
        String strA = zrc.a(xmlPullParser, TtmlNode.ATTR_ID);
        if (strA == null) {
            return null;
        }
        String strA2 = zrc.a(xmlPullParser, "origin");
        if (strA2 == null) {
            op5.i("TtmlDecoder", "Ignoring region without an origin");
            return null;
        }
        Pattern pattern = t;
        Matcher matcher = pattern.matcher(strA2);
        Pattern pattern2 = u;
        Matcher matcher2 = pattern2.matcher(strA2);
        if (matcher.matches()) {
            try {
                float f5 = Float.parseFloat((String) zi.e(matcher.group(1))) / 100.0f;
                f = Float.parseFloat((String) zi.e(matcher.group(2))) / 100.0f;
                f2 = f5;
            } catch (NumberFormatException unused) {
                op5.i("TtmlDecoder", "Ignoring region with malformed origin: " + strA2);
                return null;
            }
        } else {
            if (!matcher2.matches()) {
                op5.i("TtmlDecoder", "Ignoring region with unsupported origin: " + strA2);
                return null;
            }
            if (cVar == null) {
                op5.i("TtmlDecoder", "Ignoring region with missing tts:extent: " + strA2);
                return null;
            }
            try {
                int i4 = Integer.parseInt((String) zi.e(matcher2.group(1)));
                int i5 = Integer.parseInt((String) zi.e(matcher2.group(2)));
                f2 = i4 / cVar.a;
                f = i5 / cVar.b;
            } catch (NumberFormatException unused2) {
                op5.i("TtmlDecoder", "Ignoring region with malformed origin: " + strA2);
                return null;
            }
        }
        String strA3 = zrc.a(xmlPullParser, TtmlNode.ATTR_TTS_EXTENT);
        if (strA3 == null) {
            op5.i("TtmlDecoder", "Ignoring region without an extent");
            return null;
        }
        Matcher matcher3 = pattern.matcher(strA3);
        Matcher matcher4 = pattern2.matcher(strA3);
        if (matcher3.matches()) {
            try {
                f3 = Float.parseFloat((String) zi.e(matcher3.group(1))) / 100.0f;
                f4 = Float.parseFloat((String) zi.e(matcher3.group(2))) / 100.0f;
            } catch (NumberFormatException unused3) {
                op5.i("TtmlDecoder", "Ignoring region with malformed extent: " + strA2);
                return null;
            }
        } else {
            if (!matcher4.matches()) {
                op5.i("TtmlDecoder", "Ignoring region with unsupported extent: " + strA2);
                return null;
            }
            if (cVar == null) {
                op5.i("TtmlDecoder", "Ignoring region with missing tts:extent: " + strA2);
                return null;
            }
            try {
                int i6 = Integer.parseInt((String) zi.e(matcher4.group(1)));
                int i7 = Integer.parseInt((String) zi.e(matcher4.group(2)));
                f3 = i6 / cVar.a;
                f4 = i7 / cVar.b;
            } catch (NumberFormatException unused4) {
                op5.i("TtmlDecoder", "Ignoring region with malformed extent: " + strA2);
                return null;
            }
        }
        String strA4 = zrc.a(xmlPullParser, TtmlNode.ATTR_TTS_DISPLAY_ALIGN);
        if (strA4 != null) {
            String strE = ui.e(strA4);
            strE.hashCode();
            if (strE.equals(TtmlNode.CENTER)) {
                f += f4 / 2.0f;
                i = 1;
            } else if (strE.equals(TtmlNode.ANNOTATION_POSITION_AFTER)) {
                f += f4;
                i = 2;
            } else {
                i = 0;
            }
        } else {
            i = 0;
        }
        float f6 = f;
        float f7 = 1.0f / aVar.b;
        String strA5 = zrc.a(xmlPullParser, TtmlNode.ATTR_TTS_WRITING_MODE);
        if (strA5 != null) {
            String strE2 = ui.e(strA5);
            strE2.hashCode();
            switch (strE2.hashCode()) {
                case 3694:
                    if (!strE2.equals("tb")) {
                        b2 = -1;
                    }
                    break;
                case 3553396:
                    b2 = !strE2.equals(TtmlNode.VERTICAL_LR) ? (byte) -1 : (byte) 1;
                    break;
                case 3553576:
                    b2 = !strE2.equals(TtmlNode.VERTICAL_RL) ? (byte) -1 : (byte) 2;
                    break;
                default:
                    b2 = -1;
                    break;
            }
            switch (b2) {
                case 0:
                case 1:
                    i2 = 2;
                    break;
                default:
                    i3 = Integer.MIN_VALUE;
                case 2:
                    i2 = i3;
                    break;
            }
        } else {
            i3 = Integer.MIN_VALUE;
            i2 = i3;
        }
        return new vab(strA, f2, f6, 0, i, f3, f4, 1, f7, i2);
    }

    public static float H(String str) {
        Matcher matcher = s.matcher(str);
        if (!matcher.matches()) {
            op5.i("TtmlDecoder", "Invalid value for shear: " + str);
            return Float.MAX_VALUE;
        }
        try {
            return Math.min(100.0f, Math.max(-100.0f, Float.parseFloat((String) zi.e(matcher.group(1)))));
        } catch (NumberFormatException e) {
            op5.j("TtmlDecoder", "Failed to parse shear: " + str, e);
            return Float.MAX_VALUE;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static xab I(XmlPullParser xmlPullParser, xab xabVar) {
        byte b2;
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            String attributeValue = xmlPullParser.getAttributeValue(i);
            String attributeName = xmlPullParser.getAttributeName(i);
            attributeName.hashCode();
            switch (attributeName.hashCode()) {
                case -1550943582:
                    b2 = attributeName.equals(TtmlNode.ATTR_TTS_FONT_STYLE) ? (byte) 0 : (byte) -1;
                    break;
                case -1224696685:
                    b2 = attributeName.equals(TtmlNode.ATTR_TTS_FONT_FAMILY) ? (byte) 1 : (byte) -1;
                    break;
                case -1065511464:
                    b2 = attributeName.equals(TtmlNode.ATTR_TTS_TEXT_ALIGN) ? (byte) 2 : (byte) -1;
                    break;
                case -879295043:
                    b2 = attributeName.equals(TtmlNode.ATTR_TTS_TEXT_DECORATION) ? (byte) 3 : (byte) -1;
                    break;
                case -734428249:
                    b2 = attributeName.equals(TtmlNode.ATTR_TTS_FONT_WEIGHT) ? (byte) 4 : (byte) -1;
                    break;
                case 3355:
                    b2 = attributeName.equals(TtmlNode.ATTR_ID) ? (byte) 5 : (byte) -1;
                    break;
                case 3511770:
                    b2 = attributeName.equals(TtmlNode.ATTR_TTS_RUBY) ? (byte) 6 : (byte) -1;
                    break;
                case 94842723:
                    b2 = attributeName.equals("color") ? (byte) 7 : (byte) -1;
                    break;
                case 109403361:
                    b2 = attributeName.equals(TtmlNode.ATTR_TTS_SHEAR) ? (byte) 8 : (byte) -1;
                    break;
                case 110138194:
                    b2 = attributeName.equals(TtmlNode.ATTR_TTS_TEXT_COMBINE) ? (byte) 9 : (byte) -1;
                    break;
                case 365601008:
                    b2 = attributeName.equals(TtmlNode.ATTR_TTS_FONT_SIZE) ? (byte) 10 : (byte) -1;
                    break;
                case 921125321:
                    b2 = attributeName.equals(TtmlNode.ATTR_TTS_TEXT_EMPHASIS) ? ByteCode.T_LONG : (byte) -1;
                    break;
                case 1115953443:
                    b2 = attributeName.equals(TtmlNode.ATTR_TTS_RUBY_POSITION) ? (byte) 12 : (byte) -1;
                    break;
                case 1287124693:
                    b2 = attributeName.equals(TtmlNode.ATTR_TTS_BACKGROUND_COLOR) ? (byte) 13 : (byte) -1;
                    break;
                case 1754920356:
                    b2 = attributeName.equals(TtmlNode.ATTR_EBUTTS_MULTI_ROW_ALIGN) ? (byte) 14 : (byte) -1;
                    break;
                default:
                    b2 = -1;
                    break;
            }
            switch (b2) {
                case 0:
                    xabVar = x(xabVar).B(TtmlNode.ITALIC.equalsIgnoreCase(attributeValue));
                    break;
                case 1:
                    xabVar = x(xabVar).x(attributeValue);
                    break;
                case 2:
                    xabVar = x(xabVar).H(z(attributeValue));
                    break;
                case 3:
                    String strE = ui.e(attributeValue);
                    strE.hashCode();
                    switch (strE) {
                        case "nounderline":
                            xabVar = x(xabVar).K(false);
                            break;
                        case "underline":
                            xabVar = x(xabVar).K(true);
                            break;
                        case "nolinethrough":
                            xabVar = x(xabVar).C(false);
                            break;
                        case "linethrough":
                            xabVar = x(xabVar).C(true);
                            break;
                    }
                    break;
                case 4:
                    xabVar = x(xabVar).v(TtmlNode.BOLD.equalsIgnoreCase(attributeValue));
                    break;
                case 5:
                    if ("style".equals(xmlPullParser.getName())) {
                        xabVar = x(xabVar).A(attributeValue);
                    }
                    break;
                case 6:
                    String strE2 = ui.e(attributeValue);
                    strE2.hashCode();
                    switch (strE2) {
                        case "baseContainer":
                        case "base":
                            xabVar = x(xabVar).F(2);
                            break;
                        case "container":
                            xabVar = x(xabVar).F(1);
                            break;
                        case "delimiter":
                            xabVar = x(xabVar).F(4);
                            break;
                        case "textContainer":
                        case "text":
                            xabVar = x(xabVar).F(3);
                            break;
                    }
                    break;
                case 7:
                    xabVar = x(xabVar);
                    try {
                        xabVar.w(y81.c(attributeValue));
                    } catch (IllegalArgumentException unused) {
                        op5.i("TtmlDecoder", "Failed parsing color value: " + attributeValue);
                    }
                    break;
                case 8:
                    xabVar = x(xabVar).G(H(attributeValue));
                    break;
                case 9:
                    String strE3 = ui.e(attributeValue);
                    strE3.hashCode();
                    if (strE3.equals(TtmlNode.COMBINE_ALL)) {
                        xabVar = x(xabVar).I(true);
                    } else if (strE3.equals("none")) {
                        xabVar = x(xabVar).I(false);
                    }
                    break;
                case 10:
                    try {
                        xabVar = x(xabVar);
                        B(attributeValue, xabVar);
                    } catch (SubtitleDecoderException unused2) {
                        op5.i("TtmlDecoder", "Failed parsing fontSize value: " + attributeValue);
                    }
                    break;
                case 11:
                    xabVar = x(xabVar).J(eha.a(attributeValue));
                    break;
                case 12:
                    String strE4 = ui.e(attributeValue);
                    strE4.hashCode();
                    if (strE4.equals(TtmlNode.ANNOTATION_POSITION_BEFORE)) {
                        xabVar = x(xabVar).E(1);
                    } else if (strE4.equals(TtmlNode.ANNOTATION_POSITION_AFTER)) {
                        xabVar = x(xabVar).E(2);
                    }
                    break;
                case 13:
                    xabVar = x(xabVar);
                    try {
                        xabVar.u(y81.c(attributeValue));
                    } catch (IllegalArgumentException unused3) {
                        op5.i("TtmlDecoder", "Failed parsing background value: " + attributeValue);
                    }
                    break;
                case 14:
                    xabVar = x(xabVar).D(z(attributeValue));
                    break;
            }
        }
        return xabVar;
    }

    public static String[] J(String str) {
        String strTrim = str.trim();
        return strTrim.isEmpty() ? new String[0] : blb.F0(strTrim, "\\s+");
    }

    public static long K(String str, b bVar) throws SubtitleDecoderException {
        double d;
        double d2;
        byte b2 = 4;
        Matcher matcher = p.matcher(str);
        if (matcher.matches()) {
            double d3 = (Long.parseLong((String) zi.e(matcher.group(1))) * 3600) + (Long.parseLong((String) zi.e(matcher.group(2))) * 60) + Long.parseLong((String) zi.e(matcher.group(3)));
            String strGroup = matcher.group(4);
            double d4 = d3 + (strGroup != null ? Double.parseDouble(strGroup) : 0.0d);
            String strGroup2 = matcher.group(5);
            double d5 = d4 + (strGroup2 != null ? Long.parseLong(strGroup2) / bVar.a : 0.0d);
            String strGroup3 = matcher.group(6);
            return (long) ((d5 + (strGroup3 != null ? (Long.parseLong(strGroup3) / ((double) bVar.b)) / ((double) bVar.a) : 0.0d)) * 1000000.0d);
        }
        Matcher matcher2 = q.matcher(str);
        if (!matcher2.matches()) {
            throw new SubtitleDecoderException("Malformed time expression: " + str);
        }
        double d6 = Double.parseDouble((String) zi.e(matcher2.group(1)));
        String str2 = (String) zi.e(matcher2.group(2));
        str2.hashCode();
        switch (str2.hashCode()) {
            case 102:
                b2 = !str2.equals("f") ? (byte) -1 : (byte) 0;
                break;
            case 104:
                b2 = !str2.equals(CmcdData.STREAMING_FORMAT_HLS) ? (byte) -1 : (byte) 1;
                break;
            case 109:
                b2 = !str2.equals(CmcdData.OBJECT_TYPE_MANIFEST) ? (byte) -1 : (byte) 2;
                break;
            case 116:
                b2 = !str2.equals("t") ? (byte) -1 : (byte) 3;
                break;
            case 3494:
                if (!str2.equals("ms")) {
                    b2 = -1;
                }
                break;
            default:
                b2 = -1;
                break;
        }
        switch (b2) {
            case 0:
                d = bVar.a;
                d6 /= d;
                return (long) (d6 * 1000000.0d);
            case 1:
                d2 = 3600.0d;
                break;
            case 2:
                d2 = 60.0d;
                break;
            case 3:
                d = bVar.c;
                d6 /= d;
                return (long) (d6 * 1000000.0d);
            case 4:
                d = 1000.0d;
                d6 /= d;
                return (long) (d6 * 1000000.0d);
            default:
                return (long) (d6 * 1000000.0d);
        }
        d6 *= d2;
        return (long) (d6 * 1000000.0d);
    }

    public static c L(XmlPullParser xmlPullParser) {
        String strA = zrc.a(xmlPullParser, TtmlNode.ATTR_TTS_EXTENT);
        if (strA == null) {
            return null;
        }
        Matcher matcher = u.matcher(strA);
        if (!matcher.matches()) {
            op5.i("TtmlDecoder", "Ignoring non-pixel tts extent: " + strA);
            return null;
        }
        try {
            return new c(Integer.parseInt((String) zi.e(matcher.group(1))), Integer.parseInt((String) zi.e(matcher.group(2))));
        } catch (NumberFormatException unused) {
            op5.i("TtmlDecoder", "Ignoring malformed tts extent: " + strA);
            return null;
        }
    }

    public static xab x(xab xabVar) {
        return xabVar == null ? new xab() : xabVar;
    }

    public static boolean y(String str) {
        return str.equals(TtmlNode.TAG_TT) || str.equals("head") || str.equals(TtmlNode.TAG_BODY) || str.equals(TtmlNode.TAG_DIV) || str.equals(TtmlNode.TAG_P) || str.equals(TtmlNode.TAG_SPAN) || str.equals("br") || str.equals("style") || str.equals(TtmlNode.TAG_STYLING) || str.equals(TtmlNode.TAG_LAYOUT) || str.equals(TtmlNode.TAG_REGION) || str.equals(TtmlNode.TAG_METADATA) || str.equals("image") || str.equals("data") || str.equals(TtmlNode.TAG_INFORMATION);
    }

    public static Layout.Alignment z(String str) {
        String strE = ui.e(str);
        strE.hashCode();
        switch (strE) {
            case "center":
                return Layout.Alignment.ALIGN_CENTER;
            case "end":
            case "right":
                return Layout.Alignment.ALIGN_OPPOSITE;
            case "left":
            case "start":
                return Layout.Alignment.ALIGN_NORMAL;
            default:
                return null;
        }
    }

    @Override
    public l2a v(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        b bVar;
        try {
            XmlPullParser xmlPullParserNewPullParser = this.o.newPullParser();
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            HashMap map3 = new HashMap();
            map2.put("", new vab(""));
            c cVarL = null;
            xmlPullParserNewPullParser.setInput(new ByteArrayInputStream(bArr, 0, i), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            b bVarC = w;
            a aVarA = x;
            int i2 = 0;
            yab yabVar = null;
            for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.getEventType()) {
                uab uabVar = (uab) arrayDeque.peek();
                if (i2 == 0) {
                    String name = xmlPullParserNewPullParser.getName();
                    if (eventType == 2) {
                        if (TtmlNode.TAG_TT.equals(name)) {
                            bVarC = C(xmlPullParserNewPullParser);
                            aVarA = A(xmlPullParserNewPullParser, x);
                            cVarL = L(xmlPullParserNewPullParser);
                        }
                        c cVar = cVarL;
                        b bVar2 = bVarC;
                        a aVar = aVarA;
                        if (y(name)) {
                            if ("head".equals(name)) {
                                bVar = bVar2;
                                D(xmlPullParserNewPullParser, map, aVar, cVar, map2, map3);
                            } else {
                                bVar = bVar2;
                                try {
                                    uab uabVarF = F(xmlPullParserNewPullParser, uabVar, map2, bVar);
                                    arrayDeque.push(uabVarF);
                                    if (uabVar != null) {
                                        uabVar.a(uabVarF);
                                    }
                                } catch (SubtitleDecoderException e) {
                                    op5.j("TtmlDecoder", "Suppressing parser error", e);
                                    i2++;
                                }
                            }
                            bVarC = bVar;
                        } else {
                            op5.f("TtmlDecoder", "Ignoring unsupported tag: " + xmlPullParserNewPullParser.getName());
                            i2++;
                            bVarC = bVar2;
                        }
                        cVarL = cVar;
                        aVarA = aVar;
                    } else if (eventType == 4) {
                        ((uab) zi.e(uabVar)).a(uab.d(xmlPullParserNewPullParser.getText()));
                    } else if (eventType == 3) {
                        if (xmlPullParserNewPullParser.getName().equals(TtmlNode.TAG_TT)) {
                            yabVar = new yab((uab) zi.e((uab) arrayDeque.peek()), map, map2, map3);
                        }
                        arrayDeque.pop();
                    }
                } else if (eventType == 2) {
                    i2++;
                } else if (eventType == 3) {
                    i2--;
                }
                xmlPullParserNewPullParser.next();
            }
            if (yabVar != null) {
                return yabVar;
            }
            throw new SubtitleDecoderException("No TTML subtitles found");
        } catch (IOException e2) {
            throw new IllegalStateException("Unexpected error when reading input.", e2);
        } catch (XmlPullParserException e3) {
            throw new SubtitleDecoderException("Unable to decode source", e3);
        }
    }
}
