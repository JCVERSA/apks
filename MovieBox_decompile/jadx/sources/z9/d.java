package z9;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import android.util.Xml;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.upstream.b0;
import com.google.android.exoplayer2.util.n0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.q0;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.w;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xml.sax.helpers.DefaultHandler;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import org.xmlpull.v1.XmlSerializer;

public class d extends DefaultHandler implements b0.a {

    private static final Pattern f76652b = Pattern.compile("(\\d+)(?:/(\\d+))?");

    private static final Pattern f76653c = Pattern.compile("CC([1-4])=.*");

    private static final Pattern f76654d = Pattern.compile("([1-9]|[1-5][0-9]|6[0-3])=.*");

    private static final int[] f76655e = {-1, 1, 2, 3, 4, 5, 6, 8, 2, 3, 4, 7, 8, 24, 8, 12, 10, 12, 14, 12, 14};

    private final XmlPullParserFactory f76656a;

    protected static final class a {

        public final p1 f76657a;

        public final ImmutableList f76658b;

        public final k f76659c;

        public final String f76660d;

        public final ArrayList f76661e;

        public final ArrayList f76662f;

        public final long f76663g;

        public final List f76664h;

        public final List f76665i;

        public a(p1 p1Var, List list, k kVar, String str, ArrayList arrayList, ArrayList arrayList2, List list2, List list3, long j10) {
            this.f76657a = p1Var;
            this.f76658b = ImmutableList.copyOf((Collection) list);
            this.f76659c = kVar;
            this.f76660d = str;
            this.f76661e = arrayList;
            this.f76662f = arrayList2;
            this.f76664h = list2;
            this.f76665i = list3;
            this.f76663g = j10;
        }
    }

    public d() {
        try {
            this.f76656a = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e10) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e10);
        }
    }

    protected static int C(List list) {
        String str;
        for (int i10 = 0; i10 < list.size(); i10++) {
            e eVar = (e) list.get(i10);
            if ("urn:scte:dash:cc:cea-608:2015".equals(eVar.f76666a) && (str = eVar.f76667b) != null) {
                Matcher matcher = f76653c.matcher(str);
                if (matcher.matches()) {
                    return Integer.parseInt(matcher.group(1));
                }
                s.i("MpdParser", "Unable to parse CEA-608 channel number from: " + eVar.f76667b);
            }
        }
        return -1;
    }

    protected static int D(List list) {
        String str;
        for (int i10 = 0; i10 < list.size(); i10++) {
            e eVar = (e) list.get(i10);
            if ("urn:scte:dash:cc:cea-708:2015".equals(eVar.f76666a) && (str = eVar.f76667b) != null) {
                Matcher matcher = f76654d.matcher(str);
                if (matcher.matches()) {
                    return Integer.parseInt(matcher.group(1));
                }
                s.i("MpdParser", "Unable to parse CEA-708 service block number from: " + eVar.f76667b);
            }
        }
        return -1;
    }

    protected static long G(XmlPullParser xmlPullParser, String str, long j10) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j10 : p0.I0(attributeValue);
    }

    protected static e H(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        String strQ0 = q0(xmlPullParser, "schemeIdUri", "");
        String strQ1 = q0(xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE, null);
        String strQ2 = q0(xmlPullParser, "id", null);
        do {
            xmlPullParser.next();
        } while (!q0.d(xmlPullParser, str));
        return new e(strQ0, strQ1, strQ2);
    }

    protected static int I(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue(null, AppMeasurementSdk.ConditionalUserProperty.VALUE);
        if (attributeValue == null) {
            return -1;
        }
        String strE = com.google.common.base.a.e(attributeValue);
        strE.hashCode();
        switch (strE) {
            case "4000":
                return 1;
            case "a000":
                return 2;
            case "f801":
                return 6;
            case "fa01":
                return 8;
            default:
                return -1;
        }
    }

    protected static int J(XmlPullParser xmlPullParser) {
        int iT = T(xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE, -1);
        if (iT <= 0 || iT >= 33) {
            return -1;
        }
        return iT;
    }

    protected static int K(XmlPullParser xmlPullParser) {
        int iBitCount;
        String attributeValue = xmlPullParser.getAttributeValue(null, AppMeasurementSdk.ConditionalUserProperty.VALUE);
        if (attributeValue == null || (iBitCount = Integer.bitCount(Integer.parseInt(attributeValue, 16))) == 0) {
            return -1;
        }
        return iBitCount;
    }

    protected static long L(XmlPullParser xmlPullParser, String str, long j10) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j10 : p0.J0(attributeValue);
    }

    protected static String M(List list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            e eVar = (e) list.get(i10);
            String str = eVar.f76666a;
            if ("tag:dolby.com,2018:dash:EC3_ExtensionType:2018".equals(str) && "JOC".equals(eVar.f76667b)) {
                return MimeTypes.AUDIO_E_AC3_JOC;
            }
            if ("tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014".equals(str) && "ec+3".equals(eVar.f76667b)) {
                return MimeTypes.AUDIO_E_AC3_JOC;
            }
        }
        return MimeTypes.AUDIO_E_AC3;
    }

    protected static float Q(XmlPullParser xmlPullParser, String str, float f10) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? f10 : Float.parseFloat(attributeValue);
    }

    protected static float R(XmlPullParser xmlPullParser, float f10) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "frameRate");
        if (attributeValue == null) {
            return f10;
        }
        Matcher matcher = f76652b.matcher(attributeValue);
        if (!matcher.matches()) {
            return f10;
        }
        int i10 = Integer.parseInt(matcher.group(1));
        String strGroup = matcher.group(2);
        return !TextUtils.isEmpty(strGroup) ? i10 / Integer.parseInt(strGroup) : i10;
    }

    protected static int T(XmlPullParser xmlPullParser, String str, int i10) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? i10 : Integer.parseInt(attributeValue);
    }

    protected static long V(List list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            e eVar = (e) list.get(i10);
            if (com.google.common.base.a.a("http://dashif.org/guidelines/last-segment-number", eVar.f76666a)) {
                return Long.parseLong(eVar.f76667b);
            }
        }
        return -1L;
    }

    protected static long W(XmlPullParser xmlPullParser, String str, long j10) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j10 : Long.parseLong(attributeValue);
    }

    protected static int Y(XmlPullParser xmlPullParser) {
        int iT = T(xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE, -1);
        if (iT < 0) {
            return -1;
        }
        int[] iArr = f76655e;
        if (iT < iArr.length) {
            return iArr[iT];
        }
        return -1;
    }

    private long a(List list, long j10, long j11, int i10, long j12) {
        int iM = i10 >= 0 ? i10 + 1 : (int) p0.m(j12 - j10, j11);
        for (int i11 = 0; i11 < iM; i11++) {
            list.add(l(j10, j11));
            j10 += j11;
        }
        return j10;
    }

    private static int o(int i10, int i11) {
        if (i10 == -1) {
            return i11;
        }
        if (i11 == -1) {
            return i10;
        }
        com.google.android.exoplayer2.util.a.g(i10 == i11);
        return i10;
    }

    private static String p(String str, String str2) {
        if (str == null) {
            return str2;
        }
        if (str2 == null) {
            return str;
        }
        com.google.android.exoplayer2.util.a.g(str.equals(str2));
        return str;
    }

    private static void q(ArrayList arrayList) {
        String str;
        int i10 = 0;
        while (true) {
            if (i10 >= arrayList.size()) {
                str = null;
                break;
            }
            DrmInitData.SchemeData schemeData = (DrmInitData.SchemeData) arrayList.get(i10);
            if (com.google.android.exoplayer2.l.f24514c.equals(schemeData.uuid) && (str = schemeData.licenseServerUrl) != null) {
                arrayList.remove(i10);
                break;
            }
            i10++;
        }
        if (str == null) {
            return;
        }
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            DrmInitData.SchemeData schemeData2 = (DrmInitData.SchemeData) arrayList.get(i11);
            if (com.google.android.exoplayer2.l.f24513b.equals(schemeData2.uuid) && schemeData2.licenseServerUrl == null) {
                arrayList.set(i11, new DrmInitData.SchemeData(com.google.android.exoplayer2.l.f24514c, str, schemeData2.mimeType, schemeData2.data));
            }
        }
    }

    protected static String q0(XmlPullParser xmlPullParser, String str, String str2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? str2 : attributeValue;
    }

    private static void r(ArrayList arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            DrmInitData.SchemeData schemeData = (DrmInitData.SchemeData) arrayList.get(size);
            if (!schemeData.hasData()) {
                for (int i10 = 0; i10 < arrayList.size(); i10++) {
                    if (((DrmInitData.SchemeData) arrayList.get(i10)).canReplace(schemeData)) {
                        arrayList.remove(size);
                        break;
                    }
                }
            }
        }
    }

    protected static String r0(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        String text = "";
        do {
            xmlPullParser.next();
            if (xmlPullParser.getEventType() == 4) {
                text = xmlPullParser.getText();
            } else {
                v(xmlPullParser);
            }
        } while (!q0.d(xmlPullParser, str));
        return text;
    }

    private static long s(long j10, long j11) {
        if (j11 != C.TIME_UNSET) {
            j10 = j11;
        }
        return j10 == Long.MAX_VALUE ? C.TIME_UNSET : j10;
    }

    private static String t(String str, String str2) {
        if (w.o(str)) {
            return w.c(str2);
        }
        if (w.s(str)) {
            return w.n(str2);
        }
        if (w.r(str) || w.p(str)) {
            return str;
        }
        if (!MimeTypes.APPLICATION_MP4.equals(str)) {
            return null;
        }
        String strG = w.g(str2);
        return MimeTypes.TEXT_VTT.equals(strG) ? MimeTypes.APPLICATION_MP4VTT : strG;
    }

    private boolean u(String[] strArr) {
        for (String str : strArr) {
            if (str.startsWith("urn:dvb:dash:profile:dvb-dash:")) {
                return true;
            }
        }
        return false;
    }

    public static void v(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        if (q0.e(xmlPullParser)) {
            int i10 = 1;
            while (i10 != 0) {
                xmlPullParser.next();
                if (q0.e(xmlPullParser)) {
                    i10++;
                } else if (q0.c(xmlPullParser)) {
                    i10--;
                }
            }
        }
    }

    protected long A(XmlPullParser xmlPullParser, long j10) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "availabilityTimeOffset");
        if (attributeValue == null) {
            return j10;
        }
        if ("INF".equals(attributeValue)) {
            return Long.MAX_VALUE;
        }
        return (long) (Float.parseFloat(attributeValue) * 1000000.0f);
    }

    protected List B(XmlPullParser xmlPullParser, List list, boolean z10) throws XmlPullParserException, IOException {
        String attributeValue = xmlPullParser.getAttributeValue(null, "dvb:priority");
        int i10 = attributeValue != null ? Integer.parseInt(attributeValue) : z10 ? 1 : Integer.MIN_VALUE;
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "dvb:weight");
        int i11 = attributeValue2 != null ? Integer.parseInt(attributeValue2) : 1;
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "serviceLocation");
        String strR0 = r0(xmlPullParser, "BaseURL");
        if (n0.b(strR0)) {
            if (attributeValue3 == null) {
                attributeValue3 = strR0;
            }
            return Lists.l(new b(strR0, attributeValue3, i10, i11));
        }
        ArrayList arrayList = new ArrayList();
        for (int i12 = 0; i12 < list.size(); i12++) {
            b bVar = (b) list.get(i12);
            String strD = n0.d(bVar.f76635a, strR0);
            String str = attributeValue3 == null ? strD : attributeValue3;
            if (z10) {
                i10 = bVar.f76637c;
                i11 = bVar.f76638d;
                str = bVar.f76636b;
            }
            arrayList.add(new b(strD, str, i10, i11));
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0092  */
    /* JADX WARN: Code duplicated, block: B:67:0x010d  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v10, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v27 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    protected Pair E(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        UUID uuid;
        String attributeValue;
        String str;
        String attributeValue2;
        ?? A;
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "schemeIdUri");
        if (attributeValue3 != null) {
            String strE = com.google.common.base.a.e(attributeValue3);
            strE.hashCode();
            switch (strE) {
                case "urn:uuid:e2719d58-a985-b3c9-781a-b030af78d30e":
                    uuid = com.google.android.exoplayer2.l.f24514c;
                    attributeValue = null;
                    str = attributeValue;
                    attributeValue2 = str;
                    A = str;
                    break;
                case "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95":
                    uuid = com.google.android.exoplayer2.l.f24516e;
                    attributeValue = null;
                    str = attributeValue;
                    attributeValue2 = str;
                    A = str;
                    break;
                case "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed":
                    uuid = com.google.android.exoplayer2.l.f24515d;
                    attributeValue = null;
                    str = attributeValue;
                    attributeValue2 = str;
                    A = str;
                    break;
                case "urn:mpeg:dash:mp4protection:2011":
                    attributeValue = xmlPullParser.getAttributeValue(null, AppMeasurementSdk.ConditionalUserProperty.VALUE);
                    String strB = q0.b(xmlPullParser, "default_KID");
                    if (!TextUtils.isEmpty(strB) && !"00000000-0000-0000-0000-000000000000".equals(strB)) {
                        String[] strArrSplit = strB.split("\\s+");
                        UUID[] uuidArr = new UUID[strArrSplit.length];
                        for (int i10 = 0; i10 < strArrSplit.length; i10++) {
                            uuidArr[i10] = UUID.fromString(strArrSplit[i10]);
                        }
                        uuid = com.google.android.exoplayer2.l.f24513b;
                        byte[] bArrB = q9.l.b(uuid, uuidArr, null);
                        attributeValue2 = null;
                        A = bArrB;
                        break;
                    } else {
                        uuid = null;
                        str = null;
                        attributeValue2 = str;
                        A = str;
                        break;
                    }
                    break;
                default:
                    uuid = null;
                    attributeValue = null;
                    str = attributeValue;
                    attributeValue2 = str;
                    A = str;
                    break;
            }
        } else {
            uuid = null;
            attributeValue = null;
            str = attributeValue;
            attributeValue2 = str;
            A = str;
        }
        do {
            xmlPullParser.next();
            if (q0.f(xmlPullParser, "clearkey:Laurl") && xmlPullParser.next() == 4) {
                A = A;
                attributeValue2 = xmlPullParser.getText();
            } else if (q0.f(xmlPullParser, "ms:laurl")) {
                A = A;
                attributeValue2 = xmlPullParser.getAttributeValue(null, "licenseUrl");
            } else if (A == 0 && q0.g(xmlPullParser, "pssh") && xmlPullParser.next() == 4) {
                byte[] bArrDecode = Base64.decode(xmlPullParser.getText(), 0);
                UUID uuidF = q9.l.f(bArrDecode);
                if (uuidF == null) {
                    s.i("MpdParser", "Skipping malformed cenc:pssh data");
                    uuid = uuidF;
                    A = 0;
                    attributeValue2 = attributeValue2;
                } else {
                    A = bArrDecode;
                    uuid = uuidF;
                    attributeValue2 = attributeValue2;
                }
            } else if (A == 0) {
                UUID uuid2 = com.google.android.exoplayer2.l.f24516e;
                if (uuid2.equals(uuid) && q0.f(xmlPullParser, "mspr:pro") && xmlPullParser.next() == 4) {
                    A = q9.l.a(uuid2, Base64.decode(xmlPullParser.getText(), 0));
                    attributeValue2 = attributeValue2;
                } else {
                    v(xmlPullParser);
                    A = A;
                    attributeValue2 = attributeValue2;
                }
            } else {
                v(xmlPullParser);
                A = A;
                attributeValue2 = attributeValue2;
            }
        } while (!q0.d(xmlPullParser, "ContentProtection"));
        return Pair.create(attributeValue, uuid != null ? new DrmInitData.SchemeData(uuid, attributeValue2, MimeTypes.VIDEO_MP4, A) : null);
    }

    protected int F(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "contentType");
        if (TextUtils.isEmpty(attributeValue)) {
            return -1;
        }
        if (MimeTypes.BASE_TYPE_AUDIO.equals(attributeValue)) {
            return 1;
        }
        if ("video".equals(attributeValue)) {
            return 2;
        }
        return MimeTypes.BASE_TYPE_TEXT.equals(attributeValue) ? 3 : -1;
    }

    protected Pair N(XmlPullParser xmlPullParser, String str, String str2, long j10, ByteArrayOutputStream byteArrayOutputStream) throws XmlPullParserException, IOException {
        long jW = W(xmlPullParser, "id", 0L);
        long jW2 = W(xmlPullParser, "duration", C.TIME_UNSET);
        long jW3 = W(xmlPullParser, "presentationTime", 0L);
        long jN0 = p0.N0(jW2, 1000L, j10);
        long jN1 = p0.N0(jW3, 1000000L, j10);
        String strQ0 = q0(xmlPullParser, "messageData", null);
        byte[] bArrO = O(xmlPullParser, byteArrayOutputStream);
        Long lValueOf = Long.valueOf(jN1);
        if (strQ0 != null) {
            bArrO = p0.n0(strQ0);
        }
        return Pair.create(lValueOf, c(str, str2, jW, jN0, bArrO));
    }

    protected byte[] O(XmlPullParser xmlPullParser, ByteArrayOutputStream byteArrayOutputStream) throws XmlPullParserException, IOException {
        byteArrayOutputStream.reset();
        XmlSerializer xmlSerializerNewSerializer = Xml.newSerializer();
        xmlSerializerNewSerializer.setOutput(byteArrayOutputStream, com.google.common.base.c.f29403c.name());
        xmlPullParser.nextToken();
        while (!q0.d(xmlPullParser, "Event")) {
            switch (xmlPullParser.getEventType()) {
                case 0:
                    xmlSerializerNewSerializer.startDocument(null, Boolean.FALSE);
                    break;
                case 1:
                    xmlSerializerNewSerializer.endDocument();
                    break;
                case 2:
                    xmlSerializerNewSerializer.startTag(xmlPullParser.getNamespace(), xmlPullParser.getName());
                    for (int i10 = 0; i10 < xmlPullParser.getAttributeCount(); i10++) {
                        xmlSerializerNewSerializer.attribute(xmlPullParser.getAttributeNamespace(i10), xmlPullParser.getAttributeName(i10), xmlPullParser.getAttributeValue(i10));
                    }
                    break;
                case 3:
                    xmlSerializerNewSerializer.endTag(xmlPullParser.getNamespace(), xmlPullParser.getName());
                    break;
                case 4:
                    xmlSerializerNewSerializer.text(xmlPullParser.getText());
                    break;
                case 5:
                    xmlSerializerNewSerializer.cdsect(xmlPullParser.getText());
                    break;
                case 6:
                    xmlSerializerNewSerializer.entityRef(xmlPullParser.getText());
                    break;
                case 7:
                    xmlSerializerNewSerializer.ignorableWhitespace(xmlPullParser.getText());
                    break;
                case 8:
                    xmlSerializerNewSerializer.processingInstruction(xmlPullParser.getText());
                    break;
                case 9:
                    xmlSerializerNewSerializer.comment(xmlPullParser.getText());
                    break;
                case 10:
                    xmlSerializerNewSerializer.docdecl(xmlPullParser.getText());
                    break;
            }
            xmlPullParser.nextToken();
        }
        xmlSerializerNewSerializer.flush();
        return byteArrayOutputStream.toByteArray();
    }

    protected f P(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        String strQ0 = q0(xmlPullParser, "schemeIdUri", "");
        String strQ1 = q0(xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE, "");
        long jW = W(xmlPullParser, "timescale", 1L);
        ArrayList arrayList = new ArrayList();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        do {
            xmlPullParser.next();
            if (q0.f(xmlPullParser, "Event")) {
                arrayList.add(N(xmlPullParser, strQ0, strQ1, jW, byteArrayOutputStream));
            } else {
                v(xmlPullParser);
            }
        } while (!q0.d(xmlPullParser, "EventStream"));
        long[] jArr = new long[arrayList.size()];
        EventMessage[] eventMessageArr = new EventMessage[arrayList.size()];
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            Pair pair = (Pair) arrayList.get(i10);
            jArr[i10] = ((Long) pair.first).longValue();
            eventMessageArr[i10] = (EventMessage) pair.second;
        }
        return d(strQ0, strQ1, jW, jArr, eventMessageArr);
    }

    protected i S(XmlPullParser xmlPullParser) {
        return c0(xmlPullParser, "sourceURL", "range");
    }

    protected String U(XmlPullParser xmlPullParser) {
        return r0(xmlPullParser, "Label");
    }

    /* JADX WARN: Code duplicated, block: B:66:0x019b  */
    /* JADX WARN: Code duplicated, block: B:68:0x019f  */
    /* JADX WARN: Code duplicated, block: B:69:0x01a2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:71:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:73:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:76:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:78:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:80:0x01dc A[LOOP:0: B:24:0x00a0->B:80:0x01dc, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:82:0x0197 A[SYNTHETIC] */
    protected c X(XmlPullParser xmlPullParser, Uri uri) throws XmlPullParserException, IOException {
        long j10;
        ArrayList arrayList;
        ArrayList arrayList2;
        long j11;
        Throwable th2;
        ArrayList arrayList3;
        long j12;
        d dVar = this;
        boolean z10 = true;
        boolean zU = dVar.u(dVar.a0(xmlPullParser, "profiles", new String[0]));
        long j13 = C.TIME_UNSET;
        long jG = G(xmlPullParser, "availabilityStartTime", C.TIME_UNSET);
        long jL = L(xmlPullParser, "mediaPresentationDuration", C.TIME_UNSET);
        long jL2 = L(xmlPullParser, "minBufferTime", C.TIME_UNSET);
        Throwable th3 = null;
        boolean zEquals = "dynamic".equals(xmlPullParser.getAttributeValue(null, NativeComponentConstants.KEY_COMPONENT_TYPE));
        long jL3 = zEquals ? L(xmlPullParser, "minimumUpdatePeriod", C.TIME_UNSET) : -9223372036854775807L;
        long jL4 = zEquals ? L(xmlPullParser, "timeShiftBufferDepth", C.TIME_UNSET) : -9223372036854775807L;
        long jL5 = zEquals ? L(xmlPullParser, "suggestedPresentationDelay", C.TIME_UNSET) : -9223372036854775807L;
        long jG2 = G(xmlPullParser, "publishTime", C.TIME_UNSET);
        long jA = zEquals ? 0L : -9223372036854775807L;
        ArrayList arrayListL = Lists.l(new b(uri.toString(), uri.toString(), zU ? 1 : Integer.MIN_VALUE, 1));
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        boolean z11 = false;
        boolean z12 = false;
        long j14 = zEquals ? -9223372036854775807L : 0L;
        h hVarB0 = null;
        o oVarU0 = null;
        Uri uriE = null;
        l lVarP0 = null;
        while (true) {
            xmlPullParser.next();
            if (q0.f(xmlPullParser, "BaseURL")) {
                if (!z11) {
                    jA = dVar.A(xmlPullParser, jA);
                    z11 = z10;
                }
                arrayList5.addAll(dVar.B(xmlPullParser, arrayListL, zU));
            } else if (q0.f(xmlPullParser, "ProgramInformation")) {
                hVarB0 = b0(xmlPullParser);
            } else if (q0.f(xmlPullParser, "UTCTiming")) {
                oVarU0 = u0(xmlPullParser);
            } else if (q0.f(xmlPullParser, HttpHeaders.LOCATION)) {
                uriE = n0.e(uri.toString(), xmlPullParser.nextText());
            } else {
                if (q0.f(xmlPullParser, "ServiceDescription")) {
                    lVarP0 = p0(xmlPullParser);
                } else {
                    if (!q0.f(xmlPullParser, "Period") || z12) {
                        j10 = jA;
                        arrayList = arrayList5;
                        arrayList2 = arrayListL;
                        j11 = j13;
                        th2 = th3;
                        arrayList3 = arrayList4;
                        v(xmlPullParser);
                    } else {
                        j10 = jA;
                        arrayList = arrayList5;
                        arrayList2 = arrayListL;
                        arrayList3 = arrayList4;
                        j11 = j13;
                        th2 = th3;
                        Pair pairZ = Z(xmlPullParser, !arrayList5.isEmpty() ? arrayList5 : arrayListL, j14, j10, jG, jL4, zU);
                        g gVar = (g) pairZ.first;
                        if (gVar.f76675b != j11) {
                            long jLongValue = ((Long) pairZ.second).longValue();
                            long j15 = jLongValue == j11 ? j11 : gVar.f76675b + jLongValue;
                            arrayList3.add(gVar);
                            j14 = j15;
                        } else {
                            if (!zEquals) {
                                throw ParserException.createForMalformedManifest("Unable to determine start of period " + arrayList3.size(), th2);
                            }
                            arrayList3 = arrayList3;
                            z12 = true;
                        }
                    }
                    jA = j10;
                }
                if (q0.d(xmlPullParser, "MPD")) {
                    if (jL != j11) {
                        j12 = jL;
                    } else if (j14 != j11) {
                        j12 = j14;
                    } else {
                        if (!zEquals) {
                            throw ParserException.createForMalformedManifest("Unable to determine duration of static manifest.", th2);
                        }
                        j12 = jL;
                    }
                    if (arrayList3.isEmpty()) {
                        throw ParserException.createForMalformedManifest("No periods found.", th2);
                    }
                    return f(jG, j12, jL2, zEquals, jL3, jL4, jL5, jG2, hVarB0, oVarU0, lVarP0, uriE, arrayList3);
                }
                dVar = this;
                arrayList4 = arrayList3;
                th3 = th2;
                arrayList5 = arrayList;
                arrayListL = arrayList2;
                j13 = j11;
                z10 = true;
            }
            arrayList = arrayList5;
            arrayList2 = arrayListL;
            j11 = j13;
            th2 = th3;
            arrayList3 = arrayList4;
            if (q0.d(xmlPullParser, "MPD")) {
                if (jL != j11) {
                    j12 = jL;
                } else if (j14 != j11) {
                    j12 = j14;
                } else {
                    if (!zEquals) {
                        throw ParserException.createForMalformedManifest("Unable to determine duration of static manifest.", th2);
                    }
                    j12 = jL;
                }
                if (arrayList3.isEmpty()) {
                    return f(jG, j12, jL2, zEquals, jL3, jL4, jL5, jG2, hVarB0, oVarU0, lVarP0, uriE, arrayList3);
                }
                throw ParserException.createForMalformedManifest("No periods found.", th2);
            }
            dVar = this;
            arrayList4 = arrayList3;
            th3 = th2;
            arrayList5 = arrayList;
            arrayListL = arrayList2;
            j13 = j11;
            z10 = true;
        }
    }

    protected Pair Z(XmlPullParser xmlPullParser, List list, long j10, long j11, long j12, long j13, boolean z10) throws XmlPullParserException, IOException {
        ArrayList arrayList;
        List list2;
        List list3;
        Object obj;
        long j14;
        k kVarK0;
        XmlPullParser xmlPullParser2 = xmlPullParser;
        Object obj2 = null;
        String attributeValue = xmlPullParser2.getAttributeValue(null, "id");
        long jL = L(xmlPullParser2, "start", j10);
        long j15 = C.TIME_UNSET;
        long j16 = j12 != C.TIME_UNSET ? j12 + jL : -9223372036854775807L;
        long jL2 = L(xmlPullParser2, "duration", C.TIME_UNSET);
        List arrayList2 = new ArrayList();
        List arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        long jA = j11;
        boolean z11 = false;
        long j17 = -9223372036854775807L;
        k kVarI0 = null;
        e eVarH = null;
        while (true) {
            xmlPullParser.next();
            if (q0.f(xmlPullParser2, "BaseURL")) {
                if (!z11) {
                    jA = A(xmlPullParser2, jA);
                    z11 = true;
                }
                arrayList4.addAll(B(xmlPullParser2, list, z10));
                list3 = arrayList3;
                arrayList = arrayList4;
                j14 = j15;
                obj = obj2;
                list2 = arrayList2;
            } else {
                if (q0.f(xmlPullParser2, "AdaptationSet")) {
                    jA = jA;
                    arrayList = arrayList4;
                    list2 = arrayList2;
                    list2.add(x(xmlPullParser, !arrayList4.isEmpty() ? arrayList4 : list, kVarI0, jL2, jA, j17, j16, j13, z10));
                    xmlPullParser2 = xmlPullParser;
                    list3 = arrayList3;
                } else {
                    jA = jA;
                    List list4 = arrayList3;
                    arrayList = arrayList4;
                    list2 = arrayList2;
                    xmlPullParser2 = xmlPullParser;
                    if (q0.f(xmlPullParser2, "EventStream")) {
                        list4.add(P(xmlPullParser));
                        list3 = list4;
                    } else if (q0.f(xmlPullParser2, "SegmentBase")) {
                        list3 = list4;
                        kVarI0 = i0(xmlPullParser2, null);
                        obj = null;
                        jA = jA;
                        j14 = C.TIME_UNSET;
                    } else {
                        list3 = list4;
                        if (q0.f(xmlPullParser2, "SegmentList")) {
                            long jA2 = A(xmlPullParser2, C.TIME_UNSET);
                            obj = null;
                            kVarK0 = j0(xmlPullParser, null, j16, jL2, jA, jA2, j13);
                            j17 = jA2;
                            j14 = C.TIME_UNSET;
                        } else {
                            obj = null;
                            if (q0.f(xmlPullParser2, "SegmentTemplate")) {
                                long jA3 = A(xmlPullParser2, C.TIME_UNSET);
                                j14 = -9223372036854775807L;
                                kVarK0 = k0(xmlPullParser, null, ImmutableList.of(), j16, jL2, jA, jA3, j13);
                                j17 = jA3;
                            } else {
                                j14 = C.TIME_UNSET;
                                if (q0.f(xmlPullParser2, "AssetIdentifier")) {
                                    eVarH = H(xmlPullParser2, "AssetIdentifier");
                                } else {
                                    v(xmlPullParser);
                                }
                                jA = jA;
                            }
                        }
                        kVarI0 = kVarK0;
                    }
                }
                obj = null;
                j14 = C.TIME_UNSET;
                jA = jA;
            }
            if (q0.d(xmlPullParser2, "Period")) {
                return Pair.create(g(attributeValue, jL, list2, list3, eVarH), Long.valueOf(jL2));
            }
            arrayList2 = list2;
            arrayList4 = arrayList;
            obj2 = obj;
            arrayList3 = list3;
            j15 = j14;
        }
    }

    protected String[] a0(XmlPullParser xmlPullParser, String str, String[] strArr) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? strArr : attributeValue.split(",");
    }

    protected z9.a b(int i10, int i11, List list, List list2, List list3, List list4) {
        return new z9.a(i10, i11, list, list2, list3, list4);
    }

    protected h b0(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        String strNextText = null;
        String strQ0 = q0(xmlPullParser, "moreInformationURL", null);
        String strQ1 = q0(xmlPullParser, "lang", null);
        String strNextText2 = null;
        String strNextText3 = null;
        while (true) {
            xmlPullParser.next();
            if (q0.f(xmlPullParser, "Title")) {
                strNextText = xmlPullParser.nextText();
            } else if (q0.f(xmlPullParser, "Source")) {
                strNextText2 = xmlPullParser.nextText();
            } else if (q0.f(xmlPullParser, "Copyright")) {
                strNextText3 = xmlPullParser.nextText();
            } else {
                v(xmlPullParser);
            }
            String str = strNextText3;
            if (q0.d(xmlPullParser, "ProgramInformation")) {
                return new h(strNextText, strNextText2, str, strQ0, strQ1);
            }
            strNextText3 = str;
        }
    }

    protected EventMessage c(String str, String str2, long j10, long j11, byte[] bArr) {
        return new EventMessage(str, str2, j11, j10, bArr);
    }

    protected i c0(XmlPullParser xmlPullParser, String str, String str2) {
        long j10;
        long j11;
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        String attributeValue2 = xmlPullParser.getAttributeValue(null, str2);
        if (attributeValue2 != null) {
            String[] strArrSplit = attributeValue2.split("-");
            j10 = Long.parseLong(strArrSplit[0]);
            if (strArrSplit.length == 2) {
                j11 = (Long.parseLong(strArrSplit[1]) - j10) + 1;
            }
            return h(attributeValue, j10, j11);
        }
        j10 = 0;
        j11 = -1;
        return h(attributeValue, j10, j11);
    }

    protected f d(String str, String str2, long j10, long[] jArr, EventMessage[] eventMessageArr) {
        return new f(str, str2, j10, jArr, eventMessageArr);
    }

    /* JADX WARN: Code duplicated, block: B:57:0x01ee A[LOOP:0: B:3:0x006a->B:57:0x01ee, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:58:0x0198 A[EDGE_INSN: B:58:0x0198->B:47:0x0198 BREAK  A[LOOP:0: B:3:0x006a->B:57:0x01ee], SYNTHETIC] */
    protected a d0(XmlPullParser xmlPullParser, List list, String str, String str2, int i10, int i11, float f10, int i12, int i13, String str3, List list2, List list3, List list4, List list5, k kVar, long j10, long j11, long j12, long j13, long j14, boolean z10) throws XmlPullParserException, IOException {
        long j15;
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        ArrayList arrayList5;
        long jA;
        ArrayList arrayList6;
        k eVar;
        ArrayList arrayList7;
        ArrayList arrayList8;
        ArrayList arrayList9;
        String attributeValue = xmlPullParser.getAttributeValue(null, "id");
        int iT = T(xmlPullParser, "bandwidth", -1);
        String strQ0 = q0(xmlPullParser, "mimeType", str);
        String strQ1 = q0(xmlPullParser, "codecs", str2);
        int iT2 = T(xmlPullParser, "width", i10);
        int iT3 = T(xmlPullParser, "height", i11);
        float fR = R(xmlPullParser, f10);
        int iT4 = T(xmlPullParser, "audioSamplingRate", i13);
        ArrayList arrayList10 = new ArrayList();
        ArrayList arrayList11 = new ArrayList();
        ArrayList arrayList12 = new ArrayList(list4);
        ArrayList arrayList13 = new ArrayList(list5);
        int iZ = i12;
        long jA2 = j12;
        boolean z11 = false;
        String str4 = null;
        k kVarK0 = kVar;
        long j16 = j13;
        ArrayList arrayList14 = new ArrayList();
        while (true) {
            xmlPullParser.next();
            if (q0.f(xmlPullParser, "BaseURL")) {
                if (!z11) {
                    jA2 = A(xmlPullParser, jA2);
                    z11 = true;
                }
                arrayList14.addAll(B(xmlPullParser, list, z10));
            } else {
                if (q0.f(xmlPullParser, "AudioChannelConfiguration")) {
                    eVar = kVarK0;
                    iZ = z(xmlPullParser);
                    arrayList4 = arrayList11;
                    arrayList5 = arrayList13;
                    arrayList9 = arrayList14;
                } else if (q0.f(xmlPullParser, "SegmentBase")) {
                    kVarK0 = i0(xmlPullParser, (k.e) kVarK0);
                } else {
                    if (q0.f(xmlPullParser, "SegmentList")) {
                        jA = A(xmlPullParser, j16);
                        j15 = jA2;
                        arrayList8 = arrayList14;
                        arrayList = arrayList13;
                        arrayList2 = arrayList11;
                        arrayList3 = arrayList12;
                        kVarK0 = j0(xmlPullParser, (k.b) kVarK0, j10, j11, j15, jA, j14);
                    } else {
                        j15 = jA2;
                        ArrayList arrayList15 = arrayList14;
                        arrayList = arrayList13;
                        arrayList2 = arrayList11;
                        arrayList3 = arrayList12;
                        if (q0.f(xmlPullParser, "SegmentTemplate")) {
                            jA = A(xmlPullParser, j16);
                            kVarK0 = k0(xmlPullParser, (k.c) kVarK0, list5, j10, j11, j15, jA, j14);
                            arrayList8 = arrayList15;
                        } else {
                            arrayList10 = arrayList10;
                            if (q0.f(xmlPullParser, "ContentProtection")) {
                                Pair pairE = E(xmlPullParser);
                                Object obj = pairE.first;
                                if (obj != null) {
                                    str4 = (String) obj;
                                }
                                Object obj2 = pairE.second;
                                if (obj2 != null) {
                                    arrayList10.add((DrmInitData.SchemeData) obj2);
                                }
                                arrayList7 = arrayList15;
                                jA2 = j15;
                                arrayList5 = arrayList;
                                arrayList4 = arrayList2;
                                arrayList12 = arrayList3;
                                arrayList6 = arrayList7;
                            } else {
                                if (q0.f(xmlPullParser, "InbandEventStream")) {
                                    arrayList4 = arrayList2;
                                    arrayList4.add(H(xmlPullParser, "InbandEventStream"));
                                    arrayList5 = arrayList;
                                    arrayList12 = arrayList3;
                                } else {
                                    arrayList4 = arrayList2;
                                    if (q0.f(xmlPullParser, "EssentialProperty")) {
                                        arrayList12 = arrayList3;
                                        arrayList12.add(H(xmlPullParser, "EssentialProperty"));
                                        arrayList5 = arrayList;
                                    } else {
                                        arrayList12 = arrayList3;
                                        if (q0.f(xmlPullParser, "SupplementalProperty")) {
                                            arrayList5 = arrayList;
                                            arrayList5.add(H(xmlPullParser, "SupplementalProperty"));
                                        } else {
                                            arrayList5 = arrayList;
                                            v(xmlPullParser);
                                        }
                                    }
                                }
                                iZ = iZ;
                                jA2 = j15;
                                arrayList6 = arrayList15;
                            }
                        }
                        eVar = kVarK0;
                        arrayList9 = arrayList6;
                    }
                    j16 = jA;
                    arrayList7 = arrayList8;
                    jA2 = j15;
                    arrayList5 = arrayList;
                    arrayList4 = arrayList2;
                    arrayList12 = arrayList3;
                    arrayList6 = arrayList7;
                    eVar = kVarK0;
                    arrayList9 = arrayList6;
                }
                if (q0.d(xmlPullParser, "Representation")) {
                    break;
                }
                arrayList13 = arrayList5;
                arrayList11 = arrayList4;
                arrayList10 = arrayList10;
                kVarK0 = eVar;
                iZ = iZ;
                arrayList14 = arrayList9;
            }
            iZ = iZ;
            eVar = kVarK0;
            arrayList4 = arrayList11;
            arrayList5 = arrayList13;
            arrayList9 = arrayList14;
            if (q0.d(xmlPullParser, "Representation")) {
                break;
                break;
            }
            arrayList13 = arrayList5;
            arrayList11 = arrayList4;
            arrayList10 = arrayList10;
            kVarK0 = eVar;
            iZ = iZ;
            arrayList14 = arrayList9;
        }
        List list6 = arrayList5;
        List list7 = arrayList12;
        ArrayList arrayList16 = arrayList4;
        p1 p1VarE = e(attributeValue, strQ0, iT2, iT3, fR, iZ, iT4, iT, str3, list2, list3, strQ1, list7, list6);
        if (eVar == null) {
            eVar = new k.e();
        }
        boolean zIsEmpty = arrayList9.isEmpty();
        List list8 = arrayList9;
        if (zIsEmpty) {
            list8 = list;
        }
        return new a(p1VarE, list8, eVar, str4, arrayList10, arrayList16, list7, list6, -1L);
    }

    protected p1 e(String str, String str2, int i10, int i11, float f10, int i12, int i13, int i14, String str3, List list, List list2, String str4, List list3, List list4) {
        int iD;
        String str5 = str4;
        String strT = t(str2, str5);
        if (MimeTypes.AUDIO_E_AC3.equals(strT)) {
            strT = M(list4);
            if (MimeTypes.AUDIO_E_AC3_JOC.equals(strT)) {
                str5 = "ec+3";
            }
        }
        p1.b bVarV = new p1.b().S(str).K(str2).e0(strT).I(str5).Z(i14).g0(o0(list)).c0(h0(list) | e0(list2) | g0(list3) | g0(list4)).V(str3);
        if (w.s(strT)) {
            bVarV.j0(i10).Q(i11).P(f10);
        } else if (w.o(strT)) {
            bVarV.H(i12).f0(i13);
        } else if (w.r(strT)) {
            if (MimeTypes.APPLICATION_CEA608.equals(strT)) {
                iD = C(list2);
            } else {
                iD = MimeTypes.APPLICATION_CEA708.equals(strT) ? D(list2) : -1;
            }
            bVarV.F(iD);
        } else if (w.p(strT)) {
            bVarV.j0(i10).Q(i11);
        }
        return bVarV.E();
    }

    protected int e0(List list) {
        int iS0;
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            e eVar = (e) list.get(i11);
            if (com.google.common.base.a.a("urn:mpeg:dash:role:2011", eVar.f76666a)) {
                iS0 = f0(eVar.f76667b);
            } else {
                if (com.google.common.base.a.a("urn:tva:metadata:cs:AudioPurposeCS:2007", eVar.f76666a)) {
                    iS0 = s0(eVar.f76667b);
                }
            }
            i10 |= iS0;
        }
        return i10;
    }

    protected c f(long j10, long j11, long j12, boolean z10, long j13, long j14, long j15, long j16, h hVar, o oVar, l lVar, Uri uri, List list) {
        return new c(j10, j11, j12, z10, j13, j14, j15, j16, hVar, oVar, lVar, uri, list);
    }

    protected int f0(String str) {
        if (str == null) {
            return 0;
        }
        switch (str) {
            case "subtitle":
            case "forced_subtitle":
            case "forced-subtitle":
                return 128;
            case "description":
                return 512;
            case "enhanced-audio-intelligibility":
                return 2048;
            case "alternate":
                return 2;
            case "dub":
                return 16;
            case "main":
                return 1;
            case "sign":
                return 256;
            case "caption":
                return 64;
            case "commentary":
                return 8;
            case "emergency":
                return 32;
            case "supplementary":
                return 4;
            default:
                return 0;
        }
    }

    protected g g(String str, long j10, List list, List list2, e eVar) {
        return new g(str, j10, list, list2, eVar);
    }

    protected int g0(List list) {
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            if (com.google.common.base.a.a("http://dashif.org/guidelines/trickmode", ((e) list.get(i11)).f76666a)) {
                i10 = 16384;
            }
        }
        return i10;
    }

    protected i h(String str, long j10, long j11) {
        return new i(str, j10, j11);
    }

    protected int h0(List list) {
        int iF0 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            e eVar = (e) list.get(i10);
            if (com.google.common.base.a.a("urn:mpeg:dash:role:2011", eVar.f76666a)) {
                iF0 |= f0(eVar.f76667b);
            }
        }
        return iF0;
    }

    protected j i(a aVar, String str, String str2, ArrayList arrayList, ArrayList arrayList2) {
        p1.b bVarB = aVar.f76657a.b();
        if (str != null) {
            bVarB.U(str);
        }
        String str3 = aVar.f76660d;
        if (str3 != null) {
            str2 = str3;
        }
        ArrayList arrayList3 = aVar.f76661e;
        arrayList3.addAll(arrayList);
        if (!arrayList3.isEmpty()) {
            q(arrayList3);
            r(arrayList3);
            bVarB.M(new DrmInitData(str2, arrayList3));
        }
        ArrayList arrayList4 = aVar.f76662f;
        arrayList4.addAll(arrayList2);
        return j.n(aVar.f76663g, bVarB.E(), aVar.f76658b, aVar.f76659c, arrayList4, aVar.f76664h, aVar.f76665i, null);
    }

    protected k.e i0(XmlPullParser xmlPullParser, k.e eVar) throws XmlPullParserException, IOException {
        long j10;
        long j11;
        long jW = W(xmlPullParser, "timescale", eVar != null ? eVar.f76703b : 1L);
        long jW2 = W(xmlPullParser, "presentationTimeOffset", eVar != null ? eVar.f76704c : 0L);
        long j12 = eVar != null ? eVar.f76717d : 0L;
        long j13 = eVar != null ? eVar.f76718e : 0L;
        String attributeValue = xmlPullParser.getAttributeValue(null, "indexRange");
        if (attributeValue != null) {
            String[] strArrSplit = attributeValue.split("-");
            j11 = Long.parseLong(strArrSplit[0]);
            j10 = (Long.parseLong(strArrSplit[1]) - j11) + 1;
        } else {
            j10 = j13;
            j11 = j12;
        }
        i iVarS = eVar != null ? eVar.f76702a : null;
        do {
            xmlPullParser.next();
            if (q0.f(xmlPullParser, "Initialization")) {
                iVarS = S(xmlPullParser);
            } else {
                v(xmlPullParser);
            }
        } while (!q0.d(xmlPullParser, "SegmentBase"));
        return m(iVarS, jW, jW2, j11, j10);
    }

    protected k.b j(i iVar, long j10, long j11, long j12, long j13, List list, long j14, List list2, long j15, long j16) {
        return new k.b(iVar, j10, j11, j12, j13, list, j14, list2, p0.B0(j15), p0.B0(j16));
    }

    protected k.b j0(XmlPullParser xmlPullParser, k.b bVar, long j10, long j11, long j12, long j13, long j14) throws XmlPullParserException, IOException {
        long jW = W(xmlPullParser, "timescale", bVar != null ? bVar.f76703b : 1L);
        long jW2 = W(xmlPullParser, "presentationTimeOffset", bVar != null ? bVar.f76704c : 0L);
        long jW3 = W(xmlPullParser, "duration", bVar != null ? bVar.f76706e : C.TIME_UNSET);
        long jW4 = W(xmlPullParser, "startNumber", bVar != null ? bVar.f76705d : 1L);
        long jS = s(j12, j13);
        List listL0 = null;
        List arrayList = null;
        i iVarS = null;
        do {
            xmlPullParser.next();
            if (q0.f(xmlPullParser, "Initialization")) {
                iVarS = S(xmlPullParser);
            } else if (q0.f(xmlPullParser, "SegmentTimeline")) {
                listL0 = l0(xmlPullParser, jW, j11);
            } else if (q0.f(xmlPullParser, "SegmentURL")) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(m0(xmlPullParser));
            } else {
                v(xmlPullParser);
            }
        } while (!q0.d(xmlPullParser, "SegmentList"));
        if (bVar != null) {
            if (iVarS == null) {
                iVarS = bVar.f76702a;
            }
            if (listL0 == null) {
                listL0 = bVar.f76707f;
            }
            if (arrayList == null) {
                arrayList = bVar.f76711j;
            }
        }
        return j(iVarS, jW, jW2, jW4, jW3, listL0, jS, arrayList, j14, j10);
    }

    protected k.c k(i iVar, long j10, long j11, long j12, long j13, long j14, List list, long j15, n nVar, n nVar2, long j16, long j17) {
        return new k.c(iVar, j10, j11, j12, j13, j14, list, j15, nVar, nVar2, p0.B0(j16), p0.B0(j17));
    }

    protected k.c k0(XmlPullParser xmlPullParser, k.c cVar, List list, long j10, long j11, long j12, long j13, long j14) throws XmlPullParserException, IOException {
        long jW = W(xmlPullParser, "timescale", cVar != null ? cVar.f76703b : 1L);
        long jW2 = W(xmlPullParser, "presentationTimeOffset", cVar != null ? cVar.f76704c : 0L);
        long jW3 = W(xmlPullParser, "duration", cVar != null ? cVar.f76706e : C.TIME_UNSET);
        long jW4 = W(xmlPullParser, "startNumber", cVar != null ? cVar.f76705d : 1L);
        long jV = V(list);
        long jS = s(j12, j13);
        List listL0 = null;
        n nVarT0 = t0(xmlPullParser, "media", cVar != null ? cVar.f76713k : null);
        n nVarT1 = t0(xmlPullParser, "initialization", cVar != null ? cVar.f76712j : null);
        i iVarS = null;
        do {
            xmlPullParser.next();
            if (q0.f(xmlPullParser, "Initialization")) {
                iVarS = S(xmlPullParser);
            } else if (q0.f(xmlPullParser, "SegmentTimeline")) {
                listL0 = l0(xmlPullParser, jW, j11);
            } else {
                v(xmlPullParser);
            }
        } while (!q0.d(xmlPullParser, "SegmentTemplate"));
        if (cVar != null) {
            if (iVarS == null) {
                iVarS = cVar.f76702a;
            }
            if (listL0 == null) {
                listL0 = cVar.f76707f;
            }
        }
        return k(iVarS, jW, jW2, jW4, jV, jW3, listL0, jS, nVarT1, nVarT0, j14, j10);
    }

    protected k.d l(long j10, long j11) {
        return new k.d(j10, j11);
    }

    protected List l0(XmlPullParser xmlPullParser, long j10, long j11) throws XmlPullParserException, IOException {
        ArrayList arrayList = new ArrayList();
        long jA = 0;
        long jW = -9223372036854775807L;
        boolean z10 = false;
        int iT = 0;
        do {
            xmlPullParser.next();
            if (q0.f(xmlPullParser, "S")) {
                long jW2 = W(xmlPullParser, "t", C.TIME_UNSET);
                if (z10) {
                    jA = a(arrayList, jA, jW, iT, jW2);
                }
                if (jW2 == C.TIME_UNSET) {
                    jW2 = jA;
                }
                jW = W(xmlPullParser, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, C.TIME_UNSET);
                iT = T(xmlPullParser, CampaignEx.JSON_KEY_AD_R, 0);
                z10 = true;
                jA = jW2;
            } else {
                v(xmlPullParser);
            }
        } while (!q0.d(xmlPullParser, "SegmentTimeline"));
        if (z10) {
            a(arrayList, jA, jW, iT, p0.N0(j11, j10, 1000L));
        }
        return arrayList;
    }

    protected k.e m(i iVar, long j10, long j11, long j12, long j13) {
        return new k.e(iVar, j10, j11, j12, j13);
    }

    protected i m0(XmlPullParser xmlPullParser) {
        return c0(xmlPullParser, "media", "mediaRange");
    }

    protected o n(String str, String str2) {
        return new o(str, str2);
    }

    protected int n0(String str) {
        if (str == null) {
            return 0;
        }
        return (str.equals("forced_subtitle") || str.equals("forced-subtitle")) ? 2 : 0;
    }

    protected int o0(List list) {
        int iN0 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            e eVar = (e) list.get(i10);
            if (com.google.common.base.a.a("urn:mpeg:dash:role:2011", eVar.f76666a)) {
                iN0 |= n0(eVar.f76667b);
            }
        }
        return iN0;
    }

    protected l p0(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        long jW = -9223372036854775807L;
        long jW2 = -9223372036854775807L;
        long jW3 = -9223372036854775807L;
        float fQ = -3.4028235E38f;
        float fQ2 = -3.4028235E38f;
        while (true) {
            xmlPullParser.next();
            if (q0.f(xmlPullParser, "Latency")) {
                jW = W(xmlPullParser, "target", C.TIME_UNSET);
                jW2 = W(xmlPullParser, "min", C.TIME_UNSET);
                jW3 = W(xmlPullParser, "max", C.TIME_UNSET);
            } else if (q0.f(xmlPullParser, "PlaybackRate")) {
                fQ = Q(xmlPullParser, "min", -3.4028235E38f);
                fQ2 = Q(xmlPullParser, "max", -3.4028235E38f);
            }
            long j10 = jW;
            long j11 = jW2;
            long j12 = jW3;
            float f10 = fQ;
            float f11 = fQ2;
            if (q0.d(xmlPullParser, "ServiceDescription")) {
                return new l(j10, j11, j12, f10, f11);
            }
            jW = j10;
            jW2 = j11;
            jW3 = j12;
            fQ = f10;
            fQ2 = f11;
        }
    }

    protected int s0(String str) {
        if (str == null) {
            return 0;
        }
        byte b10 = -1;
        switch (str.hashCode()) {
            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                if (str.equals("1")) {
                    b10 = 0;
                }
                break;
            case 50:
                if (str.equals("2")) {
                    b10 = 1;
                }
                break;
            case AD_REWARD_USER_VALUE:
                if (str.equals("3")) {
                    b10 = 2;
                }
                break;
            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                if (str.equals("4")) {
                    b10 = 3;
                }
                break;
            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                if (str.equals(PrepareException.ERROR_NO_URL)) {
                    b10 = 4;
                }
                break;
        }
        switch (b10) {
            case 0:
                return 512;
            case 1:
                return 2048;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 1;
            default:
                return 0;
        }
    }

    protected n t0(XmlPullParser xmlPullParser, String str, n nVar) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue != null ? n.b(attributeValue) : nVar;
    }

    protected o u0(XmlPullParser xmlPullParser) {
        return n(xmlPullParser.getAttributeValue(null, "schemeIdUri"), xmlPullParser.getAttributeValue(null, AppMeasurementSdk.ConditionalUserProperty.VALUE));
    }

    @Override
    public c parse(Uri uri, InputStream inputStream) throws ParserException {
        try {
            XmlPullParser xmlPullParserNewPullParser = this.f76656a.newPullParser();
            xmlPullParserNewPullParser.setInput(inputStream, null);
            if (xmlPullParserNewPullParser.next() == 2 && "MPD".equals(xmlPullParserNewPullParser.getName())) {
                return X(xmlPullParserNewPullParser, uri);
            }
            throw ParserException.createForMalformedManifest("inputStream does not contain a valid media presentation description", null);
        } catch (XmlPullParserException e10) {
            throw ParserException.createForMalformedManifest(null, e10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:71:0x030e A[LOOP:0: B:3:0x007c->B:71:0x030e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:72:0x02ce A[EDGE_INSN: B:72:0x02ce->B:65:0x02ce BREAK  A[LOOP:0: B:3:0x007c->B:71:0x030e], SYNTHETIC] */
    protected z9.a x(XmlPullParser xmlPullParser, List list, k kVar, long j10, long j11, long j12, long j13, long j14, boolean z10) throws XmlPullParserException, IOException {
        long j15;
        ArrayList arrayList;
        Object obj;
        long j16;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        ArrayList arrayList5;
        String strP;
        ArrayList arrayList6;
        int iO;
        ArrayList arrayList7;
        long jA;
        XmlPullParser xmlPullParser2 = xmlPullParser;
        int iT = T(xmlPullParser2, "id", -1);
        int iF = F(xmlPullParser);
        String attributeValue = xmlPullParser2.getAttributeValue(null, "mimeType");
        String attributeValue2 = xmlPullParser2.getAttributeValue(null, "codecs");
        int iT2 = T(xmlPullParser2, "width", -1);
        int iT3 = T(xmlPullParser2, "height", -1);
        float fR = R(xmlPullParser2, -1.0f);
        int iT4 = T(xmlPullParser2, "audioSamplingRate", -1);
        String str = "lang";
        String attributeValue3 = xmlPullParser2.getAttributeValue(null, "lang");
        String attributeValue4 = xmlPullParser2.getAttributeValue(null, "label");
        ArrayList arrayList8 = new ArrayList();
        ArrayList arrayList9 = new ArrayList();
        ArrayList arrayList10 = new ArrayList();
        ArrayList arrayList11 = new ArrayList();
        ArrayList arrayList12 = new ArrayList();
        ArrayList arrayList13 = new ArrayList();
        ArrayList arrayList14 = new ArrayList();
        ArrayList arrayList15 = new ArrayList();
        k kVarK0 = kVar;
        int i10 = iF;
        int iZ = -1;
        String str2 = attributeValue3;
        String strU = attributeValue4;
        String str3 = null;
        boolean z11 = false;
        long jA2 = j11;
        long j17 = j12;
        while (true) {
            xmlPullParser.next();
            if (q0.f(xmlPullParser2, "BaseURL")) {
                if (!z11) {
                    jA2 = A(xmlPullParser2, jA2);
                    z11 = true;
                }
                j15 = j17;
                arrayList = arrayList9;
                arrayList15.addAll(B(xmlPullParser2, list, z10));
            } else {
                j15 = j17;
                arrayList = arrayList9;
                if (q0.f(xmlPullParser2, "ContentProtection")) {
                    Pair pairE = E(xmlPullParser);
                    Object obj2 = pairE.first;
                    if (obj2 != null) {
                        str3 = (String) obj2;
                    }
                    Object obj3 = pairE.second;
                    if (obj3 != null) {
                        arrayList8.add((DrmInitData.SchemeData) obj3);
                    }
                } else {
                    if (q0.f(xmlPullParser2, "ContentComponent")) {
                        strP = p(str2, xmlPullParser2.getAttributeValue(null, str));
                        obj = null;
                        j16 = jA2;
                        arrayList6 = arrayList14;
                        arrayList2 = arrayList13;
                        arrayList3 = arrayList12;
                        arrayList4 = arrayList11;
                        arrayList5 = arrayList10;
                        iO = o(i10, F(xmlPullParser));
                        arrayList7 = arrayList;
                    } else {
                        int i11 = i10;
                        String str4 = str2;
                        if (q0.f(xmlPullParser2, "Role")) {
                            arrayList11.add(H(xmlPullParser2, "Role"));
                        } else if (q0.f(xmlPullParser2, "AudioChannelConfiguration")) {
                            iZ = z(xmlPullParser);
                        } else if (q0.f(xmlPullParser2, "Accessibility")) {
                            arrayList10.add(H(xmlPullParser2, "Accessibility"));
                        } else if (q0.f(xmlPullParser2, "EssentialProperty")) {
                            arrayList12.add(H(xmlPullParser2, "EssentialProperty"));
                        } else if (q0.f(xmlPullParser2, "SupplementalProperty")) {
                            arrayList13.add(H(xmlPullParser2, "SupplementalProperty"));
                        } else if (q0.f(xmlPullParser2, "Representation")) {
                            j16 = jA2;
                            arrayList2 = arrayList13;
                            arrayList3 = arrayList12;
                            arrayList4 = arrayList11;
                            arrayList5 = arrayList10;
                            obj = null;
                            strP = str4;
                            a aVarD0 = d0(xmlPullParser, !arrayList15.isEmpty() ? arrayList15 : list, attributeValue, attributeValue2, iT2, iT3, fR, iZ, iT4, str4, arrayList4, arrayList5, arrayList3, arrayList2, kVarK0, j13, j10, j16, j15, j14, z10);
                            int iO2 = o(i11, w.k(aVarD0.f76657a.f24901l));
                            arrayList6 = arrayList14;
                            arrayList6.add(aVarD0);
                            xmlPullParser2 = xmlPullParser;
                            iO = iO2;
                            arrayList7 = arrayList;
                        } else {
                            obj = null;
                            j16 = jA2;
                            arrayList15 = arrayList15;
                            arrayList2 = arrayList13;
                            arrayList3 = arrayList12;
                            arrayList4 = arrayList11;
                            arrayList5 = arrayList10;
                            arrayList8 = arrayList8;
                            str = str;
                            strP = str4;
                            arrayList6 = arrayList14;
                            xmlPullParser2 = xmlPullParser;
                            if (q0.f(xmlPullParser2, "SegmentBase")) {
                                kVarK0 = i0(xmlPullParser2, (k.e) kVarK0);
                                iO = i11;
                                arrayList7 = arrayList;
                                j17 = j15;
                                xmlPullParser2 = xmlPullParser2;
                            } else {
                                if (q0.f(xmlPullParser2, "SegmentList")) {
                                    jA = A(xmlPullParser2, j15);
                                    iO = i11;
                                    kVarK0 = j0(xmlPullParser, (k.b) kVarK0, j13, j10, j16, jA, j14);
                                } else {
                                    j17 = j15;
                                    iO = i11;
                                    if (q0.f(xmlPullParser2, "SegmentTemplate")) {
                                        jA = A(xmlPullParser2, j17);
                                        kVarK0 = k0(xmlPullParser, (k.c) kVarK0, arrayList2, j13, j10, j16, jA, j14);
                                    } else {
                                        xmlPullParser2 = xmlPullParser2;
                                        if (q0.f(xmlPullParser2, "InbandEventStream")) {
                                            arrayList7 = arrayList;
                                            arrayList7.add(H(xmlPullParser2, "InbandEventStream"));
                                        } else {
                                            arrayList7 = arrayList;
                                            if (q0.f(xmlPullParser2, "Label")) {
                                                strU = U(xmlPullParser);
                                            } else if (q0.e(xmlPullParser)) {
                                                y(xmlPullParser);
                                            }
                                        }
                                    }
                                }
                                j17 = jA;
                                arrayList7 = arrayList;
                            }
                        }
                        obj = null;
                        j16 = jA2;
                        arrayList15 = arrayList15;
                        arrayList2 = arrayList13;
                        arrayList3 = arrayList12;
                        arrayList4 = arrayList11;
                        arrayList5 = arrayList10;
                        arrayList8 = arrayList8;
                        str = str;
                        iO = i11;
                        strP = str4;
                        arrayList7 = arrayList;
                        j17 = j15;
                        arrayList6 = arrayList14;
                    }
                    j17 = j15;
                }
                if (q0.d(xmlPullParser2, "AdaptationSet")) {
                    break;
                }
                arrayList9 = arrayList7;
                arrayList14 = arrayList6;
                arrayList15 = arrayList15;
                arrayList13 = arrayList2;
                jA2 = j16;
                arrayList12 = arrayList3;
                arrayList11 = arrayList4;
                arrayList10 = arrayList5;
                arrayList8 = arrayList8;
                str = str;
                i10 = iO;
                str2 = strP;
            }
            j17 = j15;
            j16 = jA2;
            arrayList6 = arrayList14;
            arrayList3 = arrayList12;
            arrayList4 = arrayList11;
            arrayList5 = arrayList10;
            arrayList8 = arrayList8;
            str = str;
            arrayList7 = arrayList;
            iO = i10;
            strP = str2;
            obj = null;
            arrayList15 = arrayList15;
            arrayList2 = arrayList13;
            if (q0.d(xmlPullParser2, "AdaptationSet")) {
                break;
                break;
            }
            arrayList9 = arrayList7;
            arrayList14 = arrayList6;
            arrayList15 = arrayList15;
            arrayList13 = arrayList2;
            jA2 = j16;
            arrayList12 = arrayList3;
            arrayList11 = arrayList4;
            arrayList10 = arrayList5;
            arrayList8 = arrayList8;
            str = str;
            i10 = iO;
            str2 = strP;
        }
        List arrayList16 = new ArrayList(arrayList6.size());
        for (int i12 = 0; i12 < arrayList6.size(); i12++) {
            arrayList16.add(i((a) arrayList6.get(i12), strU, str3, arrayList8, arrayList7));
        }
        return b(iT, iO, arrayList16, arrayList5, arrayList3, arrayList2);
    }

    protected void y(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        v(xmlPullParser);
    }

    protected int z(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        String strQ0 = q0(xmlPullParser, "schemeIdUri", null);
        strQ0.hashCode();
        int iJ = -1;
        switch (strQ0) {
            case "urn:dts:dash:audio_channel_configuration:2012":
            case "tag:dts.com,2014:dash:audio_channel_configuration:2012":
                iJ = J(xmlPullParser);
                break;
            case "urn:mpeg:dash:23003:3:audio_channel_configuration:2011":
                iJ = T(xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE, -1);
                break;
            case "tag:dolby.com,2014:dash:audio_channel_configuration:2011":
            case "urn:dolby:dash:audio_channel_configuration:2011":
                iJ = I(xmlPullParser);
                break;
            case "urn:mpeg:mpegB:cicp:ChannelConfiguration":
                iJ = Y(xmlPullParser);
                break;
            case "tag:dts.com,2018:uhd:audio_channel_configuration":
                iJ = K(xmlPullParser);
                break;
        }
        do {
            xmlPullParser.next();
        } while (!q0.d(xmlPullParser, "AudioChannelConfiguration"));
        return iJ;
    }
}
