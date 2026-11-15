package defpackage;

import androidx.room.Insert;
import androidx.room.Query;
import java.util.List;

public interface y8d {
    @Query("SELECT * FROM default_ad_room")
    List<hed> a();

    @Query("DELETE FROM default_ad_room WHERE ad_request_ver < :version")
    void a(int i);

    @Insert(onConflict = 1)
    void a(hed hedVar);

    @Query("UPDATE default_ad_room SET file_path = '' WHERE file_path LIKE '%' || :filePath || '.0'")
    void a(String str);

    @Query("DELETE FROM default_ad_room WHERE ad_creative_id = :creativeId AND codeSeatId = :codeSeatId")
    void a(String str, String str2);

    @Query("UPDATE default_ad_room SET displayed_times = :displayedTimes, displayed_date = :displayedDate WHERE ad_creative_id = :adCreativeId AND codeSeatId = :codeSeatId")
    void a(String str, String str2, int i, String str3);

    @Query("UPDATE default_ad_room SET file_path = :filepath WHERE ad_creative_id = :adCreativeId AND codeSeatId = :codeSeatId")
    void a(String str, String str2, String str3);

    @Query("DELETE FROM default_ad_room WHERE codeSeatId NOT IN (:codeSeatIds)")
    void a(List<String> list);

    @Query("DELETE FROM default_ad_room")
    void b();

    @Query("DELETE FROM default_ad_room WHERE codeSeatId = :codeSeatId AND ad_request_ver < (SELECT MAX(ad_request_ver) FROM default_ad_room WHERE codeSeatId = :codeSeatId)")
    void b(String str);
}
