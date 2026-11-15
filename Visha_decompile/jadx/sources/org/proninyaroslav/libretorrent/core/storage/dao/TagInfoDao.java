package org.proninyaroslav.libretorrent.core.storage.dao;

import androidx.room.Dao;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;
import defpackage.r14;
import defpackage.xm9;
import java.util.List;
import org.proninyaroslav.libretorrent.core.model.data.entity.TagInfo;

@Dao
public interface TagInfoDao {
    @Delete
    void delete(TagInfo tagInfo);

    @Query("SELECT * FROM TagInfo WHERE name = :name")
    TagInfo getByName(String str);

    @Query("SELECT * FROM TagInfo WHERE id IN (SELECT tagId FROM TorrentTagInfo WHERE torrentId = :torrentId)")
    List<TagInfo> getByTorrentId(String str);

    @Query("SELECT * FROM TagInfo WHERE id IN (SELECT tagId FROM TorrentTagInfo WHERE torrentId = :torrentId)")
    xm9 getByTorrentIdAsync(String str);

    @Insert(onConflict = 1)
    void insert(TagInfo tagInfo);

    @Query("SELECT * FROM TagInfo")
    r14 observeAll();

    @Query("SELECT * FROM TagInfo WHERE id IN (SELECT tagId FROM TorrentTagInfo WHERE torrentId = :torrentId)")
    r14 observeByTorrentId(String str);

    @Update
    void update(TagInfo tagInfo);
}
