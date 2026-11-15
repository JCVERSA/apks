package defpackage;

import android.database.Cursor;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.transsion.dbdata.database.AudioTrack;
import java.util.Collections;
import java.util.List;

public final class r10 implements q10 {
    public final RoomDatabase a;
    public final EntityInsertionAdapter b;

    public class a extends EntityInsertionAdapter {
        public a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, AudioTrack audioTrack) {
            supportSQLiteStatement.bindLong(1, audioTrack.id);
            supportSQLiteStatement.bindLong(2, audioTrack.audioId);
            String str = audioTrack.name;
            if (str == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindString(3, str);
            }
        }

        @Override
        public String createQuery() {
            return "INSERT OR REPLACE INTO `AudioTrack` (`id`,`audioId`,`name`) VALUES (?,?,?)";
        }
    }

    public r10(RoomDatabase roomDatabase) {
        this.a = roomDatabase;
        this.b = new a(roomDatabase);
    }

    public static List a() {
        return Collections.emptyList();
    }

    @Override
    public AudioTrack getAudioTrack(int i) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM AudioTrack WHERE id=?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i);
        this.a.assertNotSuspendingTransaction();
        AudioTrack audioTrack = null;
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, TtmlNode.ATTR_ID);
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "audioId");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "name");
            if (cursorQuery.moveToFirst()) {
                AudioTrack audioTrack2 = new AudioTrack();
                audioTrack2.id = cursorQuery.getInt(columnIndexOrThrow);
                audioTrack2.audioId = cursorQuery.getInt(columnIndexOrThrow2);
                if (cursorQuery.isNull(columnIndexOrThrow3)) {
                    audioTrack2.name = null;
                } else {
                    audioTrack2.name = cursorQuery.getString(columnIndexOrThrow3);
                }
                audioTrack = audioTrack2;
            }
            return audioTrack;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public void insertAudioTrack(AudioTrack audioTrack) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.b.insert(audioTrack);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }
}
