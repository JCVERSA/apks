package com.yandex.mobile.ads.impl;

import android.content.Context;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;
import org.apache.commons.text.lookup.StringLookupFactory;

public final class d32 {
    private final uj a;

    public d32() {
        this(new uj());
    }

    public final String a(Context context, String str) {
        l50 l50VarU;
        y45.j(context, "context");
        y45.j(str, TtmlNode.TAG_BODY);
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(context);
        if (ju1VarA == null || (l50VarU = ju1VarA.u()) == null) {
            l50VarU = l50.c;
        }
        x01 x01Var = new x01(l50VarU.c(), l50VarU.b());
        byte[] bytes = str.getBytes(defpackage.qv0.b);
        y45.i(bytes, "getBytes(...)");
        byte[] bArrA = x01Var.a(bytes);
        if (bArrA == null) {
            return null;
        }
        this.a.getClass();
        return uj.a(bArrA);
    }

    public d32(uj ujVar) {
        y45.j(ujVar, StringLookupFactory.KEY_BASE64_ENCODER);
        this.a = ujVar;
    }
}
