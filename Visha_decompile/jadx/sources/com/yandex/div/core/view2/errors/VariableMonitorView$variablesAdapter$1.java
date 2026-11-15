package com.yandex.div.core.view2.errors;

import defpackage.u74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
public class VariableMonitorView$variablesAdapter$1 extends FunctionReferenceImpl implements u74 {
    public VariableMonitorView$variablesAdapter$1(Object obj) {
        super(3, obj, VariableMonitor.class, "mutateVariable", "mutateVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", 0);
    }

    @Override
    public Object invoke(Object obj, Object obj2, Object obj3) {
        invoke((String) obj, (String) obj2, (String) obj3);
        return zfb.a;
    }

    public final void invoke(String str, String str2, String str3) {
        y45.j(str, "p0");
        y45.j(str2, "p1");
        y45.j(str3, "p2");
        ((VariableMonitor) this.receiver).g(str, str2, str3);
    }
}
