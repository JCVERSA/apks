package com.cloud.tmc.miniapp.widget.pulldownrefresh.util;

import com.google.android.material.appbar.AppBarLayout;

public class OooO00o implements AppBarLayout.g {
    public final com.cloud.tmc.miniapp.widget.pulldownrefresh.listener.OooO00o OooO00o;

    public OooO00o(com.cloud.tmc.miniapp.widget.pulldownrefresh.listener.OooO00o oooO00o) {
        this.OooO00o = oooO00o;
    }

    @Override
    public void onOffsetChanged(AppBarLayout appBarLayout, int i10) {
        com.cloud.tmc.miniapp.widget.pulldownrefresh.listener.OooO00o oooO00o = this.OooO00o;
        boolean z10 = i10 >= 0;
        boolean z11 = appBarLayout.getTotalScrollRange() + i10 <= 0;
        com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o oooO00o2 = (com.cloud.tmc.miniapp.widget.pulldownrefresh.impl.OooO00o) oooO00o;
        oooO00o2.OooO0oO = z10;
        oooO00o2.OooO0oo = z11;
    }
}
