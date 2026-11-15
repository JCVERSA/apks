package com.yandex.div2;

import com.transsion.livecaption.constant.ICode;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.qe2;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivActionCopyToClipboard implements d65, ko4 {
    public static final a c = new a(null);
    public static final s74 d = new s74() {
        @Override
        public final DivActionCopyToClipboard invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivActionCopyToClipboard.c.a(hx7Var, jSONObject);
        }
    };
    public final DivActionCopyToClipboardContent a;
    public Integer b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivActionCopyToClipboard a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((qe2) ml0.a().f0().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivActionCopyToClipboard(DivActionCopyToClipboardContent divActionCopyToClipboardContent) {
        y45.j(divActionCopyToClipboardContent, ICode.CALL.CALL_KEY_CONTENT);
        this.a = divActionCopyToClipboardContent;
    }

    public final boolean a(DivActionCopyToClipboard divActionCopyToClipboard, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divActionCopyToClipboard == null) {
            return false;
        }
        return this.a.a(divActionCopyToClipboard.a, oj3Var, oj3Var2);
    }

    @Override
    public int hash() {
        Integer num = this.b;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivActionCopyToClipboard.class).hashCode() + this.a.hash();
        this.b = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((qe2) ml0.a().f0().getValue()).b(ml0.b(), this);
    }
}
