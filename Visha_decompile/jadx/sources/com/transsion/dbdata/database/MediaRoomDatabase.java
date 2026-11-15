package com.transsion.dbdata.database;

import android.app.Application;
import android.content.Context;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.room.Database;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import com.blankj.utilcode.util.LogUtils;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.database.MediaRoomDatabase;
import com.transsion.dbdata.migration.MigrationExecutor;
import com.transsion.dbdata.utils.MigrationUtils;
import defpackage.b68;
import defpackage.f68;
import defpackage.h27;
import defpackage.ht;
import defpackage.njb;
import defpackage.oe6;
import defpackage.se;
import defpackage.vmb;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Database(entities = {PlayListItem.class, PlayListMediaItem.class, UserBehaviorItem.class, MediaDataMissingItem.class, AudioPlayHistory.class}, exportSchema = false, version = 2)
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b'\u0018\u0000 \u00132\u00020\u0001:\u0001\u0014B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH&¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH&¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H&¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/transsion/dbdata/database/MediaRoomDatabase;", "Landroidx/room/RoomDatabase;", MethodDecl.initName, "()V", "Lb68;", "j", "()Lb68;", "Lf68;", "k", "()Lf68;", "Lnjb;", CmcdData.STREAM_TYPE_LIVE, "()Lnjb;", "Loe6;", CmcdData.STREAMING_FORMAT_HLS, "()Loe6;", "Lht;", "f", "()Lht;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Companion", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class MediaRoomDatabase extends RoomDatabase {
    public static volatile MediaRoomDatabase d;

    public static final Companion INSTANCE = new Companion(null);
    public static String b = "Recently Added";
    public static String c = "Favorite";
    public static final MediaRoomDatabase$Companion$MIGRATION_1_2$1 e = new Migration() {
        @Override
        public void migrate(SupportSQLiteDatabase database) throws Exception {
            y45.j(database, "database");
            try {
                database.execSQL("ALTER TABLE media_data_missing ADD COLUMN media_alias TEXT");
                database.execSQL("ALTER TABLE media_data_missing ADD COLUMN custom_cover_path TEXT");
                vmb.e("MediaRoomDatabase", "Migration 1->2 completed successfully");
            } catch (Exception e2) {
                vmb.c("MediaRoomDatabase", "Migration 1->2 failed: " + e2.getMessage());
                throw e2;
            }
        }
    };

    public static final class Companion {

        public static final class a implements MigrationExecutor.b {
            @Override
            public void a(boolean z) {
                if (z) {
                    MigrationUtils migrationUtils = MigrationUtils.a;
                    migrationUtils.u(2);
                    int iG = migrationUtils.g();
                    if (iG == 1) {
                        MMKV.p().y("mmkv_key_audio_is_migrate", false);
                    } else if (iG == 2) {
                        MMKV.p().y("mmkv_key_video_is_migrate", false);
                    } else if (iG == 3) {
                        MMKV.p().y("mmkv_key_audio_is_migrate", false);
                        MMKV.p().y("mmkv_key_video_is_migrate", false);
                    }
                    LogUtils.m("MediaRoomDatabase", "Playlist migration success");
                } else {
                    MigrationUtils migrationUtils2 = MigrationUtils.a;
                    migrationUtils2.u(3);
                    int iG2 = migrationUtils2.g();
                    if (iG2 == 1) {
                        MMKV.p().y("mmkv_key_audio_is_migrate", true);
                    } else if (iG2 == 2) {
                        MMKV.p().y("mmkv_key_video_is_migrate", true);
                    } else if (iG2 == 3) {
                        MMKV.p().y("mmkv_key_audio_is_migrate", true);
                        MMKV.p().y("mmkv_key_video_is_migrate", true);
                    }
                    vmb.c("MediaRoomDatabase", "Playlist migration failed");
                }
                h27.c().e(1185, new Object[0]);
            }
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final void e() {
        }

        public final void c(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.beginTransaction();
            try {
                try {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    Object[][] objArr = {new Object[]{MediaRoomDatabase.b, 1, 1}, new Object[]{MediaRoomDatabase.c, 2, 1}, new Object[]{MediaRoomDatabase.b, 1, 2}, new Object[]{MediaRoomDatabase.c, 2, 2}};
                    for (int i = 0; i < 4; i++) {
                        Object[] objArr2 = objArr[i];
                        supportSQLiteDatabase.execSQL("INSERT INTO playlist_item (name, category, create_type, create_time, update_time) VALUES (?, ?, ?, ?, ?)", new Object[]{objArr2[0], objArr2[1], objArr2[2], Long.valueOf(jCurrentTimeMillis), Long.valueOf(jCurrentTimeMillis)});
                    }
                    supportSQLiteDatabase.setTransactionSuccessful();
                } catch (Exception e) {
                    LogUtils.m("MediaRoomDatabase", "Default playlist create failed: " + e.getMessage());
                }
            } finally {
                supportSQLiteDatabase.endTransaction();
            }
        }

        public final MediaRoomDatabase d() {
            MediaRoomDatabase mediaRoomDatabase = MediaRoomDatabase.d;
            if (mediaRoomDatabase == null) {
                synchronized (this) {
                    mediaRoomDatabase = MediaRoomDatabase.d;
                    if (mediaRoomDatabase == null) {
                        Application applicationA = se.a();
                        y45.i(applicationA, "getApp(...)");
                        RoomDatabase roomDatabaseBuild = Room.databaseBuilder(applicationA, MediaRoomDatabase.class, "media.db").addMigrations(MediaRoomDatabase.e).fallbackToDestructiveMigration().allowMainThreadQueries().addCallback(new RoomDatabase.Callback() {
                            @Override
                            public void onCreate(SupportSQLiteDatabase db) {
                                y45.j(db, "db");
                                MediaRoomDatabase.INSTANCE.c(db);
                            }
                        }).build();
                        MediaRoomDatabase mediaRoomDatabase2 = (MediaRoomDatabase) roomDatabaseBuild;
                        MediaRoomDatabase.d = mediaRoomDatabase2;
                        mediaRoomDatabase2.runInTransaction(new Runnable() {
                            @Override
                            public final void run() {
                                MediaRoomDatabase.Companion.e();
                            }
                        });
                        mediaRoomDatabase = (MediaRoomDatabase) roomDatabaseBuild;
                    }
                }
            }
            return mediaRoomDatabase;
        }

        public final void f(Context context) {
            y45.j(context, "context");
            MigrationExecutor.c.a().c(context, new a());
        }

        public Companion() {
        }
    }

    public static final MediaRoomDatabase g() {
        return INSTANCE.d();
    }

    public static final void i(Context context) {
        INSTANCE.f(context);
    }

    public abstract ht f();

    public abstract oe6 h();

    public abstract b68 j();

    public abstract f68 k();

    public abstract njb l();
}
