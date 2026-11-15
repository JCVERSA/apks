package com.google.android.exoplayer2.source.smoothstreaming.manifest;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.upstream.b0;
import com.google.android.exoplayer2.util.f;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import q9.l;
import q9.p;

public class SsManifestParser implements b0.a {

    private final XmlPullParserFactory f25919a;

    public static class MissingFieldException extends ParserException {
        public MissingFieldException(String str) {
            super("Missing required field: " + str, null, true, 4);
        }
    }

    private static class b extends a {

        private boolean f25924e;

        private UUID f25925f;

        private byte[] f25926g;

        public b(a aVar, String str) {
            super(aVar, str, "Protection");
        }

        private static p[] q(byte[] bArr) {
            return new p[]{new p(true, null, 8, r(bArr), 0, 0, null)};
        }

        private static byte[] r(byte[] bArr) {
            StringBuilder sb2 = new StringBuilder();
            for (int i10 = 0; i10 < bArr.length; i10 += 2) {
                sb2.append((char) bArr[i10]);
            }
            String string = sb2.toString();
            byte[] bArrDecode = Base64.decode(string.substring(string.indexOf("<KID>") + 5, string.indexOf("</KID>")), 0);
            t(bArrDecode, 0, 3);
            t(bArrDecode, 1, 2);
            t(bArrDecode, 4, 5);
            t(bArrDecode, 6, 7);
            return bArrDecode;
        }

        private static String s(String str) {
            return (str.charAt(0) == '{' && str.charAt(str.length() - 1) == '}') ? str.substring(1, str.length() - 1) : str;
        }

        private static void t(byte[] bArr, int i10, int i11) {
            byte b10 = bArr[i10];
            bArr[i10] = bArr[i11];
            bArr[i11] = b10;
        }

        @Override
        public Object b() {
            UUID uuid = this.f25925f;
            return new com.google.android.exoplayer2.source.smoothstreaming.manifest.a.C0354a(uuid, l.a(uuid, this.f25926g), q(this.f25926g));
        }

        @Override
        public boolean d(String str) {
            return "ProtectionHeader".equals(str);
        }

        @Override
        public void h(XmlPullParser xmlPullParser) {
            if ("ProtectionHeader".equals(xmlPullParser.getName())) {
                this.f25924e = false;
            }
        }

        @Override
        public void n(XmlPullParser xmlPullParser) {
            if ("ProtectionHeader".equals(xmlPullParser.getName())) {
                this.f25924e = true;
                this.f25925f = UUID.fromString(s(xmlPullParser.getAttributeValue(null, "SystemID")));
            }
        }

        @Override
        public void o(XmlPullParser xmlPullParser) {
            if (this.f25924e) {
                this.f25926g = Base64.decode(xmlPullParser.getText(), 0);
            }
        }
    }

    private static class c extends a {

        private p1 f25927e;

        public c(a aVar, String str) {
            super(aVar, str, "QualityLevel");
        }

        private static List q(String str) {
            ArrayList arrayList = new ArrayList();
            if (!TextUtils.isEmpty(str)) {
                byte[] bArrJ = p0.J(str);
                byte[][] bArrJ2 = f.j(bArrJ);
                if (bArrJ2 == null) {
                    arrayList.add(bArrJ);
                } else {
                    Collections.addAll(arrayList, bArrJ2);
                }
            }
            return arrayList;
        }

        private static String r(String str) {
            if (str.equalsIgnoreCase("H264") || str.equalsIgnoreCase("X264") || str.equalsIgnoreCase("AVC1") || str.equalsIgnoreCase("DAVC")) {
                return MimeTypes.VIDEO_H264;
            }
            if (str.equalsIgnoreCase("AAC") || str.equalsIgnoreCase("AACL") || str.equalsIgnoreCase("AACH") || str.equalsIgnoreCase("AACP")) {
                return MimeTypes.AUDIO_AAC;
            }
            if (str.equalsIgnoreCase("TTML") || str.equalsIgnoreCase("DFXP")) {
                return MimeTypes.APPLICATION_TTML;
            }
            if (str.equalsIgnoreCase("ac-3") || str.equalsIgnoreCase("dac3")) {
                return MimeTypes.AUDIO_AC3;
            }
            if (str.equalsIgnoreCase("ec-3") || str.equalsIgnoreCase("dec3")) {
                return MimeTypes.AUDIO_E_AC3;
            }
            if (str.equalsIgnoreCase("dtsc")) {
                return MimeTypes.AUDIO_DTS;
            }
            if (str.equalsIgnoreCase("dtsh") || str.equalsIgnoreCase("dtsl")) {
                return MimeTypes.AUDIO_DTS_HD;
            }
            if (str.equalsIgnoreCase("dtse")) {
                return MimeTypes.AUDIO_DTS_EXPRESS;
            }
            if (str.equalsIgnoreCase("opus")) {
                return MimeTypes.AUDIO_OPUS;
            }
            return null;
        }

        @Override
        public Object b() {
            return this.f25927e;
        }

        /* JADX WARN: Code duplicated, block: B:27:0x00b0  */
        @Override
        public void n(XmlPullParser xmlPullParser) throws ParserException {
            int i10;
            p1.b bVar = new p1.b();
            String strR = r(m(xmlPullParser, "FourCC"));
            int iIntValue = ((Integer) c("Type")).intValue();
            if (iIntValue == 2) {
                bVar.K(MimeTypes.VIDEO_MP4).j0(k(xmlPullParser, "MaxWidth")).Q(k(xmlPullParser, "MaxHeight")).T(q(xmlPullParser.getAttributeValue(null, "CodecPrivateData")));
            } else if (iIntValue == 1) {
                if (strR == null) {
                    strR = MimeTypes.AUDIO_AAC;
                }
                int iK = k(xmlPullParser, "Channels");
                int iK2 = k(xmlPullParser, "SamplingRate");
                List listQ = q(xmlPullParser.getAttributeValue(null, "CodecPrivateData"));
                if (listQ.isEmpty() && MimeTypes.AUDIO_AAC.equals(strR)) {
                    listQ = Collections.singletonList(com.google.android.exoplayer2.audio.a.a(iK2, iK));
                }
                bVar.K(MimeTypes.AUDIO_MP4).H(iK).f0(iK2).T(listQ);
            } else if (iIntValue == 3) {
                String str = (String) c("Subtype");
                if (str == null) {
                    i10 = 0;
                } else if (str.equals("CAPT")) {
                    i10 = 64;
                } else if (str.equals("DESC")) {
                    i10 = 1024;
                } else {
                    i10 = 0;
                }
                bVar.K(MimeTypes.APPLICATION_MP4).c0(i10);
            } else {
                bVar.K(MimeTypes.APPLICATION_MP4);
            }
            this.f25927e = bVar.S(xmlPullParser.getAttributeValue(null, "Index")).U((String) c("Name")).e0(strR).G(k(xmlPullParser, "Bitrate")).V((String) c("Language")).E();
        }
    }

    private static class d extends a {

        private final List f25928e;

        private int f25929f;

        private int f25930g;

        private long f25931h;

        private long f25932i;

        private long f25933j;

        private int f25934k;

        private boolean f25935l;

        private com.google.android.exoplayer2.source.smoothstreaming.manifest.a.C0354a f25936m;

        public d(a aVar, String str) {
            super(aVar, str, "SmoothStreamingMedia");
            this.f25934k = -1;
            this.f25936m = null;
            this.f25928e = new LinkedList();
        }

        @Override
        public void a(Object obj) {
            if (obj instanceof com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b) {
                this.f25928e.add((com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b) obj);
            } else if (obj instanceof com.google.android.exoplayer2.source.smoothstreaming.manifest.a.C0354a) {
                com.google.android.exoplayer2.util.a.g(this.f25936m == null);
                this.f25936m = (com.google.android.exoplayer2.source.smoothstreaming.manifest.a.C0354a) obj;
            }
        }

        @Override
        public Object b() {
            int size = this.f25928e.size();
            com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b[] bVarArr = new com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b[size];
            this.f25928e.toArray(bVarArr);
            if (this.f25936m != null) {
                com.google.android.exoplayer2.source.smoothstreaming.manifest.a.C0354a c0354a = this.f25936m;
                DrmInitData drmInitData = new DrmInitData(new DrmInitData.SchemeData(c0354a.f25959a, MimeTypes.VIDEO_MP4, c0354a.f25960b));
                for (int i10 = 0; i10 < size; i10++) {
                    com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b bVar = bVarArr[i10];
                    int i11 = bVar.f25962a;
                    if (i11 == 2 || i11 == 1) {
                        p1[] p1VarArr = bVar.f25971j;
                        for (int i12 = 0; i12 < p1VarArr.length; i12++) {
                            p1VarArr[i12] = p1VarArr[i12].b().M(drmInitData).E();
                        }
                    }
                }
            }
            return new com.google.android.exoplayer2.source.smoothstreaming.manifest.a(this.f25929f, this.f25930g, this.f25931h, this.f25932i, this.f25933j, this.f25934k, this.f25935l, this.f25936m, bVarArr);
        }

        @Override
        public void n(XmlPullParser xmlPullParser) {
            this.f25929f = k(xmlPullParser, "MajorVersion");
            this.f25930g = k(xmlPullParser, "MinorVersion");
            this.f25931h = j(xmlPullParser, "TimeScale", 10000000L);
            this.f25932i = l(xmlPullParser, "Duration");
            this.f25933j = j(xmlPullParser, "DVRWindowLength", 0L);
            this.f25934k = i(xmlPullParser, "LookaheadCount", -1);
            this.f25935l = g(xmlPullParser, "IsLive", false);
            p("TimeScale", Long.valueOf(this.f25931h));
        }
    }

    private static class e extends a {

        private final String f25937e;

        private final List f25938f;

        private int f25939g;

        private String f25940h;

        private long f25941i;

        private String f25942j;

        private String f25943k;

        private int f25944l;

        private int f25945m;

        private int f25946n;

        private int f25947o;

        private String f25948p;

        private ArrayList f25949q;

        private long f25950r;

        public e(a aVar, String str) {
            super(aVar, str, "StreamIndex");
            this.f25937e = str;
            this.f25938f = new LinkedList();
        }

        private void q(XmlPullParser xmlPullParser) throws ParserException {
            int iS = s(xmlPullParser);
            this.f25939g = iS;
            p("Type", Integer.valueOf(iS));
            if (this.f25939g == 3) {
                this.f25940h = m(xmlPullParser, "Subtype");
            } else {
                this.f25940h = xmlPullParser.getAttributeValue(null, "Subtype");
            }
            p("Subtype", this.f25940h);
            String attributeValue = xmlPullParser.getAttributeValue(null, "Name");
            this.f25942j = attributeValue;
            p("Name", attributeValue);
            this.f25943k = m(xmlPullParser, "Url");
            this.f25944l = i(xmlPullParser, "MaxWidth", -1);
            this.f25945m = i(xmlPullParser, "MaxHeight", -1);
            this.f25946n = i(xmlPullParser, "DisplayWidth", -1);
            this.f25947o = i(xmlPullParser, "DisplayHeight", -1);
            String attributeValue2 = xmlPullParser.getAttributeValue(null, "Language");
            this.f25948p = attributeValue2;
            p("Language", attributeValue2);
            long jI = i(xmlPullParser, "TimeScale", -1);
            this.f25941i = jI;
            if (jI == -1) {
                this.f25941i = ((Long) c("TimeScale")).longValue();
            }
            this.f25949q = new ArrayList();
        }

        private void r(XmlPullParser xmlPullParser) throws ParserException {
            int size = this.f25949q.size();
            long j10 = j(xmlPullParser, "t", C.TIME_UNSET);
            int i10 = 1;
            if (j10 == C.TIME_UNSET) {
                if (size == 0) {
                    j10 = 0;
                } else {
                    if (this.f25950r == -1) {
                        throw ParserException.createForMalformedManifest("Unable to infer start time", null);
                    }
                    j10 = this.f25950r + ((Long) this.f25949q.get(size - 1)).longValue();
                }
            }
            this.f25949q.add(Long.valueOf(j10));
            this.f25950r = j(xmlPullParser, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, C.TIME_UNSET);
            long j11 = j(xmlPullParser, CampaignEx.JSON_KEY_AD_R, 1L);
            if (j11 > 1 && this.f25950r == C.TIME_UNSET) {
                throw ParserException.createForMalformedManifest("Repeated chunk with unspecified duration", null);
            }
            while (true) {
                long j12 = i10;
                if (j12 >= j11) {
                    return;
                }
                this.f25949q.add(Long.valueOf((this.f25950r * j12) + j10));
                i10++;
            }
        }

        private int s(XmlPullParser xmlPullParser) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, "Type");
            if (attributeValue == null) {
                throw new MissingFieldException("Type");
            }
            if (MimeTypes.BASE_TYPE_AUDIO.equalsIgnoreCase(attributeValue)) {
                return 1;
            }
            if ("video".equalsIgnoreCase(attributeValue)) {
                return 2;
            }
            if (MimeTypes.BASE_TYPE_TEXT.equalsIgnoreCase(attributeValue)) {
                return 3;
            }
            throw ParserException.createForMalformedManifest("Invalid key value[" + attributeValue + "]", null);
        }

        @Override
        public void a(Object obj) {
            if (obj instanceof p1) {
                this.f25938f.add((p1) obj);
            }
        }

        @Override
        public Object b() {
            p1[] p1VarArr = new p1[this.f25938f.size()];
            this.f25938f.toArray(p1VarArr);
            return new com.google.android.exoplayer2.source.smoothstreaming.manifest.a.b(this.f25937e, this.f25943k, this.f25939g, this.f25940h, this.f25941i, this.f25942j, this.f25944l, this.f25945m, this.f25946n, this.f25947o, this.f25948p, p1VarArr, this.f25949q, this.f25950r);
        }

        @Override
        public boolean d(String str) {
            return "c".equals(str);
        }

        @Override
        public void n(XmlPullParser xmlPullParser) throws ParserException {
            if ("c".equals(xmlPullParser.getName())) {
                r(xmlPullParser);
            } else {
                q(xmlPullParser);
            }
        }
    }

    public SsManifestParser() {
        try {
            this.f25919a = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e10) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e10);
        }
    }

    @Override
    public com.google.android.exoplayer2.source.smoothstreaming.manifest.a parse(Uri uri, InputStream inputStream) throws ParserException {
        try {
            XmlPullParser xmlPullParserNewPullParser = this.f25919a.newPullParser();
            xmlPullParserNewPullParser.setInput(inputStream, null);
            return (com.google.android.exoplayer2.source.smoothstreaming.manifest.a) new d(null, uri.toString()).f(xmlPullParserNewPullParser);
        } catch (XmlPullParserException e10) {
            throw ParserException.createForMalformedManifest(null, e10);
        }
    }

    private static abstract class a {

        private final String f25920a;

        private final String f25921b;

        private final a f25922c;

        private final List f25923d = new LinkedList();

        public a(a aVar, String str, String str2) {
            this.f25922c = aVar;
            this.f25920a = str;
            this.f25921b = str2;
        }

        private a e(a aVar, String str, String str2) {
            if ("QualityLevel".equals(str)) {
                return new c(aVar, str2);
            }
            if ("Protection".equals(str)) {
                return new b(aVar, str2);
            }
            if ("StreamIndex".equals(str)) {
                return new e(aVar, str2);
            }
            return null;
        }

        protected abstract Object b();

        protected final Object c(String str) {
            for (int i10 = 0; i10 < this.f25923d.size(); i10++) {
                Pair pair = (Pair) this.f25923d.get(i10);
                if (((String) pair.first).equals(str)) {
                    return pair.second;
                }
            }
            a aVar = this.f25922c;
            if (aVar == null) {
                return null;
            }
            return aVar.c(str);
        }

        protected boolean d(String str) {
            return false;
        }

        public final Object f(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
            boolean z10 = false;
            int i10 = 0;
            while (true) {
                int eventType = xmlPullParser.getEventType();
                if (eventType == 1) {
                    return null;
                }
                if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    if (this.f25921b.equals(name)) {
                        n(xmlPullParser);
                        z10 = true;
                    } else if (z10) {
                        if (i10 > 0) {
                            i10++;
                        } else if (d(name)) {
                            n(xmlPullParser);
                        } else {
                            a aVarE = e(this, name, this.f25920a);
                            if (aVarE == null) {
                                i10 = 1;
                            } else {
                                a(aVarE.f(xmlPullParser));
                            }
                        }
                    }
                } else if (eventType != 3) {
                    if (eventType == 4 && z10 && i10 == 0) {
                        o(xmlPullParser);
                    }
                } else if (!z10) {
                    continue;
                } else if (i10 > 0) {
                    i10--;
                } else {
                    String name2 = xmlPullParser.getName();
                    h(xmlPullParser);
                    if (!d(name2)) {
                        return b();
                    }
                }
                xmlPullParser.next();
            }
        }

        protected final boolean g(XmlPullParser xmlPullParser, String str, boolean z10) {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            return attributeValue != null ? Boolean.parseBoolean(attributeValue) : z10;
        }

        protected final int i(XmlPullParser xmlPullParser, String str, int i10) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue == null) {
                return i10;
            }
            try {
                return Integer.parseInt(attributeValue);
            } catch (NumberFormatException e10) {
                throw ParserException.createForMalformedManifest(null, e10);
            }
        }

        protected final long j(XmlPullParser xmlPullParser, String str, long j10) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue == null) {
                return j10;
            }
            try {
                return Long.parseLong(attributeValue);
            } catch (NumberFormatException e10) {
                throw ParserException.createForMalformedManifest(null, e10);
            }
        }

        protected final int k(XmlPullParser xmlPullParser, String str) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue == null) {
                throw new MissingFieldException(str);
            }
            try {
                return Integer.parseInt(attributeValue);
            } catch (NumberFormatException e10) {
                throw ParserException.createForMalformedManifest(null, e10);
            }
        }

        protected final long l(XmlPullParser xmlPullParser, String str) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue == null) {
                throw new MissingFieldException(str);
            }
            try {
                return Long.parseLong(attributeValue);
            } catch (NumberFormatException e10) {
                throw ParserException.createForMalformedManifest(null, e10);
            }
        }

        protected final String m(XmlPullParser xmlPullParser, String str) throws MissingFieldException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                return attributeValue;
            }
            throw new MissingFieldException(str);
        }

        protected abstract void n(XmlPullParser xmlPullParser);

        protected final void p(String str, Object obj) {
            this.f25923d.add(Pair.create(str, obj));
        }

        protected void a(Object obj) {
        }

        protected void h(XmlPullParser xmlPullParser) {
        }

        protected void o(XmlPullParser xmlPullParser) {
        }
    }
}
