package defpackage;

import kotlin.Pair;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.TypeDeserializer;

public interface zh1 {
    public static final a a = a.a;

    public static final class a {
        public static final a a = new a();
        public static final zh1 b = new C0463a();

        public static final class C0463a implements zh1 {
            @Override
            public Pair a(ProtoBuf$Function protoBuf$Function, e eVar, xcb xcbVar, TypeDeserializer typeDeserializer) {
                y45.j(protoBuf$Function, "proto");
                y45.j(eVar, "ownerFunction");
                y45.j(xcbVar, "typeTable");
                y45.j(typeDeserializer, "typeDeserializer");
                return null;
            }
        }

        public final zh1 a() {
            return b;
        }
    }

    Pair a(ProtoBuf$Function protoBuf$Function, e eVar, xcb xcbVar, TypeDeserializer typeDeserializer);
}
