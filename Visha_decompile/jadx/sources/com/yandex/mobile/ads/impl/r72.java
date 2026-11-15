package com.yandex.mobile.ads.impl;

import android.text.Layout;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.alibaba.android.arouter.utils.Consts;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.mozilla.classfile.ByteCode;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

public final class r72 extends uy1 {
    private static final Pattern n = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");
    private static final Pattern o = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");
    private static final Pattern p = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");
    static final Pattern q = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");
    static final Pattern r = Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");
    private static final Pattern s = Pattern.compile("^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$");
    private static final Pattern t = Pattern.compile("^(\\d+) (\\d+)$");
    private static final b u = new b(30.0f, 1, 1);
    private static final a v = new a(15);
    private final XmlPullParserFactory m;

    public static final class a {
        final int a;

        public a(int i) {
            this.a = i;
        }
    }

    public static final class b {
        final float a;
        final int b;
        final int c;

        public b(float f, int i, int i2) {
            this.a = f;
            this.b = i;
            this.c = i2;
        }
    }

    public static final class c {
        final int a;
        final int b;

        public c(int i, int i2) {
            this.a = i;
            this.b = i2;
        }
    }

    public r72() {
        try {
            XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
            this.m = xmlPullParserFactoryNewInstance;
            xmlPullParserFactoryNewInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }

    private static v72 a(@Nullable v72 v72Var) {
        return v72Var == null ? new v72() : v72Var;
    }

    @Nullable
    private static Layout.Alignment b(String str) {
        String strB = fg.b(str);
        strB.getClass();
        switch (strB) {
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
    public final n32 a(byte[] bArr, int i, boolean z) throws p32 {
        b bVar;
        try {
            XmlPullParser xmlPullParserNewPullParser = this.m.newPullParser();
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            HashMap map3 = new HashMap();
            map2.put("", new t72("", -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, -3.4028235E38f, Integer.MIN_VALUE));
            c cVarB = null;
            xmlPullParserNewPullParser.setInput(new ByteArrayInputStream(bArr, 0, i), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            b bVarA = u;
            a aVarA = v;
            int i2 = 0;
            w72 w72Var = null;
            for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.getEventType()) {
                s72 s72Var = (s72) arrayDeque.peek();
                if (i2 == 0) {
                    String name = xmlPullParserNewPullParser.getName();
                    if (eventType == 2) {
                        if (TtmlNode.TAG_TT.equals(name)) {
                            bVarA = a(xmlPullParserNewPullParser);
                            aVarA = a(xmlPullParserNewPullParser, v);
                            cVarB = b(xmlPullParserNewPullParser);
                        }
                        c cVar = cVarB;
                        b bVar2 = bVarA;
                        a aVar = aVarA;
                        if (a(name)) {
                            if ("head".equals(name)) {
                                bVar = bVar2;
                                a(xmlPullParserNewPullParser, map, aVar, cVar, map2, map3);
                            } else {
                                bVar = bVar2;
                                try {
                                    s72 s72VarA = a(xmlPullParserNewPullParser, s72Var, map2, bVar);
                                    arrayDeque.push(s72VarA);
                                    if (s72Var != null) {
                                        s72Var.a(s72VarA);
                                    }
                                } catch (p32 e) {
                                    et0.b("TtmlDecoder", "Suppressing parser error", e);
                                    bVarA = bVar;
                                    cVarB = cVar;
                                    aVarA = aVar;
                                    i2++;
                                }
                            }
                            bVarA = bVar;
                            cVarB = cVar;
                            aVarA = aVar;
                        } else {
                            et0.c("TtmlDecoder", "Ignoring unsupported tag: " + xmlPullParserNewPullParser.getName());
                            bVar = bVar2;
                        }
                        bVarA = bVar;
                        cVarB = cVar;
                        aVarA = aVar;
                        i2++;
                    } else if (eventType == 4) {
                        s72Var.getClass();
                        s72Var.a(s72.a(xmlPullParserNewPullParser.getText()));
                    } else if (eventType == 3) {
                        if (xmlPullParserNewPullParser.getName().equals(TtmlNode.TAG_TT)) {
                            s72 s72Var2 = (s72) arrayDeque.peek();
                            s72Var2.getClass();
                            w72Var = new w72(s72Var2, map, map2, map3);
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
            if (w72Var != null) {
                return w72Var;
            }
            throw new p32("No TTML subtitles found");
        } catch (IOException e2) {
            throw new IllegalStateException("Unexpected error when reading input.", e2);
        } catch (XmlPullParserException e3) {
            throw new p32("Unable to decode source", e3);
        }
    }

    @Nullable
    private static c b(XmlPullParser xmlPullParser) {
        String strA = fl2.a(xmlPullParser, TtmlNode.ATTR_TTS_EXTENT);
        if (strA == null) {
            return null;
        }
        Matcher matcher = s.matcher(strA);
        if (!matcher.matches()) {
            et0.d("TtmlDecoder", "Ignoring non-pixel tts extent: ".concat(strA));
            return null;
        }
        try {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            int i = Integer.parseInt(strGroup);
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            return new c(i, Integer.parseInt(strGroup2));
        } catch (NumberFormatException unused) {
            et0.d("TtmlDecoder", "Ignoring malformed tts extent: ".concat(strA));
            return null;
        }
    }

    private static boolean a(String str) {
        return str.equals(TtmlNode.TAG_TT) || str.equals("head") || str.equals(TtmlNode.TAG_BODY) || str.equals(TtmlNode.TAG_DIV) || str.equals(TtmlNode.TAG_P) || str.equals(TtmlNode.TAG_SPAN) || str.equals("br") || str.equals("style") || str.equals(TtmlNode.TAG_STYLING) || str.equals(TtmlNode.TAG_LAYOUT) || str.equals(TtmlNode.TAG_REGION) || str.equals(TtmlNode.TAG_METADATA) || str.equals("image") || str.equals("data") || str.equals(TtmlNode.TAG_INFORMATION);
    }

    private static a a(XmlPullParser xmlPullParser, a aVar) throws p32 {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "cellResolution");
        if (attributeValue == null) {
            return aVar;
        }
        Matcher matcher = t.matcher(attributeValue);
        if (!matcher.matches()) {
            et0.d("TtmlDecoder", "Ignoring malformed cell resolution: ".concat(attributeValue));
            return aVar;
        }
        try {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            int i = Integer.parseInt(strGroup);
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            int i2 = Integer.parseInt(strGroup2);
            if (i == 0 || i2 == 0) {
                throw new p32("Invalid cell resolution " + i + " " + i2);
            }
            return new a(i2);
        } catch (NumberFormatException unused) {
            et0.d("TtmlDecoder", "Ignoring malformed cell resolution: ".concat(attributeValue));
            return aVar;
        }
    }

    private static void a(String str, v72 v72Var) throws p32 {
        Matcher matcher;
        int i = f92.a;
        String[] strArrSplit = str.split("\\s+", -1);
        if (strArrSplit.length == 1) {
            matcher = p.matcher(str);
        } else if (strArrSplit.length == 2) {
            matcher = p.matcher(strArrSplit[1]);
            et0.d("TtmlDecoder", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        } else {
            throw new p32("Invalid number of entries for fontSize: " + strArrSplit.length + Consts.DOT);
        }
        if (matcher.matches()) {
            String strGroup = matcher.group(3);
            strGroup.getClass();
            switch (strGroup) {
                case "%":
                    v72Var.c(3);
                    break;
                case "em":
                    v72Var.c(2);
                    break;
                case "px":
                    v72Var.c(1);
                    break;
                default:
                    throw new p32("Invalid unit for fontSize: '" + strGroup + "'.");
            }
            String strGroup2 = matcher.group(1);
            strGroup2.getClass();
            v72Var.a(Float.parseFloat(strGroup2));
            return;
        }
        throw new p32("Invalid expression for fontSize: '" + str + "'.");
    }

    private static b a(XmlPullParser xmlPullParser) throws p32 {
        float f;
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRate");
        int i = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
        String attributeValue2 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRateMultiplier");
        if (attributeValue2 != null) {
            int i2 = f92.a;
            String[] strArrSplit = attributeValue2.split(" ", -1);
            if (strArrSplit.length == 2) {
                f = Integer.parseInt(strArrSplit[0]) / Integer.parseInt(strArrSplit[1]);
            } else {
                throw new p32("frameRateMultiplier doesn't have 2 parts");
            }
        } else {
            f = 1.0f;
        }
        b bVar = u;
        int i3 = bVar.b;
        String attributeValue3 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "subFrameRate");
        if (attributeValue3 != null) {
            i3 = Integer.parseInt(attributeValue3);
        }
        int i4 = bVar.c;
        String attributeValue4 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "tickRate");
        if (attributeValue4 != null) {
            i4 = Integer.parseInt(attributeValue4);
        }
        return new b(i * f, i3, i4);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:105:0x0264 A[LOOP:0: B:3:0x000a->B:105:0x0264, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:106:0x0137 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:110:0x00ff A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:114:0x0263 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:45:0x0126  */
    /* JADX WARN: Code duplicated, block: B:47:0x012c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:48:0x012e  */
    /* JADX WARN: Code duplicated, block: B:53:0x0162  */
    /* JADX WARN: Code duplicated, block: B:55:0x0171  */
    /* JADX WARN: Code duplicated, block: B:58:0x017a  */
    /* JADX WARN: Code duplicated, block: B:59:0x0180  */
    /* JADX WARN: Code duplicated, block: B:60:0x018a  */
    /* JADX WARN: Code duplicated, block: B:63:0x019c  */
    /* JADX WARN: Code duplicated, block: B:65:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:66:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:69:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:70:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:73:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:74:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:77:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:80:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:81:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:82:0x01d6  */
    /* JADX WARN: Code duplicated, block: B:85:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:86:0x01fc  */
    private static void a(XmlPullParser xmlPullParser, HashMap map, a aVar, @Nullable c cVar, HashMap map2, HashMap map3) throws XmlPullParserException, IOException {
        String strA;
        float f;
        float f2;
        String strA2;
        Matcher matcher;
        Matcher matcher2;
        float f3;
        float f4;
        String strA3;
        int i;
        String strA4;
        int i2;
        String strB;
        String strB2;
        String[] strArrSplit;
        int i3 = -1;
        int i4 = 0;
        while (true) {
            xmlPullParser.next();
            if (fl2.c(xmlPullParser, "style")) {
                String strA5 = fl2.a(xmlPullParser, "style");
                v72 v72VarA = a(xmlPullParser, new v72());
                if (strA5 != null) {
                    String strTrim = strA5.trim();
                    if (strTrim.isEmpty()) {
                        strArrSplit = new String[i4];
                    } else {
                        int i5 = f92.a;
                        strArrSplit = strTrim.split("\\s+", i3);
                    }
                    int length = strArrSplit.length;
                    for (int i6 = i4; i6 < length; i6++) {
                        v72VarA.a((v72) map.get(strArrSplit[i6]));
                    }
                }
                String strF = v72VarA.f();
                if (strF != null) {
                    map.put(strF, v72VarA);
                }
            } else {
                if (fl2.c(xmlPullParser, TtmlNode.TAG_REGION)) {
                    String strA6 = fl2.a(xmlPullParser, TtmlNode.ATTR_ID);
                    t72 t72Var = null;
                    if (strA6 != null) {
                        String strA7 = fl2.a(xmlPullParser, "origin");
                        if (strA7 != null) {
                            Pattern pattern = r;
                            Matcher matcher3 = pattern.matcher(strA7);
                            Pattern pattern2 = s;
                            Matcher matcher4 = pattern2.matcher(strA7);
                            if (matcher3.matches()) {
                                try {
                                    String strGroup = matcher3.group(1);
                                    strGroup.getClass();
                                    float f5 = Float.parseFloat(strGroup) / 100.0f;
                                    String strGroup2 = matcher3.group(2);
                                    strGroup2.getClass();
                                    f = Float.parseFloat(strGroup2) / 100.0f;
                                    f2 = f5;
                                    strA2 = fl2.a(xmlPullParser, TtmlNode.ATTR_TTS_EXTENT);
                                    if (strA2 != null) {
                                        matcher = pattern.matcher(strA2);
                                        matcher2 = pattern2.matcher(strA2);
                                        if (matcher.matches()) {
                                            try {
                                                String strGroup3 = matcher.group(1);
                                                strGroup3.getClass();
                                                float f6 = Float.parseFloat(strGroup3) / 100.0f;
                                                String strGroup4 = matcher.group(2);
                                                strGroup4.getClass();
                                                f3 = f6;
                                                f4 = Float.parseFloat(strGroup4) / 100.0f;
                                                strA3 = fl2.a(xmlPullParser, TtmlNode.ATTR_TTS_DISPLAY_ALIGN);
                                                if (strA3 != null) {
                                                    strB2 = fg.b(strA3);
                                                    strB2.getClass();
                                                    if (!strB2.equals(TtmlNode.CENTER)) {
                                                        f = (f4 / 2.0f) + f;
                                                        i = 1;
                                                    } else if (strB2.equals(TtmlNode.ANNOTATION_POSITION_AFTER)) {
                                                        f += f4;
                                                        i = 2;
                                                    } else {
                                                        i = 0;
                                                    }
                                                } else {
                                                    i = 0;
                                                }
                                                float f7 = 1.0f / aVar.a;
                                                strA4 = fl2.a(xmlPullParser, TtmlNode.ATTR_TTS_WRITING_MODE);
                                                if (strA4 != null) {
                                                    strB = fg.b(strA4);
                                                    strB.getClass();
                                                    switch (strB) {
                                                        case "tb":
                                                        case "tblr":
                                                            i2 = 2;
                                                            break;
                                                        case "tbrl":
                                                            i2 = 1;
                                                            break;
                                                        default:
                                                            i2 = Integer.MIN_VALUE;
                                                            break;
                                                    }
                                                } else {
                                                    i2 = Integer.MIN_VALUE;
                                                }
                                                t72Var = new t72(strA6, f2, f, 0, i, f3, f4, 1, f7, i2);
                                            } catch (NumberFormatException unused) {
                                                et0.d("TtmlDecoder", "Ignoring region with malformed extent: ".concat(strA7));
                                            }
                                        } else if (matcher2.matches()) {
                                            et0.d("TtmlDecoder", "Ignoring region with unsupported extent: ".concat(strA7));
                                        } else if (cVar == null) {
                                            et0.d("TtmlDecoder", "Ignoring region with missing tts:extent: ".concat(strA7));
                                        } else {
                                            try {
                                                String strGroup5 = matcher2.group(1);
                                                strGroup5.getClass();
                                                int i7 = Integer.parseInt(strGroup5);
                                                String strGroup6 = matcher2.group(2);
                                                strGroup6.getClass();
                                                float f8 = Integer.parseInt(strGroup6);
                                                f3 = i7 / cVar.a;
                                                f4 = f8 / cVar.b;
                                                strA3 = fl2.a(xmlPullParser, TtmlNode.ATTR_TTS_DISPLAY_ALIGN);
                                                if (strA3 != null) {
                                                    strB2 = fg.b(strA3);
                                                    strB2.getClass();
                                                    if (!strB2.equals(TtmlNode.CENTER)) {
                                                        f = (f4 / 2.0f) + f;
                                                        i = 1;
                                                    } else if (strB2.equals(TtmlNode.ANNOTATION_POSITION_AFTER)) {
                                                        i = 0;
                                                    } else {
                                                        f += f4;
                                                        i = 2;
                                                    }
                                                } else {
                                                    i = 0;
                                                }
                                                float f9 = 1.0f / aVar.a;
                                                strA4 = fl2.a(xmlPullParser, TtmlNode.ATTR_TTS_WRITING_MODE);
                                                if (strA4 != null) {
                                                    strB = fg.b(strA4);
                                                    strB.getClass();
                                                    switch (strB) {
                                                        case 3694:
                                                            if (!strB.equals("tb")) {
                                                            }
                                                            break;
                                                        case 3553396:
                                                            if (!strB.equals(TtmlNode.VERTICAL_LR)) {
                                                            }
                                                            break;
                                                        case 3553576:
                                                            if (!strB.equals(TtmlNode.VERTICAL_RL)) {
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
                                                        	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                                        	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                        	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:320)
                                                        	at jadx.core.dex.regions.TryCatchRegion.generate(TryCatchRegion.java:85)
                                                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                        	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
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
                                                        	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                        	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:320)
                                                        	at jadx.core.dex.regions.TryCatchRegion.generate(TryCatchRegion.java:85)
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
                                                        	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                                        	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
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
                                                        Method dump skipped, instruction units count: 640
                                                        To view this dump add '--comments-level debug' option
                                                    */
                                                    throw new UnsupportedOperationException("Method not decompiled: com.yandex.mobile.ads.impl.r72.a(org.xmlpull.v1.XmlPullParser, java.util.HashMap, com.yandex.mobile.ads.impl.r72$a, com.yandex.mobile.ads.impl.r72$c, java.util.HashMap, java.util.HashMap):void");
                                                }

                                                /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                                                /* JADX WARN: Code duplicated, block: B:6:0x003a  */
                                                /* JADX WARN: Code duplicated, block: B:74:0x010b  */
                                                private static s72 a(XmlPullParser xmlPullParser, @Nullable s72 s72Var, HashMap map, b bVar) throws p32 {
                                                    long j;
                                                    long j2;
                                                    byte b2;
                                                    String[] strArrSplit;
                                                    int attributeCount = xmlPullParser.getAttributeCount();
                                                    v72 v72VarA = a(xmlPullParser, (v72) null);
                                                    String strSubstring = null;
                                                    String str = "";
                                                    long jA = C.TIME_UNSET;
                                                    long jA2 = C.TIME_UNSET;
                                                    long jA3 = C.TIME_UNSET;
                                                    String[] strArr = null;
                                                    for (int i = 0; i < attributeCount; i++) {
                                                        String attributeName = xmlPullParser.getAttributeName(i);
                                                        String attributeValue = xmlPullParser.getAttributeValue(i);
                                                        attributeName.getClass();
                                                        switch (attributeName) {
                                                            case "region":
                                                                if (map.containsKey(attributeValue)) {
                                                                    str = attributeValue;
                                                                    break;
                                                                } else {
                                                                    break;
                                                                }
                                                                break;
                                                            case "dur":
                                                                jA3 = a(attributeValue, bVar);
                                                                break;
                                                            case "end":
                                                                jA2 = a(attributeValue, bVar);
                                                                break;
                                                            case "begin":
                                                                jA = a(attributeValue, bVar);
                                                                break;
                                                            case "style":
                                                                String strTrim = attributeValue.trim();
                                                                if (strTrim.isEmpty()) {
                                                                    strArrSplit = new String[0];
                                                                    b2 = -1;
                                                                } else {
                                                                    int i2 = f92.a;
                                                                    b2 = -1;
                                                                    strArrSplit = strTrim.split("\\s+", -1);
                                                                }
                                                                if (strArrSplit.length > 0) {
                                                                    strArr = strArrSplit;
                                                                }
                                                                break;
                                                            case "backgroundImage":
                                                                if (attributeValue.startsWith("#")) {
                                                                    strSubstring = attributeValue.substring(1);
                                                                    break;
                                                                }
                                                            default:
                                                                break;
                                                        }
                                                    }
                                                    if (s72Var != null) {
                                                        long j3 = s72Var.d;
                                                        j = C.TIME_UNSET;
                                                        if (j3 != C.TIME_UNSET) {
                                                            if (jA != C.TIME_UNSET) {
                                                                jA += j3;
                                                            }
                                                            if (jA2 != C.TIME_UNSET) {
                                                                jA2 += j3;
                                                            }
                                                        }
                                                    } else {
                                                        j = C.TIME_UNSET;
                                                    }
                                                    long j4 = jA;
                                                    if (jA2 != j) {
                                                        j2 = jA2;
                                                    } else if (jA3 != j) {
                                                        j2 = j4 + jA3;
                                                    } else if (s72Var != null) {
                                                        long j5 = s72Var.e;
                                                        if (j5 != j) {
                                                            j2 = j5;
                                                        } else {
                                                            j2 = jA2;
                                                        }
                                                    } else {
                                                        j2 = jA2;
                                                    }
                                                    return s72.a(xmlPullParser.getName(), j4, j2, v72VarA, strArr, str, strSubstring, s72Var);
                                                }

                                                /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
                                                private static v72 a(XmlPullParser xmlPullParser, v72 v72Var) {
                                                    byte b2;
                                                    int attributeCount = xmlPullParser.getAttributeCount();
                                                    v72 v72VarA = v72Var;
                                                    for (int i = 0; i < attributeCount; i++) {
                                                        String attributeValue = xmlPullParser.getAttributeValue(i);
                                                        String attributeName = xmlPullParser.getAttributeName(i);
                                                        attributeName.getClass();
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
                                                                v72VarA = a(v72VarA).b(TtmlNode.ITALIC.equalsIgnoreCase(attributeValue));
                                                                break;
                                                            case 1:
                                                                v72VarA = a(v72VarA).a(attributeValue);
                                                                break;
                                                            case 2:
                                                                v72VarA = a(v72VarA).b(b(attributeValue));
                                                                break;
                                                            case 3:
                                                                String strB = fg.b(attributeValue);
                                                                strB.getClass();
                                                                switch (strB) {
                                                                    case "nounderline":
                                                                        v72VarA = a(v72VarA).e(false);
                                                                        break;
                                                                    case "underline":
                                                                        v72VarA = a(v72VarA).e(true);
                                                                        break;
                                                                    case "nolinethrough":
                                                                        v72VarA = a(v72VarA).c(false);
                                                                        break;
                                                                    case "linethrough":
                                                                        v72VarA = a(v72VarA).c(true);
                                                                        break;
                                                                }
                                                                break;
                                                            case 4:
                                                                v72VarA = a(v72VarA).a(TtmlNode.BOLD.equalsIgnoreCase(attributeValue));
                                                                break;
                                                            case 5:
                                                                if ("style".equals(xmlPullParser.getName())) {
                                                                    v72VarA = a(v72VarA).b(attributeValue);
                                                                }
                                                                break;
                                                            case 6:
                                                                String strB2 = fg.b(attributeValue);
                                                                strB2.getClass();
                                                                switch (strB2) {
                                                                    case "baseContainer":
                                                                    case "base":
                                                                        v72VarA = a(v72VarA).e(2);
                                                                        break;
                                                                    case "container":
                                                                        v72VarA = a(v72VarA).e(1);
                                                                        break;
                                                                    case "delimiter":
                                                                        v72VarA = a(v72VarA).e(4);
                                                                        break;
                                                                    case "textContainer":
                                                                    case "text":
                                                                        v72VarA = a(v72VarA).e(3);
                                                                        break;
                                                                }
                                                                break;
                                                            case 7:
                                                                v72VarA = a(v72VarA);
                                                                try {
                                                                    v72VarA.b(sq.b(attributeValue));
                                                                } catch (IllegalArgumentException unused) {
                                                                    rv0.a("Failed parsing color value: ", attributeValue, "TtmlDecoder");
                                                                }
                                                                break;
                                                            case 8:
                                                                v72 v72VarA2 = a(v72VarA);
                                                                Matcher matcher = q.matcher(attributeValue);
                                                                float fMin = Float.MAX_VALUE;
                                                                if (!matcher.matches()) {
                                                                    rv0.a("Invalid value for shear: ", attributeValue, "TtmlDecoder");
                                                                } else {
                                                                    try {
                                                                        String strGroup = matcher.group(1);
                                                                        strGroup.getClass();
                                                                        fMin = Math.min(100.0f, Math.max(-100.0f, Float.parseFloat(strGroup)));
                                                                    } catch (NumberFormatException e) {
                                                                        et0.b("TtmlDecoder", "Failed to parse shear: " + attributeValue, e);
                                                                    }
                                                                }
                                                                v72VarA = v72VarA2.b(fMin);
                                                                break;
                                                            case 9:
                                                                String strB3 = fg.b(attributeValue);
                                                                strB3.getClass();
                                                                if (strB3.equals(TtmlNode.COMBINE_ALL)) {
                                                                    v72VarA = a(v72VarA).d(true);
                                                                } else if (strB3.equals("none")) {
                                                                    v72VarA = a(v72VarA).d(false);
                                                                }
                                                                break;
                                                            case 10:
                                                                try {
                                                                    v72VarA = a(v72VarA);
                                                                    a(attributeValue, v72VarA);
                                                                } catch (p32 unused2) {
                                                                    rv0.a("Failed parsing fontSize value: ", attributeValue, "TtmlDecoder");
                                                                }
                                                                break;
                                                            case 11:
                                                                v72VarA = a(v72VarA).a(r42.a(attributeValue));
                                                                break;
                                                            case 12:
                                                                String strB4 = fg.b(attributeValue);
                                                                strB4.getClass();
                                                                if (strB4.equals(TtmlNode.ANNOTATION_POSITION_BEFORE)) {
                                                                    v72VarA = a(v72VarA).d(1);
                                                                } else if (strB4.equals(TtmlNode.ANNOTATION_POSITION_AFTER)) {
                                                                    v72VarA = a(v72VarA).d(2);
                                                                }
                                                                break;
                                                            case 13:
                                                                v72VarA = a(v72VarA);
                                                                try {
                                                                    v72VarA.a(sq.b(attributeValue));
                                                                } catch (IllegalArgumentException unused3) {
                                                                    rv0.a("Failed parsing background value: ", attributeValue, "TtmlDecoder");
                                                                }
                                                                break;
                                                            case 14:
                                                                v72VarA = a(v72VarA).a(b(attributeValue));
                                                                break;
                                                        }
                                                    }
                                                    return v72VarA;
                                                }

                                                private static long a(String str, b bVar) throws p32 {
                                                    double d;
                                                    double d2;
                                                    byte b2 = 4;
                                                    Matcher matcher = n.matcher(str);
                                                    if (matcher.matches()) {
                                                        String strGroup = matcher.group(1);
                                                        strGroup.getClass();
                                                        double d3 = Long.parseLong(strGroup) * 3600;
                                                        String strGroup2 = matcher.group(2);
                                                        strGroup2.getClass();
                                                        double d4 = d3 + (Long.parseLong(strGroup2) * 60);
                                                        String strGroup3 = matcher.group(3);
                                                        strGroup3.getClass();
                                                        double d5 = d4 + Long.parseLong(strGroup3);
                                                        String strGroup4 = matcher.group(4);
                                                        double d6 = d5 + (strGroup4 != null ? Double.parseDouble(strGroup4) : 0.0d);
                                                        String strGroup5 = matcher.group(5);
                                                        double d7 = d6 + (strGroup5 != null ? Long.parseLong(strGroup5) / bVar.a : 0.0d);
                                                        String strGroup6 = matcher.group(6);
                                                        return (long) ((d7 + (strGroup6 != null ? (Long.parseLong(strGroup6) / ((double) bVar.b)) / ((double) bVar.a) : 0.0d)) * 1000000.0d);
                                                    }
                                                    Matcher matcher2 = o.matcher(str);
                                                    if (matcher2.matches()) {
                                                        String strGroup7 = matcher2.group(1);
                                                        strGroup7.getClass();
                                                        double d8 = Double.parseDouble(strGroup7);
                                                        String strGroup8 = matcher2.group(2);
                                                        strGroup8.getClass();
                                                        switch (strGroup8.hashCode()) {
                                                            case 102:
                                                                b2 = !strGroup8.equals("f") ? (byte) -1 : (byte) 0;
                                                                break;
                                                            case 104:
                                                                b2 = !strGroup8.equals(CmcdData.STREAMING_FORMAT_HLS) ? (byte) -1 : (byte) 1;
                                                                break;
                                                            case 109:
                                                                b2 = !strGroup8.equals(CmcdData.OBJECT_TYPE_MANIFEST) ? (byte) -1 : (byte) 2;
                                                                break;
                                                            case 116:
                                                                b2 = !strGroup8.equals("t") ? (byte) -1 : (byte) 3;
                                                                break;
                                                            case 3494:
                                                                if (!strGroup8.equals("ms")) {
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
                                                                d8 /= d;
                                                                return (long) (d8 * 1000000.0d);
                                                            case 1:
                                                                d2 = 3600.0d;
                                                                break;
                                                            case 2:
                                                                d2 = 60.0d;
                                                                break;
                                                            case 3:
                                                                d = bVar.c;
                                                                d8 /= d;
                                                                return (long) (d8 * 1000000.0d);
                                                            case 4:
                                                                d = 1000.0d;
                                                                d8 /= d;
                                                                return (long) (d8 * 1000000.0d);
                                                            default:
                                                                return (long) (d8 * 1000000.0d);
                                                        }
                                                        d8 *= d2;
                                                        return (long) (d8 * 1000000.0d);
                                                    }
                                                    throw new p32("Malformed time expression: " + str);
                                                }
                                            }
