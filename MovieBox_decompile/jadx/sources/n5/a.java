package n5;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import m5.d;

public final class a {

    private final LinkedHashMap f66931a = new LinkedHashMap();

    private final Map f66932b = new LinkedHashMap();

    private final List f66933c = new ArrayList();

    public final void a(String subtitleMd5) {
        Intrinsics.h(subtitleMd5, "subtitleMd5");
        this.f66932b.put(subtitleMd5, "");
    }

    public final void b(Function2 callback) {
        Intrinsics.h(callback, "callback");
        if (this.f66933c.contains(callback)) {
            return;
        }
        this.f66933c.add(callback);
    }

    public final void c() {
        this.f66931a.clear();
    }

    public final List d(String subtitleMd5) {
        Intrinsics.h(subtitleMd5, "subtitleMd5");
        return (List) this.f66931a.get(subtitleMd5);
    }

    public final boolean e(String subtitleMd5) {
        Intrinsics.h(subtitleMd5, "subtitleMd5");
        return this.f66931a.containsKey(subtitleMd5);
    }

    public final void f(String subtitleMd5, List subtitles) {
        Intrinsics.h(subtitleMd5, "subtitleMd5");
        Intrinsics.h(subtitles, "subtitles");
        if (this.f66931a.size() > 10) {
            try {
                Result.Companion companion = Result.INSTANCE;
                Set setKeySet = this.f66931a.keySet();
                Intrinsics.g(setKeySet, "subtitlesMap.keys");
                Object objH0 = CollectionsKt.h0(setKeySet);
                Intrinsics.g(objH0, "subtitlesMap.keys.first()");
                Result.m453constructorimpl((List) this.f66931a.remove((String) objH0));
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
        this.f66931a.put(subtitleMd5, subtitles);
    }

    public final boolean g() {
        return this.f66931a.isEmpty();
    }

    public final boolean h(String subtitleMd5) {
        Intrinsics.h(subtitleMd5, "subtitleMd5");
        return this.f66932b.containsKey(subtitleMd5);
    }

    public final void i(String subtitleMd5) {
        Intrinsics.h(subtitleMd5, "subtitleMd5");
        this.f66932b.remove(subtitleMd5);
    }

    public final void j(String subtitleMd5) {
        Intrinsics.h(subtitleMd5, "subtitleMd5");
        this.f66931a.remove(subtitleMd5);
    }

    public final void k(String subtitleMd5, d dVar) {
        Intrinsics.h(subtitleMd5, "subtitleMd5");
        Iterator it = this.f66933c.iterator();
        while (it.hasNext()) {
            ((Function2) it.next()).invoke(subtitleMd5, dVar);
        }
        this.f66933c.clear();
    }
}
