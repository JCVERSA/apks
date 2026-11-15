package com.yandex.mobile.ads.impl;

import android.content.Context;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;
import java.io.IOException;
import org.json.JSONException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class bv implements dl2<uu> {
    private final el2 a;
    private final sr0 b;
    private final yu c;

    public bv(Context context, sp1 sp1Var) {
        this(context, sp1Var, new el2(), new sr0(), new yu(context, sp1Var));
    }

    @Override
    public final uu a(XmlPullParser xmlPullParser, xj xjVar) throws XmlPullParserException, JSONException, IOException {
        y45.j(xmlPullParser, "parser");
        y45.j(xjVar, "base64EncodingParameters");
        this.a.getClass();
        y45.j(xmlPullParser, "parser");
        xmlPullParser.require(2, null, "Creative");
        av.a(this.a, xmlPullParser, "parser", TtmlNode.ATTR_ID, "attributeName");
        String attributeValue = xmlPullParser.getAttributeValue(null, TtmlNode.ATTR_ID);
        uu.a aVar = new uu.a();
        aVar.c(attributeValue);
        boolean z = false;
        while (true) {
            this.a.getClass();
            if (!el2.a(xmlPullParser)) {
                break;
            }
            this.a.getClass();
            if (el2.b(xmlPullParser)) {
                String name = xmlPullParser.getName();
                if (y45.e("Linear", name)) {
                    this.b.a(xmlPullParser, aVar, xjVar);
                    z = true;
                } else if (y45.e("CreativeExtensions", name)) {
                    aVar.a(this.c.a(xmlPullParser, xjVar));
                } else {
                    this.a.getClass();
                    el2.d(xmlPullParser);
                }
            }
        }
        if (z) {
            return aVar.a();
        }
        return null;
    }

    public bv(Context context, sp1 sp1Var, el2 el2Var, sr0 sr0Var, yu yuVar) {
        y45.j(context, "context");
        y45.j(sp1Var, "reporter");
        y45.j(el2Var, "xmlHelper");
        y45.j(sr0Var, "linearCreativeParser");
        y45.j(yuVar, "creativeExtensionsParser");
        this.a = el2Var;
        this.b = sr0Var;
        this.c = yuVar;
    }
}
