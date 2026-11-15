package com.transsion.dbdata.database;

import android.content.Context;
import android.util.Log;
import androidx.room.Database;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.dbdata.beans.SubtitleHistory;
import com.transsion.dbdata.beans.SubtitleSettingData;
import com.transsion.dbdata.beans.media.SubtitleRecord;
import defpackage.g5c;
import defpackage.h6a;
import defpackage.ivb;
import defpackage.jub;
import defpackage.m5a;
import defpackage.q10;
import defpackage.qj1;
import defpackage.w4a;

@Database(entities = {VideoRecord.class, SubtitleRecord.class, VideoPlayList.class, VideoPlayListMedia.class, AudioTrack.class, SubtitleSettingData.class, SubtitleHistory.class, ConvertingVideo.class}, exportSchema = false, version = 11)
public abstract class VideoRoomDatabase extends RoomDatabase {
    public static VideoRoomDatabase a;
    public static final Migration b = new f(1, 2);
    public static final Migration c = new g(2, 1);
    public static final Migration d = new h(3, 2);
    public static final Migration e = new i(2, 3);
    public static final Migration f = new j(3, 4);
    public static final Migration g = new k(4, 5);
    public static final Migration h = new l(5, 6);
    public static final Migration i = new m(6, 7);
    public static final Migration j = new a(7, 8);
    public static final Migration k = new b(8, 9);
    public static final Migration l = new c(9, 10);
    public static final Migration m = new d(10, 11);

    public class a extends Migration {
        public a(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS temp_SubtitleSetting ( video_id INTEGER PRIMARY KEY NOT NULL, text_alignment INTEGER NOT NULL DEFAULT 0, location INTEGER NOT NULL DEFAULT 2, translateY INTEGER NOT NULL DEFAULT 0,text_size INTEGER NOT NULL DEFAULT 1, text_style INTEGER NOT NULL DEFAULT 1, text_color INTEGER NOT NULL DEFAULT 0, text_background_color INTEGER NOT NULL DEFAULT 1, text_background_opacity INTEGER NOT NULL DEFAULT 30, text_drag INTEGER NOT NULL DEFAULT 0, time INTEGER NOT NULL DEFAULT 0)");
            supportSQLiteDatabase.execSQL("INSERT INTO temp_SubtitleSetting (video_id, text_alignment, location, translateY, text_size, text_style, text_color, text_background_color, text_background_opacity, text_drag) SELECT video_id, text_alignment, location, translateY, text_size, text_style, text_color, text_background_color, text_background_opacity, text_drag FROM SubtitleSetting");
            supportSQLiteDatabase.execSQL("DROP TABLE SubtitleSetting");
            supportSQLiteDatabase.execSQL("ALTER TABLE temp_SubtitleSetting RENAME TO SubtitleSetting");
        }
    }

    public class b extends Migration {
        public b(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE temp_SubtitleRecord (id INTEGER NOT NULL,_id INTEGER NOT NULL DEFAULT 0,subtitle_path TEXT, sub_id TEXT, sub_track INTEGER NOT NULL DEFAULT 0, sub_track_delay_time REAL NOT NULL DEFAULT 0,sub_track_time INTEGER NOT NULL DEFAULT 0, sub_type INTEGER NOT NULL DEFAULT 0, sub_format INTEGER NOT NULL DEFAULT 1,sub_inner_id INTEGER NOT NULL DEFAULT -1,sub_inner_name TEXT, PRIMARY KEY(id))");
            supportSQLiteDatabase.execSQL("INSERT INTO temp_SubtitleRecord (id,_id,subtitle_path,sub_id,sub_track,sub_track_delay_time,sub_track_time) SELECT id,_id,subtitle_path,sub_id,sub_track,sub_track_delay_time,sub_track_time FROM SubtitleRecord");
            supportSQLiteDatabase.execSQL("DROP TABLE SubtitleRecord");
            supportSQLiteDatabase.execSQL("ALTER TABLE temp_SubtitleRecord RENAME TO SubtitleRecord");
        }
    }

    public class c extends Migration {
        public c(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE temp_SubtitleRecord (id INTEGER NOT NULL,_id INTEGER NOT NULL DEFAULT 0,subtitle_path TEXT, sub_id TEXT, sub_track INTEGER NOT NULL DEFAULT 0, sub_track_delay_time REAL NOT NULL DEFAULT 0,sub_track_time INTEGER NOT NULL DEFAULT 0, sub_type INTEGER NOT NULL DEFAULT 0, sub_format INTEGER NOT NULL DEFAULT 1,sub_inner_id INTEGER NOT NULL DEFAULT -1,sub_inner_name TEXT,sub_local_lang_to TEXT DEFAULT 'none',PRIMARY KEY(id))");
            supportSQLiteDatabase.execSQL("INSERT INTO temp_SubtitleRecord (id,_id,subtitle_path,sub_id,sub_track,sub_track_delay_time,sub_track_time,sub_type,sub_format,sub_inner_id,sub_inner_name) SELECT id,_id,subtitle_path,sub_id,sub_track,sub_track_delay_time,sub_track_time,sub_type,sub_format,sub_inner_id,sub_inner_name FROM SubtitleRecord");
            supportSQLiteDatabase.execSQL("DROP TABLE SubtitleRecord");
            supportSQLiteDatabase.execSQL("ALTER TABLE temp_SubtitleRecord RENAME TO SubtitleRecord");
        }
    }

    public class d extends Migration {
        public d(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            try {
                supportSQLiteDatabase.execSQL("ALTER TABLE VideoStates ADD COLUMN play_count INTEGER NOT NULL DEFAULT 0");
                LogUtils.i("VideoRoomDatabase", "MIGRATION_10_11 completed successfully");
            } catch (Exception e) {
                LogUtils.l("VideoRoomDatabase", "upgrade failed Error during MIGRATION_10_11: " + e.getMessage(), e);
            }
        }
    }

    public class e extends RoomDatabase.Callback {
        @Override
        public void onCreate(SupportSQLiteDatabase supportSQLiteDatabase) {
            super.onCreate(supportSQLiteDatabase);
        }
    }

    public class f extends Migration {
        public f(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
        }
    }

    public class g extends Migration {
        public g(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
        }
    }

    public class h extends Migration {
        public h(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
        }
    }

    public class i extends Migration {
        public i(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS SubtitleRecord (id INTEGER NOT NULL,_id INTEGER NOT NULL DEFAULT 0,subtitle_path TEXT,PRIMARY KEY(id))");
            Log.d("VideoRoomDatabase", "MIGRATION_2_3");
            supportSQLiteDatabase.execSQL("CREATE TABLE temp_video (id INTEGER NOT NULL,_data TEXT,position INTEGER NOT NULL DEFAULT 0, duration INTEGER NOT NULL DEFAULT 0,isPlayCompleted INTEGER NOT NULL DEFAULT 0,isVirtualFolder INTEGER NOT NULL DEFAULT 0,virtualFolder_path TEXT,virtualFolder_matchName TEXT,bucket_id INTEGER NOT NULL DEFAULT 0,_id INTEGER NOT NULL DEFAULT 0,date_modified INTEGER NOT NULL DEFAULT 0,record_date_modified INTEGER NOT NULL DEFAULT 0,subtitle_index INTEGER NOT NULL DEFAULT -1,PRIMARY KEY(id))");
            supportSQLiteDatabase.execSQL("INSERT INTO temp_video (id ,_data ,position,duration,isPlayCompleted,isVirtualFolder,virtualFolder_path,virtualFolder_matchName,bucket_id,_id,date_modified,record_date_modified) SELECT id ,_data ,position,duration,isPlayCompleted,isVirtualFolder,virtualFolder_path,virtualFolder_matchName,bucket_id,_id,date_modified,record_date_modified FROM VideoStates");
            supportSQLiteDatabase.execSQL("DROP TABLE VideoStates");
            supportSQLiteDatabase.execSQL("ALTER TABLE temp_video RENAME TO VideoStates");
        }
    }

    public class j extends Migration {
        public j(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE temp_SubtitleRecord (id INTEGER NOT NULL,_id INTEGER NOT NULL DEFAULT 0,subtitle_path TEXT,PRIMARY KEY(id))");
            supportSQLiteDatabase.execSQL("INSERT INTO temp_SubtitleRecord (id,_id,subtitle_path) SELECT id,_id,subtitle_path FROM SubtitleRecord");
            supportSQLiteDatabase.execSQL("DROP TABLE SubtitleRecord");
            supportSQLiteDatabase.execSQL("ALTER TABLE temp_SubtitleRecord RENAME TO SubtitleRecord");
            Log.d("VideoRoomDatabase", "MIGRATION_3_4");
            supportSQLiteDatabase.execSQL("CREATE TABLE temp_video (id INTEGER NOT NULL,_data TEXT,position INTEGER NOT NULL DEFAULT 0, duration INTEGER NOT NULL DEFAULT 0,isPlayCompleted INTEGER NOT NULL DEFAULT 0,isVirtualFolder INTEGER NOT NULL DEFAULT 0,virtualFolder_path TEXT,virtualFolder_matchName TEXT,bucket_id INTEGER NOT NULL DEFAULT 0,_id INTEGER NOT NULL DEFAULT 0,date_modified INTEGER NOT NULL DEFAULT 0,record_date_modified INTEGER NOT NULL DEFAULT 0,subtitle_index INTEGER NOT NULL DEFAULT -1, PRIMARY KEY(id))");
            supportSQLiteDatabase.execSQL("INSERT INTO temp_video (id ,_data ,position,duration,isPlayCompleted,isVirtualFolder,virtualFolder_path,virtualFolder_matchName,bucket_id,_id,date_modified,record_date_modified,subtitle_index) SELECT id ,_data ,position,duration,isPlayCompleted,isVirtualFolder,virtualFolder_path,virtualFolder_matchName,bucket_id,_id,date_modified,record_date_modified,subtitle_index FROM VideoStates");
            supportSQLiteDatabase.execSQL("DROP TABLE VideoStates");
            supportSQLiteDatabase.execSQL("ALTER TABLE temp_video RENAME TO VideoStates");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS video_playlist (id INTEGER NOT NULL,setup_time INTERGER NOT NULL,last_play_time INTERGER NOT NULL, name TEXT,PRIMARY KEY(id))");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS video_media_playList (id INTEGER NOT NULL, name TEXT, playlist_id INTEGER NOT NULL, media_id INTEGER NOT NULL, playlistFlag INTEGER NOT NULL, play_count INTEGER NOT NULL, record_time INTEGER NOT NULL, _data TEXT,PRIMARY KEY(id))");
        }
    }

    public class k extends Migration {
        public k(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS AudioTrack (id INTEGER PRIMARY KEY NOT NULL, name TEXT, audioId INTEGER NOT NULL)");
        }
    }

    public class l extends Migration {
        public l(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE temp_SubtitleRecord (id INTEGER NOT NULL,_id INTEGER NOT NULL DEFAULT 0,subtitle_path TEXT, sub_id TEXT, sub_track INTEGER NOT NULL DEFAULT 0, sub_track_delay_time REAL NOT NULL DEFAULT 0, sub_track_time INTEGER NOT NULL DEFAULT 0, PRIMARY KEY(id))");
            supportSQLiteDatabase.execSQL("INSERT INTO temp_SubtitleRecord (id,_id,subtitle_path) SELECT id,_id,subtitle_path FROM SubtitleRecord");
            supportSQLiteDatabase.execSQL("DROP TABLE SubtitleRecord");
            supportSQLiteDatabase.execSQL("ALTER TABLE temp_SubtitleRecord RENAME TO SubtitleRecord");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS SubtitleSetting ( video_id INTEGER PRIMARY KEY NOT NULL, text_alignment INTEGER NOT NULL DEFAULT 0, location INTEGER NOT NULL DEFAULT 2, translateY INTEGER NOT NULL DEFAULT 0,text_size INTEGER NOT NULL DEFAULT 1, text_style INTEGER NOT NULL DEFAULT 1, text_color INTEGER NOT NULL DEFAULT 0, text_background_color INTEGER NOT NULL DEFAULT 1, text_background_opacity INTEGER NOT NULL DEFAULT 30, text_drag INTEGER NOT NULL DEFAULT 0)");
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS SubtitleHistory ( sub_id TEXT PRIMARY KEY NOT NULL, sub_name TEXT , sub_path TEXT , sub_language TEXT , sub_language_id TEXT , sub_size INTEGER NOT NULL DEFAULT 0, state INTEGER NOT NULL DEFAULT 2)");
        }
    }

    public class m extends Migration {
        public m(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS converting_video (id INTEGER NOT NULL,mediaId INTEGER, data TEXT,add_time INTERGER NOT NULL DEFAULT 0,converted_status INTERGER NOT NULL DEFAULT 0, PRIMARY KEY(id))");
        }
    }

    public static synchronized VideoRoomDatabase h(Context context) {
        try {
            if (a == null) {
                a = (VideoRoomDatabase) Room.databaseBuilder(context.getApplicationContext(), VideoRoomDatabase.class, "medias.db").fallbackToDestructiveMigration().addMigrations(f, d, e, g, h, i, j, k, l, m).addCallback(new e()).build();
            }
        } catch (Throwable th) {
            throw th;
        }
        return a;
    }

    public abstract qj1 a();

    public abstract m5a b();

    public abstract h6a c();

    public abstract jub d();

    public abstract ivb e();

    public abstract g5c f();

    public abstract q10 g();

    public abstract w4a i();
}
