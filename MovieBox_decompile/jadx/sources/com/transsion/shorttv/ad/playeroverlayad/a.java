package com.transsion.shorttv.ad.playeroverlayad;

import com.transsion.shorttv.ad.AdLoadState;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    private AdLoadState f50714a = AdLoadState.IDLE;

    private e f50715b;

    private boolean f50716c;

    private boolean f50717d;

    public final void a() {
        this.f50714a = AdLoadState.DESTROYED;
        e eVar = this.f50715b;
        if (eVar != null) {
            eVar.f();
        }
        this.f50715b = null;
        this.f50716c = false;
    }

    public final e b() {
        return this.f50715b;
    }

    public final AdLoadState c() {
        return this.f50714a;
    }

    public final boolean d() {
        return this.f50717d;
    }

    public final boolean e() {
        return this.f50716c;
    }

    public final void f(e eVar) {
        this.f50715b = eVar;
    }

    public final void g(AdLoadState adLoadState) {
        Intrinsics.h(adLoadState, "<set-?>");
        this.f50714a = adLoadState;
    }

    public final void h(boolean z10) {
        this.f50717d = z10;
    }

    public final void i(boolean z10) {
        this.f50716c = z10;
    }
}
