package defpackage;

import com.tencent.mmkv.MMKV;
import com.transsion.audio.R;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import com.transsion.dbdata.utils.AudioFilterUtils;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.utils.ToastUtils;
import java.util.List;

public abstract class br {
    public static final boolean a(AudioItem audioItem, AudioItem audioItem2) {
        y45.j(audioItem, "<this>");
        y45.j(audioItem2, "other");
        if (audioItem2 == audioItem) {
            return true;
        }
        return audioItem.id == audioItem2.id && y45.e(audioItem.displayName, audioItem2.displayName) && y45.e(audioItem.artistName, audioItem2.artistName);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final int b(AudioItem audioItem, String str) {
        y45.j(audioItem, "<this>");
        y45.j(str, "filteredType");
        MMKV mmkvP = MMKV.p();
        y45.i(mmkvP, "defaultMMKV(...)");
        switch (str.hashCode()) {
            case -1977586174:
                if (str.equals("filter_buckets")) {
                    return R.drawable.ic_audio_filter_tag_folder;
                }
                return 0;
            case -1564337541:
                if (!str.equals("filter_duration")) {
                    return 0;
                }
                int i = AudioFilterUtils.h[mmkvP.f("filter_duration")];
                if (i == 10) {
                    return R.drawable.ic_audio_filter_tag_duration_small_than_10;
                }
                if (i == 30) {
                    return R.drawable.ic_audio_filter_tag_duration_small_than_30;
                }
                if (i != 60) {
                    return 0;
                }
                return R.drawable.ic_audio_filter_tag_duration_small_than_60;
            case -889964440:
                if (!str.equals("filter_size")) {
                    return 0;
                }
                int i2 = AudioFilterUtils.g[mmkvP.f("filter_size")];
                if (i2 == 100) {
                    return R.drawable.ic_audio_filter_tag_size_small_than_100;
                }
                if (i2 != 500) {
                    return 0;
                }
                return R.drawable.ic_audio_filter_tag_size_small_than_500;
            case 569239738:
                if (str.equals("filter_manually")) {
                    return R.drawable.ic_audio_filter_tag_manually;
                }
                return 0;
            default:
                return 0;
        }
    }

    public static final void c(AudioItem audioItem) {
        y45.j(audioItem, "<this>");
        if (MusicPlayManager.S().a0() == null || !y45.e(audioItem.data, MusicPlayManager.S().a0().data)) {
            ToastUtils.s(R.string.audio_added_to_next);
        } else {
            ToastUtils.s(R.string.audio_song_playing);
            if (!MusicPlayManager.S().s0()) {
                MusicPlayManager.S().P0(audioItem, false);
                h27.c().e(1083, new Object[0]);
            }
        }
        if (PlayAudioListData.getInstance().getPlayList() == null || PlayAudioListData.getInstance().getPlayList().size() == 0) {
            MusicPlayManager.S().Y().setPlayMediaItem(audioItem).selectedPlayMediaItem();
            MusicPlayManager.S().P0(audioItem, false);
            h27.c().e(1083, new Object[0]);
        }
        PlayAudioListData.getInstance().next(audioItem);
        LiveEventBus.b().c("change_minibar_state", Boolean.TRUE);
    }

    public static final boolean d(List list, List list2) {
        y45.j(list, "<this>");
        y45.j(list2, "other");
        if (list2 == list) {
            return true;
        }
        try {
            if (list.size() != list2.size()) {
                return false;
            }
            int i = 0;
            for (Object obj : list) {
                int i2 = i + 1;
                if (i < 0) {
                    y71.u();
                }
                if (!a((AudioItem) obj, (AudioItem) list2.get(i))) {
                    return false;
                }
                i = i2;
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static final void e(AudioItem audioItem, e74 e74Var, e74 e74Var2) {
        if (audioItem == null) {
            return;
        }
        PlayAudioData playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData(audioItem);
        if (e74Var != null) {
            y45.g(playAudioDataConvertToPlayAudioData);
            e74Var.invoke(playAudioDataConvertToPlayAudioData);
        }
        LiveEventBus.b().c("launch_audio_player_activity", playAudioDataConvertToPlayAudioData);
        if (e74Var2 != null) {
            y45.g(playAudioDataConvertToPlayAudioData);
            e74Var2.invoke(playAudioDataConvertToPlayAudioData);
        }
    }
}
