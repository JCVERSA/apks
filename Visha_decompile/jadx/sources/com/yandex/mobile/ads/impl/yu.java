package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.io.IOException;
import org.json.JSONException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class yu {
    private static final String e = "yandex_tracking_events";
    private static final String f = "yandex_linear_creative_info";
    private final el2 a;
    private final rr0 b;
    private final wu<m80> c;
    private final cl2<l62> d;

    public yu(Context context, sp1 sp1Var) {
        this(context, sp1Var, new el2(), new rr0(sp1Var, new dh(context, sp1Var, (wr0) null, 12)));
    }

    private static cl2 b() {
        return new cl2(new m62(), "CreativeExtension", "Tracking", new el2());
    }

    public final xu a(XmlPullParser xmlPullParser, xj xjVar) throws XmlPullParserException, JSONException, IOException {
        y45.j(xmlPullParser, "parser");
        y45.j(xjVar, "base64EncodingParameters");
        this.a.getClass();
        y45.j(xmlPullParser, "parser");
        xmlPullParser.require(2, null, "CreativeExtensions");
        xu.a aVar = new xu.a();
        while (true) {
            this.a.getClass();
            if (!el2.a(xmlPullParser)) {
                return aVar.a();
            }
            this.a.getClass();
            if (el2.b(xmlPullParser)) {
                if (y45.e("CreativeExtension", xmlPullParser.getName())) {
                    String attributeValue = xmlPullParser.getAttributeValue(null, "type");
                    if (y45.e("false_click", attributeValue)) {
                        aVar.a(this.c.a(xmlPullParser, xjVar));
                    } else if (y45.e(e, attributeValue)) {
                        aVar.a(this.d.a(xmlPullParser, xjVar));
                    } else if (y45.e(f, attributeValue)) {
                        aVar.a(this.b.a(xmlPullParser, xjVar));
                    } else {
                        this.a.getClass();
                        el2.d(xmlPullParser);
                    }
                } else {
                    this.a.getClass();
                    el2.d(xmlPullParser);
                }
            }
        }
    }

    public yu(Context context, sp1 sp1Var, el2 el2Var, rr0 rr0Var) {
        y45.j(context, "context");
        y45.j(sp1Var, "reporter");
        y45.j(el2Var, "xmlHelper");
        y45.j(rr0Var, "linearCreativeInfoParser");
        this.a = el2Var;
        this.b = rr0Var;
        this.c = a();
        this.d = b();
    }

    private static wu a() {
        return new wu(new r80(new el2()), new el2());
    }
}
