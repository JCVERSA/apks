package defpackage;

import androidx.room.Insert;
import androidx.room.Query;
import java.util.List;

public interface azd {
    @Query("DELETE FROM attr_impression_room")
    int a();

    @Query("DELETE FROM attr_impression_room WHERE _id IN (SELECT _id FROM attr_impression_room ORDER BY _id ASC LIMIT :limitCount)")
    int a(int i);

    @Insert(onConflict = 1)
    void a(z30 z30Var);

    @Query("SELECT * FROM attr_impression_room")
    List<z30> b();
}
