package kotlinx.serialization.internal;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;

public final class MapEntrySerializer extends t0 {

    private final kotlinx.serialization.descriptors.f f65110c;

    private static final class a implements Map.Entry, KMappedMarker {

        private final Object f65111a;

        private final Object f65112b;

        public a(Object obj, Object obj2) {
            this.f65111a = obj;
            this.f65112b = obj2;
        }

        @Override
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(getKey(), aVar.getKey()) && Intrinsics.c(getValue(), aVar.getValue());
        }

        @Override
        public Object getKey() {
            return this.f65111a;
        }

        @Override
        public Object getValue() {
            return this.f65112b;
        }

        @Override
        public int hashCode() {
            return ((getKey() == null ? 0 : getKey().hashCode()) * 31) + (getValue() != null ? getValue().hashCode() : 0);
        }

        @Override
        public Object setValue(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public String toString() {
            return "MapEntry(key=" + getKey() + ", value=" + getValue() + ')';
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MapEntrySerializer(final kotlinx.serialization.b keySerializer, final kotlinx.serialization.b valueSerializer) {
        super(keySerializer, valueSerializer, null);
        Intrinsics.h(keySerializer, "keySerializer");
        Intrinsics.h(valueSerializer, "valueSerializer");
        this.f65110c = SerialDescriptorsKt.c("kotlin.collections.Map.Entry", kotlinx.serialization.descriptors.i.c.f65103a, new kotlinx.serialization.descriptors.f[0], new Function1<kotlinx.serialization.descriptors.a, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((kotlinx.serialization.descriptors.a) obj);
                return Unit.f64096a;
            }

            public final void invoke(kotlinx.serialization.descriptors.a buildSerialDescriptor) {
                Intrinsics.h(buildSerialDescriptor, "$this$buildSerialDescriptor");
                kotlinx.serialization.descriptors.a.b(buildSerialDescriptor, "key", keySerializer.getDescriptor(), null, false, 12, null);
                kotlinx.serialization.descriptors.a.b(buildSerialDescriptor, AppMeasurementSdk.ConditionalUserProperty.VALUE, valueSerializer.getDescriptor(), null, false, 12, null);
            }
        });
    }

    @Override
    public Object a(Map.Entry entry) {
        Intrinsics.h(entry, "<this>");
        return entry.getKey();
    }

    @Override
    public Object b(Map.Entry entry) {
        Intrinsics.h(entry, "<this>");
        return entry.getValue();
    }

    @Override
    public Map.Entry c(Object obj, Object obj2) {
        return new a(obj, obj2);
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return this.f65110c;
    }
}
