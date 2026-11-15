package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.io.IOException;
import org.json.JSONException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class xk2 {
    private final el2 a;
    private final rb2 b;
    private final vk2 c;

    public xk2(Context context, sp1 sp1Var) {
        this(context, sp1Var, new el2(), new rb2(context, sp1Var), new vk2());
    }

    public final mb2 a(XmlPullParser xmlPullParser, mb2.a aVar, xj xjVar) throws XmlPullParserException, JSONException, IOException {
        y45.j(xmlPullParser, "parser");
        y45.j(aVar, "videoAdBuilder");
        y45.j(xjVar, "base64EncodingParameters");
        this.a.getClass();
        y45.j(xmlPullParser, "parser");
        xmlPullParser.require(2, null, "Wrapper");
        this.c.getClass();
        y45.j(xmlPullParser, "parser");
        aVar.a(new uk2(Boolean.parseBoolean(xmlPullParser.getAttributeValue(null, "allowMultipleAds")), Boolean.parseBoolean(xmlPullParser.getAttributeValue(null, "followAdditionalWrappers"))));
        while (true) {
            this.a.getClass();
            if (!el2.a(xmlPullParser)) {
                return aVar.a();
            }
            this.a.getClass();
            if (el2.b(xmlPullParser)) {
                if (y45.e("VASTAdTagURI", xmlPullParser.getName())) {
                    this.a.getClass();
                    aVar.h(el2.c(xmlPullParser));
                } else {
                    this.b.a(xmlPullParser, aVar, xjVar);
                }
            }
        }
    }

    public xk2(Context context, sp1 sp1Var, el2 el2Var, rb2 rb2Var, vk2 vk2Var) {
        y45.j(context, "context");
        y45.j(sp1Var, "reporter");
        y45.j(el2Var, "xmlHelper");
        y45.j(rb2Var, "videoAdElementParser");
        y45.j(vk2Var, "wrapperConfigurationParser");
        this.a = el2Var;
        this.b = rb2Var;
        this.c = vk2Var;
    }
}
