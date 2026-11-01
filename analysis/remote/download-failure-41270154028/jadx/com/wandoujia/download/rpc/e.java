package com.wandoujia.download.rpc;

import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.CrossProcessCursor;
import android.database.Cursor;
import android.database.CursorWindow;
import android.database.CursorWrapper;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.Uri;
import android.os.Binder;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.snaptube.dataadapter.plugin.push.impl.IntentUtil;
import com.snaptube.extractor.pluginlib.models.Format;
import com.wandoujia.download.utils.StorageUtil;
import java.util.HashSet;
import net.pubnative.library.request.PubnativeAsset;
import o.c51;
import o.de5;
import o.mp7;
import o.n70;
import o.sq5;

public class e {
    public static final UriMatcher c;
    public static final String[] d;
    public static HashSet e;
    public static e f;
    public SQLiteOpenHelper a;
    public Context b;

    public static final class a extends n70 {
        public a(Context context) {
            super(context, "downloads.db", null, 129);
        }

        private static void d(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3) {
            sQLiteDatabase.execSQL("ALTER TABLE " + str + " ADD COLUMN " + str2 + " " + str3);
        }

        public static void e(SQLiteDatabase sQLiteDatabase) {
            try {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS downloads");
                sQLiteDatabase.execSQL("CREATE TABLE downloads(_id INTEGER PRIMARY KEY AUTOINCREMENT,uri TEXT, current_bytes INTEGER, description TEXT, filename TEXT, destination INTEGER, visible INTEGER NOT NULL DEFAULT 1, lastmod BIGINT, mimetype TEXT, _data TEXT, resource_extras TEXT, resource_type INTEGERT, status INTEGER, title TEXT, total_bytes INTEGER, use_agent TEXT, allowed_download_without_wifi BOOLEAN, notification_class TEXT, etag TEXT, resouce_identity TEXT, no_integrity BOOLEAN, source TEXT, check_size INTEGER, icon_url TEXT, notification_extras TEXT, duration INTEGER NOT NULL DEFAULT 0, retried_urls TEXT, failed_times INTEGER NOT NULL DEFAULT 0, last_url_retried_times INTEGER NOT NULL DEFAULT 0);");
            } catch (SQLException e) {
                e.printStackTrace();
                throw e;
            }
        }

        public static void i(SQLiteDatabase sQLiteDatabase, int i) {
            switch (i) {
                case 119:
                    d(sQLiteDatabase, "downloads", "segment_config", "TEXT");
                    break;
                case 120:
                    d(sQLiteDatabase, "downloads", "md5_checksum", "TEXT");
                    break;
                case 121:
                    d(sQLiteDatabase, "downloads", "dservice_urls", "TEXT");
                    break;
                case 122:
                    d(sQLiteDatabase, "downloads", "speed_limit", "INTEGER");
                    break;
                case 123:
                    d(sQLiteDatabase, "downloads", "verify_type", "TEXT");
                    d(sQLiteDatabase, "downloads", "verify_value", "TEXT");
                    break;
                case 124:
                    d(sQLiteDatabase, "downloads", "md5_state", "TEXT");
                    break;
                case 125:
                    d(sQLiteDatabase, "downloads", "speed", "INTEGER");
                    break;
                case 127:
                    d(sQLiteDatabase, "downloads", Format.Fields.HEADERS, "TEXT");
                    break;
                case 128:
                    d(sQLiteDatabase, "downloads", "is_download_with_multi_thread", "INTEGER");
                    d(sQLiteDatabase, "downloads", "downloaded_sections", "TEXT");
                    break;
                case 129:
                    d(sQLiteDatabase, "downloads", "headers_list", "TEXT");
                    break;
            }
        }

        public final void f(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS downloads");
            onCreate(sQLiteDatabase);
        }

        @Override
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            onUpgrade(sQLiteDatabase, 0, 129);
        }

        @Override
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            f(sQLiteDatabase);
        }

        @Override
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            if (i <= 125) {
                e(sQLiteDatabase);
                i = 0;
            }
            while (true) {
                i++;
                if (i > i2) {
                    return;
                } else {
                    i(sQLiteDatabase, i);
                }
            }
        }
    }

    public class b extends CursorWrapper implements CrossProcessCursor {
        public final CrossProcessCursor a;

        public b(Cursor cursor) {
            super(cursor);
            this.a = (CrossProcessCursor) cursor;
        }

        @Override
        public void fillWindow(int i, CursorWindow cursorWindow) {
            this.a.fillWindow(i, cursorWindow);
        }

        @Override
        public CursorWindow getWindow() {
            return this.a.getWindow();
        }

        @Override
        public boolean onMove(int i, int i2) {
            return this.a.onMove(i, i2);
        }
    }

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        c = uriMatcher;
        String str = DownloadConstants.a;
        uriMatcher.addURI(str, "downloads", 1);
        uriMatcher.addURI(str, "downloads/#", 2);
        d = new String[]{"_id", "uri", "current_bytes", PubnativeAsset.DESCRIPTION, "destination", "filename", "visible", "lastmod", "mimetype", "_data", "notification_class", "notification_extras", "resource_type", "resource_extras", "status", "resouce_identity", "no_integrity", "title", "failed_times", DownloadModel.TOTAL_BYTES, "use_agent", DownloadModel.ETAG, "source", Format.Fields.HEADERS, "headers_list", "check_size", CampaignEx.JSON_KEY_ICON_URL, IntentUtil.DURATION, "allowed_download_without_wifi", "retried_urls", "segment_config", "last_url_retried_times", "dservice_urls", "md5_checksum", "md5_state", "last_url_retried_times", "speed_limit", "speed", "verify_type", "verify_value", "is_download_with_multi_thread", "downloaded_sections"};
        e = new HashSet();
        int i = 0;
        while (true) {
            String[] strArr = d;
            if (i >= strArr.length) {
                return;
            }
            e.add(strArr[i]);
            i++;
        }
    }

    public e(Context context) {
        this.a = null;
        this.b = context;
        this.a = new a(context);
    }

    public static final void a(String str, ContentValues contentValues, ContentValues contentValues2) {
        Boolean asBoolean = contentValues.getAsBoolean(str);
        if (asBoolean != null) {
            contentValues2.put(str, asBoolean);
        }
    }

    public static final void b(String str, ContentValues contentValues, ContentValues contentValues2) {
        Integer asInteger = contentValues.getAsInteger(str);
        if (asInteger != null) {
            contentValues2.put(str, asInteger);
        }
    }

    public static final void c(String str, ContentValues contentValues, ContentValues contentValues2) {
        Long asLong = contentValues.getAsLong(str);
        if (asLong != null) {
            contentValues2.put(str, asLong);
        }
    }

    public static final void d(String str, ContentValues contentValues, ContentValues contentValues2) {
        String asString = contentValues.getAsString(str);
        if (asString != null) {
            contentValues2.put(str, asString);
        }
    }

    public static final void e(String str, ContentValues contentValues, ContentValues contentValues2, String str2) {
        d(str, contentValues, contentValues2);
        if (contentValues2.containsKey(str)) {
            return;
        }
        contentValues2.put(str, str2);
    }

    public static synchronized e h(Context context) {
        try {
            if (f == null) {
                f = new e(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return f;
    }

    public int f(Uri uri, String str, String[] strArr) {
        SQLiteDatabase writableDatabase = this.a.getWritableDatabase();
        int iMatch = c.match(uri);
        if (iMatch != 1 && iMatch != 2) {
            throw new UnsupportedOperationException("Cannot delete URI: " + uri);
        }
        mp7 mp7VarI = i(uri, str, strArr, iMatch);
        try {
            return writableDatabase.delete("downloads", mp7VarI.c(), mp7VarI.b());
        } catch (SQLException e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public final String g(Uri uri) {
        return uri.getPathSegments().get(1);
    }

    public final mp7 i(Uri uri, String str, String[] strArr, int i) {
        mp7 mp7Var = new mp7();
        mp7Var.a(str, strArr);
        if (i == 2) {
            mp7Var.a("_id = ?", g(uri));
        }
        return mp7Var;
    }

    public Uri j(Uri uri, ContentValues contentValues) {
        long jInsert;
        SQLiteDatabase writableDatabase = this.a.getWritableDatabase();
        int iMatch = c.match(uri);
        if (iMatch != 1) {
            throw new IllegalArgumentException("Unknown/Invalid URI " + uri);
        }
        ContentValues contentValues2 = new ContentValues();
        d("uri", contentValues, contentValues2);
        d("filename", contentValues, contentValues2);
        d("mimetype", contentValues, contentValues2);
        a("no_integrity", contentValues, contentValues2);
        d("_data", contentValues, contentValues2);
        a("allowed_download_without_wifi", contentValues, contentValues2);
        String asString = contentValues.getAsString("_data");
        boolean zN = true ^ StorageUtil.n(asString);
        if (sq5.c() || StorageUtil.p(asString)) {
            zN = false;
        }
        if (zN) {
            this.b.enforcePermission("android.permission.WRITE_EXTERNAL_STORAGE", Binder.getCallingPid(), Binder.getCallingUid(), "need WRITE_EXTERNAL_STORAGE permission to use DESTINATION_FILE_URI");
        }
        b("destination", contentValues, contentValues2);
        b("status", contentValues, contentValues2);
        a("visible", contentValues, contentValues2);
        d("resouce_identity", contentValues, contentValues2);
        d("notification_class", contentValues, contentValues2);
        d("dservice_urls", contentValues, contentValues2);
        d("segment_config", contentValues, contentValues2);
        d("md5_checksum", contentValues, contentValues2);
        d("md5_state", contentValues, contentValues2);
        d("notification_extras", contentValues, contentValues2);
        d("source", contentValues, contentValues2);
        d(Format.Fields.HEADERS, contentValues, contentValues2);
        d("headers_list", contentValues, contentValues2);
        b("check_size", contentValues, contentValues2);
        b(IntentUtil.DURATION, contentValues, contentValues2);
        d(CampaignEx.JSON_KEY_ICON_URL, contentValues, contentValues2);
        d("use_agent", contentValues, contentValues2);
        e("title", contentValues, contentValues2, "");
        e(PubnativeAsset.DESCRIPTION, contentValues, contentValues2, "");
        d("retried_urls", contentValues, contentValues2);
        b("last_url_retried_times", contentValues, contentValues2);
        c(DownloadModel.TOTAL_BYTES, contentValues, contentValues2);
        contentValues2.put("current_bytes", (Integer) 0);
        b("resource_type", contentValues, contentValues2);
        e("resource_extras", contentValues, contentValues2, "");
        c("speed_limit", contentValues, contentValues2);
        c("speed", contentValues, contentValues2);
        e("verify_type", contentValues, contentValues2, "");
        e("verify_value", contentValues, contentValues2, "");
        b("is_download_with_multi_thread", contentValues, contentValues2);
        d("downloaded_sections", contentValues, contentValues2);
        try {
            jInsert = writableDatabase.insert("downloads", null, contentValues2);
        } catch (SQLException e2) {
            e2.printStackTrace();
            jInsert = -1;
        }
        k(uri, iMatch);
        return ContentUris.withAppendedId(DownloadConstants.a.a, jInsert);
    }

    public final void k(Uri uri, int i) {
        Long lValueOf = i == 2 ? Long.valueOf(de5.e(g(uri))) : null;
        if (lValueOf != null) {
            c51.a(this.b.getContentResolver(), ContentUris.withAppendedId(DownloadConstants.a.a, lValueOf.longValue()), null);
        }
    }

    public Cursor l(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        SQLiteDatabase readableDatabase = this.a.getReadableDatabase();
        int iMatch = c.match(uri);
        if (iMatch == -1) {
            throw new IllegalArgumentException("Unknown URI: " + uri);
        }
        mp7 mp7VarI = i(uri, str, strArr2, iMatch);
        if (strArr == null) {
            strArr = d;
        } else {
            for (int i = 0; i < strArr.length; i++) {
                if (!e.contains(strArr[i])) {
                    throw new IllegalArgumentException("column " + strArr[i] + " is not allowed in queries");
                }
            }
        }
        Cursor cursorQuery = readableDatabase.query("downloads", strArr, mp7VarI.c(), mp7VarI.b(), null, null, str2);
        if (cursorQuery != null) {
            cursorQuery = new b(cursorQuery);
        }
        if (cursorQuery != null) {
            cursorQuery.setNotificationUri(this.b.getContentResolver(), uri);
        }
        return cursorQuery;
    }

    public int m(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        SQLiteDatabase writableDatabase;
        try {
            writableDatabase = this.a.getWritableDatabase();
        } catch (SQLiteException e2) {
            e2.printStackTrace();
            writableDatabase = null;
        }
        int iUpdate = 0;
        if (writableDatabase == null) {
            return 0;
        }
        int iMatch = c.match(uri);
        if (iMatch != 1 && iMatch != 2) {
            throw new UnsupportedOperationException("Cannot update URI: " + uri);
        }
        mp7 mp7VarI = i(uri, str, strArr, iMatch);
        if (contentValues.size() > 0) {
            try {
                iUpdate = writableDatabase.update("downloads", contentValues, mp7VarI.c(), mp7VarI.b());
            } catch (SQLException e3) {
                e3.printStackTrace();
            }
        }
        k(uri, iMatch);
        return iUpdate;
    }
}
