package com.yandex.div.core.view2.divs;

import android.text.Editable;
import com.yandex.div.core.expression.variables.TwoWayVariableBinder;
import com.yandex.div.core.util.mask.BaseInputMask;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.divs.widgets.DivInputView;
import com.yandex.div.data.VariableMutationException;
import defpackage.e74;
import defpackage.g1a;
import defpackage.y45;
import defpackage.z05;
import defpackage.zfb;

public class DivInputBinder$createCallbacks$1 implements TwoWayVariableBinder.a {
    public final BaseInputMask a;
    public final z05 b;
    public final DivInputView c;
    public final String d;
    public final Div2View e;

    public DivInputBinder$createCallbacks$1(BaseInputMask baseInputMask, z05 z05Var, DivInputView divInputView, String str, Div2View div2View) {
        this.a = baseInputMask;
        this.b = z05Var;
        this.c = divInputView;
        this.d = str;
        this.e = div2View;
    }

    @Override
    public void b(final e74 e74Var) {
        y45.j(e74Var, "valueUpdater");
        this.c.addAfterTextChangeAction(new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((Editable) obj);
                return zfb.a;
            }

            public final void invoke(Editable editable) {
                this.this$0.d(editable, e74Var);
            }
        });
    }

    public final void d(Editable editable, e74 e74Var) {
        String string;
        String string2;
        String str = "";
        if (editable == null || (string = editable.toString()) == null) {
            string = "";
        }
        BaseInputMask baseInputMask = this.a;
        if (baseInputMask != null) {
            DivInputView divInputView = this.c;
            if (!y45.e(baseInputMask.q(), string)) {
                Editable text = divInputView.getText();
                if (text != null && (string2 = text.toString()) != null) {
                    str = string2;
                }
                baseInputMask.a(str, Integer.valueOf(divInputView.getSelectionStart()));
                divInputView.setText(baseInputMask.q());
                divInputView.setSelection(baseInputMask.l());
                f(baseInputMask.q());
            }
            e74Var.invoke(g1a.M(baseInputMask.p(), ',', '.', false, 4, null));
            return;
        }
        z05 z05Var = this.b;
        if (z05Var != null) {
            DivInputView divInputView2 = this.c;
            if (y45.e(z05Var.b(), string)) {
                return;
            }
            if (!z05Var.a(string)) {
                divInputView2.setText(z05Var.b());
                divInputView2.setSelection(z05Var.c());
                return;
            } else {
                z05Var.d(string);
                z05Var.e(divInputView2.getSelectionStart());
            }
        }
        e74Var.invoke(string);
    }

    @Override
    public void a(String str) {
        if (str == null) {
            str = "";
        }
        BaseInputMask baseInputMask = this.a;
        if (baseInputMask != null) {
            DivInputView divInputView = this.c;
            baseInputMask.s(str);
            f(baseInputMask.q());
            divInputView.setText(baseInputMask.q());
            return;
        }
        z05 z05Var = this.b;
        if (z05Var != null) {
            if (!z05Var.a(str)) {
                return;
            }
            z05Var.d(str);
            z05Var.e(str.length());
        }
        this.c.setText(str);
    }

    public final VariableMutationException f(String str) {
        String str2 = this.d;
        if (str2 != null) {
            return this.e.setVariable(str2, str);
        }
        return null;
    }
}
