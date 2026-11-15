package androidx.navigation;

import android.os.Bundle;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class c {

    private final int f13548a;

    private l f13549b;

    private Bundle f13550c;

    public c(int i10, l lVar, Bundle bundle) {
        this.f13548a = i10;
        this.f13549b = lVar;
        this.f13550c = bundle;
    }

    public final Bundle a() {
        return this.f13550c;
    }

    public final int b() {
        return this.f13548a;
    }

    public final l c() {
        return this.f13549b;
    }

    public final void d(Bundle bundle) {
        this.f13550c = bundle;
    }

    public final void e(l lVar) {
        this.f13549b = lVar;
    }

    public c(int i10, l lVar, Bundle bundle, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, (i11 & 2) != 0 ? null : lVar, (i11 & 4) != 0 ? null : bundle);
    }
}
