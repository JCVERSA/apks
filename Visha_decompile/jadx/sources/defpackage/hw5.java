package defpackage;

import androidx.room.Insert;
import androidx.room.Query;
import com.transsion.dbdata.beans.MIMediaLibraryCache;
import java.util.List;

public interface hw5 {
    @Query("DELETE FROM mi_media_library_cache")
    int deleteAllCaches();

    @Query("SELECT * FROM mi_media_library_cache")
    List<MIMediaLibraryCache> getAllCaches();

    @Query("SELECT * FROM mi_media_library_cache WHERE media_library_id = :mediaLibraryId")
    MIMediaLibraryCache getCacheByMediaLibraryId(String str);

    @Insert(onConflict = 1)
    List<Long> insertCaches(List<MIMediaLibraryCache> list);
}
