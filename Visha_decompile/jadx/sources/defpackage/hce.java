package defpackage;

import androidx.media3.common.MimeTypes;
import com.google.android.gms.internal.ads.zzaz;
import com.google.android.gms.internal.ads.zzfww;
import java.io.IOException;
import java.io.StringReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

public abstract class hce {
    public static final String[] a = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};
    public static final String[] b = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};
    public static final String[] c = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    public static dce a(String str) {
        long j;
        try {
            XmlPullParser xmlPullParserNewPullParser = XmlPullParserFactory.newInstance().newPullParser();
            xmlPullParserNewPullParser.setInput(new StringReader(str));
            xmlPullParserNewPullParser.next();
            if (!mgh.c(xmlPullParserNewPullParser, "x:xmpmeta")) {
                throw zzaz.zza("Couldn't find xmp metadata", null);
            }
            zzfww zzfwwVarZzn = zzfww.zzn();
            long j2 = -9223372036854775807L;
            do {
                xmlPullParserNewPullParser.next();
                if (mgh.c(xmlPullParserNewPullParser, "rdf:Description")) {
                    String[] strArr = a;
                    int i = 0;
                    for (int i2 = 0; i2 < 4; i2++) {
                        String strA = mgh.a(xmlPullParserNewPullParser, strArr[i2]);
                        if (strA != null) {
                            if (Integer.parseInt(strA) != 1) {
                                return null;
                            }
                            String[] strArr2 = b;
                            int i3 = 0;
                            while (true) {
                                if (i3 < 4) {
                                    String strA2 = mgh.a(xmlPullParserNewPullParser, strArr2[i3]);
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
                                    zzfwwVarZzn = zzfww.zzn();
                                    break;
                                }
                                String strA3 = mgh.a(xmlPullParserNewPullParser, strArr3[i]);
                                if (strA3 != null) {
                                    zzfwwVarZzn = zzfww.zzp(new cce("image/jpeg", "Primary", 0L, 0L), new cce(MimeTypes.VIDEO_MP4, "MotionPhoto", Long.parseLong(strA3), 0L));
                                    break;
                                }
                                i++;
                            }
                            j2 = j;
                        }
                    }
                    return null;
                }
                if (mgh.c(xmlPullParserNewPullParser, "Container:Directory")) {
                    zzfwwVarZzn = b(xmlPullParserNewPullParser, "Container", "Item");
                } else if (mgh.c(xmlPullParserNewPullParser, "GContainer:Directory")) {
                    zzfwwVarZzn = b(xmlPullParserNewPullParser, "GContainer", "GContainerItem");
                }
            } while (!mgh.b(xmlPullParserNewPullParser, "x:xmpmeta"));
            if (zzfwwVarZzn.isEmpty()) {
                return null;
            }
            return new dce(j2, zzfwwVarZzn);
        } catch (zzaz | NumberFormatException | XmlPullParserException unused) {
            zrg.f("MotionPhotoXmpParser", "Ignoring unexpected XMP metadata");
            return null;
        }
    }

    public static zzfww b(XmlPullParser xmlPullParser, String str, String str2) throws XmlPullParserException, IOException {
        int i = zzfww.zzd;
        l4i l4iVar = new l4i();
        do {
            String strConcat = str.concat(":Item");
            xmlPullParser.next();
            if (mgh.c(xmlPullParser, strConcat)) {
                String strConcat2 = str2.concat(":Mime");
                String strConcat3 = str2.concat(":Semantic");
                String strConcat4 = str2.concat(":Length");
                String strConcat5 = str2.concat(":Padding");
                String strA = mgh.a(xmlPullParser, strConcat2);
                String strA2 = mgh.a(xmlPullParser, strConcat3);
                String strA3 = mgh.a(xmlPullParser, strConcat4);
                String strA4 = mgh.a(xmlPullParser, strConcat5);
                if (strA == null || strA2 == null) {
                    return zzfww.zzn();
                }
                l4iVar.g(new cce(strA, strA2, strA3 != null ? Long.parseLong(strA3) : 0L, strA4 != null ? Long.parseLong(strA4) : 0L));
            }
        } while (!mgh.b(xmlPullParser, str.concat(":Directory")));
        return l4iVar.j();
    }
}
