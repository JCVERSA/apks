package com.yandex.div.core.view2.errors;

import com.yandex.div.core.view2.Div2View;
import defpackage.e74;
import defpackage.eg2;
import defpackage.y45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
public class ErrorModel$getErrorHandler$1 extends FunctionReferenceImpl implements e74 {
    public ErrorModel$getErrorHandler$1(Object obj) {
        super(1, obj, eg2.class, "logError", "logError(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/Throwable;)V", 1);
    }

    @Override
    public Object invoke(Object obj) {
        invoke((Throwable) obj);
        return zfb.a;
    }

    public final void invoke(Throwable th) {
        y45.j(th, "p0");
        eg2.e((Div2View) this.receiver, th);
    }
}
