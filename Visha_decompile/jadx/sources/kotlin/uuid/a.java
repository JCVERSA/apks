package kotlin.uuid;

import defpackage.y45;

public abstract class a {
    public static final Object a(Uuid uuid) {
        y45.j(uuid, "uuid");
        return new UuidSerialized(uuid.getMostSignificantBits(), uuid.getLeastSignificantBits());
    }
}
