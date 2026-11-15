package com.transsion.subtitle_download.db;

import android.content.Context;
import androidx.room.RoomDatabase;
import androidx.room.s;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import z3.d;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b'\u0018\u0000 \u00072\u00020\u0001:\u0001\bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;", "Landroidx/room/RoomDatabase;", "<init>", "()V", "Lqt/a;", "l0", "()Lqt/a;", TtmlNode.TAG_P, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "SubtitleDownload_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class SubtitleDownloadDatabase extends RoomDatabase {

    private static volatile SubtitleDownloadDatabase f52969q;

    public static final Companion INSTANCE = new Companion(null);

    private static final a f52970r = new a();

    private static final b f52971s = new b();

    private static final c f52972t = new c();

    public static final class a extends x3.b {
        a() {
            super(1, 2);
        }

        @Override
        public void b(d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE ST_DOWNLOAD_TABLE ADD COLUMN failCount INTEGER NOT NULL DEFAULT 0");
        }
    }

    public static final class b extends x3.b {
        b() {
            super(2, 3);
        }

        @Override
        public void b(d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE ST_DOWNLOAD_TABLE ADD COLUMN ugcVideoId TEXT");
            database.E("ALTER TABLE ST_DOWNLOAD_TABLE ADD COLUMN ugcVideoCollectionId TEXT");
        }
    }

    public static final class c extends x3.b {
        c() {
            super(3, 4);
        }

        @Override
        public void b(d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE ST_DOWNLOAD_TABLE ADD COLUMN ops TEXT");
        }
    }

    public static final class Companion {

        public static final class a extends RoomDatabase.b {
            a() {
            }

            @Override
            public void b(d db2) {
                Intrinsics.h(db2, "db");
                super.b(db2);
                com.transsion.subtitle_download.utils.b.f53009a.b("SubtitleDownloadDataBase --> getInstance() --> buildDatabase() --> onCreate() --> db_name is = " + db2.getPath());
            }

            @Override
            public void f(d db2) {
                Intrinsics.h(db2, "db");
                super.f(db2);
                com.transsion.subtitle_download.utils.b.f53009a.b("SubtitleDownloadDataBase --> getInstance() --> buildDatabase() --> onOpen()");
            }
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final SubtitleDownloadDatabase a(Context context) {
            Context applicationContext = context.getApplicationContext();
            Intrinsics.g(applicationContext, "getApplicationContext(...)");
            return (SubtitleDownloadDatabase) s.a(applicationContext, SubtitleDownloadDatabase.class, "oneroom-subtitle-db").c().b(SubtitleDownloadDatabase.f52970r, SubtitleDownloadDatabase.f52971s, SubtitleDownloadDatabase.f52972t).a(new a()).d();
        }

        public final SubtitleDownloadDatabase b(Context context) {
            Intrinsics.h(context, "context");
            SubtitleDownloadDatabase subtitleDownloadDatabase = SubtitleDownloadDatabase.f52969q;
            if (subtitleDownloadDatabase == null) {
                synchronized (this) {
                    subtitleDownloadDatabase = SubtitleDownloadDatabase.f52969q;
                    if (subtitleDownloadDatabase == null) {
                        SubtitleDownloadDatabase subtitleDownloadDatabaseA = SubtitleDownloadDatabase.INSTANCE.a(context);
                        SubtitleDownloadDatabase.f52969q = subtitleDownloadDatabaseA;
                        subtitleDownloadDatabase = subtitleDownloadDatabaseA;
                    }
                }
            }
            return subtitleDownloadDatabase;
        }

        private Companion() {
        }
    }

    public abstract qt.a l0();
}
