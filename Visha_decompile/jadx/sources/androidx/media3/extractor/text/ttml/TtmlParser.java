package androidx.media3.extractor.text.ttml;

import android.text.Layout;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ColorParser;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.common.util.XmlPullParserUtil;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.CuesWithTiming;
import androidx.media3.extractor.text.LegacySubtitleUtil;
import androidx.media3.extractor.text.Subtitle;
import androidx.media3.extractor.text.SubtitleDecoderException;
import androidx.media3.extractor.text.SubtitleParser;
import com.alibaba.android.arouter.utils.Consts;
import defpackage.ui;
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

@UnstableApi
public final class TtmlParser implements SubtitleParser {
    private static final String ATTR_BEGIN = "begin";
    private static final String ATTR_DURATION = "dur";
    private static final String ATTR_END = "end";
    private static final String ATTR_IMAGE = "backgroundImage";
    private static final String ATTR_REGION = "region";
    private static final String ATTR_STYLE = "style";
    public static final int CUE_REPLACEMENT_BEHAVIOR = 1;
    private static final int DEFAULT_CELL_ROWS = 15;
    private static final int DEFAULT_FRAME_RATE = 30;
    private static final String TAG = "TtmlParser";
    private static final String TTP = "http://www.w3.org/ns/ttml#parameter";
    private final XmlPullParserFactory xmlParserFactory;
    private static final Pattern CLOCK_TIME = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");
    private static final Pattern OFFSET_TIME = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");
    private static final Pattern FONT_SIZE = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");
    static final Pattern SIGNED_PERCENTAGE = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");
    static final Pattern PERCENTAGE_COORDINATES = Pattern.compile("^([-+]?\\d+\\.?\\d*?)% ([-+]?\\d+\\.?\\d*?)%$");
    private static final Pattern PIXEL_COORDINATES = Pattern.compile("^([-+]?\\d+\\.?\\d*?)px ([-+]?\\d+\\.?\\d*?)px$");
    private static final Pattern CELL_RESOLUTION = Pattern.compile("^(\\d+) (\\d+)$");
    private static final FrameAndTickRate DEFAULT_FRAME_AND_TICK_RATE = new FrameAndTickRate(30.0f, 1, 1);

    public static final class FrameAndTickRate {
        final float effectiveFrameRate;
        final int subFrameRate;
        final int tickRate;

        public FrameAndTickRate(float f, int i, int i2) {
            this.effectiveFrameRate = f;
            this.subFrameRate = i;
            this.tickRate = i2;
        }
    }

    public static final class TtsExtent {
        final int height;
        final int width;

        public TtsExtent(int i, int i2) {
            this.width = i;
            this.height = i2;
        }
    }

    public TtmlParser() {
        try {
            XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
            this.xmlParserFactory = xmlPullParserFactoryNewInstance;
            xmlPullParserFactoryNewInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }

    private static TtmlStyle createIfNull(@Nullable TtmlStyle ttmlStyle) {
        return ttmlStyle == null ? new TtmlStyle() : ttmlStyle;
    }

    private static boolean isSupportedTag(String str) {
        return str.equals(TtmlNode.TAG_TT) || str.equals("head") || str.equals(TtmlNode.TAG_BODY) || str.equals(TtmlNode.TAG_DIV) || str.equals(TtmlNode.TAG_P) || str.equals(TtmlNode.TAG_SPAN) || str.equals("br") || str.equals("style") || str.equals(TtmlNode.TAG_STYLING) || str.equals(TtmlNode.TAG_LAYOUT) || str.equals("region") || str.equals(TtmlNode.TAG_METADATA) || str.equals("image") || str.equals("data") || str.equals(TtmlNode.TAG_INFORMATION);
    }

    @Nullable
    private static Layout.Alignment parseAlignment(String str) {
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

    private static int parseCellRows(XmlPullParser xmlPullParser, int i) {
        String attributeValue = xmlPullParser.getAttributeValue(TTP, "cellResolution");
        if (attributeValue == null) {
            return i;
        }
        Matcher matcher = CELL_RESOLUTION.matcher(attributeValue);
        if (!matcher.matches()) {
            Log.w(TAG, "Ignoring malformed cell resolution: " + attributeValue);
            return i;
        }
        boolean z = true;
        try {
            int i2 = Integer.parseInt((String) Assertions.checkNotNull(matcher.group(1)));
            int i3 = Integer.parseInt((String) Assertions.checkNotNull(matcher.group(2)));
            if (i2 == 0 || i3 == 0) {
                z = false;
            }
            Assertions.checkArgument(z, "Invalid cell resolution " + i2 + " " + i3);
            return i3;
        } catch (NumberFormatException unused) {
            Log.w(TAG, "Ignoring malformed cell resolution: " + attributeValue);
            return i;
        }
    }

    private static void parseFontSize(String str, TtmlStyle ttmlStyle) throws SubtitleDecoderException {
        Matcher matcher;
        String[] strArrSplit = Util.split(str, "\\s+");
        if (strArrSplit.length == 1) {
            matcher = FONT_SIZE.matcher(str);
        } else {
            if (strArrSplit.length != 2) {
                throw new SubtitleDecoderException("Invalid number of entries for fontSize: " + strArrSplit.length + Consts.DOT);
            }
            matcher = FONT_SIZE.matcher(strArrSplit[1]);
            Log.w(TAG, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        }
        if (!matcher.matches()) {
            throw new SubtitleDecoderException("Invalid expression for fontSize: '" + str + "'.");
        }
        String str2 = (String) Assertions.checkNotNull(matcher.group(3));
        str2.hashCode();
        switch (str2) {
            case "%":
                ttmlStyle.setFontSizeUnit(3);
                break;
            case "em":
                ttmlStyle.setFontSizeUnit(2);
                break;
            case "px":
                ttmlStyle.setFontSizeUnit(1);
                break;
            default:
                throw new SubtitleDecoderException("Invalid unit for fontSize: '" + str2 + "'.");
        }
        ttmlStyle.setFontSize(Float.parseFloat((String) Assertions.checkNotNull(matcher.group(1))));
    }

    private static FrameAndTickRate parseFrameAndTickRates(XmlPullParser xmlPullParser) {
        float f;
        String attributeValue = xmlPullParser.getAttributeValue(TTP, "frameRate");
        int i = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
        String attributeValue2 = xmlPullParser.getAttributeValue(TTP, "frameRateMultiplier");
        if (attributeValue2 != null) {
            String[] strArrSplit = Util.split(attributeValue2, " ");
            Assertions.checkArgument(strArrSplit.length == 2, "frameRateMultiplier doesn't have 2 parts");
            f = Integer.parseInt(strArrSplit[0]) / Integer.parseInt(strArrSplit[1]);
        } else {
            f = 1.0f;
        }
        FrameAndTickRate frameAndTickRate = DEFAULT_FRAME_AND_TICK_RATE;
        int i2 = frameAndTickRate.subFrameRate;
        String attributeValue3 = xmlPullParser.getAttributeValue(TTP, "subFrameRate");
        if (attributeValue3 != null) {
            i2 = Integer.parseInt(attributeValue3);
        }
        int i3 = frameAndTickRate.tickRate;
        String attributeValue4 = xmlPullParser.getAttributeValue(TTP, "tickRate");
        if (attributeValue4 != null) {
            i3 = Integer.parseInt(attributeValue4);
        }
        return new FrameAndTickRate(i * f, i2, i3);
    }

    private static Map<String, TtmlStyle> parseHeader(XmlPullParser xmlPullParser, Map<String, TtmlStyle> map, int i, @Nullable TtsExtent ttsExtent, Map<String, TtmlRegion> map2, Map<String, String> map3) throws XmlPullParserException, IOException {
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, "style")) {
                String attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, "style");
                TtmlStyle styleAttributes = parseStyleAttributes(xmlPullParser, new TtmlStyle());
                if (attributeValue != null) {
                    for (String str : parseStyleIds(attributeValue)) {
                        styleAttributes.chain(map.get(str));
                    }
                }
                String id = styleAttributes.getId();
                if (id != null) {
                    map.put(id, styleAttributes);
                }
            } else if (XmlPullParserUtil.isStartTag(xmlPullParser, "region")) {
                TtmlRegion regionAttributes = parseRegionAttributes(xmlPullParser, i, ttsExtent, map);
                if (regionAttributes != null) {
                    map2.put(regionAttributes.id, regionAttributes);
                }
            } else if (XmlPullParserUtil.isStartTag(xmlPullParser, TtmlNode.TAG_METADATA)) {
                parseMetadata(xmlPullParser, map3);
            }
        } while (!XmlPullParserUtil.isEndTag(xmlPullParser, "head"));
        return map;
    }

    private static void parseMetadata(XmlPullParser xmlPullParser, Map<String, String> map) throws XmlPullParserException, IOException {
        String attributeValue;
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, "image") && (attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, TtmlNode.ATTR_ID)) != null) {
                map.put(attributeValue, xmlPullParser.nextText());
            }
        } while (!XmlPullParserUtil.isEndTag(xmlPullParser, TtmlNode.TAG_METADATA));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:67:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:6:0x0039  */
    private static TtmlNode parseNode(XmlPullParser xmlPullParser, @Nullable TtmlNode ttmlNode, Map<String, TtmlRegion> map, FrameAndTickRate frameAndTickRate) throws SubtitleDecoderException {
        long j;
        long j2;
        int attributeCount = xmlPullParser.getAttributeCount();
        TtmlStyle styleAttributes = parseStyleAttributes(xmlPullParser, null);
        String strSubstring = null;
        String str = "";
        long timeExpression = C.TIME_UNSET;
        long timeExpression2 = C.TIME_UNSET;
        long timeExpression3 = C.TIME_UNSET;
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
                    timeExpression3 = parseTimeExpression(attributeValue, frameAndTickRate);
                    break;
                case "end":
                    timeExpression2 = parseTimeExpression(attributeValue, frameAndTickRate);
                    break;
                case "begin":
                    timeExpression = parseTimeExpression(attributeValue, frameAndTickRate);
                    break;
                case "style":
                    String[] styleIds = parseStyleIds(attributeValue);
                    if (styleIds.length > 0) {
                        strArr = styleIds;
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
        if (ttmlNode != null) {
            long j3 = ttmlNode.startTimeUs;
            j = C.TIME_UNSET;
            if (j3 != C.TIME_UNSET) {
                if (timeExpression != C.TIME_UNSET) {
                    timeExpression += j3;
                }
                if (timeExpression2 != C.TIME_UNSET) {
                    timeExpression2 += j3;
                }
            }
        } else {
            j = C.TIME_UNSET;
        }
        long j4 = timeExpression;
        if (timeExpression2 != j) {
            j2 = timeExpression2;
        } else if (timeExpression3 != j) {
            j2 = j4 + timeExpression3;
        } else if (ttmlNode != null) {
            long j5 = ttmlNode.endTimeUs;
            if (j5 != j) {
                j2 = j5;
            } else {
                j2 = timeExpression2;
            }
        } else {
            j2 = timeExpression2;
        }
        return TtmlNode.buildNode(xmlPullParser.getName(), j4, j2, styleAttributes, strArr, str, strSubstring, ttmlNode);
    }

    /* JADX WARN: Code duplicated, block: B:68:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:90:0x023e  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Nullable
    private static TtmlRegion parseRegionAttributes(XmlPullParser xmlPullParser, int i, @Nullable TtsExtent ttsExtent, Map<String, TtmlStyle> map) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        int i2;
        int i3;
        float f6;
        String attributeValue;
        TtmlStyle ttmlStyle;
        String attributeValue2;
        TtmlStyle ttmlStyle2;
        int i4 = 1;
        String attributeValue3 = XmlPullParserUtil.getAttributeValue(xmlPullParser, TtmlNode.ATTR_ID);
        if (attributeValue3 == null) {
            return null;
        }
        String attributeValue4 = XmlPullParserUtil.getAttributeValue(xmlPullParser, "origin");
        if (attributeValue4 == null && (attributeValue2 = XmlPullParserUtil.getAttributeValue(xmlPullParser, "style")) != null && (ttmlStyle2 = map.get(attributeValue2)) != null) {
            attributeValue4 = ttmlStyle2.getOrigin();
        }
        if (attributeValue4 != null) {
            Matcher matcher = PERCENTAGE_COORDINATES.matcher(attributeValue4);
            Matcher matcher2 = PIXEL_COORDINATES.matcher(attributeValue4);
            if (matcher.matches()) {
                try {
                    f2 = Float.parseFloat((String) Assertions.checkNotNull(matcher.group(1))) / 100.0f;
                    f = Float.parseFloat((String) Assertions.checkNotNull(matcher.group(2))) / 100.0f;
                } catch (NumberFormatException unused) {
                    Log.w(TAG, "Ignoring region with malformed origin: " + attributeValue4);
                    return null;
                }
            } else {
                if (!matcher2.matches()) {
                    Log.w(TAG, "Ignoring region with unsupported origin: " + attributeValue4);
                    return null;
                }
                if (ttsExtent == null) {
                    Log.w(TAG, "Ignoring region with missing tts:extent: " + attributeValue4);
                    return null;
                }
                try {
                    int i5 = Integer.parseInt((String) Assertions.checkNotNull(matcher2.group(1)));
                    int i6 = Integer.parseInt((String) Assertions.checkNotNull(matcher2.group(2)));
                    float f7 = i5 / ttsExtent.width;
                    f = i6 / ttsExtent.height;
                    f2 = f7;
                } catch (NumberFormatException unused2) {
                    Log.w(TAG, "Ignoring region with malformed origin: " + attributeValue4);
                    return null;
                }
            }
        } else {
            f = 0.0f;
            f2 = 0.0f;
        }
        String attributeValue5 = XmlPullParserUtil.getAttributeValue(xmlPullParser, TtmlNode.ATTR_TTS_EXTENT);
        if (attributeValue5 == null && (attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, "style")) != null && (ttmlStyle = map.get(attributeValue)) != null) {
            attributeValue5 = ttmlStyle.getExtent();
        }
        if (attributeValue5 != null) {
            Matcher matcher3 = PERCENTAGE_COORDINATES.matcher(attributeValue5);
            Matcher matcher4 = PIXEL_COORDINATES.matcher(attributeValue5);
            if (matcher3.matches()) {
                try {
                    f6 = Float.parseFloat((String) Assertions.checkNotNull(matcher3.group(1))) / 100.0f;
                    f3 = Float.parseFloat((String) Assertions.checkNotNull(matcher3.group(2))) / 100.0f;
                } catch (NumberFormatException unused3) {
                    Log.w(TAG, "Ignoring region with malformed extent: " + attributeValue4);
                    return null;
                }
            } else {
                if (!matcher4.matches()) {
                    Log.w(TAG, "Ignoring region with unsupported extent: " + attributeValue4);
                    return null;
                }
                if (ttsExtent == null) {
                    Log.w(TAG, "Ignoring region with missing tts:extent: " + attributeValue4);
                    return null;
                }
                try {
                    int i7 = Integer.parseInt((String) Assertions.checkNotNull(matcher4.group(1)));
                    int i8 = Integer.parseInt((String) Assertions.checkNotNull(matcher4.group(2)));
                    float f8 = i7 / ttsExtent.width;
                    f3 = i8 / ttsExtent.height;
                    f6 = f8;
                } catch (NumberFormatException unused4) {
                    Log.w(TAG, "Ignoring region with malformed extent: " + attributeValue4);
                    return null;
                }
            }
            f4 = f6;
        } else {
            f3 = 1.0f;
            f4 = 1.0f;
        }
        String attributeValue6 = XmlPullParserUtil.getAttributeValue(xmlPullParser, TtmlNode.ATTR_TTS_DISPLAY_ALIGN);
        if (attributeValue6 != null) {
            String strE = ui.e(attributeValue6);
            strE.hashCode();
            if (strE.equals(TtmlNode.CENTER)) {
                f5 = f + (f3 / 2.0f);
                i2 = 1;
            } else if (strE.equals(TtmlNode.ANNOTATION_POSITION_AFTER)) {
                f5 = f + f3;
                i2 = 2;
            } else {
                f5 = f;
                i2 = 0;
            }
        } else {
            f5 = f;
            i2 = 0;
        }
        float f9 = 1.0f / i;
        String attributeValue7 = XmlPullParserUtil.getAttributeValue(xmlPullParser, TtmlNode.ATTR_TTS_WRITING_MODE);
        if (attributeValue7 != null) {
            String strE2 = ui.e(attributeValue7);
            strE2.hashCode();
            byte b = -1;
            switch (strE2.hashCode()) {
                case 3694:
                    if (strE2.equals("tb")) {
                        b = 0;
                    }
                    break;
                case 3553396:
                    if (strE2.equals(TtmlNode.VERTICAL_LR)) {
                        b = 1;
                    }
                    break;
                case 3553576:
                    if (strE2.equals(TtmlNode.VERTICAL_RL)) {
                        b = 2;
                    }
                    break;
            }
            switch (b) {
                case 0:
                case 1:
                    i3 = 2;
                    break;
                default:
                    i4 = Integer.MIN_VALUE;
                case 2:
                    i3 = i4;
                    break;
            }
        } else {
            i4 = Integer.MIN_VALUE;
            i3 = i4;
        }
        return new TtmlRegion(attributeValue3, f2, f5, 0, i2, f4, f3, 1, f9, i3);
    }

    private static float parseShear(String str) {
        Matcher matcher = SIGNED_PERCENTAGE.matcher(str);
        if (!matcher.matches()) {
            Log.w(TAG, "Invalid value for shear: " + str);
            return Float.MAX_VALUE;
        }
        try {
            return Math.min(100.0f, Math.max(-100.0f, Float.parseFloat((String) Assertions.checkNotNull(matcher.group(1)))));
        } catch (NumberFormatException e) {
            Log.w(TAG, "Failed to parse shear: " + str, e);
            return Float.MAX_VALUE;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static TtmlStyle parseStyleAttributes(XmlPullParser xmlPullParser, TtmlStyle ttmlStyle) {
        byte b;
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            String attributeValue = xmlPullParser.getAttributeValue(i);
            String attributeName = xmlPullParser.getAttributeName(i);
            attributeName.hashCode();
            switch (attributeName.hashCode()) {
                case -1550943582:
                    b = attributeName.equals(TtmlNode.ATTR_TTS_FONT_STYLE) ? (byte) 0 : (byte) -1;
                    break;
                case -1289044182:
                    b = attributeName.equals(TtmlNode.ATTR_TTS_EXTENT) ? (byte) 1 : (byte) -1;
                    break;
                case -1224696685:
                    b = attributeName.equals(TtmlNode.ATTR_TTS_FONT_FAMILY) ? (byte) 2 : (byte) -1;
                    break;
                case -1065511464:
                    b = attributeName.equals(TtmlNode.ATTR_TTS_TEXT_ALIGN) ? (byte) 3 : (byte) -1;
                    break;
                case -1008619738:
                    b = attributeName.equals("origin") ? (byte) 4 : (byte) -1;
                    break;
                case -879295043:
                    b = attributeName.equals(TtmlNode.ATTR_TTS_TEXT_DECORATION) ? (byte) 5 : (byte) -1;
                    break;
                case -734428249:
                    b = attributeName.equals(TtmlNode.ATTR_TTS_FONT_WEIGHT) ? (byte) 6 : (byte) -1;
                    break;
                case 3355:
                    b = attributeName.equals(TtmlNode.ATTR_ID) ? (byte) 7 : (byte) -1;
                    break;
                case 3511770:
                    b = attributeName.equals(TtmlNode.ATTR_TTS_RUBY) ? (byte) 8 : (byte) -1;
                    break;
                case 94842723:
                    b = attributeName.equals("color") ? (byte) 9 : (byte) -1;
                    break;
                case 109403361:
                    b = attributeName.equals(TtmlNode.ATTR_TTS_SHEAR) ? (byte) 10 : (byte) -1;
                    break;
                case 110138194:
                    b = attributeName.equals(TtmlNode.ATTR_TTS_TEXT_COMBINE) ? ByteCode.T_LONG : (byte) -1;
                    break;
                case 365601008:
                    b = attributeName.equals(TtmlNode.ATTR_TTS_FONT_SIZE) ? (byte) 12 : (byte) -1;
                    break;
                case 921125321:
                    b = attributeName.equals(TtmlNode.ATTR_TTS_TEXT_EMPHASIS) ? (byte) 13 : (byte) -1;
                    break;
                case 1115953443:
                    b = attributeName.equals(TtmlNode.ATTR_TTS_RUBY_POSITION) ? (byte) 14 : (byte) -1;
                    break;
                case 1287124693:
                    b = attributeName.equals(TtmlNode.ATTR_TTS_BACKGROUND_COLOR) ? (byte) 15 : (byte) -1;
                    break;
                case 1754920356:
                    b = attributeName.equals(TtmlNode.ATTR_EBUTTS_MULTI_ROW_ALIGN) ? (byte) 16 : (byte) -1;
                    break;
                default:
                    b = -1;
                    break;
            }
            switch (b) {
                case 0:
                    ttmlStyle = createIfNull(ttmlStyle).setItalic(TtmlNode.ITALIC.equalsIgnoreCase(attributeValue));
                    break;
                case 1:
                    ttmlStyle = createIfNull(ttmlStyle).setExtent(attributeValue);
                    break;
                case 2:
                    ttmlStyle = createIfNull(ttmlStyle).setFontFamily(attributeValue);
                    break;
                case 3:
                    ttmlStyle = createIfNull(ttmlStyle).setTextAlign(parseAlignment(attributeValue));
                    break;
                case 4:
                    ttmlStyle = createIfNull(ttmlStyle).setOrigin(attributeValue);
                    break;
                case 5:
                    String strE = ui.e(attributeValue);
                    strE.hashCode();
                    switch (strE) {
                        case "nounderline":
                            ttmlStyle = createIfNull(ttmlStyle).setUnderline(false);
                            break;
                        case "underline":
                            ttmlStyle = createIfNull(ttmlStyle).setUnderline(true);
                            break;
                        case "nolinethrough":
                            ttmlStyle = createIfNull(ttmlStyle).setLinethrough(false);
                            break;
                        case "linethrough":
                            ttmlStyle = createIfNull(ttmlStyle).setLinethrough(true);
                            break;
                    }
                    break;
                case 6:
                    ttmlStyle = createIfNull(ttmlStyle).setBold(TtmlNode.BOLD.equalsIgnoreCase(attributeValue));
                    break;
                case 7:
                    if ("style".equals(xmlPullParser.getName())) {
                        ttmlStyle = createIfNull(ttmlStyle).setId(attributeValue);
                    }
                    break;
                case 8:
                    String strE2 = ui.e(attributeValue);
                    strE2.hashCode();
                    switch (strE2) {
                        case "baseContainer":
                        case "base":
                            ttmlStyle = createIfNull(ttmlStyle).setRubyType(2);
                            break;
                        case "container":
                            ttmlStyle = createIfNull(ttmlStyle).setRubyType(1);
                            break;
                        case "delimiter":
                            ttmlStyle = createIfNull(ttmlStyle).setRubyType(4);
                            break;
                        case "textContainer":
                        case "text":
                            ttmlStyle = createIfNull(ttmlStyle).setRubyType(3);
                            break;
                    }
                    break;
                case 9:
                    ttmlStyle = createIfNull(ttmlStyle);
                    try {
                        ttmlStyle.setFontColor(ColorParser.parseTtmlColor(attributeValue));
                    } catch (IllegalArgumentException unused) {
                        Log.w(TAG, "Failed parsing color value: " + attributeValue);
                    }
                    break;
                case 10:
                    ttmlStyle = createIfNull(ttmlStyle).setShearPercentage(parseShear(attributeValue));
                    break;
                case 11:
                    String strE3 = ui.e(attributeValue);
                    strE3.hashCode();
                    if (strE3.equals(TtmlNode.COMBINE_ALL)) {
                        ttmlStyle = createIfNull(ttmlStyle).setTextCombine(true);
                    } else if (strE3.equals("none")) {
                        ttmlStyle = createIfNull(ttmlStyle).setTextCombine(false);
                    }
                    break;
                case 12:
                    try {
                        ttmlStyle = createIfNull(ttmlStyle);
                        parseFontSize(attributeValue, ttmlStyle);
                    } catch (SubtitleDecoderException unused2) {
                        Log.w(TAG, "Failed parsing fontSize value: " + attributeValue);
                    }
                    break;
                case 13:
                    ttmlStyle = createIfNull(ttmlStyle).setTextEmphasis(TextEmphasis.parse(attributeValue));
                    break;
                case 14:
                    String strE4 = ui.e(attributeValue);
                    strE4.hashCode();
                    if (strE4.equals(TtmlNode.ANNOTATION_POSITION_BEFORE)) {
                        ttmlStyle = createIfNull(ttmlStyle).setRubyPosition(1);
                    } else if (strE4.equals(TtmlNode.ANNOTATION_POSITION_AFTER)) {
                        ttmlStyle = createIfNull(ttmlStyle).setRubyPosition(2);
                    }
                    break;
                case 15:
                    ttmlStyle = createIfNull(ttmlStyle);
                    try {
                        ttmlStyle.setBackgroundColor(ColorParser.parseTtmlColor(attributeValue));
                    } catch (IllegalArgumentException unused3) {
                        Log.w(TAG, "Failed parsing background value: " + attributeValue);
                    }
                    break;
                case 16:
                    ttmlStyle = createIfNull(ttmlStyle).setMultiRowAlign(parseAlignment(attributeValue));
                    break;
            }
        }
        return ttmlStyle;
    }

    private static String[] parseStyleIds(String str) {
        String strTrim = str.trim();
        return strTrim.isEmpty() ? new String[0] : Util.split(strTrim, "\\s+");
    }

    private static long parseTimeExpression(String str, FrameAndTickRate frameAndTickRate) throws SubtitleDecoderException {
        double d;
        double d2;
        byte b = 4;
        Matcher matcher = CLOCK_TIME.matcher(str);
        if (matcher.matches()) {
            double d3 = (Long.parseLong((String) Assertions.checkNotNull(matcher.group(1))) * 3600) + (Long.parseLong((String) Assertions.checkNotNull(matcher.group(2))) * 60) + Long.parseLong((String) Assertions.checkNotNull(matcher.group(3)));
            String strGroup = matcher.group(4);
            double d4 = d3 + (strGroup != null ? Double.parseDouble(strGroup) : 0.0d);
            String strGroup2 = matcher.group(5);
            double d5 = d4 + (strGroup2 != null ? Long.parseLong(strGroup2) / frameAndTickRate.effectiveFrameRate : 0.0d);
            String strGroup3 = matcher.group(6);
            return (long) ((d5 + (strGroup3 != null ? (Long.parseLong(strGroup3) / ((double) frameAndTickRate.subFrameRate)) / ((double) frameAndTickRate.effectiveFrameRate) : 0.0d)) * 1000000.0d);
        }
        Matcher matcher2 = OFFSET_TIME.matcher(str);
        if (!matcher2.matches()) {
            throw new SubtitleDecoderException("Malformed time expression: " + str);
        }
        double d6 = Double.parseDouble((String) Assertions.checkNotNull(matcher2.group(1)));
        String str2 = (String) Assertions.checkNotNull(matcher2.group(2));
        str2.hashCode();
        switch (str2.hashCode()) {
            case 102:
                b = !str2.equals("f") ? (byte) -1 : (byte) 0;
                break;
            case 104:
                b = !str2.equals(CmcdData.STREAMING_FORMAT_HLS) ? (byte) -1 : (byte) 1;
                break;
            case 109:
                b = !str2.equals(CmcdData.OBJECT_TYPE_MANIFEST) ? (byte) -1 : (byte) 2;
                break;
            case 116:
                b = !str2.equals("t") ? (byte) -1 : (byte) 3;
                break;
            case 3494:
                if (!str2.equals("ms")) {
                    b = -1;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                d = frameAndTickRate.effectiveFrameRate;
                d6 /= d;
                return (long) (d6 * 1000000.0d);
            case 1:
                d2 = 3600.0d;
                break;
            case 2:
                d2 = 60.0d;
                break;
            case 3:
                d = frameAndTickRate.tickRate;
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

    @Nullable
    private static TtsExtent parseTtsExtent(XmlPullParser xmlPullParser) {
        String attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, TtmlNode.ATTR_TTS_EXTENT);
        if (attributeValue == null) {
            return null;
        }
        Matcher matcher = PIXEL_COORDINATES.matcher(attributeValue);
        if (!matcher.matches()) {
            Log.w(TAG, "Ignoring non-pixel tts extent: " + attributeValue);
            return null;
        }
        try {
            return new TtsExtent(Integer.parseInt((String) Assertions.checkNotNull(matcher.group(1))), Integer.parseInt((String) Assertions.checkNotNull(matcher.group(2))));
        } catch (NumberFormatException unused) {
            Log.w(TAG, "Ignoring malformed tts extent: " + attributeValue);
            return null;
        }
    }

    @Override
    public int getCueReplacementBehavior() {
        return 1;
    }

    @Override
    public void parse(byte[] bArr, int i, int i2, SubtitleParser.OutputOptions outputOptions, Consumer<CuesWithTiming> consumer) {
        LegacySubtitleUtil.toCuesWithTiming(parseToLegacySubtitle(bArr, i, i2), outputOptions, consumer);
    }

    @Override
    public Subtitle parseToLegacySubtitle(byte[] bArr, int i, int i2) {
        FrameAndTickRate frameAndTickRate;
        try {
            XmlPullParser xmlPullParserNewPullParser = this.xmlParserFactory.newPullParser();
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            HashMap map3 = new HashMap();
            map2.put("", new TtmlRegion(""));
            TtsExtent ttsExtent = null;
            xmlPullParserNewPullParser.setInput(new ByteArrayInputStream(bArr, i, i2), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            FrameAndTickRate frameAndTickRates = DEFAULT_FRAME_AND_TICK_RATE;
            TtmlSubtitle ttmlSubtitle = null;
            int i3 = 0;
            int cellRows = 15;
            for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.getEventType()) {
                TtmlNode ttmlNode = (TtmlNode) arrayDeque.peek();
                if (i3 == 0) {
                    String name = xmlPullParserNewPullParser.getName();
                    if (eventType == 2) {
                        if (TtmlNode.TAG_TT.equals(name)) {
                            frameAndTickRates = parseFrameAndTickRates(xmlPullParserNewPullParser);
                            cellRows = parseCellRows(xmlPullParserNewPullParser, 15);
                            ttsExtent = parseTtsExtent(xmlPullParserNewPullParser);
                        }
                        TtsExtent ttsExtent2 = ttsExtent;
                        FrameAndTickRate frameAndTickRate2 = frameAndTickRates;
                        int i4 = cellRows;
                        if (isSupportedTag(name)) {
                            if ("head".equals(name)) {
                                frameAndTickRate = frameAndTickRate2;
                                parseHeader(xmlPullParserNewPullParser, map, i4, ttsExtent2, map2, map3);
                            } else {
                                frameAndTickRate = frameAndTickRate2;
                                try {
                                    TtmlNode node = parseNode(xmlPullParserNewPullParser, ttmlNode, map2, frameAndTickRate);
                                    arrayDeque.push(node);
                                    if (ttmlNode != null) {
                                        ttmlNode.addChild(node);
                                    }
                                } catch (SubtitleDecoderException e) {
                                    Log.w(TAG, "Suppressing parser error", e);
                                    i3++;
                                }
                            }
                            frameAndTickRates = frameAndTickRate;
                        } else {
                            Log.i(TAG, "Ignoring unsupported tag: " + xmlPullParserNewPullParser.getName());
                            i3++;
                            frameAndTickRates = frameAndTickRate2;
                        }
                        ttsExtent = ttsExtent2;
                        cellRows = i4;
                    } else if (eventType == 4) {
                        ((TtmlNode) Assertions.checkNotNull(ttmlNode)).addChild(TtmlNode.buildTextNode(xmlPullParserNewPullParser.getText()));
                    } else if (eventType == 3) {
                        if (xmlPullParserNewPullParser.getName().equals(TtmlNode.TAG_TT)) {
                            ttmlSubtitle = new TtmlSubtitle((TtmlNode) Assertions.checkNotNull((TtmlNode) arrayDeque.peek()), map, map2, map3);
                        }
                        arrayDeque.pop();
                    }
                } else if (eventType == 2) {
                    i3++;
                } else if (eventType == 3) {
                    i3--;
                }
                xmlPullParserNewPullParser.next();
            }
            return (Subtitle) Assertions.checkNotNull(ttmlSubtitle);
        } catch (IOException e2) {
            throw new IllegalStateException("Unexpected error when reading input.", e2);
        } catch (XmlPullParserException e3) {
            throw new IllegalStateException("Unable to decode source", e3);
        }
    }
}
