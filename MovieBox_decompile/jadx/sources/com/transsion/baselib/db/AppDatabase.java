package com.transsion.baselib.db;

import android.content.Context;
import androidx.room.RoomDatabase;
import com.cloud.config.utils.CommonUtils;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.baselib.db.member.MemberResolutionDao;
import com.transsion.baselib.db.place.PlaceDao;
import com.transsion.baselib.db.video.IShortTvFavoriteStateDao;
import com.transsion.baselib.db.video.ShortTVPlayDao;
import com.transsion.baselib.db.video.UGCCollectionVideoGroupDao;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b'\u0018\u0000 72\u00020\u0001:\u00018B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH&¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH&¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H&¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H&¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H&¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H&¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001d\u001a\u00020\u001cH&¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010 \u001a\u00020\u001fH&¢\u0006\u0004\b \u0010!J\u000f\u0010#\u001a\u00020\"H&¢\u0006\u0004\b#\u0010$J\u000f\u0010&\u001a\u00020%H&¢\u0006\u0004\b&\u0010'J\u000f\u0010)\u001a\u00020(H&¢\u0006\u0004\b)\u0010*J\u000f\u0010,\u001a\u00020+H&¢\u0006\u0004\b,\u0010-J\u000f\u0010/\u001a\u00020.H&¢\u0006\u0004\b/\u00100J\u000f\u00102\u001a\u000201H&¢\u0006\u0004\b2\u00103J\u000f\u00105\u001a\u000204H&¢\u0006\u0004\b5\u00106¨\u00069"}, d2 = {"Lcom/transsion/baselib/db/AppDatabase;", "Landroidx/room/RoomDatabase;", "<init>", "()V", "Lsi/a;", "n1", "()Lsi/a;", "Lui/c;", "o1", "()Lui/c;", "Laj/a;", "v1", "()Laj/a;", "Lui/v0;", "y1", "()Lui/v0;", "Lzi/a;", "s1", "()Lzi/a;", "Lui/n0;", "p1", "()Lui/n0;", "Lcom/transsion/baselib/db/video/a1;", "D1", "()Lcom/transsion/baselib/db/video/a1;", "Lcom/transsion/baselib/db/video/ShortTVPlayDao;", "w1", "()Lcom/transsion/baselib/db/video/ShortTVPlayDao;", "Lui/d1;", "z1", "()Lui/d1;", "Lcom/transsion/baselib/db/video/IShortTvFavoriteStateDao;", "x1", "()Lcom/transsion/baselib/db/video/IShortTvFavoriteStateDao;", "Lcom/transsion/baselib/db/video/VideoDetailPlayDao;", "C1", "()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;", "Lxi/a;", "t1", "()Lxi/a;", "Lcom/transsion/baselib/db/place/PlaceDao;", "u1", "()Lcom/transsion/baselib/db/place/PlaceDao;", "Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;", "B1", "()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;", "Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;", "A1", "()Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;", "Lcom/transsion/baselib/db/member/MemberResolutionDao;", "r1", "()Lcom/transsion/baselib/db/member/MemberResolutionDao;", "Lvi/a;", "q1", "()Lvi/a;", TtmlNode.TAG_P, "f1", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class AppDatabase extends RoomDatabase {

    private static volatile AppDatabase f41915q;

    public static final Companion INSTANCE = new Companion(null);

    private static final k f41917r = new k();

    private static final v f41919s = new v();

    private static final g0 f41921t = new g0();

    private static final r0 f41923u = new r0();

    private static final a1 f41925v = new a1();

    private static final b1 f41927w = new b1();

    private static final c1 f41928x = new c1();

    private static final d1 f41929y = new d1();

    private static final e1 f41930z = new e1();
    private static final a A = new a();
    private static final b B = new b();
    private static final c C = new c();
    private static final d D = new d();
    private static final e E = new e();
    private static final f F = new f();
    private static final g G = new g();
    private static final h H = new h();
    private static final i I = new i();
    private static final j J = new j();
    private static final l K = new l();
    private static final m L = new m();
    private static final n M = new n();
    private static final o N = new o();
    private static final p O = new p();
    private static final q P = new q();
    private static final r Q = new r();
    private static final s R = new s();
    private static final t S = new t();
    private static final u T = new u();
    private static final w U = new w();
    private static final x V = new x();
    private static final y W = new y();
    private static final z X = new z();
    private static final a0 Y = new a0();
    private static final b0 Z = new b0();

    private static final c0 f41898a0 = new c0();

    private static final d0 f41899b0 = new d0();

    private static final e0 f41900c0 = new e0();

    private static final f0 f41901d0 = new f0();

    private static final h0 f41902e0 = new h0();

    private static final i0 f41903f0 = new i0();

    private static final j0 f41904g0 = new j0();

    private static final k0 f41905h0 = new k0();

    private static final l0 f41906i0 = new l0();

    private static final m0 f41907j0 = new m0();

    private static final n0 f41908k0 = new n0();

    private static final o0 f41909l0 = new o0();

    private static final p0 f41910m0 = new p0();

    private static final q0 f41911n0 = new q0();

    private static final s0 f41912o0 = new s0();

    private static final t0 f41914p0 = new t0();

    private static final u0 f41916q0 = new u0();

    private static final v0 f41918r0 = new v0();

    private static final w0 f41920s0 = new w0();

    private static final x0 f41922t0 = new x0();

    private static final y0 f41924u0 = new y0();

    private static final z0 f41926v0 = new z0();

    public static final class a extends x3.b {
        a() {
            super(10, 11);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("CREATE TABLE IF NOT EXISTS DOWNLOAD_THREAD_RANGE (`threadId` INTEGER NOT NULL, `rangeId` INTEGER NOT NULL, `resourceId` TEXT, `start` INTEGER NOT NULL, `end` INTEGER NOT NULL, `progress` INTEGER NOT NULL, PRIMARY KEY(`threadId`, `rangeId`))");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD subjectName TEXT");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD lastPlayTimeStamp INTEGER NOT NULL DEFAULT 0");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD fileType INTEGER NOT NULL DEFAULT 1");
        }
    }

    public static final class a0 extends x3.b {
        a0() {
            super(34, 35);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("CREATE TABLE IF NOT EXISTS VIDEO_DETAIL_PLAY (`subjectId` TEXT NOT NULL, `id` TEXT NOT NULL, `ep` INTEGER NOT NULL, `se` INTEGER NOT NULL, `progress` INTEGER NOT NULL, `title` TEXT, `coverUrl` TEXT, `thumbnail` TEXT, `videoUrl` TEXT, `timeStamp` INTEGER NOT NULL, PRIMARY KEY(`subjectId`))");
        }
    }

    public static final class a1 extends x3.b {
        a1() {
            super(5, 6);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("CREATE TABLE IF NOT EXISTS `DOWNLOAD_SUBTITLE_TABLE` (`resourceId` TEXT NOT NULL, `postId` TEXT, `url` TEXT, `path` TEXT, `lan` TEXT, `lanName` TEXT NOT NULL, `size` INTEGER,`delayDuration` INTEGER, `status` INTEGER NOT NULL, PRIMARY KEY(`resourceId`))");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD episode INTEGER NOT NULL DEFAULT 0");
        }
    }

    public static final class b extends x3.b {
        b() {
            super(11, 12);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE AUDIO ADD subjectTitle TEXT");
            database.E("ALTER TABLE AUDIO ADD se INTEGER NOT NULL DEFAULT 0");
            database.E("ALTER TABLE AUDIO ADD ep INTEGER NOT NULL DEFAULT 0");
        }
    }

    public static final class b0 extends x3.b {
        b0() {
            super(35, 36);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE VIDEO_DETAIL_PLAY ADD subtitleSelectId TEXT");
        }
    }

    public static final class b1 extends x3.b {
        b1() {
            super(6, 7);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD pageFrom TEXT");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD lastPageFrom TEXT");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD subjectId TEXT");
        }
    }

    public static final class c extends x3.b {
        c() {
            super(12, 13);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD ep INTEGER NOT NULL DEFAULT 0");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD se INTEGER NOT NULL DEFAULT 0");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD videoWidth INTEGER NOT NULL DEFAULT 0");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD videoHeight INTEGER NOT NULL DEFAULT 0");
        }
    }

    public static final class c0 extends x3.b {
        c0() {
            super(36, 37);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE NON_AD_PLANS ADD adShowLevel TEXT");
            database.E("ALTER TABLE NON_AD_PLANS ADD filterClientVersion TEXT");
            database.E("ALTER TABLE NON_AD_PLANS ADD adPlanCreateTime TEXT");
            database.E("ALTER TABLE NON_AD_PLANS ADD appStarDesc TEXT");
            database.E("ALTER TABLE NON_AD_PLANS ADD appSizeDesc TEXT");
        }
    }

    public static final class c1 extends x3.b {
        c1() {
            super(7, 8);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("CREATE TABLE IF NOT EXISTS PERMANENT_MSG (`id` INTEGER NOT NULL, `deep_link_list` TEXT, `desc` TEXT, `image_list` TEXT, `message_id` TEXT, `style` TEXT, `title` TEXT, PRIMARY KEY(`id`))");
            database.E("CREATE TABLE IF NOT EXISTS MSG (`id` INTEGER NOT NULL, `deep_link` TEXT, `desc` TEXT, `image_list` TEXT, `message_id` TEXT, `style` TEXT, `title` TEXT, `source` TEXT, `type` TEXT, `receive_time` INTEGER, `msg_status` INTEGER NOT NULL, `show_time` INTEGER, `force_show` INTEGER NOT NULL, PRIMARY KEY(`id`))");
        }
    }

    public static final class d extends x3.b {
        d() {
            super(13, 14);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD totalEpisode INTEGER NOT NULL DEFAULT 1");
        }
    }

    public static final class d0 extends x3.b {
        d0() {
            super(37, 38);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD averageHueLight TEXT");
            database.E("CREATE TABLE IF NOT EXISTS VIDEO_DETAIL_PLAY_NEW (`subjectId` TEXT NOT NULL, `id` TEXT NOT NULL, `ep` INTEGER NOT NULL, `se` INTEGER NOT NULL, `progress` INTEGER NOT NULL, `title` TEXT, `coverUrl` TEXT, `thumbnail` TEXT, `videoUrl` TEXT, `timeStamp` INTEGER NOT NULL, `subtitleSelectId` TEXT, `totalDuration` INTEGER DEFAULT 0, `averageHueLight` TEXT, `subjectType` INTEGER, `hasDelete` INTEGER NOT NULL DEFAULT 0, `playMode` TEXT NOT NULL DEFAULT `2`, `downloadUrl` TEXT, `downloadFilePath` TEXT, `downloadSize` INTEGER NOT NULL DEFAULT 0, PRIMARY KEY(`subjectId`, `ep`, `se`))");
            database.E("INSERT OR IGNORE INTO `VIDEO_DETAIL_PLAY_NEW` (subjectId, id, ep, se, progress, title, coverUrl, thumbnail, videoUrl, timeStamp, subtitleSelectId) SELECT subjectId, id, ep, se, progress, title, coverUrl, thumbnail, videoUrl, timeStamp, subtitleSelectId FROM `VIDEO_DETAIL_PLAY`");
            database.E("INSERT OR IGNORE INTO `VIDEO_DETAIL_PLAY_NEW` (subjectId, id, ep, se, progress, title, coverUrl, thumbnail, videoUrl, timeStamp, subtitleSelectId, totalDuration, averageHueLight, subjectType, hasDelete, playMode, downloadUrl, downloadFilePath, downloadSize) SELECT subjectId, resourceId, ep, se, progress, subjectName, cover, thumbnail, url, lastPlayTimeStamp, subtitleSelectId, duration, averageHueLight, subjectType, 0, 1, url, path, size FROM `download_table` WHERE (type in (2,3,5)) AND fileType = 1 AND lastPlayTimeStamp > 0 ORDER BY updateTimeStamp DESC");
            database.E("DROP TABLE VIDEO_DETAIL_PLAY");
            database.E("ALTER TABLE VIDEO_DETAIL_PLAY_NEW RENAME TO VIDEO_DETAIL_PLAY");
        }
    }

    public static final class d1 extends x3.b {
        d1() {
            super(8, 9);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE MSG ADD `has_screen_on` INTEGER NOT NULL DEFAULT 0");
        }
    }

    public static final class e extends x3.b {
        e() {
            super(14, 15);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD downloadErrorCount INTEGER NOT NULL DEFAULT 0");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD subtitleStarted INTEGER NOT NULL DEFAULT 0");
        }
    }

    public static final class e0 extends x3.b {
        e0() {
            super(38, 39);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD genre TEXT");
        }
    }

    public static final class e1 extends x3.b {
        e1() {
            super(9, 10);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("CREATE TABLE IF NOT EXISTS CONSUME_BEAN (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `updateTimeStamp` INTEGER NOT NULL,`dataType` INTEGER NOT NULL,`appVersion` INTEGER NOT NULL, `consumeJson` TEXT)");
        }
    }

    public static final class f extends x3.b {
        f() {
            super(15, 16);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD resolution INTEGER NOT NULL DEFAULT 0");
        }
    }

    public static final class f0 extends x3.b {
        f0() {
            super(39, 40);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE VIDEO_DETAIL_PLAY ADD COLUMN dubs TEXT");
        }
    }

    public static final class Companion {

        public static final class a extends RoomDatabase.b {
            a() {
            }

            @Override
            public void b(z3.d db2) {
                Intrinsics.h(db2, "db");
                super.b(db2);
                wf.a.C0922a.f(wf.a.f74274a, "database", "onCreate db_name is=" + db2.getPath(), false, 4, null);
            }
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final AppDatabase a(Context context) {
            Context applicationContext = context.getApplicationContext();
            Intrinsics.g(applicationContext, "getApplicationContext(...)");
            return (AppDatabase) androidx.room.s.a(applicationContext, AppDatabase.class, "oneroom-db").c().b(AppDatabase.f41917r, AppDatabase.f41919s, AppDatabase.f41921t, AppDatabase.f41923u, AppDatabase.f41925v, AppDatabase.f41927w, AppDatabase.f41928x, AppDatabase.f41929y, AppDatabase.f41930z, AppDatabase.A, AppDatabase.B, AppDatabase.C, AppDatabase.D, AppDatabase.E, AppDatabase.F, AppDatabase.G, AppDatabase.H, AppDatabase.I, AppDatabase.J, AppDatabase.K, AppDatabase.L, AppDatabase.M, AppDatabase.N, AppDatabase.O, AppDatabase.P, AppDatabase.Q, AppDatabase.R, AppDatabase.S, AppDatabase.T, AppDatabase.U, AppDatabase.V, AppDatabase.W, AppDatabase.X, AppDatabase.Y, AppDatabase.Z, AppDatabase.f41898a0, AppDatabase.f41899b0, AppDatabase.f41900c0, AppDatabase.f41901d0, AppDatabase.f41902e0, AppDatabase.f41903f0, AppDatabase.f41904g0, AppDatabase.f41905h0, AppDatabase.f41906i0, AppDatabase.f41907j0, AppDatabase.f41908k0, AppDatabase.f41909l0, AppDatabase.f41910m0, AppDatabase.f41911n0, AppDatabase.f41912o0, AppDatabase.f41914p0, AppDatabase.f41916q0, AppDatabase.f41918r0, AppDatabase.f41920s0, AppDatabase.f41922t0, AppDatabase.f41924u0, AppDatabase.f41926v0).a(new a()).d();
        }

        public final AppDatabase b(Context context) {
            Intrinsics.h(context, "context");
            AppDatabase appDatabase = AppDatabase.f41915q;
            if (appDatabase == null) {
                synchronized (this) {
                    appDatabase = AppDatabase.f41915q;
                    if (appDatabase == null) {
                        AppDatabase appDatabaseA = AppDatabase.INSTANCE.a(context);
                        AppDatabase.f41915q = appDatabaseA;
                        appDatabase = appDatabaseA;
                    }
                }
            }
            return appDatabase;
        }

        private Companion() {
        }
    }

    public static final class g extends x3.b {
        g() {
            super(16, 17);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD multiresolution INTEGER NOT NULL DEFAULT 0");
        }
    }

    public static final class g0 extends x3.b {
        g0() {
            super(3, 4);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD resourceId TEXT");
        }
    }

    public static final class h extends x3.b {
        h() {
            super(17, 18);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD resourcePosition INTEGER NOT NULL DEFAULT 0");
        }
    }

    public static final class h0 extends x3.b {
        h0() {
            super(40, 41);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE VIDEO_DETAIL_PLAY ADD subjectDurationSeconds INTEGER DEFAULT 0");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD subjectDurationSeconds INTEGER DEFAULT 0");
        }
    }

    public static final class i extends x3.b {
        i() {
            super(18, 19);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD uploadBy TEXT ");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD sourceUrl TEXT ");
        }
    }

    public static final class i0 extends x3.b {
        i0() {
            super(41, 42);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE VIDEO_DETAIL_PLAY ADD lastAdStartTimeStamp INTEGER");
            database.E("ALTER TABLE VIDEO_DETAIL_PLAY ADD lastAdEndTimeStamp INTEGER");
        }
    }

    public static final class j extends x3.b {
        j() {
            super(19, 20);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE MSG ADD built_in INTEGER NOT NULL DEFAULT 0");
        }
    }

    public static final class j0 extends x3.b {
        j0() {
            super(42, 43);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD COLUMN currentDubLanCode TEXT");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD COLUMN currentDubLanName TEXT");
        }
    }

    public static final class k extends x3.b {
        k() {
            super(1, 2);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD COLUMN postId TEXT");
            database.E("ALTER TABLE AUDIO ADD COLUMN ops TEXT");
        }
    }

    public static final class k0 extends x3.b {
        k0() {
            super(43, 44);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("CREATE TABLE IF NOT EXISTS MUSIC_LIKED (`subjectId` TEXT NOT NULL, `title` TEXT, `coverUrl` TEXT, `countryName` TEXT, `genre` TEXT, `releaseDate` TEXT, `durationSeconds` INTEGER NOT NULL DEFAULT 0, `singerName` TEXT, `singerAvatar` TEXT, `path` TEXT, `timeStamp` INTEGER NOT NULL DEFAULT 0, PRIMARY KEY(`subjectId`))");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD ops TEXT");
        }
    }

    public static final class l extends x3.b {
        l() {
            super(20, 21);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("CREATE TABLE IF NOT EXISTS VIDEO_LAND_AD (`resourceId` TEXT NOT NULL, `startAdDayKey` INTEGER NOT NULL, `endAdDayKey` INTEGER NOT NULL, PRIMARY KEY(`resourceId`))");
        }
    }

    public static final class l0 extends x3.b {
        l0() {
            super(44, 45);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD COLUMN restrictLevel TEXT");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD COLUMN releaseDate TEXT");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD COLUMN countryName TEXT");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD COLUMN subtitles TEXT");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD COLUMN imdbRate TEXT");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD COLUMN seNum INTEGER");
        }
    }

    public static final class m extends x3.b {
        m() {
            super(21, 22);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD urlCreateAt INTEGER NOT NULL DEFAULT 0");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD subtitleSelectId TEXT");
            database.E("ALTER TABLE DOWNLOAD_SUBTITLE_TABLE ADD subtitleName TEXT");
            database.E("ALTER TABLE DOWNLOAD_SUBTITLE_TABLE ADD type INTEGER NOT NULL DEFAULT 1");
            database.E("CREATE TABLE IF NOT EXISTS SUBTITLE_LANGUAGE_MAP_TABLE (`lan` TEXT NOT NULL, `lanName` TEXT NOT NULL, `inSearch` INTEGER NOT NULL, PRIMARY KEY(`lan`))");
        }
    }

    public static final class m0 extends x3.b {
        m0() {
            super(45, 46);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("CREATE TABLE IF NOT EXISTS `place_list` (`latitude` REAL NOT NULL, `longitude` REAL NOT NULL, `name` TEXT, `address` TEXT, `distance` TEXT, PRIMARY KEY(`latitude`, `longitude`))");
        }
    }

    public static final class n extends x3.b {
        n() {
            super(22, 23);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE MSG ADD permanent_msg_status INTEGER NOT NULL DEFAULT 0");
        }
    }

    public static final class n0 extends x3.b {
        n0() {
            super(46, 47);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD COLUMN lastAdStartTimeStamp INTEGER");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD COLUMN lastAdEndTimeStamp INTEGER");
        }
    }

    public static final class o extends x3.b {
        o() {
            super(23, 24);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD taskId TEXT");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD sessionTime INTEGER NOT NULL DEFAULT 0");
        }
    }

    public static final class o0 extends x3.b {
        o0() {
            super(47, 48);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE VIDEO_DETAIL_PLAY ADD COLUMN rewardPlayed INTEGER NOT NULL DEFAULT 0");
            database.E("ALTER TABLE VIDEO_DETAIL_PLAY ADD COLUMN rewardUnlock INTEGER NOT NULL DEFAULT 0");
            database.E("ALTER TABLE VIDEO_DETAIL_PLAY ADD COLUMN rewardFree INTEGER NOT NULL DEFAULT 0");
        }
    }

    public static final class p extends x3.b {
        p() {
            super(24, 25);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD reportStatus INTEGER NOT NULL DEFAULT 0");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD downloadHeaderSize INTEGER NOT NULL DEFAULT 0");
        }
    }

    public static final class p0 extends x3.b {
        p0() {
            super(48, 49);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE SHORT_TV_PLAY ADD subtitleSelectId TEXT");
        }
    }

    public static final class q extends x3.b {
        q() {
            super(25, 26);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE DOWNLOAD_SUBTITLE_TABLE ADD fileCharsetName TEXT");
        }
    }

    public static final class q0 extends x3.b {
        q0() {
            super(49, 50);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE VIDEO_DETAIL_PLAY ADD ops TEXT");
        }
    }

    public static final class r extends x3.b {
        r() {
            super(26, 27);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD rootPath TEXT");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD rootPathType INTEGER NOT NULL DEFAULT 1");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD thumbnail TEXT");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD isTransferFailed INTEGER NOT NULL DEFAULT 0");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD isClosedTransferFailed INTEGER NOT NULL DEFAULT 0");
        }
    }

    public static final class r0 extends x3.b {
        r0() {
            super(4, 5);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE AUDIO ADD COLUMN resourceId TEXT");
            database.E("ALTER TABLE AUDIO ADD COLUMN postId TEXT");
            database.E("ALTER TABLE AUDIO ADD COLUMN subjectId TEXT");
            database.E("ALTER TABLE AUDIO ADD COLUMN groupId TEXT");
        }
    }

    public static final class s extends x3.b {
        s() {
            super(27, 28);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE DOWNLOAD_SUBTITLE_TABLE ADD subjectId TEXT");
            database.E("ALTER TABLE DOWNLOAD_SUBTITLE_TABLE ADD ep INTEGER NOT NULL DEFAULT 0");
            database.E("ALTER TABLE DOWNLOAD_SUBTITLE_TABLE ADD se INTEGER NOT NULL DEFAULT 0");
            database.E("ALTER TABLE DOWNLOAD_SUBTITLE_TABLE ADD resolution INTEGER NOT NULL DEFAULT 0");
        }
    }

    public static final class s0 extends x3.b {
        s0() {
            super(50, 51);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD COLUMN ugcVideoCollectionId TEXT");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD COLUMN ugcVideoId TEXT");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD COLUMN ugcVideoPosition INTEGER");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD COLUMN ugcVideoType TEXT");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD COLUMN ugcVideoName TEXT");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD COLUMN ugcVideoCollectionName TEXT");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD COLUMN subtitleIdType TEXT");
            database.E("CREATE TABLE IF NOT EXISTS `ugc_collection_video_group` (`collectionId` TEXT NOT NULL, `ugcVideoIds` TEXT NOT NULL, PRIMARY KEY(`collectionId`))");
            database.E("CREATE TABLE IF NOT EXISTS `ugc_video_detail_play` (`collectionId` TEXT NOT NULL, `ugcVideoId` TEXT NOT NULL, `progress` INTEGER NOT NULL, `title` TEXT, `coverUrl` TEXT, `thumbnail` TEXT, `position` INTEGER NOT NULL, `type` TEXT, `timeStamp` INTEGER NOT NULL, `subtitleSelectId` TEXT, `totalDuration` INTEGER, `subjectDurationSeconds` INTEGER, `averageHueLight` TEXT, `subjectType` INTEGER, `hasDelete` INTEGER NOT NULL, `playMode` TEXT NOT NULL, `downloadUrl` TEXT, `downloadResid` TEXT, `downloadFilePath` TEXT, `downloadSize` INTEGER NOT NULL, `lastAdStartTimeStamp` INTEGER, `lastAdEndTimeStamp` INTEGER, `rewardPlayed` INTEGER NOT NULL, `rewardUnlock` INTEGER NOT NULL, `rewardFree` INTEGER NOT NULL,`ops` TEXT,  PRIMARY KEY(`collectionId`))");
        }
    }

    public static final class t extends x3.b {
        t() {
            super(28, 29);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE SUBTITLE_LANGUAGE_MAP_TABLE ADD lanIOS3 TEXT");
        }
    }

    public static final class t0 extends x3.b {
        t0() {
            super(51, 52);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD COLUMN ugcVideoTrackId TEXT");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD COLUMN ugcVideoParentVideoId TEXT");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD COLUMN ugcVideoParentTrackId TEXT");
        }
    }

    public static final class u extends x3.b {
        u() {
            super(29, 30);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("CREATE TABLE IF NOT EXISTS SHORT_TV_PLAY (`subjectId` TEXT NOT NULL, `id` TEXT NOT NULL, `ep` INTEGER NOT NULL, `se` INTEGER NOT NULL, `totalEp` INTEGER NOT NULL, `progress` INTEGER NOT NULL, `title` TEXT, `description` TEXT, `coverUrl` TEXT, `thumbnail` TEXT, `videoId` TEXT, `videoUrl` TEXT, `timeStamp` INTEGER NOT NULL, PRIMARY KEY(`subjectId`))");
        }
    }

    public static final class u0 extends x3.b {
        u0() {
            super(52, 53);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD COLUMN ugcVideoEpTitle TEXT");
        }
    }

    public static final class v extends x3.b {
        v() {
            super(2, 3);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD isRead INTEGER NOT NULL DEFAULT 1");
        }
    }

    public static final class v0 extends x3.b {
        v0() {
            super(53, 54);
        }

        @Override
        public void b(z3.d db2) {
            Intrinsics.h(db2, "db");
            db2.E("CREATE TABLE IF NOT EXISTS member_resolution (\n    subjectId TEXT NOT NULL,\n    ep INTEGER NOT NULL,\n    se INTEGER NOT NULL,\n    vipResolutionTip INTEGER DEFAULT 0,\n    isUnlock INTEGER DEFAULT 0,\n    PRIMARY KEY(subjectId, ep, se)\n)");
        }
    }

    public static final class w extends x3.b {
        w() {
            super(30, 31);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("CREATE TABLE IF NOT EXISTS NON_AD_PLANS (`id` TEXT NOT NULL, `version` TEXT, `name` TEXT, `startTime` TEXT, `endTime` TEXT, `extraConfig` TEXT, `displayTimes` INTEGER, `showedTimes` INTEGER, `showDate` TEXT, `advertiserName` TEXT, `advertiserAvatar` TEXT, `advertiserAvatarPath` TEXT, `brand` TEXT, `denyBrand` TEXT, `model` TEXT, `denyModel` TEXT, `country` TEXT, `scenes` TEXT, `adMaterialList` TEXT, PRIMARY KEY(`id`))");
            database.E("CREATE TABLE IF NOT EXISTS LOCAL_MCC (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `Country` TEXT NOT NULL, `Mcc` TEXT NOT NULL, `Iso` TEXT NOT NULL, `CountryCode` TEXT NOT NULL)");
        }
    }

    public static final class w0 extends x3.b {
        w0() {
            super(54, 55);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD ugcVideoIsVertical INTEGER NOT NULL DEFAULT 0");
            database.E("ALTER TABLE ugc_video_detail_play ADD COLUMN uid TEXT");
            database.E("ALTER TABLE ugc_video_detail_play ADD COLUMN userName TEXT");
            database.E("ALTER TABLE ugc_video_detail_play ADD COLUMN userAvatar TEXT");
            database.E("ALTER TABLE ugc_video_detail_play ADD COLUMN description TEXT");
            database.E("ALTER TABLE ugc_video_detail_play ADD COLUMN videoStyle TEXT");
        }
    }

    public static final class x extends x3.b {
        x() {
            super(31, 32);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE NON_AD_PLANS ADD adPlanUpdateTime TEXT");
            database.E("ALTER TABLE NON_AD_PLANS ADD sort INTEGER");
        }
    }

    public static final class x0 extends x3.b {
        x0() {
            super(55, 56);
        }

        @Override
        public void b(z3.d db2) {
            Intrinsics.h(db2, "db");
            if (!ri.a.b(db2, "DOWNLOAD_TABLE", "ugcVideoIsVertical")) {
                db2.E("ALTER TABLE DOWNLOAD_TABLE ADD COLUMN ugcVideoIsVertical INTEGER NOT NULL DEFAULT 0");
            }
            if (!ri.a.b(db2, "DOWNLOAD_TABLE", "originData")) {
                db2.E("ALTER TABLE DOWNLOAD_TABLE ADD COLUMN originData TEXT");
            }
            if (!ri.a.b(db2, "ugc_video_detail_play", CommonUtils.PARAM_UID)) {
                db2.E("ALTER TABLE ugc_video_detail_play ADD COLUMN uid TEXT");
            }
            if (!ri.a.b(db2, "ugc_video_detail_play", "userName")) {
                db2.E("ALTER TABLE ugc_video_detail_play ADD COLUMN userName TEXT");
            }
            if (!ri.a.b(db2, "ugc_video_detail_play", "userAvatar")) {
                db2.E("ALTER TABLE ugc_video_detail_play ADD COLUMN userAvatar TEXT");
            }
            if (!ri.a.b(db2, "ugc_video_detail_play", TrackingKey.DESCRIPTION)) {
                db2.E("ALTER TABLE ugc_video_detail_play ADD COLUMN description TEXT");
            }
            if (!ri.a.b(db2, "ugc_video_detail_play", "videoStyle")) {
                db2.E("ALTER TABLE ugc_video_detail_play ADD COLUMN videoStyle TEXT");
            }
            db2.E("CREATE TABLE IF NOT EXISTS home_preferences_interval_time (\n    id TEXT NOT NULL,\n    showTime INTEGER NOT NULL,\n    closeTime INTEGER NOT NULL,\n    chooseTime INTEGER NOT NULL,\n    showIntervalSeconds INTEGER NOT NULL,\n    closeIntervalSeconds INTEGER NOT NULL,\n    chooseIntervalSeconds INTEGER NOT NULL,\n    PRIMARY KEY(id)\n)");
        }
    }

    public static final class y extends x3.b {
        y() {
            super(32, 33);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD subjectType INTEGER NOT NULL DEFAULT 1");
        }
    }

    public static final class y0 extends x3.b {
        y0() {
            super(56, 57);
        }

        @Override
        public void b(z3.d db2) {
            Intrinsics.h(db2, "db");
            if (!ri.a.b(db2, "DOWNLOAD_TABLE", "ugcVideoIsVertical")) {
                db2.E("ALTER TABLE DOWNLOAD_TABLE ADD COLUMN ugcVideoIsVertical INTEGER NOT NULL DEFAULT 0");
            }
            if (!ri.a.b(db2, "ugc_video_detail_play", CommonUtils.PARAM_UID)) {
                db2.E("ALTER TABLE ugc_video_detail_play ADD COLUMN uid TEXT");
            }
            if (!ri.a.b(db2, "ugc_video_detail_play", "userName")) {
                db2.E("ALTER TABLE ugc_video_detail_play ADD COLUMN userName TEXT");
            }
            if (!ri.a.b(db2, "ugc_video_detail_play", "userAvatar")) {
                db2.E("ALTER TABLE ugc_video_detail_play ADD COLUMN userAvatar TEXT");
            }
            if (!ri.a.b(db2, "ugc_video_detail_play", TrackingKey.DESCRIPTION)) {
                db2.E("ALTER TABLE ugc_video_detail_play ADD COLUMN description TEXT");
            }
            if (!ri.a.b(db2, "ugc_video_detail_play", "videoStyle")) {
                db2.E("ALTER TABLE ugc_video_detail_play ADD COLUMN videoStyle TEXT");
            }
            db2.E("ALTER TABLE download_table ADD COLUMN ugcCateLev1Id INTEGER");
            db2.E("ALTER TABLE download_table ADD COLUMN ugcCateLev2Id INTEGER");
            db2.E("ALTER TABLE download_table ADD COLUMN ugcCateLev3Id INTEGER");
            db2.E("ALTER TABLE download_table ADD COLUMN ugcCateLev4Id INTEGER");
            db2.E("ALTER TABLE ugc_video_detail_play ADD COLUMN cateLev1Id INTEGER");
            db2.E("ALTER TABLE ugc_video_detail_play ADD COLUMN cateLev2Id INTEGER");
            db2.E("ALTER TABLE ugc_video_detail_play ADD COLUMN cateLev3Id INTEGER");
            db2.E("ALTER TABLE ugc_video_detail_play ADD COLUMN cateLev4Id INTEGER");
        }
    }

    public static final class z extends x3.b {
        z() {
            super(33, 34);
        }

        @Override
        public void b(z3.d database) {
            Intrinsics.h(database, "database");
            database.E("CREATE TABLE IF NOT EXISTS ShortTvFavoriteState (`subjectId` TEXT NOT NULL, `favoriteNum` TEXT, `hasFavorite` INTEGER not null default 0,`favoriteTime` TEXT, PRIMARY KEY(`subjectId`))");
        }
    }

    public static final class z0 extends x3.b {
        z0() {
            super(57, 58);
        }

        @Override
        public void b(z3.d db2) {
            Intrinsics.h(db2, "db");
            db2.E("ALTER TABLE download_table ADD COLUMN kidId TEXT");
            db2.E("ALTER TABLE ugc_video_detail_play ADD COLUMN kidId TEXT");
        }
    }

    public abstract UGCCollectionVideoGroupDao A1();

    public abstract UGCVideoDetailPlayDao B1();

    public abstract VideoDetailPlayDao C1();

    public abstract com.transsion.baselib.db.video.a1 D1();

    public abstract si.a n1();

    public abstract ui.c o1();

    public abstract ui.n0 p1();

    public abstract vi.a q1();

    public abstract MemberResolutionDao r1();

    public abstract zi.a s1();

    public abstract xi.a t1();

    public abstract PlaceDao u1();

    public abstract aj.a v1();

    public abstract ShortTVPlayDao w1();

    public abstract IShortTvFavoriteStateDao x1();

    public abstract ui.v0 y1();

    public abstract ui.d1 z1();
}
