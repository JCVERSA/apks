package com.yandex.mobile.ads.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class gw0 implements dl2<ew0> {
    private final el2 a;

    public gw0() {
        this(new el2());
    }

    @Override
    public final ew0 a(XmlPullParser xmlPullParser, xj xjVar) throws XmlPullParserException, IOException {
        y45.j(xmlPullParser, "parser");
        y45.j(xjVar, "base64EncodingParameters");
        this.a.getClass();
        y45.j(xmlPullParser, "parser");
        xmlPullParser.require(2, null, "MediaFile");
        av.a(this.a, xmlPullParser, "parser", "delivery", "attributeName");
        String attributeValue = xmlPullParser.getAttributeValue(null, "delivery");
        av.a(this.a, xmlPullParser, "parser", "type", "attributeName");
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "type");
        av.a(this.a, xmlPullParser, "parser", "height", "attributeName");
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "height");
        av.a(this.a, xmlPullParser, "parser", "width", "attributeName");
        String attributeValue4 = xmlPullParser.getAttributeValue(null, "width");
        av.a(this.a, xmlPullParser, "parser", "bitrate", "attributeName");
        String attributeValue5 = xmlPullParser.getAttributeValue(null, "bitrate");
        av.a(this.a, xmlPullParser, "parser", "apiFramework", "attributeName");
        String attributeValue6 = xmlPullParser.getAttributeValue(null, "apiFramework");
        av.a(this.a, xmlPullParser, "parser", TtmlNode.ATTR_ID, "attributeName");
        String attributeValue7 = xmlPullParser.getAttributeValue(null, TtmlNode.ATTR_ID);
        av.a(this.a, xmlPullParser, "parser", "codec", "attributeName");
        String attributeValue8 = xmlPullParser.getAttributeValue(null, "codec");
        av.a(this.a, xmlPullParser, "parser", "vmaf", "attributeName");
        String attributeValue9 = xmlPullParser.getAttributeValue(null, "vmaf");
        this.a.getClass();
        return new ew0.a(el2.c(xmlPullParser)).f(attributeValue7).d(attributeValue).e(attributeValue3).i(attributeValue4).b(attributeValue5).a(attributeValue6).g(attributeValue2).c(attributeValue8).h(attributeValue9).a();
    }

    public gw0(el2 el2Var) {
        y45.j(el2Var, "xmlHelper");
        this.a = el2Var;
    }
}
