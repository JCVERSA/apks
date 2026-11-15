package defpackage;

import androidx.p004lifecycle.LiveData;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;
import com.transsion.dbdata.beans.sniff.Bookmark;
import java.util.List;

public interface ig0 {
    @Query("DELETE FROM Bookmark WHERE uri =:url")
    void deleteItem(String str);

    @Query("DELETE FROM Bookmark WHERE id =:id")
    void deleteItemById(long j);

    @Query("SELECT * FROM Bookmark ")
    LiveData<List<Bookmark>> getAll();

    @Query("SELECT * FROM Bookmark WHERE uri=:url")
    Bookmark getBookmark(String str);

    @Query("SELECT * FROM Bookmark WHERE uri IN (:urls)")
    List<Bookmark> getBookmarks(List<String> list);

    @Insert(onConflict = 1)
    void insertItem(Bookmark bookmark);

    @Insert(onConflict = 1)
    void insertItems(List<Bookmark> list);

    @Query("update Bookmark set bitmap=:bitmap where uri=:uri")
    void updateBitmap(String str, byte[] bArr);

    @Query("update Bookmark set imageUri=:imageUri where uri=:uri")
    void updateImgUrl(String str, String str2);

    @Update
    void updateItem(Bookmark bookmark);
}
