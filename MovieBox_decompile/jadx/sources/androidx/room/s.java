package androidx.room;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class s {

    public static final s f14394a = new s();

    private s() {
    }

    public static final RoomDatabase.a a(Context context, Class klass, String str) {
        Intrinsics.h(context, "context");
        Intrinsics.h(klass, "klass");
        if (str == null || StringsKt.q0(str)) {
            throw new IllegalArgumentException("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
        }
        if (Intrinsics.c(str, ":memory:")) {
            throw new IllegalArgumentException("Cannot build a database with the special name ':memory:'. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
        }
        return new RoomDatabase.a(context, klass, str);
    }

    public static final RoomDatabase.a b(Context context, Class klass) {
        Intrinsics.h(context, "context");
        Intrinsics.h(klass, "klass");
        return new RoomDatabase.a(context, klass, null);
    }
}
