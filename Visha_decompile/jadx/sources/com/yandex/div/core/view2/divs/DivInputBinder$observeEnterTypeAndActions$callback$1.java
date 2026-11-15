package com.yandex.div.core.view2.divs;

import android.view.KeyEvent;
import android.widget.TextView;
import com.yandex.div.core.view2.divs.widgets.DivInputView;
import com.yandex.div2.DivInput;
import defpackage.e74;
import defpackage.oj3;
import defpackage.y45;
import defpackage.zfb;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "<anonymous parameter 0>", "Lzfb;", "invoke", "(Ljava/lang/Object;)V", "<anonymous>"}, k = 3, mv = {1, 8, 0})
public final class DivInputBinder$observeEnterTypeAndActions$callback$1 extends Lambda implements e74 {
    final com.yandex.div.core.view2.a $bindingContext;
    final DivInput $div;
    final oj3 $resolver;
    final DivInputView $this_observeEnterTypeAndActions;
    final DivInputBinder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivInputBinder$observeEnterTypeAndActions$callback$1(DivInput divInput, oj3 oj3Var, DivInputView divInputView, DivInputBinder divInputBinder, com.yandex.div.core.view2.a aVar) {
        super(1);
        this.$div = divInput;
        this.$resolver = oj3Var;
        this.$this_observeEnterTypeAndActions = divInputView;
        this.this$0 = divInputBinder;
        this.$bindingContext = aVar;
    }

    public static final boolean b(DivInputBinder divInputBinder, com.yandex.div.core.view2.a aVar, DivInputView divInputView, List list, TextView textView, int i, KeyEvent keyEvent) {
        y45.j(divInputBinder, "this$0");
        y45.j(aVar, "$bindingContext");
        y45.j(divInputView, "$this_observeEnterTypeAndActions");
        if ((i & 255) == 0) {
            return false;
        }
        divInputBinder.e.J(aVar, divInputView, list, "enter");
        return false;
    }

    @Override
    public Object invoke(Object obj) {
        m194invoke(obj);
        return zfb.a;
    }

    public final void m194invoke(Object obj) {
        y45.j(obj, "<anonymous parameter 0>");
        DivInput.EnterKeyType enterKeyType = (DivInput.EnterKeyType) this.$div.l.b(this.$resolver);
        DivInputView divInputView = this.$this_observeEnterTypeAndActions;
        divInputView.setImeOptions(divInputView.getImeOptions() + this.this$0.y(enterKeyType));
        final List list = this.$div.k;
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            this.$this_observeEnterTypeAndActions.setOnEditorActionListener(null);
            return;
        }
        final DivInputView divInputView2 = this.$this_observeEnterTypeAndActions;
        final DivInputBinder divInputBinder = this.this$0;
        final com.yandex.div.core.view2.a aVar = this.$bindingContext;
        divInputView2.setOnEditorActionListener(new TextView.OnEditorActionListener() {
            @Override
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return DivInputBinder$observeEnterTypeAndActions$callback$1.b(divInputBinder, aVar, divInputView2, list, textView, i, keyEvent);
            }
        });
    }
}
