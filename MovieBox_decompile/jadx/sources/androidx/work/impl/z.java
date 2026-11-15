package androidx.work.impl;

import android.content.Context;
import java.io.File;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class z {

    public static final z f15400a = new z();

    private z() {
    }

    private final File c(Context context) {
        return new File(a.f15175a.a(context), "androidx.work.workdb");
    }

    public static final void d(Context context) {
        Intrinsics.h(context, "context");
        z zVar = f15400a;
        if (zVar.b(context).exists()) {
            androidx.work.j.e().a(a0.f15176a, "Migrating WorkDatabase to the no-backup directory");
            for (Map.Entry entry : zVar.e(context).entrySet()) {
                File file = (File) entry.getKey();
                File file2 = (File) entry.getValue();
                if (file.exists()) {
                    if (file2.exists()) {
                        androidx.work.j.e().k(a0.f15176a, "Over-writing contents of " + file2);
                    }
                    androidx.work.j.e().a(a0.f15176a, file.renameTo(file2) ? "Migrated " + file + "to " + file2 : "Renaming " + file + " to " + file2 + " failed");
                }
            }
        }
    }

    public final File a(Context context) {
        Intrinsics.h(context, "context");
        return c(context);
    }

    public final File b(Context context) {
        Intrinsics.h(context, "context");
        File databasePath = context.getDatabasePath("androidx.work.workdb");
        Intrinsics.g(databasePath, "context.getDatabasePath(WORK_DATABASE_NAME)");
        return databasePath;
    }

    public final Map e(Context context) {
        Intrinsics.h(context, "context");
        File fileB = b(context);
        File fileA = a(context);
        String[] strArr = a0.f15177b;
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.e(MapsKt.e(strArr.length), 16));
        for (String str : strArr) {
            Pair pairA = TuplesKt.a(new File(fileB.getPath() + str), new File(fileA.getPath() + str));
            linkedHashMap.put(pairA.getFirst(), pairA.getSecond());
        }
        return MapsKt.p(linkedHashMap, TuplesKt.a(fileB, fileA));
    }
}
