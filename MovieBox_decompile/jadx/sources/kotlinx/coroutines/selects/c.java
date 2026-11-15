package kotlinx.coroutines.selects;

import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class c implements b {

    private final Object f64983a;

    private final Function3 f64984b;

    private final Function3 f64985c;

    private final Function3 f64986d;

    public c(Object obj, Function3 function3, Function3 function4) {
        this.f64983a = obj;
        this.f64984b = function3;
        this.f64985c = function4;
        this.f64986d = g.f64991a;
    }

    public c(Object obj, Function3 function3, Function3 function4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, function3, (i10 & 4) != 0 ? null : function4);
    }
}
