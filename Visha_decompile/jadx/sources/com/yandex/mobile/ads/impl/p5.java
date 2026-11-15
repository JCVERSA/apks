package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class p5 {
    private com.google.android.exoplayer2.source.ads.b a;
    private com.google.android.exoplayer2.source.ads.a b;

    public p5(com.google.android.exoplayer2.source.ads.b bVar) {
        com.google.android.exoplayer2.source.ads.a aVar = com.google.android.exoplayer2.source.ads.a.h;
        y45.i(aVar, "NONE");
        this.b = aVar;
    }

    public final void a(com.google.android.exoplayer2.source.ads.b bVar) {
    }

    public final void b() {
        com.google.android.exoplayer2.source.ads.a aVar = com.google.android.exoplayer2.source.ads.a.h;
        y45.i(aVar, "NONE");
        this.b = aVar;
    }

    public final com.google.android.exoplayer2.source.ads.a a() {
        return this.b;
    }

    public final void a(com.google.android.exoplayer2.source.ads.a aVar) {
        y45.j(aVar, "adPlaybackState");
        this.b = aVar;
        com.google.android.exoplayer2.source.ads.b bVar = this.a;
        if (bVar != null) {
            bVar.a(aVar);
        }
    }
}
