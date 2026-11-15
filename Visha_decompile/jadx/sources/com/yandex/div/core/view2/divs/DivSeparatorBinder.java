package com.yandex.div.core.view2.divs;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.R;
import com.yandex.div.core.view2.divs.widgets.DivSeparatorView;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivSeparator;
import defpackage.e74;
import defpackage.oj3;
import defpackage.qc2;
import defpackage.uj3;
import defpackage.wu2;
import defpackage.y45;
import defpackage.zfb;

public final class DivSeparatorBinder extends wu2 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivSeparatorBinder(DivBaseBinder divBaseBinder) {
        super(divBaseBinder);
        y45.j(divBaseBinder, "baseBinder");
    }

    public final void g(DivSeparatorView divSeparatorView, DivSeparator.DelimiterStyle delimiterStyle, oj3 oj3Var) {
        if (delimiterStyle == null) {
            divSeparatorView.setDividerColor(335544320);
            divSeparatorView.setHorizontal(true);
        } else {
            divSeparatorView.setDividerColor(((Number) delimiterStyle.a.b(oj3Var)).intValue());
            divSeparatorView.setHorizontal(((DivSeparator.DelimiterStyle.Orientation) delimiterStyle.b.b(oj3Var)) == DivSeparator.DelimiterStyle.Orientation.HORIZONTAL);
        }
    }

    @Override
    public void a(DivSeparatorView divSeparatorView, com.yandex.div.core.view2.a aVar, DivSeparator divSeparator, DivSeparator divSeparator2) {
        y45.j(divSeparatorView, "<this>");
        y45.j(aVar, "bindingContext");
        y45.j(divSeparator, TtmlNode.TAG_DIV);
        BaseDivViewExtensionsKt.j(divSeparatorView, aVar, divSeparator.b, divSeparator.d, divSeparator.x, divSeparator.o, divSeparator.u, divSeparator.t, divSeparator.B, divSeparator.A, divSeparator.c, divSeparator.r(), divSeparator.k);
        i(divSeparatorView, divSeparator.m, divSeparator2 != null ? divSeparator2.m : null, aVar.b());
        divSeparatorView.setDividerHeightResource(R.dimen.div_separator_delimiter_height);
        divSeparatorView.setDividerGravity(17);
    }

    public final void i(final DivSeparatorView divSeparatorView, final DivSeparator.DelimiterStyle delimiterStyle, DivSeparator.DelimiterStyle delimiterStyle2, final oj3 oj3Var) {
        Expression expression;
        Expression expression2;
        qc2 qc2VarE = null;
        if (uj3.b(delimiterStyle != null ? delimiterStyle.a : null, delimiterStyle2 != null ? delimiterStyle2.a : null)) {
            if (uj3.b(delimiterStyle != null ? delimiterStyle.b : null, delimiterStyle2 != null ? delimiterStyle2.b : null)) {
                return;
            }
        }
        g(divSeparatorView, delimiterStyle, oj3Var);
        if (uj3.f(delimiterStyle != null ? delimiterStyle.a : null)) {
            if (uj3.f(delimiterStyle != null ? delimiterStyle.b : null)) {
                return;
            }
        }
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m216invoke(obj);
                return zfb.a;
            }

            public final void m216invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                this.this$0.g(divSeparatorView, delimiterStyle, oj3Var);
            }
        };
        divSeparatorView.addSubscription((delimiterStyle == null || (expression2 = delimiterStyle.a) == null) ? null : expression2.e(oj3Var, e74Var));
        if (delimiterStyle != null && (expression = delimiterStyle.b) != null) {
            qc2VarE = expression.e(oj3Var, e74Var);
        }
        divSeparatorView.addSubscription(qc2VarE);
    }
}
