package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.io.IOException;
import java.util.Iterator;
import org.json.JSONException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class sr0 {
    private final el2 a;
    private final ie2 b;
    private final t40 c;
    private final tz1 d;
    private final cl2<ew0> e;
    private final cl2<mi0> f;
    private final cl2<l62> g;

    public sr0() {
        this(new el2(), new ie2(), new t40(), new tz1(), new cl2(new gw0(), "MediaFiles", "MediaFile"), new cl2(new ni0(), "Icons", "Icon"), new cl2(new m62(), "TrackingEvents", "Tracking"));
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void a(XmlPullParser xmlPullParser, uu.a aVar, xj xjVar) throws XmlPullParserException, JSONException, IOException {
        y45.j(xmlPullParser, "parser");
        y45.j(aVar, "creativeBuilder");
        y45.j(xjVar, "base64EncodingParameters");
        this.a.getClass();
        y45.j(xmlPullParser, "parser");
        xmlPullParser.require(2, null, "Linear");
        this.d.getClass();
        y45.j(xmlPullParser, "parser");
        String attributeValue = xmlPullParser.getAttributeValue(null, "skipoffset");
        if (attributeValue == null) {
            attributeValue = "";
        }
        aVar.a(attributeValue.length() > 0 ? new sz1(attributeValue) : null);
        while (true) {
            this.a.getClass();
            if (!el2.a(xmlPullParser)) {
                return;
            }
            this.a.getClass();
            if (el2.b(xmlPullParser)) {
                String name = xmlPullParser.getName();
                if (name != null) {
                    switch (name.hashCode()) {
                        case -2049897434:
                            if (name.equals("VideoClicks")) {
                                he2 he2VarA = this.b.a(xmlPullParser, xjVar);
                                aVar.b(he2VarA.a());
                                Iterator<String> it = he2VarA.b().iterator();
                                while (it.hasNext()) {
                                    aVar.a(new l62("clickTracking", it.next(), null));
                                }
                            }
                            break;
                        case -1927368268:
                            if (name.equals("Duration")) {
                                aVar.a(this.c.a(xmlPullParser));
                            }
                            break;
                        case -1348833651:
                            if (name.equals("AdParameters")) {
                                this.a.getClass();
                                aVar.a(el2.c(xmlPullParser));
                            }
                            break;
                        case -385055469:
                            if (name.equals("MediaFiles")) {
                                aVar.b(this.e.a(xmlPullParser, xjVar));
                            }
                            break;
                        case 70476538:
                            if (name.equals("Icons")) {
                                aVar.a(this.f.a(xmlPullParser, xjVar));
                            }
                            break;
                        case 611554000:
                            if (name.equals("TrackingEvents")) {
                                Iterator it2 = this.g.a(xmlPullParser, xjVar).iterator();
                                while (it2.hasNext()) {
                                    aVar.a((l62) it2.next());
                                }
                            }
                            break;
                        default:
                            break;
                    }
                }
                this.a.getClass();
                el2.d(xmlPullParser);
            }
        }
    }

    public sr0(el2 el2Var, ie2 ie2Var, t40 t40Var, tz1 tz1Var, cl2<ew0> cl2Var, cl2<mi0> cl2Var2, cl2<l62> cl2Var3) {
        y45.j(el2Var, "xmlHelper");
        y45.j(ie2Var, "videoClicksParser");
        y45.j(t40Var, "durationParser");
        y45.j(tz1Var, "skipOffsetParser");
        y45.j(cl2Var, "mediaFileArrayParser");
        y45.j(cl2Var2, "iconArrayParser");
        y45.j(cl2Var3, "trackingEventsArrayParser");
        this.a = el2Var;
        this.b = ie2Var;
        this.c = t40Var;
        this.d = tz1Var;
        this.e = cl2Var;
        this.f = cl2Var2;
        this.g = cl2Var3;
    }
}
