package ij;

import com.transsion.player.longvideo.ui.LongVodPlayerView;
import java.util.HashSet;

public final class f implements cm.g {
    @Override
    public HashSet providerParams() {
        HashSet hashSet = new HashSet();
        hashSet.add("lowMemoryValue");
        hashSet.add("sa_key_kid_mode_ad_switch");
        hashSet.add("sa_key_kid_mode_feature_enable");
        hashSet.add(LongVodPlayerView.PK_NEW_PLAYER_UI_KEY);
        hashSet.add("pk_kids_dialog_suppress_duration");
        hashSet.add("pull_notification_deadline");
        hashSet.add("sb_player_type");
        hashSet.add("sa_dy_so_zip_info");
        hashSet.add("download_buffer_size");
        return hashSet;
    }
}
