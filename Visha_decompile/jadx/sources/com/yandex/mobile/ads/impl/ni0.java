package com.yandex.mobile.ads.impl;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.y45;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class ni0 implements dl2<mi0> {
    private final el2 a;

    public ni0() {
        this(new el2());
    }

    @Override
    public final mi0 a(XmlPullParser xmlPullParser, xj xjVar) throws XmlPullParserException, IOException {
        y45.j(xmlPullParser, "parser");
        y45.j(xjVar, "base64EncodingParameters");
        this.a.getClass();
        y45.j(xmlPullParser, "parser");
        xmlPullParser.require(2, null, "Icon");
        mi0.a aVar = new mi0.a();
        av.a(this.a, xmlPullParser, "parser", "program", "attributeName");
        String attributeValue = xmlPullParser.getAttributeValue(null, "program");
        av.a(this.a, xmlPullParser, "parser", "height", "attributeName");
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "height");
        av.a(this.a, xmlPullParser, "parser", "width", "attributeName");
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "width");
        av.a(this.a, xmlPullParser, "parser", "xPosition", "attributeName");
        String attributeValue4 = xmlPullParser.getAttributeValue(null, "xPosition");
        av.a(this.a, xmlPullParser, "parser", "yPosition", "attributeName");
        String attributeValue5 = xmlPullParser.getAttributeValue(null, "yPosition");
        av.a(this.a, xmlPullParser, "parser", "apiFramework", "attributeName");
        String attributeValue6 = xmlPullParser.getAttributeValue(null, "apiFramework");
        av.a(this.a, xmlPullParser, "parser", TypedValues.CycleType.S_WAVE_OFFSET, "attributeName");
        String attributeValue7 = xmlPullParser.getAttributeValue(null, TypedValues.CycleType.S_WAVE_OFFSET);
        av.a(this.a, xmlPullParser, "parser", "duration", "attributeName");
        String attributeValue8 = xmlPullParser.getAttributeValue(null, "duration");
        while (true) {
            this.a.getClass();
            if (!el2.a(xmlPullParser)) {
                return aVar.f(attributeValue).c(attributeValue2).j(attributeValue3).d(attributeValue4).i(attributeValue5).a(attributeValue6).e(attributeValue7).b(attributeValue8).a();
            }
            this.a.getClass();
            if (el2.b(xmlPullParser)) {
                String name = xmlPullParser.getName();
                mi0.c.c.getClass();
                mi0.c[] cVarArrValues = mi0.c.values();
                int length = cVarArrValues.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        this.a.getClass();
                        el2.d(xmlPullParser);
                        break;
                    }
                    if (y45.e(cVarArrValues[i].a(), name)) {
                        this.a.getClass();
                        aVar.g(name).h(el2.c(xmlPullParser));
                        break;
                    }
                    i++;
                }
            }
        }
    }

    public ni0(el2 el2Var) {
        y45.j(el2Var, "xmlHelper");
        this.a = el2Var;
    }
}
