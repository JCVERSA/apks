package com.transsion.shorttv_pugc.ui.widget;

import com.transsion.player.ui.ORPlayerView;
import com.transsion.shorttv_pugc.ShorttvModel;
import com.transsion.shorttv_pugc.ui.fragment.ShortTvDetailListFragment;

public interface a extends com.transsion.player.orplayer.e {

    public static final class C0642a {
        public static void a(a aVar, ShorttvModel.UGCVideo uGCVideo, ShortTvDetailListFragment shortTvDetailListFragment, Integer num, boolean z10, String str, String str2, boolean z11, boolean z12, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setData");
            }
            aVar.setData(uGCVideo, shortTvDetailListFragment, num, z10, str, str2, (i10 & 64) != 0 ? false : z11, (i10 & 128) != 0 ? false : z12);
        }
    }

    long getProgress();

    void onPageRelease(int i10);

    void onPageSelected(com.transsion.player.orplayer.f fVar, ORPlayerView oRPlayerView, ShorttvModel.UGCVideo uGCVideo);

    void setData(ShorttvModel.UGCVideo uGCVideo, ShortTvDetailListFragment shortTvDetailListFragment, Integer num, boolean z10, String str, String str2, boolean z11, boolean z12);
}
