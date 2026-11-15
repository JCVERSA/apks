package com.yandex.mobile.ads.impl;

import android.util.Xml;
import defpackage.y45;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class mi2 {
    private final el2 a;
    private final y70 b;
    private final t2 c;
    private final e3 d;
    private final s2 e;

    public mi2() {
        el2 el2Var = new el2();
        y70 y70Var = new y70(el2Var);
        this(el2Var, y70Var, new t2(el2Var, y70Var), new e3(), new s2());
    }

    public final ki2 a(String str, wj wjVar) throws XmlPullParserException, JSONException, li2, IOException {
        Object next;
        Object next2;
        Object next3;
        y45.j(str, "data");
        y45.j(wjVar, "base64EncodingParameters");
        XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
        xmlPullParserNewPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
        xmlPullParserNewPullParser.setInput(new StringReader(str));
        xmlPullParserNewPullParser.nextTag();
        y45.g(xmlPullParserNewPullParser);
        this.a.getClass();
        y45.j(xmlPullParserNewPullParser, "parser");
        xmlPullParserNewPullParser.require(2, null, "VMAP");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String attributeValue = xmlPullParserNewPullParser.getAttributeValue(null, "version");
        while (true) {
            this.a.getClass();
            if (!el2.a(xmlPullParserNewPullParser)) {
                break;
            }
            this.a.getClass();
            if (el2.b(xmlPullParserNewPullParser)) {
                String name = xmlPullParserNewPullParser.getName();
                if (y45.e("AdBreak", name)) {
                    p2 p2VarA = this.c.a(xmlPullParserNewPullParser, wjVar);
                    if (p2VarA != null) {
                        arrayList.add(p2VarA);
                    }
                } else if (y45.e("Extensions", name)) {
                    arrayList2.addAll(this.b.a(xmlPullParserNewPullParser, wjVar));
                } else {
                    this.a.getClass();
                    el2.d(xmlPullParserNewPullParser);
                }
            }
        }
        if (attributeValue == null || attributeValue.length() == 0) {
            throw new li2();
        }
        this.e.getClass();
        y45.j(arrayList2, "extensions");
        Iterator it = arrayList2.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!y45.e(((u70) next).a(), "PageID"));
        u70 u70Var = (u70) next;
        String strB = u70Var != null ? u70Var.b() : null;
        Iterator it2 = arrayList2.iterator();
        do {
            if (!it2.hasNext()) {
                next2 = null;
                break;
            }
            next2 = it2.next();
        } while (!y45.e(((u70) next2).a(), "CategoryID"));
        u70 u70Var2 = (u70) next2;
        String strB2 = u70Var2 != null ? u70Var2.b() : null;
        Iterator it3 = arrayList2.iterator();
        do {
            if (!it3.hasNext()) {
                next3 = null;
                break;
            }
            next3 = it3.next();
        } while (!y45.e(((u70) next3).a(), "SessionID"));
        u70 u70Var3 = (u70) next3;
        r2 r2Var = new r2(strB, strB2, u70Var3 != null ? u70Var3.b() : null);
        this.d.getClass();
        y45.j(arrayList, "adBreaks");
        y45.j(r2Var, "adBreakParameters");
        Iterator it4 = arrayList.iterator();
        while (it4.hasNext()) {
            ((p2) it4.next()).a(r2Var);
        }
        y45.g(attributeValue);
        y45.j(attributeValue, "version");
        y45.j(arrayList, "adBreaks");
        y45.j(arrayList2, "extensions");
        return new ki2(attributeValue, arrayList, arrayList2);
    }

    public mi2(el2 el2Var, y70 y70Var, t2 t2Var, e3 e3Var, s2 s2Var) {
        y45.j(el2Var, "mXmlHelper");
        y45.j(y70Var, "extensionsParser");
        y45.j(t2Var, "adBreakParser");
        y45.j(e3Var, "adBreaksConfigurator");
        y45.j(s2Var, "adBreakParametersCreator");
        this.a = el2Var;
        this.b = y70Var;
        this.c = t2Var;
        this.d = e3Var;
        this.e = s2Var;
    }
}
