package androidx.room;

import kotlin.jvm.internal.Intrinsics;

public final class e0 {

    public static final e0 f14341a = new e0();

    private e0() {
    }

    public static final String a(String hash) {
        Intrinsics.h(hash, "hash");
        return "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '" + hash + "')";
    }
}
