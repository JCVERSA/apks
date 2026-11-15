package qm;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class a {

    private final int f69897a;

    private int f69898b;

    private List f69899c;

    public a(int i10, int i11) {
        this.f69897a = i10;
        this.f69898b = i11;
    }

    public final int a() {
        return this.f69898b;
    }

    public final List b() {
        return this.f69899c;
    }

    public final int c() {
        return this.f69897a;
    }

    public final boolean d() {
        return this.f69897a > this.f69898b;
    }

    public final void e(int i10) {
        this.f69898b = i10;
    }

    public final void f(List list) {
        this.f69899c = list;
    }

    public a(int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, (i12 & 2) != 0 ? 0 : i11);
    }
}
