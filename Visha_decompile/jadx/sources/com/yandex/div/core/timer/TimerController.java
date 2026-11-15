package com.yandex.div.core.timer;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.divs.DivActionBinder;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivTimer;
import defpackage.e74;
import defpackage.oj3;
import defpackage.wc3;
import defpackage.y45;
import defpackage.zfb;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class TimerController {
    public static final a l = new a(null);
    public final DivTimer a;
    public final DivActionBinder b;
    public final wc3 c;
    public final oj3 d;
    public Div2View e;
    public final String f;
    public final String g;
    public final List h;
    public final List i;
    public boolean j;
    public final Ticker k;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public TimerController(DivTimer divTimer, DivActionBinder divActionBinder, wc3 wc3Var, oj3 oj3Var) {
        y45.j(divTimer, "divTimer");
        y45.j(divActionBinder, "divActionBinder");
        y45.j(wc3Var, "errorCollector");
        y45.j(oj3Var, "expressionResolver");
        this.a = divTimer;
        this.b = divActionBinder;
        this.c = wc3Var;
        this.d = oj3Var;
        String str = divTimer.c;
        this.f = str;
        this.g = divTimer.f;
        this.h = divTimer.b;
        this.i = divTimer.d;
        this.k = new Ticker(str, new TimerController$ticker$1(this), new TimerController$ticker$2(this), new TimerController$ticker$3(this), new TimerController$ticker$4(this), wc3Var);
        divTimer.a.f(oj3Var, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Number) obj).longValue());
                return zfb.a;
            }

            public final void invoke(long j) {
                TimerController.this.m();
            }
        });
        Expression expression = divTimer.e;
        if (expression != null) {
            expression.f(oj3Var, new e74() {
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke(((Number) obj).longValue());
                    return zfb.a;
                }

                public final void invoke(long j) {
                    TimerController.this.m();
                }
            });
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void e(String str) {
        y45.j(str, "command");
        switch (str.hashCode()) {
            case -1367724422:
                if (str.equals("cancel")) {
                    this.k.h();
                    return;
                }
                break;
            case -934426579:
                if (str.equals("resume")) {
                    this.k.t();
                    return;
                }
                break;
            case 3540994:
                if (str.equals("stop")) {
                    this.k.C();
                    return;
                }
                break;
            case 106440182:
                if (str.equals("pause")) {
                    this.k.p();
                    return;
                }
                break;
            case 108404047:
                if (str.equals("reset")) {
                    this.k.q();
                    return;
                }
                break;
            case 109757538:
                if (str.equals(TtmlNode.START)) {
                    this.k.B();
                    return;
                }
                break;
        }
        this.c.e(new IllegalArgumentException(str + " is unsupported timer command!"));
    }

    public final DivTimer f() {
        return this.a;
    }

    public final boolean g(Div2View div2View) {
        y45.j(div2View, "view");
        return y45.e(div2View, this.e);
    }

    public final void h(Div2View div2View) {
        y45.j(div2View, "view");
        this.e = div2View;
        if (this.j) {
            this.k.s(true);
            this.j = false;
        }
    }

    public final void i(Div2View div2View) {
        if (y45.e(div2View, this.e)) {
            l();
        }
    }

    public final void j(long j) {
        n(j);
        Div2View div2View = this.e;
        if (div2View != null) {
            DivActionBinder.I(this.b, div2View, div2View.getExpressionResolver(), this.h, "timer", null, 16, null);
        }
    }

    public final void k(long j) {
        n(j);
        Div2View div2View = this.e;
        if (div2View != null) {
            DivActionBinder.I(this.b, div2View, div2View.getExpressionResolver(), this.i, "timer", null, 16, null);
        }
    }

    public final void l() {
        this.e = null;
        this.k.y();
        this.j = true;
    }

    public final void m() {
        Ticker ticker = this.k;
        long jLongValue = ((Number) this.a.a.b(this.d)).longValue();
        Expression expression = this.a.e;
        ticker.D(jLongValue, expression != null ? (Long) expression.b(this.d) : null);
    }

    public final void n(long j) {
        Div2View div2View;
        String str = this.g;
        if (str == null || (div2View = this.e) == null) {
            return;
        }
        div2View.setVariable(str, String.valueOf(j));
    }
}
