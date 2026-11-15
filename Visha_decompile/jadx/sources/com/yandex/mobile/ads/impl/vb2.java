package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class vb2 {
    private static final String d = "yandex_tracking_events";
    private static final List<String> e = defpackage.y71.n("ad_system", "social_ad_info", "AdTune", "yandex_ad_info", "bannerId", "VitrinaTVIsInteractive");
    private final el2 a;
    private final qy1 b;
    private final cl2<l62> c;

    public vb2() {
        el2 el2Var = new el2();
        this.a = el2Var;
        this.b = new qy1(el2Var);
        this.c = a();
    }

    public final ub2 a(XmlPullParser xmlPullParser, xj xjVar) throws XmlPullParserException, IOException {
        y45.j(xmlPullParser, "parser");
        y45.j(xjVar, "base64EncodingParameters");
        this.a.getClass();
        y45.j(xmlPullParser, "parser");
        xmlPullParser.require(2, null, "Extensions");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ub2.a aVar = new ub2.a();
        while (true) {
            this.a.getClass();
            if (!el2.a(xmlPullParser)) {
                aVar.a(arrayList2);
                aVar.b(arrayList);
                return aVar.a();
            }
            this.a.getClass();
            if (el2.b(xmlPullParser)) {
                if (y45.e("Extension", xmlPullParser.getName())) {
                    String attributeValue = xmlPullParser.getAttributeValue(null, "type");
                    if (e.contains(attributeValue)) {
                        u70 u70VarA = this.b.a(xmlPullParser, xjVar);
                        if (u70VarA != null) {
                            arrayList2.add(u70VarA);
                        }
                    } else if (y45.e(d, attributeValue)) {
                        arrayList.addAll(this.c.a(xmlPullParser, xjVar));
                    } else {
                        this.a.getClass();
                        el2.d(xmlPullParser);
                    }
                } else {
                    this.a.getClass();
                    el2.d(xmlPullParser);
                }
            }
        }
    }

    private static cl2 a() {
        return new cl2(new m62(), "Extension", "Tracking", new el2());
    }
}
