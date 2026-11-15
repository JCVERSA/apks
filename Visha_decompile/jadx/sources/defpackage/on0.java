package defpackage;

import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.WireFormat;
import kotlin.reflect.jvm.internal.impl.protobuf.d;

public abstract class on0 {
    public static final GeneratedMessageLite.e a = GeneratedMessageLite.newSingularGeneratedExtension(ProtoBuf$Package.getDefaultInstance(), 0, null, null, 151, WireFormat.FieldType.INT32, Integer.class);
    public static final GeneratedMessageLite.e b;
    public static final GeneratedMessageLite.e c;
    public static final GeneratedMessageLite.e d;
    public static final GeneratedMessageLite.e e;
    public static final GeneratedMessageLite.e f;
    public static final GeneratedMessageLite.e g;
    public static final GeneratedMessageLite.e h;
    public static final GeneratedMessageLite.e i;
    public static final GeneratedMessageLite.e j;
    public static final GeneratedMessageLite.e k;
    public static final GeneratedMessageLite.e l;

    static {
        ProtoBuf$Class defaultInstance = ProtoBuf$Class.getDefaultInstance();
        ProtoBuf$Annotation defaultInstance2 = ProtoBuf$Annotation.getDefaultInstance();
        WireFormat.FieldType fieldType = WireFormat.FieldType.MESSAGE;
        b = GeneratedMessageLite.newRepeatedGeneratedExtension(defaultInstance, defaultInstance2, null, 150, fieldType, false, ProtoBuf$Annotation.class);
        c = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$Constructor.getDefaultInstance(), ProtoBuf$Annotation.getDefaultInstance(), null, 150, fieldType, false, ProtoBuf$Annotation.class);
        d = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$Function.getDefaultInstance(), ProtoBuf$Annotation.getDefaultInstance(), null, 150, fieldType, false, ProtoBuf$Annotation.class);
        e = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$Property.getDefaultInstance(), ProtoBuf$Annotation.getDefaultInstance(), null, 150, fieldType, false, ProtoBuf$Annotation.class);
        f = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$Property.getDefaultInstance(), ProtoBuf$Annotation.getDefaultInstance(), null, 152, fieldType, false, ProtoBuf$Annotation.class);
        g = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$Property.getDefaultInstance(), ProtoBuf$Annotation.getDefaultInstance(), null, 153, fieldType, false, ProtoBuf$Annotation.class);
        h = GeneratedMessageLite.newSingularGeneratedExtension(ProtoBuf$Property.getDefaultInstance(), ProtoBuf$Annotation.Argument.Value.getDefaultInstance(), ProtoBuf$Annotation.Argument.Value.getDefaultInstance(), null, 151, fieldType, ProtoBuf$Annotation.Argument.Value.class);
        i = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$EnumEntry.getDefaultInstance(), ProtoBuf$Annotation.getDefaultInstance(), null, 150, fieldType, false, ProtoBuf$Annotation.class);
        j = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$ValueParameter.getDefaultInstance(), ProtoBuf$Annotation.getDefaultInstance(), null, 150, fieldType, false, ProtoBuf$Annotation.class);
        k = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$Type.getDefaultInstance(), ProtoBuf$Annotation.getDefaultInstance(), null, 150, fieldType, false, ProtoBuf$Annotation.class);
        l = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$TypeParameter.getDefaultInstance(), ProtoBuf$Annotation.getDefaultInstance(), null, 150, fieldType, false, ProtoBuf$Annotation.class);
    }

    public static void a(d dVar) {
        dVar.a(a);
        dVar.a(b);
        dVar.a(c);
        dVar.a(d);
        dVar.a(e);
        dVar.a(f);
        dVar.a(g);
        dVar.a(h);
        dVar.a(i);
        dVar.a(j);
        dVar.a(k);
        dVar.a(l);
    }
}
