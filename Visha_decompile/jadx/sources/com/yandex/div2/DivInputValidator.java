package com.yandex.div2;

import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class DivInputValidator implements d65, ko4 {
    public static final a b = new a(null);
    public static final s74 c = new s74() {
        @Override
        public final DivInputValidator invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivInputValidator.b.a(hx7Var, jSONObject);
        }
    };
    public Integer a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivInputValidator a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((c2) ml0.a().D4().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public static final class b extends DivInputValidator {
        public final DivInputValidatorExpression d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(DivInputValidatorExpression divInputValidatorExpression) {
            super(null);
            y45.j(divInputValidatorExpression, ES6Iterator.VALUE_PROPERTY);
            this.d = divInputValidatorExpression;
        }

        public final DivInputValidatorExpression c() {
            return this.d;
        }
    }

    public static final class c extends DivInputValidator {
        public final DivInputValidatorRegex d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivInputValidatorRegex divInputValidatorRegex) {
            super(null);
            y45.j(divInputValidatorRegex, ES6Iterator.VALUE_PROPERTY);
            this.d = divInputValidatorRegex;
        }

        public final DivInputValidatorRegex c() {
            return this.d;
        }
    }

    public DivInputValidator(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean a(DivInputValidator divInputValidator, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divInputValidator == null) {
            return false;
        }
        if (this instanceof c) {
            DivInputValidatorRegex divInputValidatorRegexC = ((c) this).c();
            Object objB = divInputValidator.b();
            return divInputValidatorRegexC.a(objB instanceof DivInputValidatorRegex ? (DivInputValidatorRegex) objB : null, oj3Var, oj3Var2);
        }
        if (!(this instanceof b)) {
            throw new NoWhenBranchMatchedException();
        }
        DivInputValidatorExpression divInputValidatorExpressionC = ((b) this).c();
        Object objB2 = divInputValidator.b();
        return divInputValidatorExpressionC.a(objB2 instanceof DivInputValidatorExpression ? (DivInputValidatorExpression) objB2 : null, oj3Var, oj3Var2);
    }

    public final Object b() {
        if (this instanceof c) {
            return ((c) this).c();
        }
        if (this instanceof b) {
            return ((b) this).c();
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override
    public int hash() {
        int iHash;
        Integer num = this.a;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(getClass()).hashCode();
        if (this instanceof c) {
            iHash = ((c) this).c().hash();
        } else {
            if (!(this instanceof b)) {
                throw new NoWhenBranchMatchedException();
            }
            iHash = ((b) this).c().hash();
        }
        int i = iHashCode + iHash;
        this.a = Integer.valueOf(i);
        return i;
    }

    @Override
    public JSONObject s() {
        return ((c2) ml0.a().D4().getValue()).b(ml0.b(), this);
    }

    public DivInputValidator() {
    }
}
