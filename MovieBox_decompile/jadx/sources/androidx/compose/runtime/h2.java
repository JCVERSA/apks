package androidx.compose.runtime;

import kotlin.jvm.internal.Intrinsics;

public final class h2 {

    private final i f3426a;

    private h2(i iVar) {
        this.f3426a = iVar;
    }

    public static final h2 a(i iVar) {
        return new h2(iVar);
    }

    public static boolean c(i iVar, Object obj) {
        return (obj instanceof h2) && Intrinsics.c(iVar, ((h2) obj).f());
    }

    public static int d(i iVar) {
        return iVar.hashCode();
    }

    public static String e(i iVar) {
        return "SkippableUpdater(composer=" + iVar + ')';
    }

    public boolean equals(Object obj) {
        return c(this.f3426a, obj);
    }

    public final i f() {
        return this.f3426a;
    }

    public int hashCode() {
        return d(this.f3426a);
    }

    public String toString() {
        return e(this.f3426a);
    }

    public static i b(i iVar) {
        return iVar;
    }
}
