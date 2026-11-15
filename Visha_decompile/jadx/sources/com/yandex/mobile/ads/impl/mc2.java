package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.io.IOException;
import org.json.JSONException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class mc2 {
    private final el2 a;
    private final yk0 b;
    private final xk2 c;
    private final lx1 d;
    private final h32 e;
    private final Context f;

    public mc2(Context context, sp1 sp1Var) {
        this(context, sp1Var, new el2(), new yk0(new rb2(context, sp1Var)), new xk2(context, sp1Var), new lx1(), new h32());
    }

    public final mb2 a(XmlPullParser xmlPullParser, xj xjVar) throws XmlPullParserException, JSONException, IOException {
        y45.j(xmlPullParser, "parser");
        y45.j(xjVar, "base64EncodingParameters");
        String strA = this.e.a(xmlPullParser);
        Integer numA = this.d.a(xmlPullParser);
        this.a.getClass();
        y45.j(xmlPullParser, "parser");
        mb2 mb2VarA = null;
        xmlPullParser.require(2, null, "Ad");
        while (true) {
            this.a.getClass();
            if (!el2.a(xmlPullParser)) {
                return mb2VarA;
            }
            this.a.getClass();
            if (el2.b(xmlPullParser)) {
                String name = xmlPullParser.getName();
                if (y45.e("InLine", name)) {
                    mb2.a aVar = new mb2.a(this.f, false);
                    aVar.f(strA);
                    aVar.a(numA);
                    mb2VarA = this.b.a(xmlPullParser, aVar, xjVar);
                } else if (y45.e("Wrapper", name)) {
                    mb2.a aVar2 = new mb2.a(this.f, true);
                    aVar2.f(strA);
                    aVar2.a(numA);
                    mb2VarA = this.c.a(xmlPullParser, aVar2, xjVar);
                } else {
                    this.a.getClass();
                    el2.d(xmlPullParser);
                }
            }
        }
    }

    public mc2(Context context, sp1 sp1Var, el2 el2Var, yk0 yk0Var, xk2 xk2Var, lx1 lx1Var, h32 h32Var) {
        y45.j(context, "context");
        y45.j(sp1Var, "reporter");
        y45.j(el2Var, "xmlHelper");
        y45.j(yk0Var, "inlineParser");
        y45.j(xk2Var, "wrapperParser");
        y45.j(lx1Var, "sequenceParser");
        y45.j(h32Var, "idXmlAttributeParser");
        this.a = el2Var;
        this.b = yk0Var;
        this.c = xk2Var;
        this.d = lx1Var;
        this.e = h32Var;
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.f = applicationContext;
    }
}
