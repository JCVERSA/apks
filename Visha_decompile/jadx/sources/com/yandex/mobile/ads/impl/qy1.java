package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.io.IOException;
import org.mozilla.javascript.ES6Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class qy1 implements dl2<u70> {
    private final el2 a;

    public qy1(el2 el2Var) {
        y45.j(el2Var, "xmlHelper");
        this.a = el2Var;
    }

    @Override
    public final u70 a(XmlPullParser xmlPullParser, xj xjVar) throws XmlPullParserException, IOException {
        y45.j(xmlPullParser, "parser");
        y45.j(xjVar, "base64EncodingParameters");
        this.a.getClass();
        y45.j(xmlPullParser, "parser");
        xmlPullParser.require(2, null, "Extension");
        String attributeValue = xmlPullParser.getAttributeValue(null, "type");
        this.a.getClass();
        String strC = el2.c(xmlPullParser);
        if (attributeValue == null || attributeValue.length() == 0 || strC.length() <= 0) {
            return null;
        }
        y45.g(attributeValue);
        y45.j(attributeValue, "type");
        y45.j(strC, ES6Iterator.VALUE_PROPERTY);
        return new u70(attributeValue, strC);
    }
}
