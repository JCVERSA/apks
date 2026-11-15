package com.yandex.mobile.ads.impl;

import defpackage.f1a;
import defpackage.y45;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class r80 implements dl2<m80> {
    private final el2 a;

    public r80(el2 el2Var) {
        y45.j(el2Var, "xmlHelper");
        this.a = el2Var;
    }

    @Override
    public final m80 a(XmlPullParser xmlPullParser, xj xjVar) throws XmlPullParserException, IOException {
        y45.j(xmlPullParser, "parser");
        y45.j(xjVar, "base64EncodingParameters");
        this.a.getClass();
        y45.j(xmlPullParser, "parser");
        xmlPullParser.require(2, null, "FalseClick");
        av.a(this.a, xmlPullParser, "parser", "interval", "attributeName");
        String attributeValue = xmlPullParser.getAttributeValue(null, "interval");
        Long lT = attributeValue != null ? f1a.t(attributeValue) : null;
        this.a.getClass();
        String strC = el2.c(xmlPullParser);
        if (strC.length() <= 0 || lT == null) {
            return null;
        }
        return new m80(strC, lT.longValue());
    }
}
