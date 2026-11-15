package defpackage;

import androidx.p004lifecycle.LiveData;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Transaction;
import com.transsion.sniffer_load.data.ReviewHistory;
import java.util.List;

public interface dv8 {
    @Insert
    long addReviewHistory(ReviewHistory reviewHistory);

    @Transaction
    default long addReviewHistoryWithLimit(ReviewHistory reviewHistory) {
        long jAddReviewHistory = addReviewHistory(reviewHistory);
        trimExcessHistory();
        return jAddReviewHistory;
    }

    @Query("DELETE FROM ReviewHistory")
    void deleteAll();

    @Query("DELETE FROM ReviewHistory WHERE id IN (:ids)")
    void deleteByIds(List<Long> list);

    @Query("DELETE FROM ReviewHistory WHERE id =:id")
    void deleteItem(long j);

    @Query("SELECT id, name, url, date, imageUri FROM ReviewHistory ORDER BY date DESC LIMIT 200")
    LiveData<List<ReviewHistory>> getAllByDESC();

    @Query("select * FROM ReviewHistory")
    LiveData<ReviewHistory> getAllForLiveData();

    @Query("SELECT bitmap FROM ReviewHistory WHERE id = :id LIMIT 1")
    byte[] getBitmapById(long j);

    @Query("SELECT COUNT(*) FROM ReviewHistory")
    int getCount();

    @Query("SELECT id FROM ReviewHistory ORDER BY date ASC LIMIT :count")
    List<Long> getOldestIds(int i);

    @Transaction
    default void trimExcessHistory() {
        int count = getCount() - 200;
        if (count > 0) {
            List<Long> oldestIds = getOldestIds(count);
            if (oldestIds.isEmpty()) {
                return;
            }
            deleteByIds(oldestIds);
        }
    }

    @Query("update ReviewHistory set bitmap=:bitmap where url=:url")
    void updateBitmap(String str, byte[] bArr);

    @Query("update ReviewHistory set imageUri=:imageUri where url=:url")
    void updateImgUrl(String str, String str2);
}
