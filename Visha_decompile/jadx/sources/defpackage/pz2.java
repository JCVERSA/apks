package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import android.util.Log;
import com.transsion.dbdata.beans.media.MediaItem;
import java.util.ArrayList;

public abstract class pz2 {
    public static final Object a = new Object();
    public static final String[] b = {".srt", ".ass", ".scc", ".stl"};
    public static final String[] c = {"_id", "title", "_display_name", "mime_type", "datetaken", "date_added", "date_modified", "_data", "bucket_id", "bucket_display_name", "_size"};
    public static final String[] d = {"_id", "title", "_display_name", "mime_type", "datetaken", "date_added", "date_modified", "_data", "bucket_id", "bucket_display_name", "_size"};

    public static MediaItem a(Cursor cursor, Uri uri, boolean z) {
        Uri uriWithAppendedPath;
        int i = cursor.getInt(0);
        String string = cursor.getString(1);
        String string2 = cursor.getString(7);
        String string3 = cursor.getString(2);
        String string4 = cursor.getString(3);
        long j = cursor.getLong(4);
        long j2 = cursor.getLong(5);
        long j3 = cursor.getLong(6);
        int i2 = cursor.getInt(8);
        try {
            uriWithAppendedPath = Uri.withAppendedPath(uri, Integer.toString(i));
        } catch (Exception e) {
            e.printStackTrace();
            uriWithAppendedPath = null;
        }
        Uri uri2 = uriWithAppendedPath;
        String string5 = cursor.getString(9);
        long j4 = cursor.getLong(10);
        if (string5 == null || string5.length() <= 0) {
            string5 = Build.MODEL;
        }
        MediaItem fromInternal = new MediaItem(i, i2, string, string3, string4, string5, string2, j, j2, j3, "", 0, j4, uri2).setFromInternal(z);
        fromInternal.setRelativePath(ge6.l(string2, string3));
        return fromInternal;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x007d A[Catch: all -> 0x004d, TryCatch #3 {all -> 0x004d, blocks: (B:9:0x0049, B:12:0x004f, B:17:0x005b, B:18:0x005e, B:24:0x0065, B:33:0x0079, B:36:0x007d, B:37:0x0080), top: B:41:0x0008 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r6v2 */
    public static MediaItem b(Context context, String str, boolean z) {
        Cursor cursorQuery;
        ContentResolver contentResolver = context.getContentResolver();
        synchronized (a) {
            ?? r6 = 0;
            try {
                try {
                    try {
                        String[] strArr = {"%" + str + "%"};
                        Uri uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                        cursorQuery = contentResolver.query(uri, c, "_data LIKE?", strArr, "date_modified DESC");
                        try {
                            Log.e("VideoDBHelper", "queryDownloadedImage:" + cursorQuery);
                            if (cursorQuery == null) {
                                if (cursorQuery != null) {
                                    cursorQuery.close();
                                }
                                return null;
                            }
                            if (cursorQuery.moveToFirst()) {
                                MediaItem mediaItemA = a(cursorQuery, uri, z);
                                cursorQuery.close();
                                return mediaItemA;
                            }
                        } catch (Exception e) {
                            e = e;
                            Log.i("VideoDBHelper", e.toString());
                            if (cursorQuery != null) {
                            }
                            return null;
                        }
                    } catch (Throwable th) {
                        th = th;
                        r6 = contentResolver;
                        if (r6 != 0) {
                            r6.close();
                        }
                        throw th;
                    }
                } catch (Exception e2) {
                    e = e2;
                    cursorQuery = null;
                } catch (Throwable th2) {
                    th = th2;
                    if (r6 != 0) {
                        r6.close();
                    }
                    throw th;
                }
                cursorQuery.close();
                return null;
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public static ArrayList c(Context context, String str, boolean z) {
        ContentResolver contentResolver = context.getContentResolver();
        ArrayList arrayList = new ArrayList();
        synchronized (a) {
            Cursor cursorQuery = null;
            try {
                try {
                    try {
                        String[] strArr = {"%" + str + "%"};
                        Uri uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                        cursorQuery = contentResolver.query(uri, c, "relative_path LIKE?", strArr, "date_modified DESC");
                        Log.e("VideoDBHelper", "queryDownloadedImage:" + cursorQuery);
                        if (cursorQuery == null) {
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            return arrayList;
                        }
                        while (cursorQuery.moveToNext()) {
                            if (av3.x(cursorQuery.getString(7))) {
                                MediaItem mediaItemA = a(cursorQuery, uri, z);
                                mediaItemA.type = MediaItem.MediaType.IMAGE;
                                arrayList.add(mediaItemA);
                            }
                        }
                    } catch (Exception e) {
                        Log.i("VideoDBHelper", e.toString());
                        if (cursorQuery != null) {
                        }
                        return arrayList;
                    }
                    cursorQuery.close();
                    return arrayList;
                } catch (Throwable th) {
                    throw th;
                }
            } catch (Throwable th2) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th2;
            }
        }
    }
}
