package defpackage;

import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;

public abstract class cj8 {
    public static final Object a(GeneratedMessageLite.ExtendableMessage extendableMessage, GeneratedMessageLite.e eVar) {
        y45.j(extendableMessage, "<this>");
        y45.j(eVar, "extension");
        if (extendableMessage.hasExtension(eVar)) {
            return extendableMessage.getExtension(eVar);
        }
        return null;
    }

    public static final Object b(GeneratedMessageLite.ExtendableMessage extendableMessage, GeneratedMessageLite.e eVar, int i) {
        y45.j(extendableMessage, "<this>");
        y45.j(eVar, "extension");
        if (i < extendableMessage.getExtensionCount(eVar)) {
            return extendableMessage.getExtension(eVar, i);
        }
        return null;
    }
}
