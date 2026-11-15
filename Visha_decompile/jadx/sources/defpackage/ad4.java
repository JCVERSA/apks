package defpackage;

import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Log;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.yalantis.gallery.dbhelper.entity.LocalMedia;
import com.yalantis.gallery.dbhelper.entity.LocalMediaFolder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

public abstract class ad4 {
    public static final String a = "ad4";
    public static final Uri b = MediaStore.Files.getContentUri("external");
    public static final String[] c = {"_id", "_data", "mime_type", "width", "height", "duration", "_size", "bucket_display_name", "_display_name", "bucket_id", "date_added", "orientation"};
    public static final String[] d = {"_id", "_data", "mime_type", "width", "height", "duration", "_size", "bucket_display_name", "_display_name", "bucket_id", "date_added", "orientation", "COUNT(*) AS count"};

    public static String a(Cursor cursor) {
        return cursor.getString(cursor.getColumnIndexOrThrow("mime_type"));
    }

    public static String b(Cursor cursor) {
        return d(cursor.getLong(cursor.getColumnIndexOrThrow("_id")), cursor.getString(cursor.getColumnIndexOrThrow("mime_type")));
    }

    public static String c(long j) {
        StringBuilder sb = new StringBuilder();
        sb.append(SheetDialogParamsConstant.MEDIA_TYPE);
        sb.append("=?");
        if (j != -1) {
            sb.append(" AND ");
            sb.append("bucket_id");
            sb.append("=?");
        }
        return sb.toString();
    }

    public static String d(long j, String str) {
        Uri contentUri;
        if (j18.e(str)) {
            contentUri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
        } else if (j18.f(str)) {
            contentUri = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
        } else {
            contentUri = j18.b(str) ? MediaStore.Audio.Media.EXTERNAL_CONTENT_URI : MediaStore.Files.getContentUri("external");
        }
        return ContentUris.withAppendedId(contentUri, j).toString();
    }

    public static String e() {
        return "media_type=? AND (mime_type!='image/gif')";
    }

    public static String[] f() {
        return new String[]{String.valueOf(1)};
    }

    public static String[] g(int i, long j) {
        return j == -1 ? new String[]{String.valueOf(i)} : new String[]{String.valueOf(i), nnb.c(Long.valueOf(j))};
    }

    public static String h() {
        return "date_modified DESC";
    }

    public static LocalMedia i(Cursor cursor, boolean z) {
        int i;
        int i2;
        String[] strArr = c;
        int columnIndexOrThrow = cursor.getColumnIndexOrThrow(strArr[0]);
        int columnIndexOrThrow2 = cursor.getColumnIndexOrThrow(strArr[1]);
        int columnIndexOrThrow3 = cursor.getColumnIndexOrThrow(strArr[2]);
        int columnIndexOrThrow4 = cursor.getColumnIndexOrThrow(strArr[3]);
        int columnIndexOrThrow5 = cursor.getColumnIndexOrThrow(strArr[4]);
        int columnIndexOrThrow6 = cursor.getColumnIndexOrThrow(strArr[5]);
        int columnIndexOrThrow7 = cursor.getColumnIndexOrThrow(strArr[6]);
        int columnIndexOrThrow8 = cursor.getColumnIndexOrThrow(strArr[7]);
        int columnIndexOrThrow9 = cursor.getColumnIndexOrThrow(strArr[8]);
        int columnIndexOrThrow10 = cursor.getColumnIndexOrThrow(strArr[9]);
        int columnIndexOrThrow11 = cursor.getColumnIndexOrThrow(strArr[10]);
        int columnIndexOrThrow12 = cursor.getColumnIndexOrThrow(strArr[11]);
        long j = cursor.getLong(columnIndexOrThrow);
        String string = cursor.getString(columnIndexOrThrow3);
        String string2 = cursor.getString(columnIndexOrThrow2);
        String strD = d(j, string);
        if (TextUtils.isEmpty(string)) {
            string = j18.h();
        }
        if (j18.e(string)) {
            if (!TextUtils.isEmpty(string2) && !i18.b(string2)) {
                return null;
            }
        } else if (!i18.a(string2)) {
            return null;
        }
        if (j18.d(string) || string.endsWith("image/*") || string.startsWith(j18.i()) || j18.c(string)) {
            return null;
        }
        int i3 = cursor.getInt(columnIndexOrThrow4);
        int i4 = cursor.getInt(columnIndexOrThrow5);
        int i5 = cursor.getInt(columnIndexOrThrow12);
        if (i5 == 90 || i5 == 270) {
            i = cursor.getInt(columnIndexOrThrow5);
            i2 = cursor.getInt(columnIndexOrThrow4);
        } else {
            i2 = i4;
            i = i3;
        }
        long j2 = cursor.getLong(columnIndexOrThrow6);
        long j3 = cursor.getLong(columnIndexOrThrow7);
        String string3 = cursor.getString(columnIndexOrThrow8);
        String string4 = cursor.getString(columnIndexOrThrow9);
        long j4 = cursor.getLong(columnIndexOrThrow10);
        long j5 = cursor.getLong(columnIndexOrThrow11);
        if (TextUtils.isEmpty(string4)) {
            string4 = j18.a(string2);
        }
        LocalMedia localMediaObtain = z ? LocalMedia.obtain() : LocalMedia.create();
        localMediaObtain.setId(j);
        localMediaObtain.setBucketId(j4);
        localMediaObtain.setPath(strD);
        localMediaObtain.setRealPath(string2);
        localMediaObtain.setFileName(string4);
        localMediaObtain.setParentFolderName(string3);
        localMediaObtain.setDuration(j2);
        localMediaObtain.setMimeType(string);
        localMediaObtain.setWidth(i);
        localMediaObtain.setHeight(i2);
        localMediaObtain.setSize(j3);
        localMediaObtain.setDateAddedTime(j5);
        return localMediaObtain;
    }

    public static List j(Context context) {
        ArrayList<LocalMediaFolder> arrayList = new ArrayList();
        Cursor cursorQuery = context.getContentResolver().query(b, c, e(), f(), h());
        if (cursorQuery != null) {
            try {
                try {
                    if (cursorQuery.getCount() > 0) {
                        HashMap map = new HashMap();
                        HashSet hashSet = new HashSet();
                        while (cursorQuery.moveToNext()) {
                            LocalMedia localMediaI = i(cursorQuery, true);
                            if (localMediaI != null) {
                                localMediaI.recycle();
                                long j = cursorQuery.getLong(cursorQuery.getColumnIndexOrThrow("bucket_id"));
                                Long l = (Long) map.get(Long.valueOf(j));
                                map.put(Long.valueOf(j), l == null ? 1L : Long.valueOf(l.longValue() + 1));
                                if (!hashSet.contains(Long.valueOf(j))) {
                                    LocalMediaFolder localMediaFolder = new LocalMediaFolder();
                                    localMediaFolder.setBucketId(j);
                                    String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("bucket_display_name"));
                                    String string2 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("mime_type"));
                                    if (map.containsKey(Long.valueOf(j))) {
                                        Long l2 = (Long) map.get(Long.valueOf(j));
                                        l2.longValue();
                                        long j2 = cursorQuery.getLong(cursorQuery.getColumnIndexOrThrow("_id"));
                                        localMediaFolder.setFolderName(string);
                                        localMediaFolder.setFolderTotalNum(nnb.a(l2));
                                        localMediaFolder.setFirstImagePath(d(j2, string2));
                                        localMediaFolder.setFirstMimeType(string2);
                                        arrayList.add(localMediaFolder);
                                        hashSet.add(Long.valueOf(j));
                                    }
                                }
                            }
                        }
                        int i = 0;
                        for (LocalMediaFolder localMediaFolder2 : arrayList) {
                            int iA = nnb.a(map.get(Long.valueOf(localMediaFolder2.getBucketId())));
                            localMediaFolder2.setFolderTotalNum(iA);
                            i += iA;
                        }
                        Collections.reverse(arrayList);
                        LocalMediaFolder localMediaFolder3 = new LocalMediaFolder();
                        if (cursorQuery.moveToFirst()) {
                            localMediaFolder3.setFirstImagePath(b(cursorQuery));
                            localMediaFolder3.setFirstMimeType(a(cursorQuery));
                        }
                        localMediaFolder3.setFolderTotalNum(i);
                        localMediaFolder3.setBucketId(-1L);
                        localMediaFolder3.setFolderName(TtmlNode.COMBINE_ALL);
                        arrayList.add(0, localMediaFolder3);
                    }
                    if (cursorQuery != null && !cursorQuery.isClosed()) {
                        cursorQuery.close();
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    Log.i(a, "loadAllMedia Data Error: " + e.getMessage());
                    if (!cursorQuery.isClosed()) {
                    }
                    return arrayList;
                }
            } catch (Throwable th) {
                if (!cursorQuery.isClosed()) {
                    cursorQuery.close();
                }
                throw th;
            }
        } else if (cursorQuery != null) {
            cursorQuery.close();
        }
        return arrayList;
    }

    public static ne6 k(Context context, long j, boolean z) {
        Cursor cursorQuery;
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                boolean z2 = true;
                if (Build.VERSION.SDK_INT >= 30) {
                    Bundle bundle = new Bundle();
                    bundle.putString("android:query-arg-sql-selection", c(j));
                    bundle.putStringArray("android:query-arg-sql-selection-args", g(1, j));
                    if (z) {
                        bundle.putString("android:query-arg-sql-limit", nnb.c(60));
                    }
                    cursorQuery = context.getContentResolver().query(b, c, bundle, null);
                } else {
                    cursorQuery = context.getContentResolver().query(b, c, c(j), g(1, j), z ? "date_modified ASC limit 60" : null);
                }
                cursor = cursorQuery;
                if (cursor == null) {
                    if (cursor != null && !cursor.isClosed()) {
                        cursor.close();
                    }
                    return new ne6();
                }
                if (cursor.getCount() > 0) {
                    cursor.moveToFirst();
                    do {
                        LocalMedia localMediaI = i(cursor, false);
                        if (localMediaI != null) {
                            arrayList.add(localMediaI);
                        }
                    } while (cursor.moveToNext());
                }
                if (cursor.getCount() <= 0) {
                    z2 = false;
                }
                ne6 ne6Var = new ne6(z2, arrayList);
                if (!cursor.isClosed()) {
                    cursor.close();
                }
                return ne6Var;
            } catch (Exception e) {
                e.printStackTrace();
                Log.i(a, "loadMedia Page Data Error: " + e.getMessage());
                ne6 ne6Var2 = new ne6();
                if (cursor != null && !cursor.isClosed()) {
                    cursor.close();
                }
                return ne6Var2;
            }
        } catch (Throwable th) {
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
            throw th;
        }
    }
}
