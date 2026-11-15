package com.transsnet.downloader.viewmodel;

import androidx.p009lifecycle.u0;
import kotlinx.coroutines.y0;

public final class TransferReceivedViewModel extends MediaBaseViewModel {

    private final androidx.p009lifecycle.b0 f57860d = new androidx.p009lifecycle.b0();

    public static void i(TransferReceivedViewModel transferReceivedViewModel, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        transferReceivedViewModel.h(z10);
    }

    public final void h(boolean z10) {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new TransferReceivedViewModel$getTransferReceivedList$1(z10, this, null), 2, null);
    }

    public final androidx.p009lifecycle.b0 j() {
        return this.f57860d;
    }
}
