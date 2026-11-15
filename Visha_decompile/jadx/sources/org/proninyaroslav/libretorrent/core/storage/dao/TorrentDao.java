package org.proninyaroslav.libretorrent.core.storage.dao;

import androidx.room.Dao;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Transaction;
import androidx.room.Update;
import defpackage.r14;
import defpackage.xm9;
import java.util.List;
import org.proninyaroslav.libretorrent.core.model.data.entity.Torrent;
import org.proninyaroslav.libretorrent.core.model.data.entity.TorrentTagInfo;

@Dao
public abstract class TorrentDao {
    @Insert
    public abstract void add(Torrent torrent);

    @Insert
    public abstract void addTag(TorrentTagInfo torrentTagInfo);

    @Insert
    public abstract void addTags(List<TorrentTagInfo> list);

    @Delete
    public abstract void delete(Torrent torrent);

    @Delete
    public abstract void deleteTag(TorrentTagInfo torrentTagInfo);

    @Query("DELETE FROM TorrentTagInfo WHERE torrentId = :torrentId")
    public abstract void deleteTagsByTorrentId(String str);

    @Query("SELECT * FROM Torrent")
    public abstract List<Torrent> getAllTorrents();

    @Query("SELECT * FROM Torrent WHERE id = :id")
    public abstract Torrent getTorrentById(String str);

    @Query("SELECT * FROM Torrent WHERE id = :id")
    public abstract xm9 getTorrentByIdSingle(String str);

    @Query("SELECT * FROM Torrent WHERE id = :id")
    public abstract r14 observeTorrentById(String str);

    @Transaction
    public void replaceTags(String str, List<TorrentTagInfo> list) {
        deleteTagsByTorrentId(str);
        addTags(list);
    }

    @Update
    public abstract void update(Torrent torrent);
}
