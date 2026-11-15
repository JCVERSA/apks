package kotlinx.serialization.json.internal;

import defpackage.s74;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
public class JsonElementMarker$origin$1 extends FunctionReferenceImpl implements s74 {
    public JsonElementMarker$origin$1(Object obj) {
        super(2, obj, JsonElementMarker.class, "readIfAbsent", "readIfAbsent(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z", 0);
    }

    public final Boolean invoke(kotlinx.serialization.descriptors.a aVar, int i) {
        y45.j(aVar, "p0");
        return Boolean.valueOf(((JsonElementMarker) this.receiver).e(aVar, i));
    }

    @Override
    public Object invoke(Object obj, Object obj2) {
        return invoke((kotlinx.serialization.descriptors.a) obj, ((Number) obj2).intValue());
    }
}
