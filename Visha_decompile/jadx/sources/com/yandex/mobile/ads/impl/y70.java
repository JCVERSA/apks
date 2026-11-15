package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class y70 {
    private final el2 a;
    private final qy1 b;

    public y70(el2 el2Var) {
        this(el2Var, new qy1(el2Var));
    }

    public final ArrayList a(XmlPullParser xmlPullParser, wj wjVar) throws XmlPullParserException, IOException {
        y45.j(xmlPullParser, "parser");
        y45.j(wjVar, "base64EncodingParameters");
        this.a.getClass();
        y45.j(xmlPullParser, "parser");
        xmlPullParser.require(2, null, "Extensions");
        ArrayList arrayList = new ArrayList();
        while (true) {
            this.a.getClass();
            if (!el2.a(xmlPullParser)) {
                return arrayList;
            }
            this.a.getClass();
            if (el2.b(xmlPullParser)) {
                if (y45.e("Extension", xmlPullParser.getName())) {
                    u70 u70VarA = this.b.a(xmlPullParser, wjVar);
                    if (u70VarA != null) {
                        arrayList.add(u70VarA);
                    }
                } else {
                    this.a.getClass();
                    el2.d(xmlPullParser);
                }
            }
        }
    }

    public y70(el2 el2Var, qy1 qy1Var) {
        y45.j(el2Var, "xmlHelper");
        y45.j(qy1Var, "simpleExtensionParser");
        this.a = el2Var;
        this.b = qy1Var;
    }
}
