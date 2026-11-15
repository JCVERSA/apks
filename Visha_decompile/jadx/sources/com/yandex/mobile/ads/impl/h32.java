package com.yandex.mobile.ads.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class h32 {
    private final el2 a;

    public h32() {
        y45.j(TtmlNode.ATTR_ID, "attribute");
        y45.j("Ad", "parentTag");
        this.a = new el2();
    }

    public final String a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        y45.j(xmlPullParser, "parser");
        this.a.getClass();
        y45.j(xmlPullParser, "parser");
        xmlPullParser.require(2, null, "Ad");
        String attributeValue = xmlPullParser.getAttributeValue(null, TtmlNode.ATTR_ID);
        if (attributeValue == null || attributeValue.length() == 0) {
            return null;
        }
        return attributeValue;
    }
}
