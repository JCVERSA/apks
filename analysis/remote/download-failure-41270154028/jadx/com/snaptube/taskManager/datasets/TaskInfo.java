package com.snaptube.taskManager.datasets;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.phoenix.download.DownloadInfo;
import com.snaptube.ads.selfbuild.request.model.SnaptubeAdModel;
import com.snaptube.dataadapter.plugin.push.impl.IntentUtil;
import com.snaptube.extractor.pluginlib.models.Format;
import com.snaptube.extractor.pluginlib.models.VideoInfo;
import com.snaptube.extractor.pluginlib.utils.MediaUtil;
import com.snaptube.extractor.pluginlib.youtube.YoutubeCodec;
import com.snaptube.premium.R;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.history.model.HistoryError;
import com.snaptube.premium.model.LocalVideoAlbumInfo;
import com.snaptube.premium.model.LocalVideoEpisodeInfo;
import com.snaptube.premium.model.NetVideoInfo;
import com.snaptube.premium.model.VideoCover;
import com.snaptube.premium.model.VideoType;
import com.snaptube.premium.utils.GsonUtils;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.base.config.GlobalConfig;
import java.io.File;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import net.pubnative.mediation.config.model.RequestTimeModel;
import o.aq4;
import o.az7;
import o.bf2;
import o.cm3;
import o.de5;
import o.if9;
import o.j23;
import o.nj2;
import o.qe1;
import o.r58;
import o.wd9;
import o.yj2;
import o.yj8;
import o.zt;
import org.json.JSONException;
import org.json.JSONObject;

public class TaskInfo {
    public String A;
    public ContentType B;
    public int C;
    public String D;
    public int E;
    public String F;
    public boolean G;
    public long H;
    public String I;
    public String J;
    public MetaSource K;
    public String L;
    public String M;
    public long N;
    public long O;
    public long P;
    public int Q;
    public String R;
    public boolean S;
    public boolean T;
    public boolean U;
    public String V;
    public boolean W;
    public String X;
    public String Y;
    public boolean Z;
    public final long a;
    public String a0;
    public final TaskType b;
    public String b0;
    public int c;
    public boolean c0;
    public long d;
    public String d0;
    public long e;
    public boolean e0;
    public long f;
    public boolean f0;
    public String g;
    public int g0;
    public String h;
    public long h0;
    public TaskStatus i;
    public boolean i0;
    public String j;
    public boolean j0;
    public String k;
    public Map k0;
    public String l;
    public String l0;
    public long m;
    public long m0;
    public String n;
    public String n0;

    public String f479o;
    public boolean o0;
    public String p;
    public FailReason p0;
    public String q;
    public String q0;
    public DownloadInfo.ContentType r;
    public boolean r0;
    public long s;
    public boolean s0;
    public boolean t;
    public long u;
    public String v;
    public String w;
    public boolean x;
    public String y;
    public boolean z;

    public enum ContentType {
        VIDEO,
        AUDIO,
        IMAGE,
        APK,
        SELF_UPGRADE_APK,
        PLUGIN,
        UNKNOWN,
        PATCH,
        EXTENSION,
        LYRIC,
        SUBTITLE
    }

    public enum FailReason {
        UNDEFINED(0),
        EXTRACT_TIMEOUT(-1),
        EXTRACT_UNPLAYABLE(-2),
        EXTRACT_STATUS_ERROR(-3),
        EXTRACT_LOGIN_REQUIRED(-4),
        EXTRACT_LIVE_STREAM_OFFLINE(-5),
        EXTRACT_HTTP_UNAUTHORIZED(-6),
        EXTRACT_MEDIA_UNAVAILABLE(-7),
        EXTRACT_LIVE_UNAVAILABLE(-8),
        DOWNLOAD_TIMEOUT(HistoryError.ERROR_UPLOAD_INTERVAL),
        DOWNLOAD_NO_SPACE(HistoryError.ERROR_NETWORK_ERROR),
        DOWNLOAD_403(HistoryError.ERROR_NO_NETWORK),
        DOWNLOAD_491(HistoryError.ERROR_COMMON_ERROR),
        DOWNLOAD_492(-105),
        DOWNLOAD_498(-106),
        DOWNLOAD_501(-107),
        DOWNLOAD_CONVERT(-108);

        private final int code;

        FailReason(int i) {
            this.code = i;
        }

        public static int b(FailReason failReason) {
            return failReason.code;
        }

        public static FailReason getByCode(int i) {
            for (FailReason failReason : values()) {
                if (failReason.code == i) {
                    return failReason;
                }
            }
            return null;
        }
    }

    public enum MetaSource {
        OTHER(0),
        SONG_LIBRARY(1);

        private final int code;

        MetaSource(int i) {
            this.code = i;
        }
    }

    public enum TaskStatus {
        RUNNING,
        PENDING,
        ERROR,
        PAUSED,
        FINISH,
        DELETED,
        WARNING;

        public boolean isFinishedStatus() {
            return this == FINISH || this == ERROR;
        }
    }

    public enum TaskType {
        UNKNOWN,
        TASK_DIRECT_DOWNLOAD,
        TASK_VIDEO,
        TASK_1080P,
        TASK_APK,
        TASK_MP3,
        TASK_M4A,
        TASK_PLUGIN,
        TASK_PATCH,
        TASK_WEBM,
        TASK_WEBM_MP3,
        TASK_EXTRACT_AUDIO,
        TASK_WHATSAPP,
        TASK_BT,
        TASK_LYRIC,
        TASK_BLOB,
        TASK_SUBTITLE
    }

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[TaskType.values().length];
            a = iArr;
            try {
                iArr[TaskType.TASK_DIRECT_DOWNLOAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[TaskType.TASK_VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[TaskType.TASK_1080P.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[TaskType.TASK_WEBM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[TaskType.TASK_WEBM_MP3.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[TaskType.TASK_MP3.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[TaskType.TASK_M4A.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[TaskType.TASK_PLUGIN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[TaskType.TASK_EXTRACT_AUDIO.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[TaskType.TASK_WHATSAPP.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[TaskType.TASK_LYRIC.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                a[TaskType.TASK_SUBTITLE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                a[TaskType.TASK_BLOB.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                a[TaskType.TASK_APK.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                a[TaskType.TASK_PATCH.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                a[TaskType.TASK_BT.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    public static class b {
        public TaskType a;
        public String b;
        public String c;
        public String d;
        public String e;
        public String f;
        public Format g;
        public String h;
        public String i;
        public long j;
        public String k;
        public String l;
        public String m;
        public boolean n;

        public long f480o = 0;
        public String p = "";
        public String q = "";
        public String r = "";
        public String s = "";
        public DownloadInfo.ContentType t = DownloadInfo.ContentType.UNKNOWN;
        public ContentType u = ContentType.UNKNOWN;
        public int v;
        public long w;

        public TaskInfo a() {
            ContentType contentTypeM;
            Format format = this.g;
            if (format != null) {
                if (this.h == null) {
                    this.h = format.getTag();
                    this.i = this.g.getTag();
                }
                if (this.f == null) {
                    this.f = this.g.getDownloadUrl();
                }
            }
            if (this.t == DownloadInfo.ContentType.UNKNOWN) {
                String strB = b();
                if (!TextUtils.isEmpty(strB)) {
                    this.t = wd9.S(strB);
                }
            }
            ContentType contentType = ContentType.VIDEO;
            if (this.t == DownloadInfo.ContentType.IMAGE) {
                this.a = TaskType.TASK_VIDEO;
                contentTypeM = ContentType.IMAGE;
            } else if (YoutubeCodec.isYoutubeHDTag(this.h)) {
                this.a = TaskType.TASK_1080P;
                contentTypeM = ContentType.VIDEO;
            } else if (YoutubeCodec.isYoutubeWebMTag(this.h)) {
                this.a = TaskType.TASK_WEBM;
                contentTypeM = ContentType.VIDEO;
            } else if (YoutubeCodec.isMp3Tag(this.h)) {
                this.a = TaskType.TASK_MP3;
                contentTypeM = ContentType.AUDIO;
            } else if (YoutubeCodec.isWebM2Mp3Tag(this.h)) {
                this.a = TaskType.TASK_WEBM_MP3;
                contentTypeM = ContentType.AUDIO;
            } else if (YoutubeCodec.isM4aTag(this.h)) {
                this.a = TaskType.TASK_M4A;
                contentTypeM = ContentType.AUDIO;
            } else if (wd9.I(this.h)) {
                this.a = TaskType.TASK_DIRECT_DOWNLOAD;
                contentTypeM = ContentType.UNKNOWN;
            } else {
                this.a = TaskType.TASK_VIDEO;
                Format format2 = this.g;
                contentTypeM = format2 == null ? ContentType.VIDEO : TaskInfo.M(format2.getMime());
            }
            ContentType contentType2 = this.u;
            ContentType contentType3 = ContentType.UNKNOWN;
            if (contentType2 == contentType3) {
                this.u = contentTypeM;
            }
            if (this.u == contentType3) {
                String strB2 = b();
                if (!TextUtils.isEmpty(strB2)) {
                    this.u = TaskInfo.L(strB2);
                }
            }
            if (TextUtils.isEmpty(this.c)) {
                Format format3 = this.g;
                if (format3 != null) {
                    wd9.K(this.b, format3);
                }
                String strJ = yj8.j(this.b);
                StringBuilder sb = new StringBuilder();
                if (TextUtils.isEmpty(strJ)) {
                    strJ = PhoenixApplication.z().getString(R.string.unknown);
                }
                sb.append(strJ);
                sb.append(" - ");
                sb.append(System.currentTimeMillis());
                this.c = sb.toString();
            }
            if (this.a == null) {
                return null;
            }
            if ((TextUtils.isEmpty(this.f) && TextUtils.isEmpty(this.b)) || this.t == null || this.u == null) {
                return null;
            }
            TaskInfo taskInfo = new TaskInfo(this.a);
            taskInfo.k = this.c;
            taskInfo.l = this.d;
            taskInfo.R(this.e);
            taskInfo.p = this.h;
            taskInfo.q = this.i;
            taskInfo.S(this.b);
            taskInfo.f479o = this.f;
            taskInfo.s = this.j;
            taskInfo.w = this.k;
            taskInfo.y = this.l;
            taskInfo.r = this.t;
            taskInfo.B = this.u;
            taskInfo.C = this.v;
            TaskInfo.a(taskInfo, this.m);
            taskInfo.G = this.n;
            taskInfo.M = this.p;
            taskInfo.H = this.f480o;
            taskInfo.V = this.r;
            taskInfo.d = this.w;
            taskInfo.l0 = this.s;
            if (TextUtils.isEmpty(this.k)) {
                this.k = TaskInfo.t(taskInfo);
            }
            taskInfo.w = this.k;
            return taskInfo;
        }

        public final String b() {
            if (!TextUtils.isEmpty(this.e)) {
                return yj2.C(this.e);
            }
            Format format = this.g;
            if (format != null) {
                return format.getExt();
            }
            return null;
        }

        public b c(String str) {
            this.m = str;
            return this;
        }

        public b d(DownloadInfo.ContentType contentType) {
            this.t = contentType;
            return this;
        }

        public b e(ContentType contentType) {
            this.u = contentType;
            return this;
        }

        public b f(String str) {
            this.r = str;
            return this;
        }

        public b g(String str) {
            this.q = str;
            return this;
        }

        public b h(String str) {
            this.e = str;
            return this;
        }

        public b i(Format format) {
            this.g = format;
            return this;
        }

        public b j(String str, boolean z) {
            this.h = str;
            if (!z) {
                this.i = str;
            }
            return this;
        }

        public b k(String str) {
            this.k = str;
            return this;
        }

        public b l(boolean z) {
            this.n = z;
            return this;
        }

        public b m(long j) {
            this.j = j;
            return this;
        }

        public b n(String str) {
            this.l = str;
            return this;
        }

        public b o(String str) {
            this.b = str;
            return this;
        }

        public b p(String str) {
            this.s = str;
            return this;
        }

        public b q(String str) {
            this.f = str;
            return this;
        }

        public b r(int i) {
            this.v = i;
            return this;
        }

        public b s(String str) {
            this.d = str;
            return this;
        }

        public b t(String str) {
            this.c = str;
            return this;
        }

        public b u(long j) {
            this.w = j;
            return this;
        }
    }

    public static class c extends qe1 {

        public static class a {
            public static final String[] a = {".mp3", ".m4a", ".mp4", ".3gp", ".avi"};

            /* JADX WARN: Code duplicated, block: B:64:0x0162  */
            /* JADX WARN: Code duplicated, block: B:66:0x0167  */
            /* JADX WARN: Code duplicated, block: B:70:0x016e  */
            /* JADX WARN: Code duplicated, block: B:72:0x0173  */
            /* JADX WARN: Code duplicated, block: B:98:? A[RETURN, SYNTHETIC] */
            /* JADX WARN: Multi-variable type inference failed */
            public static void a(Context context, SQLiteDatabase sQLiteDatabase) throws Throwable {
                SQLiteDatabase sQLiteDatabaseOpenDatabase;
                Cursor cursor;
                String[] strArr = {"filepath", "title", "thumbnailUrl", "sourceUrl", SnaptubeAdModel.KEY_FORMAT, "download_identify", IntentUtil.DURATION, "unread", "ctime"};
                Cursor cursor2 = null;
                try {
                    String string = context.getDatabasePath("localVideo.db").toString();
                    if (!yj2.v(string)) {
                        return;
                    }
                    sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(string, null, 1);
                    try {
                        Cursor cursorQuery = sQLiteDatabaseOpenDatabase.query("tbl_downloaded_videos", strArr, null, null, null, null, null);
                        try {
                            if (cursorQuery.getCount() <= 0) {
                                cursorQuery.close();
                                sQLiteDatabaseOpenDatabase.close();
                                return;
                            }
                            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
                            int columnIndex = cursorQuery.getColumnIndex("filepath");
                            int columnIndex2 = cursorQuery.getColumnIndex("title");
                            int columnIndex3 = cursorQuery.getColumnIndex("thumbnailUrl");
                            int columnIndex4 = cursorQuery.getColumnIndex("sourceUrl");
                            int columnIndex5 = cursorQuery.getColumnIndex(SnaptubeAdModel.KEY_FORMAT);
                            int columnIndex6 = cursorQuery.getColumnIndex(IntentUtil.DURATION);
                            int columnIndex7 = cursorQuery.getColumnIndex("unread");
                            int columnIndex8 = cursorQuery.getColumnIndex("ctime");
                            while (cursorQuery.moveToNext()) {
                                String string2 = cursorQuery.getString(columnIndex);
                                if (b(string2) && new File(string2).exists()) {
                                    TaskInfo taskInfo = new TaskInfo(TaskType.TASK_VIDEO);
                                    taskInfo.i = TaskStatus.FINISH;
                                    taskInfo.r = DownloadInfo.ContentType.VIDEO_YOUTUBE;
                                    TaskInfo.b(taskInfo, string2);
                                    taskInfo.k = cursorQuery.getString(columnIndex2);
                                    taskInfo.l = cursorQuery.getString(columnIndex3);
                                    TaskInfo.c(taskInfo, cursorQuery.getString(columnIndex4));
                                    taskInfo.p = cursorQuery.getString(columnIndex5);
                                    taskInfo.s = cursorQuery.getLong(columnIndex6);
                                    taskInfo.t = cursorQuery.getInt(columnIndex7) != 0;
                                    taskInfo.m = cursorQuery.getLong(columnIndex8);
                                    taskInfo.B = ContentType.UNKNOWN;
                                    arrayList.add(taskInfo);
                                }
                            }
                            cursorQuery.close();
                            try {
                                sQLiteDatabaseOpenDatabase.close();
                                try {
                                    sQLiteDatabase.beginTransaction();
                                    Iterator it2 = arrayList.iterator();
                                    while (it2.hasNext()) {
                                        cursor = null;
                                        try {
                                            sQLiteDatabase.insert("taskinfo", null, ((TaskInfo) it2.next()).f());
                                        } catch (SQLiteException e) {
                                            e = e;
                                            cursor2 = cursor;
                                            sQLiteDatabaseOpenDatabase = cursor2;
                                            e.printStackTrace();
                                            if (cursor2 != null) {
                                                cursor2.close();
                                            }
                                            if (sQLiteDatabaseOpenDatabase != 0) {
                                                sQLiteDatabaseOpenDatabase.close();
                                            }
                                        } catch (Throwable th) {
                                            th = th;
                                            cursor2 = cursor;
                                            sQLiteDatabaseOpenDatabase = cursor2;
                                            if (cursor2 != null) {
                                                cursor2.close();
                                            }
                                            if (sQLiteDatabaseOpenDatabase != 0) {
                                                sQLiteDatabaseOpenDatabase.close();
                                            }
                                            throw th;
                                        }
                                    }
                                    cursor = null;
                                    sQLiteDatabase.setTransactionSuccessful();
                                    sQLiteDatabase.endTransaction();
                                    yj2.s(string);
                                    yj2.s(string + "-journal");
                                    return;
                                } catch (SQLiteException e2) {
                                    e = e2;
                                    cursor = null;
                                } catch (Throwable th2) {
                                    th = th2;
                                    cursor = null;
                                }
                            } catch (SQLiteException e3) {
                                e = e3;
                                cursor2 = null;
                                sQLiteDatabaseOpenDatabase = sQLiteDatabaseOpenDatabase;
                            } catch (Throwable th3) {
                                th = th3;
                                cursor2 = null;
                                if (cursor2 != null) {
                                    cursor2.close();
                                }
                                if (sQLiteDatabaseOpenDatabase != 0) {
                                    sQLiteDatabaseOpenDatabase.close();
                                }
                                throw th;
                            }
                        } catch (SQLiteException e4) {
                            e = e4;
                            cursor2 = cursorQuery;
                            sQLiteDatabaseOpenDatabase = sQLiteDatabaseOpenDatabase;
                        } catch (Throwable th4) {
                            th = th4;
                            cursor2 = cursorQuery;
                        }
                    } catch (SQLiteException e5) {
                        e = e5;
                        sQLiteDatabaseOpenDatabase = sQLiteDatabaseOpenDatabase;
                    } catch (Throwable th5) {
                        th = th5;
                    }
                } catch (SQLiteException e6) {
                    e = e6;
                } catch (Throwable th6) {
                    th = th6;
                }
                sQLiteDatabaseOpenDatabase = cursor2;
                try {
                    e.printStackTrace();
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    if (sQLiteDatabaseOpenDatabase != 0) {
                        sQLiteDatabaseOpenDatabase.close();
                    }
                } catch (Throwable th7) {
                    th = th7;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    if (sQLiteDatabaseOpenDatabase != 0) {
                        sQLiteDatabaseOpenDatabase.close();
                    }
                    throw th;
                }
            }

            public static boolean b(String str) {
                if (str == null) {
                    return false;
                }
                String lowerCase = str.toLowerCase();
                for (String str2 : a) {
                    if (lowerCase.endsWith(str2)) {
                        return true;
                    }
                }
                return false;
            }
        }

        @Override
        public String c() {
            return "taskinfo";
        }

        @Override
        public void e(Context context, SQLiteDatabase sQLiteDatabase) {
            super.e(context, sQLiteDatabase);
            try {
                a.a(context, sQLiteDatabase);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override
        public void f(Context context, SQLiteDatabase sQLiteDatabase, int i, int i2) {
            if (i < 7) {
                try {
                    qe1.i(sQLiteDatabase, c(), "visible", "INTEGER DEFAULT 1");
                } catch (Throwable th) {
                    ProductionEnv.logException("UpgradeDbException", th);
                    super.f(context, sQLiteDatabase, i, i2);
                    return;
                }
            }
            if (i < 8) {
                qe1.i(sQLiteDatabase, c(), "meta_key", "TEXT");
                qe1.i(sQLiteDatabase, c(), "has_mp3_meta", "INTEGER DEFAULT 0");
            }
            if (i < 9) {
                qe1.i(sQLiteDatabase, c(), "app_version", "TEXT");
            }
            if (i < 10) {
                qe1.i(sQLiteDatabase, c(), "content_type2", "TEXT");
            }
            if (i < 11) {
                qe1.i(sQLiteDatabase, c(), "finalFormatTag", "TEXT");
                sQLiteDatabase.execSQL("UPDATE " + c() + " SET finalFormatTag = formatTag");
            }
            if (i < 12) {
                qe1.i(sQLiteDatabase, c(), "task_fail_times", "INTEGER DEFAULT 0");
            }
            if (i < 13) {
                qe1.i(sQLiteDatabase, c(), "ad_pos_name", "TEXT");
            }
            if (i < 14) {
                qe1.i(sQLiteDatabase, c(), "category", "TEXT");
            }
            if (i < 15) {
                qe1.i(sQLiteDatabase, c(), "lock", "INTEGER DEFAULT 0");
                qe1.i(sQLiteDatabase, c(), "originPath", "TEXT");
                qe1.i(sQLiteDatabase, c(), "app_guide_home_install_times", "INTEGER DEFAULT 0");
                qe1.i(sQLiteDatabase, c(), "lockTime", "INTEGER DEFAULT 0");
            }
            if (i < 16) {
                qe1.i(sQLiteDatabase, c(), "notification_send_status", "INTEGER DEFAULT 1");
            }
            if (i < 17) {
                qe1.i(sQLiteDatabase, c(), "start_times", "INTEGER DEFAULT 0");
            }
            if (i < 18) {
                qe1.i(sQLiteDatabase, c(), "has_auto_retry", "INTEGER DEFAULT 0");
                qe1.i(sQLiteDatabase, c(), "has_manual_retry", "INTEGER DEFAULT 0");
            }
            if (i < 19) {
                qe1.i(sQLiteDatabase, c(), "plugin_message", "TEXT");
            }
            if (i < 20) {
                qe1.i(sQLiteDatabase, c(), "finishedTime", "INTEGER DEFAULT 0");
            }
        }

        @Override
        public Map j() {
            Map mapJ = super.j();
            mapJ.put("type", "TEXT");
            mapJ.put(NotificationCompat.CATEGORY_PROGRESS, "INTEGER");
            mapJ.put(DownloadModel.TOTAL_BYTES, "INTEGER");
            mapJ.put("download_speed", "INTEGER");
            mapJ.put("current_bytes", "INTEGER");
            mapJ.put("referer", "TEXT");
            mapJ.put("status", "TEXT");
            mapJ.put("runningDescription", "TEXT");
            mapJ.put("title", "TEXT");
            mapJ.put("thumbnailUrl", "TEXT");
            mapJ.put("createdTime", "TEXT");
            mapJ.put("filePath", "INTEGER");
            mapJ.put("requestUrl", "TEXT");
            mapJ.put("formatTag", "TEXT");
            mapJ.put("finalFormatTag", "TEXT");
            mapJ.put("contentType", "TEXT");
            mapJ.put("media_duration", "INTEGER");
            mapJ.put("unread", "INTEGER");
            mapJ.put("current_download_id", "INTEGER");
            mapJ.put("md5", "TEXT");
            mapJ.put("extra", "TEXT");
            mapJ.put("identity", "TEXT");
            mapJ.put("visible", "INTEGER DEFAULT 1");
            mapJ.put("meta_key", "TEXT");
            mapJ.put("has_mp3_meta", "INTEGER");
            mapJ.put("app_version", "TEXT");
            mapJ.put("content_type2", "TEXT");
            mapJ.put("task_fail_times", "INTEGER");
            mapJ.put("ad_pos_name", "TEXT");
            mapJ.put("category", "TEXT");
            mapJ.put("lock", "INTEGER DEFAULT 0");
            mapJ.put("originPath", "TEXT");
            mapJ.put("app_guide_home_install_times", "INTEGER");
            mapJ.put("lockTime", "INTEGER");
            mapJ.put("notification_send_status", "INTEGER");
            mapJ.put("start_times", "INTEGER");
            mapJ.put("finishedTime", "INTEGER");
            mapJ.put("has_auto_retry", "INTEGER");
            mapJ.put("has_manual_retry", "INTEGER");
            mapJ.put("plugin_message", "TEXT");
            return mapJ;
        }

        @Override
        public String k() {
            return null;
        }
    }

    public TaskInfo(TaskType taskType) {
        this(taskType, -1L);
    }

    public TaskInfo(TaskType taskType, long j) {
        this.c = 0;
        this.d = 0L;
        this.e = 0L;
        this.f = 0L;
        this.g = "";
        this.h = "";
        this.i = TaskStatus.PENDING;
        this.j = "";
        this.k = "";
        this.l = "";
        this.m = System.currentTimeMillis() / 1000;
        this.n = "";
        this.f479o = "";
        this.p = "";
        this.q = "";
        this.r = DownloadInfo.ContentType.UNKNOWN;
        this.s = 0L;
        this.t = true;
        this.u = -1L;
        this.v = "";
        this.w = "";
        this.x = true;
        this.y = "";
        this.z = false;
        this.A = "";
        this.B = ContentType.UNKNOWN;
        this.C = 0;
        this.D = "";
        this.E = 0;
        this.G = false;
        this.H = 0L;
        this.K = MetaSource.OTHER;
        this.M = "";
        this.N = 0L;
        this.O = 0L;
        this.P = 0L;
        this.Q = 0;
        this.S = false;
        this.T = false;
        this.U = false;
        this.W = false;
        this.X = "";
        this.d0 = "non_browser_inside";
        this.g0 = 0;
        this.h0 = 0L;
        this.i0 = false;
        this.j0 = false;
        this.b = taskType;
        this.a = j;
        this.A = az7.Q(PhoenixApplication.z());
    }

    public static ContentType L(String str) {
        if (TextUtils.isEmpty(str)) {
            return ContentType.UNKNOWN;
        }
        MediaUtil.MediaType mediaTypeR = MediaUtil.r(str);
        if (mediaTypeR == MediaUtil.MediaType.AUDIO) {
            return ContentType.AUDIO;
        }
        if (mediaTypeR == MediaUtil.MediaType.VIDEO) {
            return ContentType.VIDEO;
        }
        if (mediaTypeR == MediaUtil.MediaType.IMAGE) {
            return ContentType.IMAGE;
        }
        return str.toLowerCase().equals(".apk") ? ContentType.APK : ContentType.UNKNOWN;
    }

    public static ContentType M(String str) {
        if (TextUtils.isEmpty(str)) {
            return ContentType.UNKNOWN;
        }
        MediaUtil.MediaType mediaTypeS = MediaUtil.s(str);
        if (mediaTypeS == MediaUtil.MediaType.AUDIO) {
            return ContentType.AUDIO;
        }
        if (mediaTypeS == MediaUtil.MediaType.VIDEO) {
            return ContentType.VIDEO;
        }
        if (mediaTypeS == MediaUtil.MediaType.IMAGE) {
            return ContentType.IMAGE;
        }
        return mediaTypeS == MediaUtil.MediaType.MOVIE ? ContentType.VIDEO : ContentType.UNKNOWN;
    }

    public static void a(TaskInfo taskInfo, String str) {
        taskInfo.h = str;
    }

    public static void b(TaskInfo taskInfo, String str) {
        taskInfo.n = str;
    }

    public static void c(TaskInfo taskInfo, String str) {
        taskInfo.g = str;
    }

    public static String j(Format format, VideoInfo videoInfo) {
        String thumbnail = format != null ? format.getThumbnail() : null;
        return TextUtils.isEmpty(thumbnail) ? r58.b(videoInfo) : thumbnail;
    }

    public static String t(TaskInfo taskInfo) {
        if (taskInfo == null) {
            return "";
        }
        switch (a.a[taskInfo.b.ordinal()]) {
            case 1:
                return String.valueOf(taskInfo.f479o.hashCode());
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                try {
                    return wd9.M(taskInfo.g + taskInfo.p + taskInfo.G);
                } catch (NoSuchAlgorithmException unused) {
                    return String.valueOf(taskInfo.g.hashCode()) + "-" + String.valueOf(taskInfo.p.hashCode()) + "-" + taskInfo.G;
                }
            case 8:
            case 11:
            case 12:
            case 13:
            default:
                return taskInfo.f479o;
            case 9:
            case 10:
                try {
                    return wd9.M(taskInfo.f479o);
                } catch (NoSuchAlgorithmException e) {
                    ProductionEnv.throwExceptForDebugging(e);
                    return taskInfo.f479o;
                }
            case 14:
                if (!(taskInfo instanceof com.snaptube.taskManager.datasets.a)) {
                    return "";
                }
                com.snaptube.taskManager.datasets.a aVar = (com.snaptube.taskManager.datasets.a) taskInfo;
                return "apktask_" + aVar.getPackageName() + aVar.getVersion();
            case 15:
                throw new IllegalArgumentException("Use IncrementalTaskInfo#getTaskIdentity() for self-upgrade patch task");
            case 16:
                return taskInfo.w;
        }
    }

    public static TaskInfo u(Cursor cursor) {
        TaskInfo taskInfo;
        int columnIndex = cursor.getColumnIndex("_id");
        int columnIndex2 = cursor.getColumnIndex("type");
        if (columnIndex == -1 || columnIndex2 == -1) {
            taskInfo = new TaskInfo(TaskType.UNKNOWN);
        } else {
            long j = cursor.getInt(columnIndex);
            TaskType taskTypeValueOf = TaskType.valueOf(cursor.getString(columnIndex2));
            taskInfo = null;
            switch (a.a[taskTypeValueOf.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                    taskInfo = new TaskInfo(taskTypeValueOf, j);
                    break;
                case 14:
                    taskInfo = new com.snaptube.taskManager.datasets.a(j);
                    break;
                case 15:
                    taskInfo = new cm3(j);
                    break;
                case 16:
                    break;
                default:
                    return null;
            }
        }
        taskInfo.H(cursor);
        return taskInfo;
    }

    public boolean A() {
        return this.p0 == FailReason.EXTRACT_MEDIA_UNAVAILABLE;
    }

    public boolean B() {
        return this.K == MetaSource.SONG_LIBRARY;
    }

    public boolean C() {
        return YoutubeCodec.isWebM2Mp3Tag(this.q) || YoutubeCodec.isYoutubeWebMTag(this.q) || YoutubeCodec.isMp3Tag(this.q) || YoutubeCodec.isM4aTag(this.q) || MediaUtil.p(this.q) || bf2.j(this.q);
    }

    public boolean D() {
        TaskType taskType = this.b;
        return taskType == TaskType.TASK_EXTRACT_AUDIO || taskType == TaskType.TASK_WHATSAPP;
    }

    public boolean E() {
        FailReason failReason = this.p0;
        return failReason == FailReason.EXTRACT_TIMEOUT || failReason == FailReason.DOWNLOAD_TIMEOUT;
    }

    public boolean F() {
        return TextUtils.isEmpty(this.Y) || TextUtils.equals(this.Y, GlobalConfig.getAppContext().getPackageName());
    }

    public final boolean G() {
        TaskType taskType = this.b;
        return taskType == TaskType.TASK_VIDEO || taskType == TaskType.TASK_1080P || taskType == TaskType.TASK_WEBM || taskType == TaskType.TASK_WEBM_MP3 || taskType == TaskType.TASK_MP3 || taskType == TaskType.TASK_M4A || taskType == TaskType.TASK_DIRECT_DOWNLOAD || taskType == TaskType.TASK_EXTRACT_AUDIO || taskType == TaskType.TASK_WHATSAPP || taskType == TaskType.TASK_BT || taskType == TaskType.TASK_LYRIC || taskType == TaskType.TASK_BLOB || taskType == TaskType.TASK_APK || taskType == TaskType.TASK_PATCH;
    }

    public void H(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex(NotificationCompat.CATEGORY_PROGRESS);
        if (columnIndex != -1) {
            this.c = cursor.getInt(columnIndex);
        }
        int columnIndex2 = cursor.getColumnIndex(DownloadModel.TOTAL_BYTES);
        if (columnIndex2 != -1) {
            this.d = cursor.getLong(columnIndex2);
        }
        int columnIndex3 = cursor.getColumnIndex("current_bytes");
        if (columnIndex3 != -1) {
            this.e = cursor.getLong(columnIndex3);
        }
        int columnIndex4 = cursor.getColumnIndex("download_speed");
        if (columnIndex4 != -1) {
            this.f = cursor.getLong(columnIndex4);
        }
        int columnIndex5 = cursor.getColumnIndex("referer");
        if (columnIndex5 != -1) {
            this.g = cursor.getString(columnIndex5);
        }
        int columnIndex6 = cursor.getColumnIndex("status");
        if (columnIndex6 != -1) {
            this.i = TaskStatus.valueOf(cursor.getString(columnIndex6));
        }
        int columnIndex7 = cursor.getColumnIndex("runningDescription");
        if (columnIndex7 != -1) {
            this.j = cursor.getString(columnIndex7);
        }
        int columnIndex8 = cursor.getColumnIndex("title");
        if (columnIndex8 != -1) {
            this.k = cursor.getString(columnIndex8);
        }
        int columnIndex9 = cursor.getColumnIndex("thumbnailUrl");
        if (columnIndex9 != -1) {
            this.l = cursor.getString(columnIndex9);
        }
        int columnIndex10 = cursor.getColumnIndex("createdTime");
        if (columnIndex10 != -1) {
            this.m = cursor.getLong(columnIndex10);
        }
        int columnIndex11 = cursor.getColumnIndex("filePath");
        if (columnIndex11 != -1) {
            this.n = cursor.getString(columnIndex11);
        }
        int columnIndex12 = cursor.getColumnIndex("requestUrl");
        if (columnIndex12 != -1) {
            this.f479o = cursor.getString(columnIndex12);
        }
        int columnIndex13 = cursor.getColumnIndex("formatTag");
        if (columnIndex13 != -1) {
            this.p = cursor.getString(columnIndex13);
        }
        int columnIndex14 = cursor.getColumnIndex("finalFormatTag");
        if (columnIndex14 != -1) {
            this.q = cursor.getString(columnIndex14);
        }
        int columnIndex15 = cursor.getColumnIndex("contentType");
        if (columnIndex15 != -1) {
            this.r = DownloadInfo.ContentType.valueOf(cursor.getString(columnIndex15));
        }
        int columnIndex16 = cursor.getColumnIndex("media_duration");
        if (columnIndex16 != -1) {
            this.s = cursor.getLong(columnIndex16);
        }
        int columnIndex17 = cursor.getColumnIndex("unread");
        if (columnIndex17 != -1) {
            this.t = cursor.getInt(columnIndex17) == 1;
        }
        int columnIndex18 = cursor.getColumnIndex("current_download_id");
        if (columnIndex18 != -1) {
            this.u = cursor.getLong(columnIndex18);
        }
        int columnIndex19 = cursor.getColumnIndex("md5");
        if (columnIndex19 != -1) {
            this.v = cursor.getString(columnIndex19);
        }
        int columnIndex20 = cursor.getColumnIndex("identity");
        if (columnIndex20 != -1) {
            this.w = cursor.getString(columnIndex20);
        }
        int columnIndex21 = cursor.getColumnIndex("visible");
        if (columnIndex21 != -1) {
            this.x = cursor.getInt(columnIndex21) != -1;
        }
        int columnIndex22 = cursor.getColumnIndex("meta_key");
        if (columnIndex22 != -1) {
            this.y = cursor.getString(columnIndex22);
        }
        int columnIndex23 = cursor.getColumnIndex("has_mp3_meta");
        if (columnIndex23 != -1) {
            this.z = cursor.getInt(columnIndex23) == 1;
        }
        int columnIndex24 = cursor.getColumnIndex("app_version");
        if (columnIndex24 != -1) {
            this.A = cursor.getString(columnIndex24);
        }
        int columnIndex25 = cursor.getColumnIndex("ad_pos_name");
        if (columnIndex25 != -1) {
            this.D = cursor.getString(columnIndex25);
        }
        int columnIndex26 = cursor.getColumnIndex("category");
        if (columnIndex26 != -1) {
            this.h = cursor.getString(columnIndex26);
        }
        int columnIndex27 = cursor.getColumnIndex("lock");
        if (columnIndex27 != -1) {
            this.G = cursor.getInt(columnIndex27) == 1;
        }
        int columnIndex28 = cursor.getColumnIndex("originPath");
        if (columnIndex28 != -1) {
            this.M = cursor.getString(columnIndex28);
        }
        int columnIndex29 = cursor.getColumnIndex("lockTime");
        if (columnIndex29 != -1) {
            this.H = cursor.getLong(columnIndex29);
        }
        try {
            int columnIndex30 = cursor.getColumnIndex("content_type2");
            if (columnIndex30 != -1) {
                this.B = ContentType.valueOf(cursor.getString(columnIndex30));
            }
        } catch (IllegalArgumentException | NullPointerException unused) {
            this.B = ContentType.UNKNOWN;
        }
        int columnIndex31 = cursor.getColumnIndex("task_fail_times");
        if (columnIndex31 != -1) {
            this.C = cursor.getInt(columnIndex31);
        }
        int columnIndex32 = cursor.getColumnIndex("app_guide_home_install_times");
        if (columnIndex32 != -1) {
            this.E = cursor.getInt(columnIndex32);
        }
        int columnIndex33 = cursor.getColumnIndex("notification_send_status");
        if (columnIndex33 != -1) {
            this.Z = cursor.getInt(columnIndex33) == 1;
        }
        int columnIndex34 = cursor.getColumnIndex("start_times");
        if (columnIndex34 != -1) {
            this.g0 = cursor.getInt(columnIndex34);
        }
        int columnIndex35 = cursor.getColumnIndex("finishedTime");
        if (columnIndex35 != -1) {
            this.h0 = cursor.getLong(columnIndex35);
        }
        int columnIndex36 = cursor.getColumnIndex("has_auto_retry");
        if (columnIndex36 != -1) {
            this.i0 = cursor.getInt(columnIndex36) == 1;
        }
        int columnIndex37 = cursor.getColumnIndex("has_manual_retry");
        if (columnIndex37 != -1) {
            this.j0 = cursor.getInt(columnIndex37) == 1;
        }
        P(cursor);
    }

    public void I(Map map) {
        this.N = de5.e((String) map.get("extract_duration"));
        this.O = de5.e((String) map.get("download_duration"));
        this.P = de5.e((String) map.get("process_duration"));
        this.Q = de5.c((String) map.get("extract_count"));
        this.R = (String) map.get("extract_from");
        this.S = Boolean.valueOf((String) map.get("extra_download_only_wifi")).booleanValue();
        this.T = Boolean.valueOf((String) map.get("visible_when_finish")).booleanValue();
        this.U = Boolean.parseBoolean((String) map.get("allowMobileDownload"));
        this.V = (String) map.get("downloadFrom");
        this.W = Boolean.parseBoolean((String) map.get("resetTaskInfoIfNeed"));
        this.X = (String) map.get("extractor_type");
        this.Y = (String) map.get("pkg_referrer");
        this.a0 = (String) map.get("playlistTitle");
        this.b0 = (String) map.get("playlistUrl");
        this.c0 = Boolean.parseBoolean((String) map.get("isPlaylistBatchDown"));
        this.e0 = Boolean.parseBoolean((String) map.get("isFastDownload"));
        this.f0 = Boolean.parseBoolean((String) map.get("isBatchDownload"));
        this.d0 = (String) map.get("scenes");
        String str = (String) map.get("extra_data");
        if (!TextUtils.isEmpty(str)) {
            try {
                T(GsonUtils.a(str));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        this.l0 = (String) map.get("reportMeta");
        this.m0 = de5.e((String) map.get("background_duration"));
        this.o0 = Boolean.parseBoolean((String) map.get("isLocalCovert"));
        this.p0 = FailReason.getByCode(de5.c((String) map.get("fail_reason")));
        this.q0 = (String) map.get("fail_message");
        this.r0 = Boolean.parseBoolean((String) map.get("is_duplicate_download"));
        this.s0 = Boolean.parseBoolean((String) map.get("is_write_lyric"));
    }

    public Map J() {
        zt ztVar = new zt();
        ztVar.put("extract_duration", String.valueOf(this.N));
        ztVar.put("download_duration", String.valueOf(this.O));
        ztVar.put("process_duration", String.valueOf(this.P));
        ztVar.put("extract_count", String.valueOf(this.Q));
        ztVar.put("extract_from", this.R);
        ztVar.put("extra_download_only_wifi", String.valueOf(this.S));
        ztVar.put("visible_when_finish", String.valueOf(this.T));
        ztVar.put("allowMobileDownload", String.valueOf(this.U));
        ztVar.put("downloadFrom", String.valueOf(this.V));
        ztVar.put("resetTaskInfoIfNeed", String.valueOf(this.W));
        ztVar.put("extractor_type", this.X);
        ztVar.put("pkg_referrer", this.Y);
        ztVar.put("playlistTitle", this.a0);
        ztVar.put("playlistUrl", this.b0);
        ztVar.put("isPlaylistBatchDown", String.valueOf(this.c0));
        ztVar.put("isBatchDownload", String.valueOf(this.f0));
        ztVar.put("isFastDownload", String.valueOf(this.e0));
        ztVar.put("scenes", this.d0);
        Map map = this.k0;
        if (map != null) {
            ztVar.put("extra_data", j23.h(map));
        }
        ztVar.put("reportMeta", this.l0);
        ztVar.put("background_duration", String.valueOf(this.m0));
        ztVar.put("isLocalCovert", String.valueOf(this.o0));
        FailReason failReason = this.p0;
        if (failReason != null) {
            ztVar.put("fail_reason", String.valueOf(FailReason.b(failReason)));
        }
        ztVar.put("fail_message", this.q0);
        ztVar.put("is_duplicate_download", String.valueOf(this.r0));
        ztVar.put("is_write_lyric", String.valueOf(this.s0));
        return ztVar;
    }

    public void K(ContentValues contentValues) {
        contentValues.put("type", this.b.name());
        contentValues.put(NotificationCompat.CATEGORY_PROGRESS, Integer.valueOf(this.c));
        contentValues.put(DownloadModel.TOTAL_BYTES, Long.valueOf(this.d));
        contentValues.put("current_bytes", Long.valueOf(this.e));
        contentValues.put("download_speed", Long.valueOf(this.f));
        contentValues.put("referer", this.g);
        contentValues.put("status", this.i.name());
        contentValues.put("runningDescription", this.j);
        contentValues.put("title", this.k);
        contentValues.put("thumbnailUrl", this.l);
        contentValues.put("createdTime", Long.valueOf(this.m));
        contentValues.put("filePath", i());
        contentValues.put("requestUrl", this.f479o);
        contentValues.put("formatTag", this.p);
        contentValues.put("finalFormatTag", this.q);
        contentValues.put("contentType", this.r.name());
        contentValues.put("media_duration", Long.valueOf(this.s));
        contentValues.put("unread", Integer.valueOf(this.t ? 1 : 0));
        contentValues.put("current_download_id", Long.valueOf(this.u));
        contentValues.put("md5", this.v);
        contentValues.put("identity", this.w);
        contentValues.put("visible", Integer.valueOf(this.x ? 1 : -1));
        contentValues.put("meta_key", this.y);
        contentValues.put("has_mp3_meta", Integer.valueOf(this.z ? 1 : 0));
        contentValues.put("app_version", this.A);
        contentValues.put("content_type2", this.B.name());
        contentValues.put("task_fail_times", Integer.valueOf(this.C));
        contentValues.put("ad_pos_name", this.D);
        contentValues.put("category", this.h);
        contentValues.put("lock", Integer.valueOf(this.G ? 1 : 0));
        contentValues.put("originPath", this.M);
        contentValues.put("app_guide_home_install_times", Integer.valueOf(this.E));
        contentValues.put("lockTime", Long.valueOf(this.H));
        contentValues.put("notification_send_status", Integer.valueOf(this.Z ? 1 : 0));
        contentValues.put("start_times", Integer.valueOf(this.g0));
        contentValues.put("finishedTime", Long.valueOf(this.h0));
        contentValues.put("has_auto_retry", Integer.valueOf(this.i0 ? 1 : 0));
        contentValues.put("has_manual_retry", Integer.valueOf(this.j0 ? 1 : 0));
        try {
            contentValues.put("extra", h());
        } catch (JSONException unused) {
        }
    }

    public void N(String str, Object obj) {
        if (str == null || obj == null) {
            return;
        }
        Q().put(str, obj);
    }

    public void O(Map map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        for (Map.Entry entry : map.entrySet()) {
            N((String) entry.getKey(), entry.getValue());
        }
    }

    public void P(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("extra");
        if (columnIndex == -1) {
            return;
        }
        String string = cursor.getString(columnIndex);
        if (TextUtils.isEmpty(string)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(string);
            Iterator<String> itKeys = jSONObject.keys();
            zt ztVar = new zt();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                ztVar.put(next, jSONObject.getString(next));
            }
            I(ztVar);
        } catch (JSONException unused) {
        }
    }

    public final synchronized Map Q() {
        try {
            if (this.k0 == null) {
                this.k0 = new ConcurrentHashMap();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.k0;
    }

    public void R(String str) {
        this.n = str;
    }

    public void S(String str) {
        this.g = str;
    }

    public void T(Map map) {
        O(map);
    }

    public LocalVideoAlbumInfo U() {
        if (!G()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new LocalVideoEpisodeInfo(this.k, i(), this.t));
        LocalVideoAlbumInfo localVideoAlbumInfo = new LocalVideoAlbumInfo(this.a, i(), arrayList, this.r.name());
        localVideoAlbumInfo.setLock(this.G);
        localVideoAlbumInfo.setTaskInfo(this);
        File parentFile = new File(i()).getParentFile();
        localVideoAlbumInfo.setSystemFile((parentFile == null || parentFile.canWrite()) ? false : true);
        localVideoAlbumInfo.setNetVideoInfo(V());
        localVideoAlbumInfo.setCreateTime(this.m * 1000);
        localVideoAlbumInfo.setFinishTime(this.h0);
        return localVideoAlbumInfo;
    }

    public NetVideoInfo V() {
        if (!G()) {
            return null;
        }
        NetVideoInfo netVideoInfo = new NetVideoInfo();
        netVideoInfo.setTitle(this.k);
        netVideoInfo.setId(this.a);
        netVideoInfo.setSource(this.g);
        netVideoInfo.setFormat(this.p);
        netVideoInfo.setDownloadIdentify(this.w);
        netVideoInfo.setDuration(m());
        netVideoInfo.setCtime(this.m);
        netVideoInfo.setHasMediaMeta(this.z);
        VideoCover videoCover = new VideoCover();
        videoCover.setS(this.l);
        videoCover.setL(this.l);
        netVideoInfo.setCover(videoCover);
        if (this.b == TaskType.TASK_BT) {
            netVideoInfo.setType(VideoType.BT_MOVIE.getType());
        } else {
            netVideoInfo.setType(VideoType.MOVIE.getType());
        }
        netVideoInfo.setTotalEpisodesNum(1);
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(yj8.j(this.g));
        netVideoInfo.setProviderNames(arrayList);
        return netVideoInfo;
    }

    public b d() {
        return new b().s(this.l).h(this.n).d(this.r).j(this.p, false).o(p()).q(this.f479o).m(this.s).k(this.w).n(this.y).e(this.B).r(this.C).t(this.k).c(this.h).f(this.V).p(this.l0);
    }

    public String e() {
        return this.h;
    }

    public ContentValues f() {
        ContentValues contentValues = new ContentValues();
        K(contentValues);
        return contentValues;
    }

    public String g() {
        if (this.G) {
            return !TextUtils.isEmpty(this.k) ? this.k : nj2.b(n());
        }
        return TextUtils.isEmpty(i()) ? this.k : nj2.b(i());
    }

    public String h() throws JSONException {
        Map mapJ = J();
        if (mapJ == null) {
            return "";
        }
        JSONObject jSONObject = new JSONObject();
        for (String str : mapJ.keySet()) {
            jSONObject.put(str, mapJ.get(str));
        }
        return jSONObject.toString();
    }

    public String i() {
        String str = this.n;
        return str == null ? "" : str;
    }

    public String k() {
        return this.p;
    }

    public String l() throws JSONException {
        Map mapJ = J();
        if (mapJ == null) {
            return "";
        }
        String str = (String) mapJ.get("is_write_lyric");
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("is_write_lyric", str);
        return jSONObject.toString();
    }

    public long m() {
        long j = this.s;
        return j != 0 ? j : aq4.b(this.n);
    }

    public String n() {
        return TextUtils.isEmpty(this.M) ? this.k : nj2.b(this.M);
    }

    public String o() {
        return if9.i(this.b0);
    }

    public String p() {
        return !TextUtils.isEmpty(this.g) ? this.g : this.f479o;
    }

    public Map q() {
        return this.k0;
    }

    public String r() {
        return this.i0 + RequestTimeModel.DELIMITER + this.j0;
    }

    public String s() {
        return this.d0;
    }

    public String toString() {
        return "TaskInfo{id=" + this.a + ", type=" + this.b + ", progress=" + this.c + ", totalBytes=" + this.d + ", currentBytes=" + this.e + ", downloadSpeed=" + this.f + ", referrer='" + this.g + "', category='" + this.h + "', status=" + this.i + ", runningDescription='" + this.j + "', title='" + this.k + "', thumbnailUrl='" + this.l + "', createdTime=" + this.m + ", filePath='" + this.n + "', requestUrl='" + this.f479o + "', formatTag='" + this.p + "', finalFormatTag='" + this.q + "', contentType=" + this.r + ", mediaDuration=" + this.s + ", unread=" + this.t + ", currentDownloadId=" + this.u + ", md5='" + this.v + "', identity='" + this.w + "', visible=" + this.x + ", metaKey='" + this.y + "', hasMP3Meta=" + this.z + ", appVersion='" + this.A + "', contentType2=" + this.B + ", taskFailedTimes=" + this.C + ", adPosName='" + this.D + "', appInstallHomeGuideCount=" + this.E + ", pluginName='" + this.F + "', lock=" + this.G + ", lockTime=" + this.H + ", contentSource='" + this.I + "', videoSource='" + this.J + "', guideAppPackageName='" + this.L + "', originPath='" + this.M + "', extractDuration=" + this.N + ", downloadDuration=" + this.O + ", processDuration=" + this.P + ", extractCount=" + this.Q + ", extractFrom='" + this.R + "', downloadOnlyWifi=" + this.S + ", visibleWhenFinish=" + this.T + ", allowMobileDownload=" + this.U + ", downloadFrom='" + this.V + "', resetTaskInfoIfNeed=" + this.W + ", extractorType='" + this.X + "', pkgReferrer='" + this.Y + "', hasSendFinishNotification=" + this.Z + ", playlistTitle='" + this.a0 + "', playlistUrl='" + this.b0 + "', isPlaylistBatchDown=" + this.c0 + ", scenes='" + this.d0 + "', isFastDownload=" + this.e0 + ", isBatchDownload=" + this.f0 + ", taskStartTimes=" + this.g0 + ", taskFinishTimes=" + this.h0 + ", hasAutoRetry=" + this.i0 + ", hasManualRetry=" + this.j0 + '}';
    }

    public String v() {
        return this.k;
    }

    public boolean w() {
        if (!"extract_audio".equals(this.p)) {
            long j = this.d;
            if (j <= 0 || j != this.e || !C()) {
                return false;
            }
        }
        return true;
    }

    public boolean x() {
        return this.i == TaskStatus.RUNNING && w();
    }

    public boolean y() {
        return this.p0 == FailReason.EXTRACT_HTTP_UNAUTHORIZED;
    }

    public boolean z() {
        return this.p0 == FailReason.EXTRACT_LOGIN_REQUIRED;
    }
}
