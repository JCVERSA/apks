package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.io.IOException;
import org.json.JSONException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class wu<T> implements dl2<T> {
    private final dl2<T> a;
    private final el2 b;

    public wu(r80 r80Var, el2 el2Var) {
        y45.j(r80Var, "xmlElementParser");
        y45.j(el2Var, "xmlHelper");
        this.a = r80Var;
        this.b = el2Var;
    }

    @Override
    public final T a(XmlPullParser xmlPullParser, xj xjVar) throws XmlPullParserException, JSONException, IOException {
        y45.j(xmlPullParser, "parser");
        y45.j(xjVar, "base64EncodingParameters");
        this.b.getClass();
        y45.j(xmlPullParser, "parser");
        T tA = null;
        xmlPullParser.require(2, null, "CreativeExtension");
        while (true) {
            this.b.getClass();
            if (!el2.a(xmlPullParser)) {
                return tA;
            }
            this.b.getClass();
            if (el2.b(xmlPullParser)) {
                tA = this.a.a(xmlPullParser, xjVar);
            }
        }
    }
}
