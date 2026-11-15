package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.util.Xml;
import defpackage.y45;
import java.io.IOException;
import java.io.StringReader;
import org.json.JSONException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class ua2 {
    private final el2 a;
    private final y92 b;

    public ua2(Context context, sp1 sp1Var) {
        this(context, sp1Var, new el2(), new y92(context, sp1Var));
    }

    public final u92 a(String str, xj xjVar) throws XmlPullParserException, JSONException, IOException {
        y45.j(str, "data");
        y45.j(xjVar, "base64EncodingParameters");
        XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
        xmlPullParserNewPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
        xmlPullParserNewPullParser.setInput(new StringReader(str));
        y45.g(xmlPullParserNewPullParser);
        xmlPullParserNewPullParser.nextTag();
        this.a.getClass();
        y45.j(xmlPullParserNewPullParser, "parser");
        xmlPullParserNewPullParser.require(2, null, "VAST");
        return this.b.a(xmlPullParserNewPullParser, xjVar);
    }

    public ua2(Context context, sp1 sp1Var, el2 el2Var, y92 y92Var) {
        y45.j(context, "context");
        y45.j(sp1Var, "reporter");
        y45.j(el2Var, "xmlHelper");
        y45.j(y92Var, "vastAdsParser");
        this.a = el2Var;
        this.b = y92Var;
    }
}
