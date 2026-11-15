package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class u9 {
    private final el2 a;

    public u9(el2 el2Var) {
        y45.j(el2Var, "xmlHelper");
        this.a = el2Var;
    }

    public final t9 a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        y45.j(xmlPullParser, "parser");
        this.a.getClass();
        y45.j(xmlPullParser, "parser");
        xmlPullParser.require(2, null, "AdTagURI");
        xmlPullParser.getAttributeValue(null, "templateType");
        this.a.getClass();
        String strC = el2.c(xmlPullParser);
        if (strC.length() <= 0) {
            return null;
        }
        y45.j(strC, "uri");
        return new t9(strC);
    }
}
