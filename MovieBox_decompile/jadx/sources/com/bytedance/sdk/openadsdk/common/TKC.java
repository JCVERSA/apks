package com.bytedance.sdk.openadsdk.common;

import android.content.Context;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.model.sU;

public class TKC extends aa {
    public TKC(@NonNull Context context) {
        super(context);
        this.sP = false;
    }

    @Override
    public void Sj() {
        post(new Runnable() {
            @Override
            public void run() {
                TKC tkc = TKC.this;
                if (tkc.Sj != null) {
                    tkc.setVisibility(0);
                }
            }
        });
    }

    public void Sj(sU sUVar, String str, int i10, String str2, long j10, boolean z10, int i11, long j11) {
        if (getVisibility() != 8) {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, str, i10, str2, SystemClock.elapsedRealtime() - j10, z10, i11, j11);
            super.sP();
        }
    }
}
