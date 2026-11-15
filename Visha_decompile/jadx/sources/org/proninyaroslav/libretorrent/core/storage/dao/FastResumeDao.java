package org.proninyaroslav.libretorrent.core.storage.dao;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import org.proninyaroslav.libretorrent.core.model.data.entity.FastResume;

@Dao
public interface FastResumeDao {
    @Insert(onConflict = 1)
    void add(FastResume fastResume);

    @Query("SELECT * FROM FastResume WHERE torrentId = :torrentId")
    FastResume getByTorrentId(String str);
}
