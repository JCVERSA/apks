package defpackage;

import androidx.p004lifecycle.LiveData;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;
import com.transsion.dbdata.database.AudioAlbum;
import java.util.List;

public interface sl {
    @Delete
    void delete(AudioAlbum audioAlbum);

    @Query("SELECT * FROM AudioAlbum LIMIT :limitCount")
    LiveData<List<AudioAlbum>> getAll(int i);

    @Query("SELECT * FROM AudioAlbum")
    List<AudioAlbum> getAllAudioAlbum();

    @Query("SELECT * FROM AudioAlbum WHERE id=:id")
    AudioAlbum getAudioAlbum(int i);

    @Insert(onConflict = 1)
    void insert(AudioAlbum audioAlbum);
}
