package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class t40 {
    private final el2 a;

    public t40() {
        this(new el2());
    }

    public final int a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        y45.j(xmlPullParser, "parser");
        this.a.getClass();
        y45.j(xmlPullParser, "parser");
        xmlPullParser.require(2, null, "Duration");
        this.a.getClass();
        Long lA = ce2.a(el2.c(xmlPullParser));
        if (lA != null) {
            return (int) lA.longValue();
        }
        return 0;
    }

    public t40(el2 el2Var) {
        y45.j(el2Var, "xmlHelper");
        this.a = el2Var;
    }
}
