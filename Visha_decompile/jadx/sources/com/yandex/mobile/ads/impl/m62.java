package com.yandex.mobile.ads.impl;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import defpackage.y45;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashSet;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class m62 implements dl2<l62> {
    private final el2 a;
    private final d52 b;

    public m62() {
        el2 el2Var = new el2();
        b52[] b52VarArrValues = b52.values();
        this(el2Var, new d52(new HashSet(defpackage.y71.n(Arrays.copyOf(b52VarArrValues, b52VarArrValues.length)))));
    }

    @Override
    public final l62 a(XmlPullParser xmlPullParser, xj xjVar) throws XmlPullParserException, IOException {
        y45.j(xmlPullParser, "parser");
        y45.j(xjVar, "base64EncodingParameters");
        this.a.getClass();
        y45.j(xmlPullParser, "parser");
        xmlPullParser.require(2, null, "Tracking");
        String attributeValue = xmlPullParser.getAttributeValue(null, NotificationCompat.CATEGORY_EVENT);
        String attributeValue2 = xmlPullParser.getAttributeValue(null, TypedValues.CycleType.S_WAVE_OFFSET);
        this.a.getClass();
        String strC = el2.c(xmlPullParser);
        if (attributeValue == null || attributeValue.length() == 0 || strC.length() <= 0) {
            return null;
        }
        na2 na2VarA = attributeValue2 != null ? this.b.a(attributeValue2) : null;
        y45.g(attributeValue);
        return new l62(attributeValue, strC, na2VarA);
    }

    public m62(el2 el2Var, d52 d52Var) {
        y45.j(el2Var, "xmlHelper");
        y45.j(d52Var, "timeOffsetParser");
        this.a = el2Var;
        this.b = d52Var;
    }
}
