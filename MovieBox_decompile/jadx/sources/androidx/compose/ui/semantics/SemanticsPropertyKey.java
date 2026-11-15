package androidx.compose.ui.semantics;

import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KProperty;

public final class SemanticsPropertyKey {

    private final String f5640a;

    private final Function2 f5641b;

    private boolean f5642c;

    public SemanticsPropertyKey(String str, Function2 function2) {
        this.f5640a = str;
        this.f5641b = function2;
    }

    public final String a() {
        return this.f5640a;
    }

    public final boolean b() {
        return this.f5642c;
    }

    public final Object c(Object obj, Object obj2) {
        return this.f5641b.invoke(obj, obj2);
    }

    public final void d(n nVar, KProperty kProperty, Object obj) {
        nVar.a(this, obj);
    }

    public String toString() {
        return "AccessibilityKey: " + this.f5640a;
    }

    public SemanticsPropertyKey(String str, Function2 function2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? new Function2<Object, Object, Object>() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return obj == null ? obj2 : obj;
            }
        } : function2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SemanticsPropertyKey(String str, boolean z10) {
        this(str, null, 2, 0 == true ? 1 : 0);
        this.f5642c = z10;
    }

    public SemanticsPropertyKey(String str, boolean z10, Function2 function2) {
        this(str, function2);
        this.f5642c = z10;
    }
}
