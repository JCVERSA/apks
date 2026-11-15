package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import defpackage.y45;
import java.io.IOException;
import java.util.List;
import org.json.JSONException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class rb2 {
    private final el2 a;
    private final cl2<uu> b;
    private final cl2<wa2> c;
    private final ai2 d;
    private final vb2 e;

    public rb2(Context context, sp1 sp1Var) {
        this(context, sp1Var, new el2(), new cl2(new bv(context, sp1Var), "Creatives", "Creative"), new cl2(new ab2(), "AdVerifications", "Verification"), new ai2(), new vb2());
    }

    public final void a(XmlPullParser xmlPullParser, mb2.a aVar, xj xjVar) throws XmlPullParserException, JSONException, IOException {
        y45.j(xmlPullParser, "parser");
        y45.j(aVar, "videoAdBuilder");
        y45.j(xjVar, "base64EncodingParameters");
        String name = xmlPullParser.getName();
        if (y45.e("Impression", name)) {
            this.a.getClass();
            aVar.b(el2.c(xmlPullParser));
            return;
        }
        if (y45.e("ViewableImpression", name)) {
            aVar.a(this.d.a(xmlPullParser, xjVar));
            return;
        }
        if (y45.e("Error", name)) {
            this.a.getClass();
            aVar.a(el2.c(xmlPullParser));
            return;
        }
        if (y45.e("Survey", name)) {
            this.a.getClass();
            aVar.g(el2.c(xmlPullParser));
            return;
        }
        if (y45.e(DataTypes.OBJ_DESCRIPTION, name)) {
            this.a.getClass();
            aVar.e(el2.c(xmlPullParser));
            return;
        }
        if (y45.e("AdTitle", name)) {
            this.a.getClass();
            aVar.d(el2.c(xmlPullParser));
            return;
        }
        if (y45.e("AdSystem", name)) {
            this.a.getClass();
            aVar.c(el2.c(xmlPullParser));
            return;
        }
        if (y45.e("Creatives", name)) {
            aVar.a(this.b.a(xmlPullParser, xjVar));
            return;
        }
        if (y45.e("AdVerifications", name)) {
            aVar.a((List) this.c.a(xmlPullParser, xjVar));
        } else if (y45.e("Extensions", name)) {
            aVar.a(this.e.a(xmlPullParser, xjVar));
        } else {
            this.a.getClass();
            el2.d(xmlPullParser);
        }
    }

    public rb2(Context context, sp1 sp1Var, el2 el2Var, cl2<uu> cl2Var, cl2<wa2> cl2Var2, ai2 ai2Var, vb2 vb2Var) {
        y45.j(context, "context");
        y45.j(sp1Var, "reporter");
        y45.j(el2Var, "xmlHelper");
        y45.j(cl2Var, "creativeArrayParser");
        y45.j(cl2Var2, "verificationArrayParser");
        y45.j(ai2Var, "viewableImpressionParser");
        y45.j(vb2Var, "videoAdExtensionsParser");
        this.a = el2Var;
        this.b = cl2Var;
        this.c = cl2Var2;
        this.d = ai2Var;
        this.e = vb2Var;
    }
}
