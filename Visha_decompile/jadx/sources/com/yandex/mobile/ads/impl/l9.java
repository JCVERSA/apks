package com.yandex.mobile.ads.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class l9 {
    private final el2 a;
    private final u9 b;

    public l9(el2 el2Var) {
        this(el2Var, new u9(el2Var));
    }

    public final k9 a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        y45.j(xmlPullParser, "parser");
        this.a.getClass();
        y45.j(xmlPullParser, "parser");
        k9 k9Var = null;
        xmlPullParser.require(2, null, "AdSource");
        av.a(this.a, xmlPullParser, "parser", "allowMultipleAds", "attributeName");
        String attributeValue = xmlPullParser.getAttributeValue(null, "allowMultipleAds");
        if (attributeValue != null) {
            Boolean.parseBoolean(attributeValue);
        }
        av.a(this.a, xmlPullParser, "parser", "followRedirects", "attributeName");
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "followRedirects");
        if (attributeValue2 != null) {
            Boolean.parseBoolean(attributeValue2);
        }
        String attributeValue3 = xmlPullParser.getAttributeValue(null, TtmlNode.ATTR_ID);
        while (true) {
            this.a.getClass();
            if (!el2.a(xmlPullParser)) {
                return k9Var;
            }
            this.a.getClass();
            if (el2.b(xmlPullParser)) {
                if (y45.e("AdTagURI", xmlPullParser.getName())) {
                    t9 t9VarA = this.b.a(xmlPullParser);
                    if (t9VarA != null) {
                        y45.j(t9VarA, "adTagUri");
                        k9Var = new k9(t9VarA, attributeValue3);
                    }
                } else {
                    this.a.getClass();
                    el2.d(xmlPullParser);
                }
            }
        }
    }

    public l9(el2 el2Var, u9 u9Var) {
        y45.j(el2Var, "xmlHelper");
        y45.j(u9Var, "adTagUriParser");
        this.a = el2Var;
        this.b = u9Var;
    }
}
