package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.livecaption.constant.ICode;
import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.hx7;
import defpackage.jg2;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import defpackage.y71;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivNumberAnimator implements d65, ko4, jg2 {
    public static final a m = new a(null);
    public static final Expression n;
    public static final Expression o;
    public static final DivCount.b p;
    public static final Expression q;
    public static final s74 r;
    public final List a;
    public final Expression b;
    public final Expression c;
    public final List d;
    public final Expression e;
    public final String f;
    public final Expression g;
    public final DivCount h;
    public final Expression i;
    public final Expression j;
    public final String k;
    public Integer l;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivNumberAnimator a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivNumberAnimatorJsonParser.b) ml0.a().e5().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    static {
        Expression.a aVar = Expression.a;
        n = aVar.a(DivAnimationDirection.NORMAL);
        o = aVar.a(DivAnimationInterpolator.LINEAR);
        p = new DivCount.b(new DivFixedCount(aVar.a(1L)));
        q = aVar.a(0L);
        r = new s74() {
            @Override
            public final DivNumberAnimator invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivNumberAnimator.m.a(hx7Var, jSONObject);
            }
        };
    }

    public DivNumberAnimator(List list, Expression expression, Expression expression2, List list2, Expression expression3, String str, Expression expression4, DivCount divCount, Expression expression5, Expression expression6, String str2) {
        y45.j(expression, ICode.CALL.CALL_KEY_DIRECTION);
        y45.j(expression2, "duration");
        y45.j(expression3, "endValue");
        y45.j(str, TtmlNode.ATTR_ID);
        y45.j(expression4, "interpolator");
        y45.j(divCount, "repeatCount");
        y45.j(expression5, "startDelay");
        y45.j(str2, "variableName");
        this.a = list;
        this.b = expression;
        this.c = expression2;
        this.d = list2;
        this.e = expression3;
        this.f = str;
        this.g = expression4;
        this.h = divCount;
        this.i = expression5;
        this.j = expression6;
        this.k = str2;
    }

    @Override
    public Expression a() {
        return this.b;
    }

    @Override
    public List b() {
        return this.a;
    }

    @Override
    public DivCount c() {
        return this.h;
    }

    @Override
    public Expression d() {
        return this.g;
    }

    @Override
    public List e() {
        return this.d;
    }

    @Override
    public Expression f() {
        return this.i;
    }

    public final boolean g(DivNumberAnimator divNumberAnimator, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divNumberAnimator == null) {
            return false;
        }
        List listB = b();
        if (listB != null) {
            List listB2 = divNumberAnimator.b();
            if (listB2 == null || listB.size() != listB2.size()) {
                return false;
            }
            int i = 0;
            for (Object obj : listB) {
                int i2 = i + 1;
                if (i < 0) {
                    y71.u();
                }
                if (!((DivAction) obj).a((DivAction) listB2.get(i), oj3Var, oj3Var2)) {
                    return false;
                }
                i = i2;
            }
        } else if (divNumberAnimator.b() != null) {
            return false;
        }
        if (a().b(oj3Var) != divNumberAnimator.a().b(oj3Var2) || ((Number) getDuration().b(oj3Var)).longValue() != ((Number) divNumberAnimator.getDuration().b(oj3Var2)).longValue()) {
            return false;
        }
        List listE = e();
        if (listE != null) {
            List listE2 = divNumberAnimator.e();
            if (listE2 == null || listE.size() != listE2.size()) {
                return false;
            }
            int i3 = 0;
            for (Object obj2 : listE) {
                int i4 = i3 + 1;
                if (i3 < 0) {
                    y71.u();
                }
                if (!((DivAction) obj2).a((DivAction) listE2.get(i3), oj3Var, oj3Var2)) {
                    return false;
                }
                i3 = i4;
            }
        } else if (divNumberAnimator.e() != null) {
            return false;
        }
        if (((Number) this.e.b(oj3Var)).doubleValue() != ((Number) divNumberAnimator.e.b(oj3Var2)).doubleValue() || !y45.e(getId(), divNumberAnimator.getId()) || d().b(oj3Var) != divNumberAnimator.d().b(oj3Var2) || !c().a(divNumberAnimator.c(), oj3Var, oj3Var2) || ((Number) f().b(oj3Var)).longValue() != ((Number) divNumberAnimator.f().b(oj3Var2)).longValue()) {
            return false;
        }
        Expression expression = this.j;
        Double d = expression != null ? (Double) expression.b(oj3Var) : null;
        Expression expression2 = divNumberAnimator.j;
        return y45.b(d, expression2 != null ? (Double) expression2.b(oj3Var2) : null) && y45.e(h(), divNumberAnimator.h());
    }

    @Override
    public Expression getDuration() {
        return this.c;
    }

    @Override
    public String getId() {
        return this.f;
    }

    public String h() {
        return this.k;
    }

    @Override
    public int hash() {
        int iHash;
        int iHash2;
        Integer num = this.l;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivNumberAnimator.class).hashCode();
        List listB = b();
        if (listB != null) {
            Iterator it = listB.iterator();
            iHash = 0;
            while (it.hasNext()) {
                iHash += ((DivAction) it.next()).hash();
            }
        } else {
            iHash = 0;
        }
        int iHashCode2 = iHashCode + iHash + a().hashCode() + getDuration().hashCode();
        List listE = e();
        if (listE != null) {
            Iterator it2 = listE.iterator();
            iHash2 = 0;
            while (it2.hasNext()) {
                iHash2 += ((DivAction) it2.next()).hash();
            }
        } else {
            iHash2 = 0;
        }
        int iHashCode3 = iHashCode2 + iHash2 + this.e.hashCode() + getId().hashCode() + d().hashCode() + c().hash() + f().hashCode();
        Expression expression = this.j;
        int iHashCode4 = iHashCode3 + (expression != null ? expression.hashCode() : 0) + h().hashCode();
        this.l = Integer.valueOf(iHashCode4);
        return iHashCode4;
    }

    @Override
    public JSONObject s() {
        return ((DivNumberAnimatorJsonParser.b) ml0.a().e5().getValue()).b(ml0.b(), this);
    }
}
