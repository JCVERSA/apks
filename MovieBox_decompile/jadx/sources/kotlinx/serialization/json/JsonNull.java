package kotlinx.serialization.json;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;

public final class JsonNull extends u {

    public static final JsonNull f65257c = new JsonNull();

    private static final String f65258d = "null";

    private static final Lazy f65259e = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new Function0<kotlinx.serialization.b>() {
        @Override
        public final kotlinx.serialization.b invoke() {
            return r.f65388a;
        }
    });

    private JsonNull() {
        super(null);
    }

    @Override
    public String a() {
        return f65258d;
    }
}
