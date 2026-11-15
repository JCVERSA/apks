package defpackage;

import android.database.Cursor;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.transsion.dbdata.beans.SubtitleSettingData;
import java.util.Collections;
import java.util.List;

public final class i6a implements h6a {
    public final RoomDatabase a;
    public final EntityInsertionAdapter b;

    public class a extends EntityInsertionAdapter {
        public a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public void bind(SupportSQLiteStatement supportSQLiteStatement, SubtitleSettingData subtitleSettingData) {
            supportSQLiteStatement.bindLong(1, subtitleSettingData.videoId);
            supportSQLiteStatement.bindLong(2, subtitleSettingData.location);
            supportSQLiteStatement.bindLong(3, subtitleSettingData.translateY);
            supportSQLiteStatement.bindLong(4, subtitleSettingData.textAlignment);
            supportSQLiteStatement.bindLong(5, subtitleSettingData.textSize);
            supportSQLiteStatement.bindLong(6, subtitleSettingData.textStyle);
            supportSQLiteStatement.bindLong(7, subtitleSettingData.textColor);
            supportSQLiteStatement.bindLong(8, subtitleSettingData.textBackgroundColor);
            supportSQLiteStatement.bindLong(9, subtitleSettingData.textBackgroundOpacity);
            supportSQLiteStatement.bindLong(10, subtitleSettingData.textDrag);
            supportSQLiteStatement.bindLong(11, subtitleSettingData.time);
        }

        @Override
        public String createQuery() {
            return "INSERT OR REPLACE INTO `SubtitleSetting` (`video_id`,`location`,`translateY`,`text_alignment`,`text_size`,`text_style`,`text_color`,`text_background_color`,`text_background_opacity`,`text_drag`,`time`) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        }
    }

    public i6a(RoomDatabase roomDatabase) {
        this.a = roomDatabase;
        this.b = new a(roomDatabase);
    }

    public static List a() {
        return Collections.emptyList();
    }

    @Override
    public void insertSubtitleSetting(SubtitleSettingData subtitleSettingData) {
        this.a.assertNotSuspendingTransaction();
        this.a.beginTransaction();
        try {
            this.b.insert(subtitleSettingData);
            this.a.setTransactionSuccessful();
        } finally {
            this.a.endTransaction();
        }
    }

    @Override
    public SubtitleSettingData queryNewestSubtitleSetting() {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM SubtitleSetting WHERE time = (SELECT MAX(time) FROM SubtitleSetting)", 0);
        this.a.assertNotSuspendingTransaction();
        SubtitleSettingData subtitleSettingData = null;
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "location");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "translateY");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "text_alignment");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "text_size");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "text_style");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "text_color");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "text_background_color");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "text_background_opacity");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "text_drag");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "time");
            if (cursorQuery.moveToFirst()) {
                subtitleSettingData = new SubtitleSettingData();
                subtitleSettingData.videoId = cursorQuery.getInt(columnIndexOrThrow);
                subtitleSettingData.location = cursorQuery.getInt(columnIndexOrThrow2);
                subtitleSettingData.translateY = cursorQuery.getInt(columnIndexOrThrow3);
                subtitleSettingData.textAlignment = cursorQuery.getInt(columnIndexOrThrow4);
                subtitleSettingData.textSize = cursorQuery.getInt(columnIndexOrThrow5);
                subtitleSettingData.textStyle = cursorQuery.getInt(columnIndexOrThrow6);
                subtitleSettingData.textColor = cursorQuery.getInt(columnIndexOrThrow7);
                subtitleSettingData.textBackgroundColor = cursorQuery.getInt(columnIndexOrThrow8);
                subtitleSettingData.textBackgroundOpacity = cursorQuery.getInt(columnIndexOrThrow9);
                subtitleSettingData.textDrag = cursorQuery.getInt(columnIndexOrThrow10);
                subtitleSettingData.time = cursorQuery.getInt(columnIndexOrThrow11);
            }
            return subtitleSettingData;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }

    @Override
    public SubtitleSettingData querySubtitleByVideoId(int i) {
        RoomSQLiteQuery roomSQLiteQueryAcquire = RoomSQLiteQuery.acquire("SELECT * FROM SubtitleSetting WHERE video_id = ?", 1);
        roomSQLiteQueryAcquire.bindLong(1, i);
        this.a.assertNotSuspendingTransaction();
        SubtitleSettingData subtitleSettingData = null;
        Cursor cursorQuery = DBUtil.query(this.a, roomSQLiteQueryAcquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(cursorQuery, "video_id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "location");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "translateY");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "text_alignment");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "text_size");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "text_style");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "text_color");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "text_background_color");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "text_background_opacity");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "text_drag");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(cursorQuery, "time");
            if (cursorQuery.moveToFirst()) {
                subtitleSettingData = new SubtitleSettingData();
                subtitleSettingData.videoId = cursorQuery.getInt(columnIndexOrThrow);
                subtitleSettingData.location = cursorQuery.getInt(columnIndexOrThrow2);
                subtitleSettingData.translateY = cursorQuery.getInt(columnIndexOrThrow3);
                subtitleSettingData.textAlignment = cursorQuery.getInt(columnIndexOrThrow4);
                subtitleSettingData.textSize = cursorQuery.getInt(columnIndexOrThrow5);
                subtitleSettingData.textStyle = cursorQuery.getInt(columnIndexOrThrow6);
                subtitleSettingData.textColor = cursorQuery.getInt(columnIndexOrThrow7);
                subtitleSettingData.textBackgroundColor = cursorQuery.getInt(columnIndexOrThrow8);
                subtitleSettingData.textBackgroundOpacity = cursorQuery.getInt(columnIndexOrThrow9);
                subtitleSettingData.textDrag = cursorQuery.getInt(columnIndexOrThrow10);
                subtitleSettingData.time = cursorQuery.getInt(columnIndexOrThrow11);
            }
            return subtitleSettingData;
        } finally {
            cursorQuery.close();
            roomSQLiteQueryAcquire.release();
        }
    }
}
