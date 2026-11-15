package com.bytedance.sdk.openadsdk.core.Ym.Sj.Sj;

import android.content.Context;
import android.text.TextUtils;
import android.util.Xml;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class HiB extends com.bytedance.sdk.openadsdk.core.Ym.Sj.sP {
    public static final String Jcg = null;

    public HiB(Context context, int i10, int i11) {
        super(context, i10, i11);
    }

    private static List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> EjP(String str) {
        return Sj(str, false);
    }

    private void TKC(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(Collections.singletonList(new com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(str).Sj()), this.Sj > 0 ? com.bytedance.sdk.openadsdk.core.Ym.Sj.Sj.NO_ADS_VAST_RESPONSE : com.bytedance.sdk.openadsdk.core.Ym.Sj.Sj.UNDEFINED_ERROR, -1L, null), (com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.sP) null);
    }

    public static int sP(String str) {
        if (TextUtils.isEmpty(str)) {
            return Integer.MIN_VALUE;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return Integer.MIN_VALUE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.io.InputStream] */
    @Override
    public com.bytedance.sdk.openadsdk.core.Ym.Sj Sj(String str, List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> list) throws Throwable {
        ByteArrayInputStream byteArrayInputStream;
        this.HiB = 0;
        ?? r10 = 0;
        if (this.sP == null) {
            this.HiB = -1;
            return null;
        }
        ?? IsEmpty = TextUtils.isEmpty(str);
        try {
            if (IsEmpty != 0) {
                this.HiB = -2;
                return null;
            }
            try {
                byteArrayInputStream = new ByteArrayInputStream(str.getBytes("UTF-8"));
                try {
                    XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
                    xmlPullParserNewPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
                    xmlPullParserNewPullParser.setInput(byteArrayInputStream, "UTF-8");
                    xmlPullParserNewPullParser.nextTag();
                    com.bytedance.sdk.openadsdk.core.Ym.Sj Sj2 = Sj(xmlPullParserNewPullParser, list);
                    Sj(Sj2);
                    try {
                        byteArrayInputStream.close();
                    } catch (IOException unused) {
                    }
                    return Sj2;
                } catch (Exception unused2) {
                    this.HiB = -3;
                    Sj((com.bytedance.sdk.openadsdk.core.Ym.Sj) null);
                    if (byteArrayInputStream != null) {
                        try {
                            byteArrayInputStream.close();
                        } catch (IOException unused3) {
                        }
                    }
                    return null;
                }
            } catch (Exception unused4) {
                byteArrayInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                if (r10 != 0) {
                    try {
                        r10.close();
                    } catch (IOException unused5) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            r10 = IsEmpty;
        }
    }

    static class Sj {
        String EjP;
        String Sj;
        com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.sP TKC;
        com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.EnumC0247Sj sP;
        final List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> HiB = new ArrayList();
        final List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> vS = new ArrayList();
        float Jcg = Float.MIN_VALUE;

        public Sj() {
        }

        public void Sj(String str, com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.EnumC0247Sj enumC0247Sj, com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.sP sPVar) {
            this.Sj = str;
            this.sP = enumC0247Sj;
            this.TKC = sPVar;
        }

        public void sP(String str) {
            this.vS.add(new com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(str).Sj());
        }

        public void Sj(String str) {
            this.HiB.add(new com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(str).Sj());
        }

        public Sj(String str, com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.EnumC0247Sj enumC0247Sj, com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.sP sPVar) {
            Sj(str, enumC0247Sj, sPVar);
        }
    }

    public static String sP(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        String strTrim;
        String str2 = Jcg;
        xmlPullParser.require(2, str2, str);
        if (xmlPullParser.next() == 4) {
            strTrim = xmlPullParser.getText().trim();
            xmlPullParser.nextTag();
        } else {
            strTrim = "";
        }
        xmlPullParser.require(3, str2, str);
        return strTrim;
    }

    private com.bytedance.sdk.openadsdk.core.Ym.Sj sP(XmlPullParser xmlPullParser, List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> list) throws Throwable {
        int i10 = 2;
        if (this.Sj >= 5) {
            Sj(xmlPullParser);
            return null;
        }
        com.bytedance.sdk.openadsdk.core.Ym.EjP ejP = new com.bytedance.sdk.openadsdk.core.Ym.EjP(null);
        String str = null;
        com.bytedance.sdk.openadsdk.core.Ym.TKC tkcSj = null;
        while (true) {
            if (xmlPullParser.getEventType() == 3 && "Wrapper".equals(xmlPullParser.getName())) {
                com.bytedance.sdk.openadsdk.core.Ym.Sj Sj2 = Sj(str, list);
                if (Sj2 != null) {
                    if (Sj2.TKC() == null) {
                        Sj2.Sj(tkcSj);
                    }
                    Sj2.Sj().Sj(ejP);
                }
                return Sj2;
            }
            xmlPullParser.next();
            if (xmlPullParser.getEventType() == i10) {
                String name = xmlPullParser.getName();
                name.hashCode();
                switch (name) {
                    case "VASTAdTagURI":
                        String strSP = sP(sP(xmlPullParser, "VASTAdTagURI"), list);
                        if (!TextUtils.isEmpty(strSP)) {
                            str = strSP;
                            break;
                        } else {
                            Sj(xmlPullParser, "Wrapper", 3);
                            this.HiB = -2;
                            return null;
                        }
                        break;
                    case "Error":
                        list.add(new com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(sP(xmlPullParser, "Error")).Sj());
                        break;
                    case "TrackingEvents":
                        TKC.Sj(xmlPullParser, ejP);
                        break;
                    case "CompanionAds":
                        tkcSj = com.bytedance.sdk.openadsdk.core.Ym.Sj.Sj.Sj.Sj(this.sP, xmlPullParser);
                        break;
                    case "ClickTracking":
                        ejP.Jcg(Sj(xmlPullParser, "ClickTracking"));
                        break;
                    case "Impression":
                        ejP.Sj(Sj(xmlPullParser, name));
                        break;
                }
            }
            i10 = 2;
        }
    }

    private void Sj(com.bytedance.sdk.openadsdk.core.Ym.Sj sj2) {
        if (this.vS == null) {
            this.vS = new com.bytedance.sdk.openadsdk.core.Ym.Sj.sP.Sj();
        }
        com.bytedance.sdk.openadsdk.core.Ym.Sj.sP.Sj sj3 = this.vS;
        sj3.Sj = this.HiB;
        sj3.sP = this.Sj;
        if (sj2 != null) {
            sj3.TKC = sj2.Sj().sP.size() <= 0;
        }
    }

    private com.bytedance.sdk.openadsdk.core.Ym.Sj Sj(XmlPullParser xmlPullParser, List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> list) throws Throwable {
        xmlPullParser.require(2, Jcg, "VAST");
        boolean z10 = false;
        String strSP = null;
        while (xmlPullParser.next() != 1) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if ("Error".equals(name)) {
                    strSP = sP(xmlPullParser, name);
                } else if ("Ad".equals(name)) {
                    if (Sj(xmlPullParser.getAttributeValue(Jcg, "sequence"))) {
                        while (true) {
                            if (xmlPullParser.next() == 3 && "Ad".equals(xmlPullParser.getName())) {
                                break;
                            }
                            if (xmlPullParser.getEventType() == 2) {
                                String name2 = xmlPullParser.getName();
                                if ("InLine".equals(name2)) {
                                    com.bytedance.sdk.openadsdk.core.Ym.Sj Sj2 = sP.Sj(this.sP, xmlPullParser, list, this.TKC, this.EjP);
                                    if (Sj2 != null) {
                                        if (!TextUtils.isEmpty(Sj2.Jcg())) {
                                            return Sj2;
                                        }
                                        this.HiB = -6;
                                        return null;
                                    }
                                } else if ("Wrapper".equals(name2)) {
                                    com.bytedance.sdk.openadsdk.core.Ym.Sj sjSP = sP(xmlPullParser, list);
                                    if (sjSP != null) {
                                        return sjSP;
                                    }
                                } else {
                                    Sj(xmlPullParser);
                                }
                            }
                        }
                    } else {
                        Sj(xmlPullParser);
                    }
                    z10 = true;
                } else {
                    Sj(xmlPullParser);
                }
            }
        }
        if (!z10) {
            this.HiB = -4;
            TKC(strSP);
        }
        if (this.HiB == 0) {
            this.HiB = -5;
        }
        return null;
    }

    public static List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> Sj(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        return EjP(sP(xmlPullParser, str));
    }

    public static void Sj(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        if (xmlPullParser.getEventType() != 2) {
            throw new IllegalStateException();
        }
        int i10 = 1;
        while (i10 != 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i10++;
            } else if (next == 3) {
                i10--;
            }
        }
    }

    public static void Sj(XmlPullParser xmlPullParser, String str, int i10) throws XmlPullParserException, IOException {
        while (xmlPullParser.getEventType() != 1) {
            if (str.equals(xmlPullParser.getName()) && xmlPullParser.getEventType() == i10) {
                return;
            } else {
                xmlPullParser.next();
            }
        }
    }

    private static List<com.bytedance.sdk.openadsdk.core.Ym.sP.TKC> Sj(String str, boolean z10) {
        if (TextUtils.isEmpty(str)) {
            return new ArrayList();
        }
        return Collections.singletonList(new com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(str).Sj(z10).Sj());
    }
}
