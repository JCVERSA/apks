package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class pq0 {
    private final el2 a;

    public pq0() {
        this(new el2());
    }

    public final oq0 a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        y45.j(xmlPullParser, "parser");
        this.a.getClass();
        y45.j(xmlPullParser, "parser");
        xmlPullParser.require(2, null, "JavaScriptResource");
        av.a(this.a, xmlPullParser, "parser", "apiFramework", "attributeName");
        String attributeValue = xmlPullParser.getAttributeValue(null, "apiFramework");
        av.a(this.a, xmlPullParser, "parser", "browserOptional", "attributeName");
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "browserOptional");
        Boolean boolValueOf = attributeValue2 != null ? Boolean.valueOf(Boolean.parseBoolean(attributeValue2)) : null;
        this.a.getClass();
        String strC = el2.c(xmlPullParser);
        if (attributeValue == null || attributeValue.length() == 0 || boolValueOf == null || strC.length() <= 0) {
            return null;
        }
        return new oq0(attributeValue, strC, boolValueOf.booleanValue());
    }

    public pq0(el2 el2Var) {
        y45.j(el2Var, "xmlHelper");
        this.a = el2Var;
    }
}
