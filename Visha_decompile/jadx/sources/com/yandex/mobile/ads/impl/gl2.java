package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import androidx.media3.common.MimeTypes;
import java.io.IOException;
import java.io.StringReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

final class gl2 {
    private static final String[] a = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};
    private static final String[] b = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};
    private static final String[] c = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    @Nullable
    public static y11 a(String str) throws IOException {
        try {
            return b(str);
        } catch (eg1 | NumberFormatException | XmlPullParserException unused) {
            et0.d("MotionPhotoXmpParser", "Ignoring unexpected XMP metadata");
            return null;
        }
    }

    @Nullable
    private static y11 b(String str) throws XmlPullParserException, IOException {
        long j;
        XmlPullParser xmlPullParserNewPullParser = XmlPullParserFactory.newInstance().newPullParser();
        xmlPullParserNewPullParser.setInput(new StringReader(str));
        xmlPullParserNewPullParser.next();
        if (!fl2.c(xmlPullParserNewPullParser, "x:xmpmeta")) {
            throw eg1.a("Couldn't find xmp metadata", (Exception) null);
        }
        kk0<y11.a> kk0VarH = kk0.h();
        long j2 = -9223372036854775807L;
        loop0: do {
            xmlPullParserNewPullParser.next();
            if (fl2.c(xmlPullParserNewPullParser, "rdf:Description")) {
                String[] strArr = a;
                int i = 0;
                for (int i2 = 0; i2 < 4; i2++) {
                    String strA = fl2.a(xmlPullParserNewPullParser, strArr[i2]);
                    if (strA != null) {
                        if (Integer.parseInt(strA) != 1) {
                            break loop0;
                        }
                        String[] strArr2 = b;
                        int i3 = 0;
                        while (true) {
                            if (i3 < 4) {
                                String strA2 = fl2.a(xmlPullParserNewPullParser, strArr2[i3]);
                                if (strA2 != null) {
                                    j = Long.parseLong(strA2);
                                    if (j != -1) {
                                        break;
                                    }
                                    break;
                                }
                                i3++;
                            }
                            j = -9223372036854775807L;
                            break;
                        }
                        String[] strArr3 = c;
                        while (true) {
                            if (i >= 2) {
                                kk0VarH = kk0.h();
                                break;
                            }
                            String strA3 = fl2.a(xmlPullParserNewPullParser, strArr3[i]);
                            if (strA3 != null) {
                                kk0VarH = kk0.a(new y11.a("image/jpeg", 0L, 0L), new y11.a(MimeTypes.VIDEO_MP4, Long.parseLong(strA3), 0L));
                                break;
                            }
                            i++;
                        }
                        j2 = j;
                    }
                }
                return null;
            }
            if (fl2.c(xmlPullParserNewPullParser, "Container:Directory")) {
                kk0VarH = a(xmlPullParserNewPullParser, "Container", "Item");
            } else if (fl2.c(xmlPullParserNewPullParser, "GContainer:Directory")) {
                kk0VarH = a(xmlPullParserNewPullParser, "GContainer", "GContainerItem");
            }
        } while (!fl2.b(xmlPullParserNewPullParser, "x:xmpmeta"));
        if (kk0VarH.isEmpty()) {
            return null;
        }
        return new y11(j2, kk0VarH);
    }

    private static kk0<y11.a> a(XmlPullParser xmlPullParser, String str, String str2) throws XmlPullParserException, IOException {
        int i = kk0.d;
        kk0.a aVar = new kk0.a();
        String strConcat = str.concat(":Item");
        String strConcat2 = str.concat(":Directory");
        do {
            xmlPullParser.next();
            if (fl2.c(xmlPullParser, strConcat)) {
                String strConcat3 = str2.concat(":Mime");
                String strConcat4 = str2.concat(":Semantic");
                String strConcat5 = str2.concat(":Length");
                String strConcat6 = str2.concat(":Padding");
                String strA = fl2.a(xmlPullParser, strConcat3);
                String strA2 = fl2.a(xmlPullParser, strConcat4);
                String strA3 = fl2.a(xmlPullParser, strConcat5);
                String strA4 = fl2.a(xmlPullParser, strConcat6);
                if (strA != null && strA2 != null) {
                    aVar.b(new y11.a(strA, strA3 != null ? Long.parseLong(strA3) : 0L, strA4 != null ? Long.parseLong(strA4) : 0L));
                } else {
                    return kk0.h();
                }
            }
        } while (!fl2.b(xmlPullParser, strConcat2));
        return aVar.a();
    }
}
