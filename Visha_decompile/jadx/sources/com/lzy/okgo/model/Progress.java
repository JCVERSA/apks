package com.lzy.okgo.model;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.database.Cursor;
import android.os.SystemClock;
import com.lzy.okgo.request.base.Request;
import defpackage.fe7;
import defpackage.mv4;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;

public class Progress implements Serializable {
    public static final String ACCEPTLANGUAGE = "acceptlanguage";
    public static final String ACCEPTTYPE = "accepttype";
    public static final String COOKIE = "cookie";
    public static final String CURRENT_SIZE = "currentSize";
    public static final String DATE = "date";
    public static final String DOWNLOADSOURCE = "downloadsource";
    public static final int ERROR = 4;
    public static final String EXTRA1 = "extra1";
    public static final String EXTRA2 = "extra2";
    public static final String EXTRA3 = "extra3";
    public static final String FILE_NAME = "fileName";
    public static final String FILE_PATH = "filePath";
    public static final String FILE_TMP = ".xdl";
    public static final int FINISH = 5;
    public static final String FOLDER = "folder";
    public static final String FRACTION = "fraction";
    public static final String IMGURL = "imgUrl";
    public static final int LOADING = 2;
    public static final String MIMETYPE = "mimeType";
    public static final int NONE = 0;
    public static final int NO_NET = 7;
    public static final String ORIGIN = "origin";
    public static final int PAUSE = 3;
    public static final int PAUSE_MOBILE = 6;
    public static final String PRIORITY = "priority";
    public static final int PROCESSING = 8;
    public static final int PROCESS_FAIL = 9;
    public static final String REFERER = "referer";
    public static final String REQUEST = "request";
    public static final String SNIFFID = "sniffId";
    public static final String SOURCE = "source";
    public static final String STATUS = "status";
    public static final String TAG = "tag";
    public static final String TOTAL_SIZE = "totalSize";
    public static final String UAAGENT = "uaAgent";
    public static final String URL = "url";
    public static final int WAITING = 1;
    private static final long serialVersionUID = 6353658567594109891L;
    public String acceptLanguage;
    public String acceptType;
    public String cloudFileId;
    public String cookie;
    public long currentSize;
    public int downloadSource;
    public long duration;
    public Throwable exception;
    public Serializable extra1;
    public Serializable extra2;
    public Serializable extra3;
    public String fileName;
    public String filePath;
    public String folder;
    public float fraction;
    public String imgUrl;
    public boolean isClient;
    public transient long lastSize;
    public int lastStatus;
    public String mimeType;
    public String origin;
    public String referer;
    public Request<?, ? extends Request> request;
    public String sniffId;
    public int source;
    public transient long speed;
    public int status;
    public String tag;
    public String taskId;
    private transient long tempSize;
    public String uaAgent;
    public String url;
    public boolean hasErrorNotify = false;
    private transient long lastRefreshTime = SystemClock.elapsedRealtime();
    public long totalSize = -1;
    public int priority = 0;
    public long date = System.currentTimeMillis();
    private final transient List<Long> speedBuffer = new CopyOnWriteArrayList();

    public interface a {
        void a(Progress progress);
    }

    private long bufferSpeed(long j) {
        this.speedBuffer.add(Long.valueOf(j));
        if (this.speedBuffer.size() > 10) {
            this.speedBuffer.remove(0);
        }
        Iterator<Long> it = this.speedBuffer.iterator();
        long jLongValue = 0;
        while (it.hasNext()) {
            jLongValue = (long) (jLongValue + it.next().longValue());
        }
        return jLongValue / ((long) this.speedBuffer.size());
    }

    public static ContentValues buildContentValues(Progress progress) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(TAG, progress.tag);
        contentValues.put("url", progress.url);
        contentValues.put(FOLDER, progress.folder);
        contentValues.put(FILE_PATH, progress.filePath);
        contentValues.put(FILE_NAME, progress.fileName);
        contentValues.put(FRACTION, Float.valueOf(progress.fraction));
        contentValues.put(TOTAL_SIZE, Long.valueOf(progress.totalSize));
        contentValues.put(CURRENT_SIZE, Long.valueOf(progress.currentSize));
        contentValues.put("status", Integer.valueOf(progress.status));
        contentValues.put("priority", Integer.valueOf(progress.priority));
        contentValues.put("date", Long.valueOf(progress.date));
        contentValues.put(IMGURL, progress.imgUrl);
        contentValues.put(MIMETYPE, progress.mimeType);
        contentValues.put(REQUEST, mv4.g(progress.request));
        contentValues.put(EXTRA1, mv4.g(progress.extra1));
        contentValues.put(EXTRA2, mv4.g(progress.extra2));
        contentValues.put(EXTRA3, mv4.g(progress.extra3));
        contentValues.put(SNIFFID, progress.sniffId);
        contentValues.put("source", Integer.valueOf(progress.source));
        contentValues.put(UAAGENT, progress.uaAgent);
        contentValues.put("cookie", progress.cookie);
        contentValues.put(ACCEPTLANGUAGE, progress.acceptLanguage);
        contentValues.put(ACCEPTTYPE, progress.acceptType);
        contentValues.put("origin", progress.origin);
        contentValues.put(REFERER, progress.referer);
        return contentValues;
    }

    public static ContentValues buildUpdateContentValues(Progress progress) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(FRACTION, Float.valueOf(progress.fraction));
        contentValues.put(TOTAL_SIZE, Long.valueOf(progress.totalSize));
        contentValues.put(CURRENT_SIZE, Long.valueOf(progress.currentSize));
        contentValues.put("status", Integer.valueOf(progress.status));
        contentValues.put("priority", Integer.valueOf(progress.priority));
        contentValues.put("date", Long.valueOf(progress.date));
        return contentValues;
    }

    public static Progress changeProgress(Progress progress, long j, a aVar) {
        return changeProgress(progress, j, progress.totalSize, aVar);
    }

    @SuppressLint({"Range"})
    public static Progress parseCursorToBean(Cursor cursor) {
        Progress progress = new Progress();
        progress.tag = cursor.getString(cursor.getColumnIndex(TAG));
        progress.url = cursor.getString(cursor.getColumnIndex("url"));
        progress.folder = cursor.getString(cursor.getColumnIndex(FOLDER));
        progress.filePath = cursor.getString(cursor.getColumnIndex(FILE_PATH));
        progress.fileName = cursor.getString(cursor.getColumnIndex(FILE_NAME));
        progress.fraction = cursor.getFloat(cursor.getColumnIndex(FRACTION));
        progress.totalSize = cursor.getLong(cursor.getColumnIndex(TOTAL_SIZE));
        progress.currentSize = cursor.getLong(cursor.getColumnIndex(CURRENT_SIZE));
        progress.status = cursor.getInt(cursor.getColumnIndex("status"));
        progress.priority = cursor.getInt(cursor.getColumnIndex("priority"));
        progress.date = cursor.getLong(cursor.getColumnIndex("date"));
        progress.imgUrl = cursor.getString(cursor.getColumnIndex(IMGURL));
        progress.mimeType = cursor.getString(cursor.getColumnIndex(MIMETYPE));
        progress.request = (Request) mv4.h(cursor.getBlob(cursor.getColumnIndex(REQUEST)));
        progress.extra1 = (Serializable) mv4.h(cursor.getBlob(cursor.getColumnIndex(EXTRA1)));
        progress.extra2 = (Serializable) mv4.h(cursor.getBlob(cursor.getColumnIndex(EXTRA2)));
        progress.extra3 = (Serializable) mv4.h(cursor.getBlob(cursor.getColumnIndex(EXTRA3)));
        progress.sniffId = cursor.getString(cursor.getColumnIndex(SNIFFID));
        progress.source = cursor.getInt(cursor.getColumnIndex("source"));
        progress.uaAgent = cursor.getString(cursor.getColumnIndex(UAAGENT));
        progress.cookie = cursor.getString(cursor.getColumnIndex("cookie"));
        progress.acceptLanguage = cursor.getString(cursor.getColumnIndex(ACCEPTLANGUAGE));
        progress.acceptType = cursor.getString(cursor.getColumnIndex(ACCEPTTYPE));
        progress.referer = cursor.getString(cursor.getColumnIndex(REFERER));
        progress.origin = cursor.getString(cursor.getColumnIndex("origin"));
        return progress;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.tag, ((Progress) obj).tag);
    }

    public void from(Progress progress) {
        this.totalSize = progress.totalSize;
        long j = progress.currentSize;
        this.currentSize = j;
        this.fraction = progress.fraction;
        this.speed = progress.speed;
        this.lastRefreshTime = progress.lastRefreshTime;
        this.tempSize = progress.tempSize;
        this.lastSize = j;
    }

    public String getOriginSite() {
        return (String) this.extra2;
    }

    public int hashCode() {
        String str = this.tag;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public void setOriginSite(String str) {
        this.extra2 = str;
    }

    public String toString() {
        return "Progress{fraction=" + this.fraction + ", totalSize=" + this.totalSize + ", currentSize=" + this.currentSize + ", speed=" + this.speed + ", status=" + this.status + ", downloadSource=" + this.downloadSource + ", priority=" + this.priority + ", folder=" + this.folder + ", filePath=" + this.filePath + ", fileName=" + this.fileName + ", tag=" + this.tag + ", taskId=" + this.taskId + ", cloudFileId=" + this.cloudFileId + ", url=" + this.url + ", exception=" + this.exception + '}';
    }

    public static Progress changeProgress(Progress progress, long j, long j2, a aVar) {
        progress.totalSize = j2;
        long j3 = progress.currentSize;
        progress.lastSize = j3;
        progress.currentSize = j3 + j;
        progress.tempSize += j;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j4 = progress.lastRefreshTime;
        if (jElapsedRealtime - j4 >= fe7.i || progress.currentSize == j2) {
            long j5 = jElapsedRealtime - j4;
            if (j5 == 0) {
                j5 = 1;
            }
            progress.fraction = (progress.currentSize * 1.0f) / j2;
            progress.speed = progress.bufferSpeed((progress.tempSize * 1000) / j5);
            progress.lastRefreshTime = jElapsedRealtime;
            progress.tempSize = 0L;
            if (aVar != null) {
                aVar.a(progress);
            }
        }
        return progress;
    }
}
