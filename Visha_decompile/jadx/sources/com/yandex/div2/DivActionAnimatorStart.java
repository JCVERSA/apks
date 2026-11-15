package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivActionAnimatorStart implements d65, ko4 {
    public static final a j = new a(null);
    public static final s74 k = new s74() {
        @Override
        public final DivActionAnimatorStart invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivActionAnimatorStart.j.a(hx7Var, jSONObject);
        }
    };
    public final String a;
    public final Expression b;
    public final Expression c;
    public final DivTypedValue d;
    public final Expression e;
    public final DivCount f;
    public final Expression g;
    public final DivTypedValue h;
    public Integer i;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivActionAnimatorStart a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivActionAnimatorStartJsonParser.b) ml0.a().K().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivActionAnimatorStart(String str, Expression expression, Expression expression2, DivTypedValue divTypedValue, Expression expression3, DivCount divCount, Expression expression4, DivTypedValue divTypedValue2) {
        y45.j(str, "animatorId");
        this.a = str;
        this.b = expression;
        this.c = expression2;
        this.d = divTypedValue;
        this.e = expression3;
        this.f = divCount;
        this.g = expression4;
        this.h = divTypedValue2;
    }

    public final boolean a(DivActionAnimatorStart divActionAnimatorStart, oj3 oj3Var, oj3 oj3Var2) {
        boolean zA;
        boolean zA2;
        boolean zA3;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divActionAnimatorStart == null || !y45.e(this.a, divActionAnimatorStart.a)) {
            return false;
        }
        Expression expression = this.b;
        DivAnimationDirection divAnimationDirection = expression != null ? (DivAnimationDirection) expression.b(oj3Var) : null;
        Expression expression2 = divActionAnimatorStart.b;
        if (divAnimationDirection != (expression2 != null ? (DivAnimationDirection) expression2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expression3 = this.c;
        Long l = expression3 != null ? (Long) expression3.b(oj3Var) : null;
        Expression expression4 = divActionAnimatorStart.c;
        if (!y45.e(l, expression4 != null ? (Long) expression4.b(oj3Var2) : null)) {
            return false;
        }
        DivTypedValue divTypedValue = this.d;
        if (divTypedValue != null) {
            zA = divTypedValue.a(divActionAnimatorStart.d, oj3Var, oj3Var2);
        } else {
            zA = divActionAnimatorStart.d == null;
        }
        if (!zA) {
            return false;
        }
        Expression expression5 = this.e;
        DivAnimationInterpolator divAnimationInterpolator = expression5 != null ? (DivAnimationInterpolator) expression5.b(oj3Var) : null;
        Expression expression6 = divActionAnimatorStart.e;
        if (divAnimationInterpolator != (expression6 != null ? (DivAnimationInterpolator) expression6.b(oj3Var2) : null)) {
            return false;
        }
        DivCount divCount = this.f;
        if (divCount != null) {
            zA2 = divCount.a(divActionAnimatorStart.f, oj3Var, oj3Var2);
        } else {
            zA2 = divActionAnimatorStart.f == null;
        }
        if (!zA2) {
            return false;
        }
        Expression expression7 = this.g;
        Long l2 = expression7 != null ? (Long) expression7.b(oj3Var) : null;
        Expression expression8 = divActionAnimatorStart.g;
        if (!y45.e(l2, expression8 != null ? (Long) expression8.b(oj3Var2) : null)) {
            return false;
        }
        DivTypedValue divTypedValue2 = this.h;
        if (divTypedValue2 != null) {
            zA3 = divTypedValue2.a(divActionAnimatorStart.h, oj3Var, oj3Var2);
        } else {
            zA3 = divActionAnimatorStart.h == null;
        }
        return zA3;
    }

    @Override
    public int hash() {
        Integer num = this.i;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivActionAnimatorStart.class).hashCode() + this.a.hashCode();
        Expression expression = this.b;
        int iHashCode2 = iHashCode + (expression != null ? expression.hashCode() : 0);
        Expression expression2 = this.c;
        int iHashCode3 = iHashCode2 + (expression2 != null ? expression2.hashCode() : 0);
        DivTypedValue divTypedValue = this.d;
        int iHash = iHashCode3 + (divTypedValue != null ? divTypedValue.hash() : 0);
        Expression expression3 = this.e;
        int iHashCode4 = iHash + (expression3 != null ? expression3.hashCode() : 0);
        DivCount divCount = this.f;
        int iHash2 = iHashCode4 + (divCount != null ? divCount.hash() : 0);
        Expression expression4 = this.g;
        int iHashCode5 = iHash2 + (expression4 != null ? expression4.hashCode() : 0);
        DivTypedValue divTypedValue2 = this.h;
        int iHash3 = iHashCode5 + (divTypedValue2 != null ? divTypedValue2.hash() : 0);
        this.i = Integer.valueOf(iHash3);
        return iHash3;
    }

    @Override
    public JSONObject s() {
        return ((DivActionAnimatorStartJsonParser.b) ml0.a().K().getValue()).b(ml0.b(), this);
    }
}
