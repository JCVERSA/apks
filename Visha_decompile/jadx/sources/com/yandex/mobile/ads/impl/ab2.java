package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class ab2 implements dl2<wa2> {
    private final el2 a;
    private final pq0 b;
    private final za2 c;
    private final n62 d;

    public ab2() {
        this(new el2(), new pq0(), new za2(), new n62());
    }

    @Override
    public final wa2 a(XmlPullParser xmlPullParser, xj xjVar) throws XmlPullParserException, IOException {
        y45.j(xmlPullParser, "parser");
        y45.j(xjVar, "base64EncodingParameters");
        this.a.getClass();
        y45.j(xmlPullParser, "parser");
        xmlPullParser.require(2, null, "Verification");
        av.a(this.a, xmlPullParser, "parser", "vendor", "attributeName");
        String attributeValue = xmlPullParser.getAttributeValue(null, "vendor");
        HashMap map = new HashMap();
        oq0 oq0VarA = null;
        String strA = null;
        while (true) {
            this.a.getClass();
            if (!el2.a(xmlPullParser)) {
                break;
            }
            this.a.getClass();
            if (el2.b(xmlPullParser)) {
                String name = xmlPullParser.getName();
                if (y45.e("JavaScriptResource", name)) {
                    oq0VarA = this.b.a(xmlPullParser);
                } else if (y45.e("VerificationParameters", name)) {
                    strA = this.c.a(xmlPullParser);
                } else if (y45.e("TrackingEvents", name)) {
                    map = this.d.a(xmlPullParser, xjVar);
                } else {
                    this.a.getClass();
                    el2.d(xmlPullParser);
                }
            }
        }
        if (attributeValue == null || attributeValue.length() == 0) {
            return null;
        }
        return new wa2(attributeValue, oq0VarA, strA, map);
    }

    public ab2(el2 el2Var, pq0 pq0Var, za2 za2Var, n62 n62Var) {
        y45.j(el2Var, "xmlHelper");
        y45.j(pq0Var, "javaScriptResourceParser");
        y45.j(za2Var, "verificationParametersParser");
        y45.j(n62Var, "trackingEventsParser");
        this.a = el2Var;
        this.b = pq0Var;
        this.c = za2Var;
        this.d = n62Var;
    }
}
