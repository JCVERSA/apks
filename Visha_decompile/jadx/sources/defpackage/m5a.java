package defpackage;

import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;
import com.transsion.dbdata.beans.media.SubtitleRecord;
import java.util.List;

public interface m5a {
    @Query("DELETE FROM SubtitleRecord WHERE _id =:media_id")
    int deleteSubtitleRecordByMediaId(int i);

    @Query("DELETE FROM SubtitleRecord WHERE _id =:media_id AND subtitle_path =:path")
    int deleteSubtitleRecordByMediaIdAndPath(int i, String str);

    @Query("DELETE FROM SubtitleRecord WHERE subtitle_path =:path")
    int deleteSubtitleRecordByPath(String str);

    @Query("DELETE FROM SubtitleRecord WHERE _id =:media_id AND sub_track =:trackValue")
    int deleteSubtitleRecordByTrackAndId(int i, int i2);

    @Query("SELECT * FROM SubtitleRecord WHERE _id =:media_id ORDER BY id ASC ")
    List<SubtitleRecord> getAllDataByMediaId(int i);

    @Query("SELECT * FROM SubtitleRecord WHERE _id =:media_id AND sub_track =:trackValue ORDER BY sub_track_time DESC")
    List<SubtitleRecord> getAllDataByMediaIdAndTrack(int i, int i2);

    @Query("SELECT * FROM SubtitleRecord WHERE _id =:media_id AND sub_track =:trackValue ORDER BY sub_track_time DESC")
    List<SubtitleRecord> getAllDataByMediaIdAndTrackByDesc(int i, int i2);

    @Query("SELECT * FROM SubtitleRecord WHERE subtitle_path =:path AND sub_track =:trackValue ")
    List<SubtitleRecord> getAllDataByMediaPathAndTrack(String str, int i);

    @Query("SELECT * FROM SubtitleRecord WHERE _id =:media_id AND sub_track =:trackValue AND sub_type = 0  ORDER BY sub_track_time DESC")
    List<SubtitleRecord> getAllExternalRecordByMediaIdAndTrack(int i, int i2);

    @Insert
    long insertSubtitleRecord(SubtitleRecord subtitleRecord);

    @Insert
    long[] insertSubtitleRecord(List<SubtitleRecord> list);

    @Query("SELECT * FROM SubtitleRecord WHERE _id =:media_id AND sub_track =:trackValue AND sub_type = 1")
    SubtitleRecord queryInnerSubtitleByMediaAndTrack(int i, int i2);

    @Query("SELECT * FROM SubtitleRecord WHERE _id =:media_id AND sub_id =:sid")
    SubtitleRecord querySubtitleByMediaAndSid(int i, String str);

    @Query("SELECT * FROM SubtitleRecord WHERE _id =:media_id AND sub_track =:trackValue AND subtitle_path =:path")
    SubtitleRecord querySubtitleByMediaAndTrackAndPath(int i, int i2, String str);

    @Query("SELECT * FROM SubtitleRecord WHERE _id =:media_id AND sub_track =:trackValue AND sub_id =:sid")
    SubtitleRecord querySubtitleByMediaAndTrackAndSid(int i, int i2, String str);

    @Update
    void updateSubtitleRecord(SubtitleRecord subtitleRecord);

    @Update
    void updateSubtitleRecord(List<SubtitleRecord> list);
}
