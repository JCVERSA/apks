package com.transsion.dbdata.database;

import android.content.Context;
import androidx.room.Database;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import com.transsion.dbdata.beans.LyricData;
import defpackage.av5;
import defpackage.d68;
import defpackage.gi1;
import defpackage.sl;
import defpackage.x38;

@Database(entities = {PlayList.class, PlayListMedia.class, AudioAlbum.class, ConvertAudio.class, LyricData.class}, exportSchema = false, version = 7)
public abstract class AudioRoomDatabase extends RoomDatabase {
    public static AudioRoomDatabase a;
    public static final Migration b = new e(4, 5);
    public static final Migration c = new f(5, 4);
    public static final Migration d = new g(5, 6);
    public static final Migration e = new h(1, 2);
    public static final Migration f = new i(2, 3);
    public static final Migration g = new j(3, 4);
    public static final Migration h = new k(4, 3);
    public static final Migration i = new l(3, 2);
    public static final Migration j = new a(2, 1);
    public static final Migration k = new b(1, 3);
    public static final Migration l = new c(6, 7);

    public class a extends Migration {
        public a(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
        }
    }

    public class b extends Migration {
        public b(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE  IF NOT EXISTS AudioAlbum (id INTEGER, imgPath TEXT, PRIMARY KEY(id))");
            supportSQLiteDatabase.execSQL("CREATE TABLE  IF NOT EXISTS convert_audio (mediaId INTEGER, data TEXT, PRIMARY KEY(mediaId))");
        }
    }

    public class c extends Migration {
        public c(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE  IF NOT EXISTS lyric_data (media_id INTEGER NOT NULL DEFAULT 0, _data TEXT, delay INTEGER NOT NULL DEFAULT 0, PRIMARY KEY(media_id))");
        }
    }

    public class d extends RoomDatabase.Callback {
        @Override
        public void onCreate(SupportSQLiteDatabase supportSQLiteDatabase) {
            super.onCreate(supportSQLiteDatabase);
        }
    }

    public class e extends Migration {
        public e(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE playList_temp (id INTEGER NOT NULL,setup_time INTERGER NOT NULL DEFAULT 0,last_play_time INTERGER NOT NULL DEFAULT 0, name TEXT,PRIMARY KEY(id))");
            supportSQLiteDatabase.execSQL("INSERT INTO playList_temp (id ,name) SELECT id ,name FROM playList");
            supportSQLiteDatabase.execSQL("DROP TABLE playList");
            supportSQLiteDatabase.execSQL("ALTER TABLE playList_temp RENAME TO playList");
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
            supportSQLiteDatabase.execSQL("CREATE TABLE convert_audio_temp (id INTEGER NOT NULL,mediaId INTEGER, data TEXT,convert_time INTERGER NOT NULL DEFAULT 0, PRIMARY KEY(id))");
            supportSQLiteDatabase.execSQL("DROP TABLE convert_audio");
            supportSQLiteDatabase.execSQL("ALTER TABLE convert_audio_temp RENAME TO convert_audio");
        }
    }

    public class h extends Migration {
        public h(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE  IF NOT EXISTS AudioAlbum (id INTEGER, imgPath TEXT, PRIMARY KEY(id))");
        }
    }

    public class i extends Migration {
        public i(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE  IF NOT EXISTS convert_audio (mediaId INTEGER, data TEXT, PRIMARY KEY(mediaId))");
        }
    }

    public class j extends Migration {
        public j(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL("CREATE TABLE media_playList_temp (id INTEGER NOT NULL,name TEXT,playlist_id INTEGER NOT NULL DEFAULT 0, media_id INTEGER NOT NULL DEFAULT 0,_data TEXT,playlistFlag INTEGER NOT NULL DEFAULT 0,play_count INTEGER NOT NULL DEFAULT 0,record_time INTERGER NOT NULL DEFAULT 0, PRIMARY KEY(id))");
            supportSQLiteDatabase.execSQL("INSERT INTO media_playList_temp (id ,name ,playlist_id,media_id) SELECT id ,name ,playlist_id,media_id FROM media_playList");
            supportSQLiteDatabase.execSQL("DROP TABLE media_playList");
            supportSQLiteDatabase.execSQL("ALTER TABLE media_playList_temp RENAME TO media_playList");
        }
    }

    public class k extends Migration {
        public k(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
        }
    }

    public class l extends Migration {
        public l(int i, int i2) {
            super(i, i2);
        }

        @Override
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
        }
    }

    public static synchronized AudioRoomDatabase f(Context context) {
        try {
            if (a == null) {
                a = (AudioRoomDatabase) Room.databaseBuilder(context.getApplicationContext(), AudioRoomDatabase.class, "audioMedia.db").fallbackToDestructiveMigration().addMigrations(e, j, f, i, k, g, h, b, c, d, l).addCallback(new d()).build();
            }
        } catch (Throwable th) {
            throw th;
        }
        return a;
    }

    public abstract sl a();

    public abstract gi1 b();

    public abstract av5 c();

    public abstract x38 d();

    public abstract d68 e();
}
