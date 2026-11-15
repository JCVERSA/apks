package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.io.IOException;
import org.json.JSONException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class yk0 {
    private final rb2 a;
    private final el2 b;

    public yk0(rb2 rb2Var) {
        this(rb2Var, new el2());
    }

    public final mb2 a(XmlPullParser xmlPullParser, mb2.a aVar, xj xjVar) throws XmlPullParserException, JSONException, IOException {
        y45.j(xmlPullParser, "parser");
        y45.j(aVar, "videoAdBuilder");
        y45.j(xjVar, "base64EncodingParameters");
        this.b.getClass();
        y45.j(xmlPullParser, "parser");
        xmlPullParser.require(2, null, "InLine");
        while (true) {
            this.b.getClass();
            if (!el2.a(xmlPullParser)) {
                break;
            }
            this.b.getClass();
            if (el2.b(xmlPullParser)) {
                this.a.a(xmlPullParser, aVar, xjVar);
            }
        }
        mb2 mb2VarA = aVar.a();
        if (mb2VarA.e().isEmpty()) {
            return null;
        }
        return mb2VarA;
    }

    public yk0(rb2 rb2Var, el2 el2Var) {
        y45.j(rb2Var, "videoAdElementParser");
        y45.j(el2Var, "xmlHelper");
        this.a = rb2Var;
        this.b = el2Var;
    }
}
