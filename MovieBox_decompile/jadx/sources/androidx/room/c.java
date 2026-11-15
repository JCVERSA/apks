package androidx.room;

import android.content.Context;
import android.content.Intent;
import java.io.File;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;

public class c {

    public final Context f14249a;

    public final String f14250b;

    public final z3.e.c f14251c;

    public final RoomDatabase.d f14252d;

    public final List f14253e;

    public final boolean f14254f;

    public final RoomDatabase.JournalMode f14255g;

    public final Executor f14256h;

    public final Executor f14257i;

    public final Intent f14258j;

    public final boolean f14259k;

    public final boolean f14260l;

    private final Set f14261m;

    public final String f14262n;

    public final File f14263o;

    public final Callable f14264p;

    public final RoomDatabase.e f14265q;

    public final List f14266r;

    public final List f14267s;

    public final boolean f14268t;

    public final y3.c f14269u;

    public final CoroutineContext f14270v;

    public final boolean f14271w;

    private boolean f14272x;

    public c(Context context, String str, z3.e.c cVar, RoomDatabase.d migrationContainer, List list, boolean z10, RoomDatabase.JournalMode journalMode, Executor queryExecutor, Executor transactionExecutor, Intent intent, boolean z11, boolean z12, Set set, String str2, File file, Callable callable, RoomDatabase.e eVar, List typeConverters, List autoMigrationSpecs, boolean z13, y3.c cVar2, CoroutineContext coroutineContext) {
        Intrinsics.h(context, "context");
        Intrinsics.h(migrationContainer, "migrationContainer");
        Intrinsics.h(journalMode, "journalMode");
        Intrinsics.h(queryExecutor, "queryExecutor");
        Intrinsics.h(transactionExecutor, "transactionExecutor");
        Intrinsics.h(typeConverters, "typeConverters");
        Intrinsics.h(autoMigrationSpecs, "autoMigrationSpecs");
        this.f14249a = context;
        this.f14250b = str;
        this.f14251c = cVar;
        this.f14252d = migrationContainer;
        this.f14253e = list;
        this.f14254f = z10;
        this.f14255g = journalMode;
        this.f14256h = queryExecutor;
        this.f14257i = transactionExecutor;
        this.f14258j = intent;
        this.f14259k = z11;
        this.f14260l = z12;
        this.f14261m = set;
        this.f14262n = str2;
        this.f14263o = file;
        this.f14264p = callable;
        this.f14265q = eVar;
        this.f14266r = typeConverters;
        this.f14267s = autoMigrationSpecs;
        this.f14268t = z13;
        this.f14269u = cVar2;
        this.f14270v = coroutineContext;
        this.f14271w = intent != null;
        this.f14272x = true;
    }

    public static c b(c cVar, Context context, String str, z3.e.c cVar2, RoomDatabase.d dVar, List list, boolean z10, RoomDatabase.JournalMode journalMode, Executor executor, Executor executor2, Intent intent, boolean z11, boolean z12, Set set, String str2, File file, Callable callable, RoomDatabase.e eVar, List list2, List list3, boolean z13, y3.c cVar3, CoroutineContext coroutineContext, int i10, Object obj) {
        if (obj == null) {
            return cVar.a((i10 & 1) != 0 ? cVar.f14249a : context, (i10 & 2) != 0 ? cVar.f14250b : str, (i10 & 4) != 0 ? cVar.f14251c : cVar2, (i10 & 8) != 0 ? cVar.f14252d : dVar, (i10 & 16) != 0 ? cVar.f14253e : list, (i10 & 32) != 0 ? cVar.f14254f : z10, (i10 & 64) != 0 ? cVar.f14255g : journalMode, (i10 & 128) != 0 ? cVar.f14256h : executor, (i10 & 256) != 0 ? cVar.f14257i : executor2, (i10 & 512) != 0 ? cVar.f14258j : intent, (i10 & 1024) != 0 ? cVar.f14259k : z11, (i10 & 2048) != 0 ? cVar.f14260l : z12, (i10 & 4096) != 0 ? cVar.f14261m : set, (i10 & 8192) != 0 ? cVar.f14262n : str2, (i10 & 16384) != 0 ? cVar.f14263o : file, (i10 & 32768) != 0 ? cVar.f14264p : callable, (i10 & 65536) != 0 ? cVar.f14265q : eVar, (i10 & 131072) != 0 ? cVar.f14266r : list2, (i10 & 262144) != 0 ? cVar.f14267s : list3, (i10 & 524288) != 0 ? cVar.f14268t : z13, (i10 & 1048576) != 0 ? cVar.f14269u : cVar3, (i10 & 2097152) != 0 ? cVar.f14270v : coroutineContext);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: copy");
    }

    public final c a(Context context, String str, z3.e.c cVar, RoomDatabase.d migrationContainer, List list, boolean z10, RoomDatabase.JournalMode journalMode, Executor queryExecutor, Executor transactionExecutor, Intent intent, boolean z11, boolean z12, Set set, String str2, File file, Callable callable, RoomDatabase.e eVar, List typeConverters, List autoMigrationSpecs, boolean z13, y3.c cVar2, CoroutineContext coroutineContext) {
        Intrinsics.h(context, "context");
        Intrinsics.h(migrationContainer, "migrationContainer");
        Intrinsics.h(journalMode, "journalMode");
        Intrinsics.h(queryExecutor, "queryExecutor");
        Intrinsics.h(transactionExecutor, "transactionExecutor");
        Intrinsics.h(typeConverters, "typeConverters");
        Intrinsics.h(autoMigrationSpecs, "autoMigrationSpecs");
        return new c(context, str, cVar, migrationContainer, list, z10, journalMode, queryExecutor, transactionExecutor, intent, z11, z12, set, str2, file, callable, eVar, typeConverters, autoMigrationSpecs, z13, cVar2, coroutineContext);
    }

    public final Set c() {
        return this.f14261m;
    }

    public final boolean d() {
        return this.f14272x;
    }

    public boolean e(int i10, int i11) {
        return androidx.room.util.g.d(this, i10, i11);
    }

    public final void f(boolean z10) {
        this.f14272x = z10;
    }
}
