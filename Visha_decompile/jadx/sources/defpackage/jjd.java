package defpackage;

import android.database.Cursor;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;

public interface jjd {
    @Query("DELETE FROM hisavana_local_ab_room")
    int a();

    @Update
    int a(nod nodVar);

    @Query("SELECT * FROM hisavana_local_ab_room WHERE LOCAL_AB_VERSION_CODE = :versionCode")
    Cursor a(long j);

    @Insert(onConflict = 1)
    long b(nod nodVar);
}
