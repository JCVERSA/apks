package kotlinx.serialization;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.reflect.KClass;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;

public final class PolymorphicSerializer extends kotlinx.serialization.internal.b {

    private final KClass f65053a;

    private List f65054b;

    private final Lazy f65055c;

    public PolymorphicSerializer(KClass baseClass) {
        Intrinsics.h(baseClass, "baseClass");
        this.f65053a = baseClass;
        this.f65054b = CollectionsKt.l();
        this.f65055c = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new Function0<kotlinx.serialization.descriptors.f>() {
            {
                super(0);
            }

            @Override
            public final kotlinx.serialization.descriptors.f invoke() {
                final PolymorphicSerializer polymorphicSerializer = this.this$0;
                return kotlinx.serialization.descriptors.b.c(SerialDescriptorsKt.c("kotlinx.serialization.Polymorphic", kotlinx.serialization.descriptors.d.a.f65082a, new kotlinx.serialization.descriptors.f[0], new Function1<kotlinx.serialization.descriptors.a, Unit>() {
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
                        kotlinx.serialization.descriptors.a.b(buildSerialDescriptor, NativeComponentConstants.KEY_COMPONENT_TYPE, ry.a.G(StringCompanionObject.f64324a).getDescriptor(), null, false, 12, null);
                        kotlinx.serialization.descriptors.a.b(buildSerialDescriptor, AppMeasurementSdk.ConditionalUserProperty.VALUE, SerialDescriptorsKt.d("kotlinx.serialization.Polymorphic<" + polymorphicSerializer.e().g() + '>', kotlinx.serialization.descriptors.h.a.f65099a, new kotlinx.serialization.descriptors.f[0], null, 8, null), null, false, 12, null);
                        buildSerialDescriptor.h(polymorphicSerializer.f65054b);
                    }
                }), this.this$0.e());
            }
        });
    }

    @Override
    public KClass e() {
        return this.f65053a;
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return (kotlinx.serialization.descriptors.f) this.f65055c.getValue();
    }

    public String toString() {
        return "kotlinx.serialization.PolymorphicSerializer(baseClass: " + e() + ')';
    }
}
