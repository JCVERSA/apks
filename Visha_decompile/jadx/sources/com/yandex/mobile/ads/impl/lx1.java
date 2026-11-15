package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class lx1 {
    private final el2 a;

    public lx1() {
        this(new el2());
    }

    public final Integer a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        y45.j(xmlPullParser, "parser");
        this.a.getClass();
        y45.j(xmlPullParser, "parser");
        xmlPullParser.require(2, null, "Ad");
        Integer numB = ce2.b(xmlPullParser.getAttributeValue(null, "sequence"));
        if (numB == null || numB.intValue() >= 0) {
            return numB;
        }
        return null;
    }

    public lx1(el2 el2Var) {
        y45.j(el2Var, "xmlHelper");
        this.a = el2Var;
    }
}
