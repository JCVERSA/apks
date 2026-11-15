package defpackage;

import androidx.room.Insert;
import androidx.room.Query;
import com.transsion.dbdata.beans.SubtitleSettingData;

public interface h6a {
    @Insert(onConflict = 1)
    void insertSubtitleSetting(SubtitleSettingData subtitleSettingData);

    @Query("SELECT * FROM SubtitleSetting WHERE time = (SELECT MAX(time) FROM SubtitleSetting)")
    SubtitleSettingData queryNewestSubtitleSetting();

    @Query("SELECT * FROM SubtitleSetting WHERE video_id = :videoId")
    SubtitleSettingData querySubtitleByVideoId(int i);
}
