package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class za2 {
    private final el2 a;

    public za2() {
        this(new el2());
    }

    public final String a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        y45.j(xmlPullParser, "parser");
        this.a.getClass();
        y45.j(xmlPullParser, "parser");
        xmlPullParser.require(2, null, "VerificationParameters");
        this.a.getClass();
        String strC = el2.c(xmlPullParser);
        if (strC.length() == 0) {
            return null;
        }
        return strC;
    }

    public za2(el2 el2Var) {
        y45.j(el2Var, "xmlHelper");
        this.a = el2Var;
    }
}
