package defpackage;

import androidx.room.Insert;
import androidx.room.Query;
import com.transsion.dbdata.database.AudioTrack;

public interface q10 {
    @Query("SELECT * FROM AudioTrack WHERE id=:id")
    AudioTrack getAudioTrack(int i);

    @Insert(onConflict = 1)
    void insertAudioTrack(AudioTrack audioTrack);
}
