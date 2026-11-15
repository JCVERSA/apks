package kotlinx.coroutines.selects;

import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class e implements d {

    private final Object f64987a;

    private final Function3 f64988b;

    private final Function3 f64989c;

    private final Function3 f64990d;

    public e(Object obj, Function3 function3, Function3 function4, Function3 function5) {
        this.f64987a = obj;
        this.f64988b = function3;
        this.f64989c = function4;
        this.f64990d = function5;
    }

    public e(Object obj, Function3 function3, Function3 function4, Function3 function5, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, function3, function4, (i10 & 8) != 0 ? null : function5);
    }
}
