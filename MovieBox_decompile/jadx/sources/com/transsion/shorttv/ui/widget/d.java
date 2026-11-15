package com.transsion.shorttv.ui.widget;

import com.transsion.player.ui.ORPlayerView;
import com.transsion.shorttv.ui.fragment.ShortTvDetailListFragment;

public interface d extends com.transsion.player.orplayer.e {

    public static final class a {
        public static void a(d dVar, nr.e eVar, ShortTvDetailListFragment shortTvDetailListFragment, Integer num, boolean z10, String str, String str2, boolean z11, boolean z12, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setData");
            }
            dVar.setData(eVar, shortTvDetailListFragment, num, z10, str, str2, (i10 & 64) != 0 ? false : z11, (i10 & 128) != 0 ? false : z12);
        }
    }

    long getProgress();

    void onAudioTrackChange();

    void onGetDubsInfo();

    void onPageRelease(int i10);

    void onPageSelected(com.transsion.player.orplayer.f fVar, ORPlayerView oRPlayerView, nr.e eVar);

    void setData(nr.e eVar, ShortTvDetailListFragment shortTvDetailListFragment, Integer num, boolean z10, String str, String str2, boolean z11, boolean z12);
}
