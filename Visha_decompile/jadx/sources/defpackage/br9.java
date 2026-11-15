package defpackage;

import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;
import com.transsion.dbdata.beans.sniff.SniffScriptBean;
import java.util.List;

public interface br9 {
    @Delete
    void delete(SniffScriptBean sniffScriptBean);

    @Query("DELETE FROM url_js")
    void deleteAll();

    @Query("SELECT * FROM url_js")
    List<SniffScriptBean> getAllSniffUrls();

    @Query("SELECT * FROM url_js WHERE script_key = :script_key")
    SniffScriptBean getSniffScriptEntity(String str);

    @Insert(onConflict = 1)
    void insert(SniffScriptBean sniffScriptBean);

    @Insert(onConflict = 1)
    void insertAll(List<SniffScriptBean> list);

    @Update
    void updateSniffScriptEntity(SniffScriptBean sniffScriptBean);
}
