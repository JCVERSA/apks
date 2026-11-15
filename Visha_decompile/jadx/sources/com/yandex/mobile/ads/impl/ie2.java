package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class ie2 implements dl2<he2> {
    private final el2 a;

    public ie2() {
        this(new el2());
    }

    @Override
    public final he2 a(XmlPullParser xmlPullParser, xj xjVar) throws XmlPullParserException, IOException {
        y45.j(xmlPullParser, "parser");
        y45.j(xjVar, "base64EncodingParameters");
        this.a.getClass();
        y45.j(xmlPullParser, "parser");
        String str = null;
        xmlPullParser.require(2, null, "VideoClicks");
        ArrayList arrayList = new ArrayList();
        while (true) {
            this.a.getClass();
            if (!el2.a(xmlPullParser)) {
                return new he2(str, arrayList);
            }
            this.a.getClass();
            if (el2.b(xmlPullParser)) {
                String name = xmlPullParser.getName();
                if (y45.e("ClickThrough", name)) {
                    this.a.getClass();
                    String strC = el2.c(xmlPullParser);
                    if (strC.length() > 0) {
                        str = strC;
                    }
                } else if (y45.e("ClickTracking", name)) {
                    this.a.getClass();
                    String strC2 = el2.c(xmlPullParser);
                    if (strC2.length() > 0) {
                        arrayList.add(strC2);
                    }
                } else {
                    this.a.getClass();
                    el2.d(xmlPullParser);
                }
            }
        }
    }

    public ie2(el2 el2Var) {
        y45.j(el2Var, "xmlHelper");
        this.a = el2Var;
    }
}
