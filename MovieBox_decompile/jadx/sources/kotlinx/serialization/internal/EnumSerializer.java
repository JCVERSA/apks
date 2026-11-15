package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.SerializationException;

public final class EnumSerializer implements kotlinx.serialization.b {

    private final Enum[] f65107a;

    private kotlinx.serialization.descriptors.f f65108b;

    private final Lazy f65109c;

    public EnumSerializer(final String serialName, Enum[] values) {
        Intrinsics.h(serialName, "serialName");
        Intrinsics.h(values, "values");
        this.f65107a = values;
        this.f65109c = LazyKt.b(new Function0<kotlinx.serialization.descriptors.f>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final kotlinx.serialization.descriptors.f invoke() {
                kotlinx.serialization.descriptors.f fVar = this.this$0.f65108b;
                return fVar == null ? this.this$0.c(serialName) : fVar;
            }
        });
    }

    public final kotlinx.serialization.descriptors.f c(String str) {
        EnumDescriptor enumDescriptor = new EnumDescriptor(str, this.f65107a.length);
        for (Enum r10 : this.f65107a) {
            PluginGeneratedSerialDescriptor.m(enumDescriptor, r10.name(), false, 2, null);
        }
        return enumDescriptor;
    }

    @Override
    public Enum deserialize(sy.e decoder) {
        Intrinsics.h(decoder, "decoder");
        int iE = decoder.e(getDescriptor());
        if (iE >= 0) {
            Enum[] enumArr = this.f65107a;
            if (iE < enumArr.length) {
                return enumArr[iE];
            }
        }
        throw new SerializationException(iE + " is not among valid " + getDescriptor().i() + " enum values, values size is " + this.f65107a.length);
    }

    @Override
    public void serialize(sy.f encoder, Enum value) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        int iE0 = ArraysKt.e0(this.f65107a, value);
        if (iE0 != -1) {
            encoder.k(getDescriptor(), iE0);
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(value);
        sb2.append(" is not a valid enum ");
        sb2.append(getDescriptor().i());
        sb2.append(", must be one of ");
        String string = Arrays.toString(this.f65107a);
        Intrinsics.g(string, "toString(this)");
        sb2.append(string);
        throw new SerializationException(sb2.toString());
    }

    @Override
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return (kotlinx.serialization.descriptors.f) this.f65109c.getValue();
    }

    public String toString() {
        return "kotlinx.serialization.internal.EnumSerializer<" + getDescriptor().i() + '>';
    }
}
