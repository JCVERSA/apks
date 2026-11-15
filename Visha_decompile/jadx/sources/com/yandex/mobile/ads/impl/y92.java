package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.io.IOException;
import java.util.ArrayList;
import org.json.JSONException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class y92 {
    private final el2 a;
    private final mc2 b;

    public y92(Context context, sp1 sp1Var) {
        this(context, sp1Var, new el2(), new mc2(context, sp1Var));
    }

    public final u92 a(XmlPullParser xmlPullParser, xj xjVar) throws XmlPullParserException, JSONException, IOException {
        y45.j(xmlPullParser, "parser");
        y45.j(xjVar, "base64EncodingParameters");
        av.a(this.a, xmlPullParser, "parser", "version", "attributeName");
        String attributeValue = xmlPullParser.getAttributeValue(null, "version");
        ArrayList arrayList = new ArrayList();
        while (true) {
            this.a.getClass();
            if (!el2.a(xmlPullParser)) {
                break;
            }
            this.a.getClass();
            if (el2.b(xmlPullParser)) {
                if (y45.e("Ad", xmlPullParser.getName())) {
                    mb2 mb2VarA = this.b.a(xmlPullParser, xjVar);
                    if (mb2VarA != null) {
                        arrayList.add(mb2VarA);
                    }
                } else {
                    this.a.getClass();
                    el2.d(xmlPullParser);
                }
            }
        }
        if (attributeValue == null || attributeValue.length() == 0) {
            return null;
        }
        return new u92(attributeValue, arrayList);
    }

    public y92(Context context, sp1 sp1Var, el2 el2Var, mc2 mc2Var) {
        y45.j(context, "context");
        y45.j(sp1Var, "reporter");
        y45.j(el2Var, "xmlHelper");
        y45.j(mc2Var, "videoAdParser");
        this.a = el2Var;
        this.b = mc2Var;
    }
}
