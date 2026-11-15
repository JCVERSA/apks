package n9;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.q0;
import com.google.android.exoplayer2.util.s;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.io.StringReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

abstract class e {

    private static final String[] f66978a = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};

    private static final String[] f66979b = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};

    private static final String[] f66980c = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    public static b a(String str) {
        try {
            return b(str);
        } catch (ParserException | NumberFormatException | XmlPullParserException unused) {
            s.i("MotionPhotoXmpParser", "Ignoring unexpected XMP metadata");
            return null;
        }
    }

    private static b b(String str) throws XmlPullParserException, IOException {
        XmlPullParser xmlPullParserNewPullParser = XmlPullParserFactory.newInstance().newPullParser();
        xmlPullParserNewPullParser.setInput(new StringReader(str));
        xmlPullParserNewPullParser.next();
        if (!q0.f(xmlPullParserNewPullParser, "x:xmpmeta")) {
            throw ParserException.createForMalformedContainer("Couldn't find xmp metadata", null);
        }
        ImmutableList immutableListOf = ImmutableList.of();
        long jE = C.TIME_UNSET;
        do {
            xmlPullParserNewPullParser.next();
            if (q0.f(xmlPullParserNewPullParser, "rdf:Description")) {
                if (!d(xmlPullParserNewPullParser)) {
                    return null;
                }
                jE = e(xmlPullParserNewPullParser);
                immutableListOf = c(xmlPullParserNewPullParser);
            } else if (q0.f(xmlPullParserNewPullParser, "Container:Directory")) {
                immutableListOf = f(xmlPullParserNewPullParser, "Container", "Item");
            } else if (q0.f(xmlPullParserNewPullParser, "GContainer:Directory")) {
                immutableListOf = f(xmlPullParserNewPullParser, "GContainer", "GContainerItem");
            }
        } while (!q0.d(xmlPullParserNewPullParser, "x:xmpmeta"));
        if (immutableListOf.isEmpty()) {
            return null;
        }
        return new b(jE, immutableListOf);
    }

    private static ImmutableList c(XmlPullParser xmlPullParser) {
        for (String str : f66980c) {
            String strA = q0.a(xmlPullParser, str);
            if (strA != null) {
                return ImmutableList.of(new b.a("image/jpeg", "Primary", 0L, 0L), new b.a(MimeTypes.VIDEO_MP4, "MotionPhoto", Long.parseLong(strA), 0L));
            }
        }
        return ImmutableList.of();
    }

    private static boolean d(XmlPullParser xmlPullParser) {
        for (String str : f66978a) {
            String strA = q0.a(xmlPullParser, str);
            if (strA != null) {
                return Integer.parseInt(strA) == 1;
            }
        }
        return false;
    }

    private static long e(XmlPullParser xmlPullParser) {
        for (String str : f66979b) {
            String strA = q0.a(xmlPullParser, str);
            if (strA != null) {
                long j10 = Long.parseLong(strA);
                return j10 == -1 ? C.TIME_UNSET : j10;
            }
        }
        return C.TIME_UNSET;
    }

    private static ImmutableList f(XmlPullParser xmlPullParser, String str, String str2) throws XmlPullParserException, IOException {
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        String str3 = str + ":Item";
        String str4 = str + ":Directory";
        do {
            xmlPullParser.next();
            if (q0.f(xmlPullParser, str3)) {
                String strA = q0.a(xmlPullParser, str2 + ":Mime");
                String strA2 = q0.a(xmlPullParser, str2 + ":Semantic");
                String strA3 = q0.a(xmlPullParser, str2 + ":Length");
                String strA4 = q0.a(xmlPullParser, str2 + ":Padding");
                if (strA == null || strA2 == null) {
                    return ImmutableList.of();
                }
                aVarBuilder.a(new b.a(strA, strA2, strA3 != null ? Long.parseLong(strA3) : 0L, strA4 != null ? Long.parseLong(strA4) : 0L));
            }
        } while (!q0.d(xmlPullParser, str4));
        return aVarBuilder.e();
    }
}
