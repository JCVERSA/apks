package com.transsnet.downloader.viewmodel;

import androidx.p009lifecycle.u0;
import kotlinx.coroutines.y0;

public final class LocalFileViewModel extends MediaBaseViewModel {

    private final androidx.p009lifecycle.b0 f57856d = new androidx.p009lifecycle.b0();

    public static void k(LocalFileViewModel localFileViewModel, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        localFileViewModel.j(z10);
    }

    public final androidx.p009lifecycle.b0 i() {
        return this.f57856d;
    }

    public final void j(boolean z10) {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new LocalFileViewModel$getOutsideLocalVideoList$1(this, z10, null), 2, null);
    }
}
