package defpackage;

import androidx.room.Insert;
import androidx.room.Query;
import com.transsion.dbdata.beans.LyricData;

public interface av5 {
    @Insert(onConflict = 1)
    void insert(LyricData lyricData);

    @Query("SELECT * FROM lyric_data WHERE media_id = :media_id")
    LyricData queryLyricData(int i);
}
