package com.transsion.player.longvideo.helper;

import com.transsion.player.longvideo.ui.LongVodPlayerView;
import java.util.HashSet;

public final class a implements cm.g {
    @Override
    public HashSet providerParams() {
        HashSet hashSet = new HashSet();
        hashSet.add("sa_data_operator_config");
        hashSet.add("sa_data_switch");
        hashSet.add("stream_resolution_ratio");
        hashSet.add(LongVodPlayerView.PK_NEW_PLAYER_UI_KEY);
        return hashSet;
    }
}
