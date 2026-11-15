package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class cl2<T> implements dl2<List<? extends T>> {
    private final dl2<T> a;
    private final String b;
    private final String c;
    private final el2 d;

    public cl2(dl2 dl2Var, String str, String str2) {
        this(dl2Var, str, str2, new el2());
    }

    @Override
    public final ArrayList a(XmlPullParser xmlPullParser, xj xjVar) throws XmlPullParserException, JSONException, IOException {
        y45.j(xmlPullParser, "parser");
        y45.j(xjVar, "base64EncodingParameters");
        ArrayList arrayList = new ArrayList();
        el2 el2Var = this.d;
        String str = this.b;
        el2Var.getClass();
        y45.j(xmlPullParser, "parser");
        xmlPullParser.require(2, null, str);
        while (true) {
            this.d.getClass();
            if (!el2.a(xmlPullParser)) {
                return arrayList;
            }
            this.d.getClass();
            if (el2.b(xmlPullParser)) {
                if (y45.e(this.c, xmlPullParser.getName())) {
                    T tA = this.a.a(xmlPullParser, xjVar);
                    if (tA != null) {
                        arrayList.add(tA);
                    }
                } else {
                    this.d.getClass();
                    el2.d(xmlPullParser);
                }
            }
        }
    }

    public cl2(dl2<T> dl2Var, String str, String str2, el2 el2Var) {
        y45.j(dl2Var, "xmlElementParser");
        y45.j(str, "elementsArrayTag");
        y45.j(str2, "elementTag");
        y45.j(el2Var, "xmlHelper");
        this.a = dl2Var;
        this.b = str;
        this.c = str2;
        this.d = el2Var;
    }
}
