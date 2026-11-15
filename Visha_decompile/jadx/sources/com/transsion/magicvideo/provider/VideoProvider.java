package com.transsion.magicvideo.provider;

import android.content.ContentProvider;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import androidx.sqlite.db.SupportSQLiteDatabase;
import com.blankj.utilcode.util.Utils;
import com.transsion.dbdata.database.VideoRoomDatabase;
import com.transsion.mimedia.activity.MediaLibraryVideoActivity;

@Deprecated(since = "废弃，不再使用")
public class VideoProvider extends ContentProvider {
    public static final Uri c = Uri.parse("content://com.transsion.magicshow/VideoStates");
    public static final Uri d = Uri.parse("content://com.transsion.magicshow/SubtitleRecord");
    public static final UriMatcher e;
    public Object b = new Object();

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        e = uriMatcher;
        uriMatcher.addURI(MediaLibraryVideoActivity.HOST_OPEN, "VideoStates", 1);
        uriMatcher.addURI(MediaLibraryVideoActivity.HOST_OPEN, "1/#", 2);
        uriMatcher.addURI(MediaLibraryVideoActivity.HOST_OPEN, "SubtitleRecord", 3);
    }

    public final boolean a() {
        String callingPackage = getCallingPackage();
        return "com.transsion.kolun.assistant".equals(callingPackage) || MediaLibraryVideoActivity.HOST_OPEN.equals(callingPackage);
    }

    @Override
    public int delete(Uri uri, String str, String[] strArr) {
        String str2;
        if (!a()) {
            return 0;
        }
        SupportSQLiteDatabase writableDatabase = VideoRoomDatabase.h(Utils.a()).getOpenHelper().getWritableDatabase();
        int iMatch = e.match(uri);
        if (iMatch == 1) {
            int iDelete = writableDatabase.delete("VideoStates", str, strArr);
            getContext().getContentResolver().notifyChange(uri, null);
            return iDelete;
        }
        if (iMatch != 2) {
            if (iMatch == 3) {
                int iDelete2 = writableDatabase.delete("SubtitleRecord", str, strArr);
                getContext().getContentResolver().notifyChange(uri, null);
                return iDelete2;
            }
            Log.e("VideoProvider", "delete, unkown URI to delete: " + uri);
            return 0;
        }
        String str3 = uri.getPathSegments().get(1);
        StringBuilder sb = new StringBuilder();
        sb.append("_data=");
        sb.append(str3);
        if (TextUtils.isEmpty(str)) {
            str2 = "";
        } else {
            str2 = " AND (" + str + ")";
        }
        sb.append(str2);
        int iDelete3 = writableDatabase.delete("VideoStates", sb.toString(), strArr);
        getContext().getContentResolver().notifyChange(uri, null);
        return iDelete3;
    }

    @Override
    public String getType(Uri uri) {
        return null;
    }

    @Override
    public Uri insert(Uri uri, ContentValues contentValues) {
        Uri.Builder builderBuildUpon;
        String str;
        if (!a()) {
            return null;
        }
        SupportSQLiteDatabase writableDatabase = VideoRoomDatabase.h(Utils.a()).getOpenHelper().getWritableDatabase();
        ContentValues contentValues2 = new ContentValues(contentValues);
        if (e.match(uri) != 3) {
            builderBuildUpon = c.buildUpon();
            str = "VideoStates";
        } else {
            builderBuildUpon = d.buildUpon();
            str = "SubtitleRecord";
        }
        long jInsert = writableDatabase.insert(str, 0, contentValues2);
        if (jInsert <= 0) {
            Log.e("VideoProvider", "insert, failed to insert row into " + uri);
        }
        Uri uriBuild = ContentUris.appendId(builderBuildUpon, jInsert).build();
        getContext().getContentResolver().notifyChange(uriBuild, null);
        return uriBuild;
    }

    @Override
    public boolean onCreate() {
        return false;
    }

    @Override
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        if (!a()) {
            return null;
        }
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        SupportSQLiteDatabase writableDatabase = VideoRoomDatabase.h(getContext()).getOpenHelper().getWritableDatabase();
        int iMatch = e.match(uri);
        if (iMatch == 2 || iMatch == 1) {
            sQLiteQueryBuilder.setTables("VideoStates");
        } else if (iMatch == 3) {
            sQLiteQueryBuilder.setTables("SubtitleRecord");
        }
        return writableDatabase.query(sQLiteQueryBuilder.buildQuery(strArr, str, null, null, str2, null), strArr2);
    }

    @Override
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        String str2;
        if (!a()) {
            return 0;
        }
        SupportSQLiteDatabase writableDatabase = VideoRoomDatabase.h(Utils.a()).getOpenHelper().getWritableDatabase();
        int iMatch = e.match(uri);
        if (iMatch == 1) {
            int iUpdate = writableDatabase.update("VideoStates", 0, contentValues, str, strArr);
            getContext().getContentResolver().notifyChange(uri, null);
            return iUpdate;
        }
        if (iMatch != 2) {
            if (iMatch == 3) {
                int iUpdate2 = writableDatabase.update("SubtitleRecord", 0, contentValues, str, strArr);
                getContext().getContentResolver().notifyChange(uri, null);
                return iUpdate2;
            }
            Log.e("VideoProvider", "update, unkown URI to update: " + uri);
            return 0;
        }
        String str3 = uri.getPathSegments().get(1);
        StringBuilder sb = new StringBuilder();
        sb.append("_data=");
        sb.append(str3);
        if (TextUtils.isEmpty(str)) {
            str2 = "";
        } else {
            str2 = " AND (" + str + ")";
        }
        sb.append(str2);
        int iUpdate3 = writableDatabase.update("VideoStates", 0, contentValues, sb.toString(), strArr);
        getContext().getContentResolver().notifyChange(uri, null);
        return iUpdate3;
    }
}
