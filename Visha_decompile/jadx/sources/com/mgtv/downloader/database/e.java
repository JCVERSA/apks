package com.mgtv.downloader.database;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import androidx.annotation.NonNull;
import org.greenrobot.greendao.database.Database;

public final class e extends a.AbstractC0181a {
    public e(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory) {
        super(context, str, cursorFactory);
    }

    public void a(SQLiteDatabase sQLiteDatabase, int i) {
        if (i > 2) {
            return;
        }
        String strConcat = DownloadInfoDao.TABLENAME.concat("_TEMP");
        a(sQLiteDatabase, strConcat);
        Cursor cursorQuery = sQLiteDatabase.query(DownloadInfoDao.TABLENAME, new String[]{"_id", "VIDEO_ID", "IMAGE", "NAME", "VIDEO_URL", "FILE_PATH", "COMPLETE_SIZE", "TOTAL_SIZE", "STATUS", "OPERATE_TIME", "SPEED", "IDC", "NID", "DOMAINS", "ROOT_ID", "COLLECTION_ID", "COLLECTION_NAME", "COLLECTION_IMAGE", "CLIP_ID", "PL_ID", "DATA_TYPE", "VIDEO_INDEX", "DEFINITION", "FREEURL", "SERIESID", "FILE_SIZE", "PLAY_PRIORITY", "FILE_MD5", "NNAME", "NTITLE", "FNAME", "NDESC", "MEDIA_TYPE", "FILE_ID", "DURATION", "WATCH_TIME", "FILE_MD5_CAL", "SDK_VERSION", "CONTENTID", "PRIORITY", "LIMITSPEED", "AT", "EXTRA", "CXID", "CHANNEL"}, null, null, null, null, null);
        Log.e("greenDAO", ">>>>>>>>>> onCreateDownloadInfo() from cursor " + cursorQuery.toString());
        if (cursorQuery.moveToFirst()) {
            do {
                sQLiteDatabase.insert(strConcat, "", a(cursorQuery.getInt(cursorQuery.getColumnIndex("_id")), cursorQuery.getString(cursorQuery.getColumnIndex("VIDEO_ID")), cursorQuery.getString(cursorQuery.getColumnIndex("IMAGE")), cursorQuery.getString(cursorQuery.getColumnIndex("NAME")), cursorQuery.getString(cursorQuery.getColumnIndex("VIDEO_URL")), cursorQuery.getString(cursorQuery.getColumnIndex("FILE_PATH")), Long.valueOf(cursorQuery.getLong(cursorQuery.getColumnIndex("COMPLETE_SIZE"))), Long.valueOf(cursorQuery.getLong(cursorQuery.getColumnIndex("TOTAL_SIZE"))), Integer.valueOf(cursorQuery.getInt(cursorQuery.getColumnIndex("STATUS"))), cursorQuery.getInt(cursorQuery.getColumnIndex("OPERATE_TIME")), Integer.valueOf(cursorQuery.getInt(cursorQuery.getColumnIndex("SPEED"))), cursorQuery.getString(cursorQuery.getColumnIndex("IDC")), cursorQuery.getString(cursorQuery.getColumnIndex("NID")), cursorQuery.getString(cursorQuery.getColumnIndex("DOMAINS")), Integer.valueOf(cursorQuery.getInt(cursorQuery.getColumnIndex("ROOT_ID"))), Integer.valueOf(cursorQuery.getInt(cursorQuery.getColumnIndex("COLLECTION_ID"))), cursorQuery.getString(cursorQuery.getColumnIndex("COLLECTION_NAME")), cursorQuery.getString(cursorQuery.getColumnIndex("COLLECTION_IMAGE")), cursorQuery.getString(cursorQuery.getColumnIndex("CLIP_ID")), cursorQuery.getString(cursorQuery.getColumnIndex("PL_ID")), Integer.valueOf(cursorQuery.getInt(cursorQuery.getColumnIndex("DATA_TYPE"))), Integer.valueOf(cursorQuery.getInt(cursorQuery.getColumnIndex("VIDEO_INDEX"))), Integer.valueOf(cursorQuery.getInt(cursorQuery.getColumnIndex("DEFINITION"))), cursorQuery.getString(cursorQuery.getColumnIndex("FREEURL")), cursorQuery.getString(cursorQuery.getColumnIndex("SERIESID")), cursorQuery.getString(cursorQuery.getColumnIndex("FILE_SIZE")), cursorQuery.getString(cursorQuery.getColumnIndex("PLAY_PRIORITY")), cursorQuery.getString(cursorQuery.getColumnIndex("FILE_MD5")), cursorQuery.getString(cursorQuery.getColumnIndex("NNAME")), cursorQuery.getString(cursorQuery.getColumnIndex("NTITLE")), cursorQuery.getString(cursorQuery.getColumnIndex("FNAME")), cursorQuery.getString(cursorQuery.getColumnIndex("NDESC")), cursorQuery.getInt(cursorQuery.getColumnIndex("MEDIA_TYPE")), cursorQuery.getString(cursorQuery.getColumnIndex("FILE_ID")), cursorQuery.getInt(cursorQuery.getColumnIndex("DURATION")), cursorQuery.getInt(cursorQuery.getColumnIndex("WATCH_TIME")), cursorQuery.getString(cursorQuery.getColumnIndex("FILE_MD5_CAL")), cursorQuery.getString(cursorQuery.getColumnIndex("SDK_VERSION")), cursorQuery.getString(cursorQuery.getColumnIndex("CONTENTID")), cursorQuery.getString(cursorQuery.getColumnIndex("PRIORITY")), cursorQuery.getString(cursorQuery.getColumnIndex("LIMITSPEED")), cursorQuery.getString(cursorQuery.getColumnIndex("AT")), cursorQuery.getString(cursorQuery.getColumnIndex("EXTRA")), cursorQuery.getString(cursorQuery.getColumnIndex("CXID")), cursorQuery.getString(cursorQuery.getColumnIndex("CHANNEL")), "", "", ""));
            } while (cursorQuery.moveToNext());
        }
        cursorQuery.close();
        DownloadInfoDao.b(wrap(sQLiteDatabase), true);
        sQLiteDatabase.execSQL("ALTER TABLE " + strConcat + " RENAME TO " + DownloadInfoDao.TABLENAME);
    }

    @Override
    public void onCreate(Database database) {
        super.onCreate(database);
        Log.e("greenDAO", ">>>>>>>>>> onCreate() - version : 2");
        com.hunantv.imgo.log.c.a.b.a("greenDAO", ">>>>>>>>>> onCreate() - version : 2");
    }

    @Override
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        super.onUpgrade(sQLiteDatabase, i, i2);
        Log.e("Upgrading", ">>>>>>>>>> Upgrading schema from version " + i + " to " + i2);
        Log.e("greenDAO", ">>>>>>>>>> onUpgrade() from version " + i + " to " + i2);
        com.hunantv.imgo.log.c.a.b.a("greenDAO", ">>>>>>>>>> onUpgrade() from version " + i + " to " + i2);
        a(sQLiteDatabase, i);
    }

    private void a(@NonNull SQLiteDatabase sQLiteDatabase, @NonNull String str) {
        Log.e("greenDAO", ">>>>>>>>>> onCreateDownloadInfo() from tableName " + str);
        sQLiteDatabase.execSQL("CREATE TABLE \"" + str + "\" (\"_id\" INTEGER PRIMARY KEY ,\"VIDEO_ID\" TEXT,\"IMAGE\" TEXT,\"NAME\" TEXT,\"VIDEO_URL\" TEXT,\"FILE_PATH\" TEXT,\"COMPLETE_SIZE\" INTEGER,\"TOTAL_SIZE\" INTEGER,\"STATUS\" INTEGER,\"OPERATE_TIME\" INTEGER,\"SPEED\" INTEGER,\"IDC\" TEXT,\"NID\" TEXT,\"DOMAINS\" TEXT,\"ROOT_ID\" INTEGER,\"COLLECTION_ID\" INTEGER,\"COLLECTION_NAME\" TEXT,\"COLLECTION_IMAGE\" TEXT,\"CLIP_ID\" TEXT,\"PL_ID\" TEXT,\"DATA_TYPE\" INTEGER,\"VIDEO_INDEX\" INTEGER,\"DEFINITION\" INTEGER,\"FREEURL\" TEXT,\"SERIESID\" TEXT,\"FILE_SIZE\" TEXT,\"PLAY_PRIORITY\" TEXT,\"FILE_MD5\" TEXT,\"NNAME\" TEXT,\"NTITLE\" TEXT,\"FNAME\" TEXT,\"NDESC\" TEXT,\"MEDIA_TYPE\" INTEGER,\"FILE_ID\" TEXT,\"DURATION\" INTEGER,\"WATCH_TIME\" INTEGER,\"FILE_MD5_CAL\" TEXT,\"SDK_VERSION\" TEXT,\"CONTENTID\" TEXT,\"PRIORITY\" TEXT,\"LIMITSPEED\" TEXT,\"AT\" TEXT,\"EXTRA\" TEXT,\"CXID\" TEXT,\"CHANNEL\" TEXT,\"FILESOURCETYPE\" TEXT,\"RTYPE\" TEXT,\"OPENID\" TEXT);");
    }

    @NonNull
    private ContentValues a(int i, String str, String str2, String str3, String str4, String str5, Long l, Long l2, Integer num, int i2, Integer num2, String str6, String str7, String str8, Integer num3, Integer num4, String str9, String str10, String str11, String str12, Integer num5, Integer num6, Integer num7, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, String str21, int i3, String str22, int i4, int i5, String str23, String str24, String str25, String str26, String str27, String str28, String str29, String str30, String str31, String str32, String str33, String str34) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", Integer.valueOf(i));
        contentValues.put("VIDEO_ID", str);
        contentValues.put("IMAGE", str2);
        contentValues.put("NAME", str3);
        contentValues.put("VIDEO_URL", str4);
        contentValues.put("FILE_PATH", str5);
        l.longValue();
        contentValues.put("COMPLETE_SIZE", l);
        l2.longValue();
        contentValues.put("TOTAL_SIZE", l2);
        num.intValue();
        contentValues.put("STATUS", num);
        contentValues.put("OPERATE_TIME", Integer.valueOf(i2));
        num2.intValue();
        contentValues.put("SPEED", num2);
        contentValues.put("IDC", str6);
        contentValues.put("NID", str7);
        contentValues.put("DOMAINS", str8);
        num3.intValue();
        contentValues.put("ROOT_ID", num3);
        num4.intValue();
        contentValues.put("COLLECTION_ID", num4);
        contentValues.put("COLLECTION_NAME", str9);
        contentValues.put("COLLECTION_IMAGE", str10);
        contentValues.put("CLIP_ID", str11);
        contentValues.put("PL_ID", str12);
        num5.intValue();
        contentValues.put("DATA_TYPE", num5);
        num6.intValue();
        contentValues.put("VIDEO_INDEX", num6);
        num7.intValue();
        contentValues.put("DEFINITION", num7);
        contentValues.put("FREEURL", str13);
        contentValues.put("SERIESID", str14);
        contentValues.put("FILE_SIZE", str15);
        contentValues.put("PLAY_PRIORITY", str16);
        contentValues.put("FILE_MD5", str17);
        contentValues.put("NNAME", str18);
        contentValues.put("NTITLE", str19);
        contentValues.put("FNAME", str20);
        contentValues.put("NDESC", str21);
        contentValues.put("MEDIA_TYPE", Integer.valueOf(i3));
        contentValues.put("FILE_ID", str22);
        contentValues.put("DURATION", Integer.valueOf(i4));
        contentValues.put("WATCH_TIME", Integer.valueOf(i5));
        contentValues.put("FILE_MD5_CAL", str23);
        contentValues.put("SDK_VERSION", str24);
        contentValues.put("CONTENTID", str25);
        contentValues.put("PRIORITY", str26);
        contentValues.put("LIMITSPEED", str27);
        contentValues.put("AT", str28);
        contentValues.put("EXTRA", str29);
        contentValues.put("CXID", str30);
        contentValues.put("CHANNEL", str31);
        contentValues.put("FILESOURCETYPE", str32);
        contentValues.put("RTYPE", str33);
        contentValues.put("OPENID", str34);
        return contentValues;
    }
}
