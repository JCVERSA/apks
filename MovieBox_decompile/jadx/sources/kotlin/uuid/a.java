package kotlin.uuid;

import kotlin.jvm.internal.Intrinsics;

class a {
    public static final void a(long j10, byte[] dst, int i10, int i11, int i12) {
        Intrinsics.h(dst, "dst");
        b.d(j10, dst, i10, i11, i12);
    }

    public static final Object b(Uuid uuid) {
        Intrinsics.h(uuid, "uuid");
        return new UuidSerialized(uuid.getMostSignificantBits(), uuid.getLeastSignificantBits());
    }

    public static final void c(byte[] bArr, int i10, long j10) {
        Intrinsics.h(bArr, "<this>");
        b.e(bArr, i10, j10);
    }
}
