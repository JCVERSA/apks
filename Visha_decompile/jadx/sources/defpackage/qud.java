package defpackage;

import androidx.room.Insert;
import androidx.room.Query;
import java.util.List;

public interface qud {
    @Query("DELETE FROM attr_click_room")
    int a();

    @Query("DELETE FROM attr_click_room WHERE _id IN (:ids)")
    int a(List<Integer> list);

    @Insert
    void a(swd swdVar);

    @Query("SELECT * FROM attr_click_room")
    List<swd> b();
}
