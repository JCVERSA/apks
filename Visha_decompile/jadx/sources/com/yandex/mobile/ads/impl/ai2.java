package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class ai2 implements dl2<zh2> {
    private final el2 a;

    public ai2() {
        this(new el2());
    }

    @Override
    public final zh2 a(XmlPullParser xmlPullParser, xj xjVar) throws XmlPullParserException, IOException {
        y45.j(xmlPullParser, "parser");
        y45.j(xjVar, "base64EncodingParameters");
        this.a.getClass();
        y45.j(xmlPullParser, "parser");
        xmlPullParser.require(2, null, "ViewableImpression");
        ArrayList arrayList = new ArrayList();
        while (true) {
            this.a.getClass();
            if (!el2.a(xmlPullParser)) {
                return new zh2(arrayList);
            }
            this.a.getClass();
            if (el2.b(xmlPullParser)) {
                if (y45.e("Viewable", xmlPullParser.getName())) {
                    this.a.getClass();
                    arrayList.add(el2.c(xmlPullParser));
                } else {
                    this.a.getClass();
                    el2.d(xmlPullParser);
                }
            }
        }
    }

    public ai2(el2 el2Var) {
        y45.j(el2Var, "xmlHelper");
        this.a = el2Var;
    }
}
