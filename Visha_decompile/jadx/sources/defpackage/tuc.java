package defpackage;

import androidx.room.Insert;
import androidx.room.Query;
import com.transsion.dbdata.beans.YoutubeData;

public interface tuc {
    @Query("SELECT * FROM youtube_video WHERE id = :id")
    YoutubeData getYoutubeData(String str);

    @Insert(onConflict = 1)
    long insertYoutubeData(YoutubeData youtubeData);
}
