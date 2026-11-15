package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class n62 {
    private final el2 a;
    private final m62 b;

    public n62() {
        this(new el2(), new m62());
    }

    public final HashMap a(XmlPullParser xmlPullParser, xj xjVar) throws XmlPullParserException, IOException {
        y45.j(xmlPullParser, "parser");
        y45.j(xjVar, "base64EncodingHeaderParameters");
        this.a.getClass();
        y45.j(xmlPullParser, "parser");
        xmlPullParser.require(2, null, "TrackingEvents");
        HashMap map = new HashMap();
        while (true) {
            this.a.getClass();
            if (!el2.a(xmlPullParser)) {
                return map;
            }
            this.a.getClass();
            if (el2.b(xmlPullParser)) {
                if (y45.e("Tracking", xmlPullParser.getName())) {
                    l62 l62VarA = this.b.a(xmlPullParser, xjVar);
                    if (l62VarA != null) {
                        String strA = l62VarA.a();
                        String strC = l62VarA.c();
                        if (!map.containsKey(strA)) {
                            map.put(strA, new ArrayList());
                        }
                        List list = (List) map.get(strA);
                        if (list != null) {
                            list.add(strC);
                        }
                    }
                } else {
                    this.a.getClass();
                    el2.d(xmlPullParser);
                }
            }
        }
    }

    public n62(el2 el2Var, m62 m62Var) {
        y45.j(el2Var, "xmlHelper");
        y45.j(m62Var, "trackingEventParser");
        this.a = el2Var;
        this.b = m62Var;
    }
}
