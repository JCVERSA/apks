package defpackage;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.android.arouter.utils.Consts;
import com.transsion.audiotagger.audio.AudioFile;
import com.transsion.audiotagger.audio.AudioFileIO;
import com.transsion.audiotagger.tag.FieldKey;
import com.transsion.audiotagger.tag.Tag;
import java.io.File;
import java.util.List;

public final class zl6 {
    public final Context a;

    public zl6(Context context) {
        this.a = context;
    }

    public static String c(AudioFile audioFile, FieldKey fieldKey) {
        String first;
        return (audioFile.getTag() == null || (first = audioFile.getTag().getFirst(fieldKey)) == null) ? "" : first;
    }

    public static boolean e(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        return lowerCase.endsWith(".mp3") || lowerCase.endsWith(".m4a") || lowerCase.endsWith(".flac") || lowerCase.endsWith(".wav") || lowerCase.endsWith(".aac") || lowerCase.endsWith(".ogg") || lowerCase.endsWith(".wma") || lowerCase.endsWith(".ape");
    }

    public static void g(Context context, String str, long j, String str2, String str3, String str4) {
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || j <= 0 || !e(str)) {
            return;
        }
        k(context, j, str2, str3, str4);
        i(str, str2, str3, str4);
    }

    public static void i(String str, String str2, String str3, String str4) {
        try {
            File file = new File(str);
            if (file.exists() && file.canWrite()) {
                long jLastModified = file.lastModified();
                AudioFile audioFile = AudioFileIO.read(file);
                FieldKey fieldKey = FieldKey.TITLE;
                boolean zD = ul.d(audioFile, fieldKey, str2, c(audioFile, fieldKey));
                if (!TextUtils.isEmpty(str3)) {
                    FieldKey fieldKey2 = FieldKey.ARTIST;
                    zD |= ul.d(audioFile, fieldKey2, str3, c(audioFile, fieldKey2));
                }
                if (!TextUtils.isEmpty(str4)) {
                    FieldKey fieldKey3 = FieldKey.ALBUM;
                    zD |= ul.d(audioFile, fieldKey3, str4, c(audioFile, fieldKey3));
                }
                if (zD) {
                    AudioFileIO.write(audioFile);
                    file.setLastModified(jLastModified);
                    Log.d("MediaStoreHelper", "Updated audio file metadata: " + str + " -> " + str2);
                    return;
                }
                return;
            }
            Log.w("MediaStoreHelper", "Cannot update audio metadata: file not writable - " + str);
        } catch (Exception e) {
            Log.e("MediaStoreHelper", "Failed to update audio metadata: " + str, e);
        }
    }

    public static boolean k(Context context, long j, String str, String str2, String str3) {
        try {
            ContentResolver contentResolver = context.getContentResolver();
            Uri uriWithAppendedId = ContentUris.withAppendedId(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, j);
            ContentValues contentValues = new ContentValues();
            contentValues.put("title", str);
            if (!TextUtils.isEmpty(str2)) {
                contentValues.put("artist", str2);
            }
            if (!TextUtils.isEmpty(str3)) {
                contentValues.put("album", str3);
            }
            contentValues.put("is_pending", (Integer) 1);
            int iUpdate = contentResolver.update(uriWithAppendedId, contentValues, null, null);
            if (iUpdate > 0) {
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("is_pending", (Integer) 0);
                contentResolver.update(uriWithAppendedId, contentValues2, null, null);
            }
            return iUpdate > 0;
        } catch (Exception e) {
            Log.e("MediaStoreHelper", "Error updating MediaStore audio fields for mediaId=" + j, e);
            return false;
        }
    }

    public void a(List list) {
        int i;
        Uri contentUri = MediaStore.Files.getContentUri("external");
        StringBuilder sb = new StringBuilder();
        sb.append("?");
        int size = list.size();
        String[] strArr = new String[size];
        int i2 = 0;
        while (true) {
            i = size - 1;
            if (i2 >= i) {
                break;
            }
            sb.append(",?");
            strArr[i2] = (String) list.get(i2);
            i2++;
        }
        if (size > 2) {
            strArr[i] = (String) list.get(i);
        }
        String str = "_data IN(" + sb.toString() + ")";
        if (this.a == null || list.isEmpty()) {
            return;
        }
        ContentResolver contentResolver = this.a.getContentResolver();
        String[] strArr2 = new String[list.size()];
        list.toArray(strArr2);
        if (contentResolver != null) {
            try {
                contentResolver.delete(contentUri, str, strArr2);
                if (Build.VERSION.SDK_INT <= 29) {
                    MediaScannerConnection.scanFile(this.a.getApplicationContext(), strArr, null, null);
                } else if (size == 1 && strArr[0] == null) {
                    File file = new File((String) list.get(0));
                    if (file.getParentFile() != null) {
                        strArr[0] = file.getParentFile().getAbsolutePath();
                        MediaScannerConnection.scanFile(this.a.getApplicationContext(), strArr, null, null);
                    }
                }
            } catch (Exception e) {
                Log.e("MediaStoreHelper", "Error, database or disk is full!!!" + e);
            }
        }
    }

    public long b(String str) {
        Cursor cursorQuery;
        long j = -1;
        if (this.a != null && !TextUtils.isEmpty(str) && (cursorQuery = this.a.getContentResolver().query(MediaStore.Files.getContentUri("external"), new String[]{"_id"}, "_data=?", new String[]{str}, null)) != null) {
            j = cursorQuery.moveToFirst() ? cursorQuery.getLong(cursorQuery.getColumnIndex("_id")) : -1L;
            cursorQuery.close();
        }
        return j;
    }

    public final boolean d(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        return lowerCase.endsWith(".mp3") || lowerCase.endsWith(".m4a") || lowerCase.endsWith(".flac") || lowerCase.endsWith(".wav") || lowerCase.endsWith(".aac") || lowerCase.endsWith(".ogg") || lowerCase.endsWith(".wma") || lowerCase.endsWith(".ape");
    }

    public final void f(String str) {
        if (this.a == null || TextUtils.isEmpty(str)) {
            return;
        }
        File file = new File(str);
        MediaScannerConnection.scanFile(this.a.getApplicationContext(), new String[]{str}, null, null);
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            int length = fileArrListFiles.length;
            String[] strArr = new String[length];
            for (int i = 0; i < length; i++) {
                strArr[i] = str + fileArrListFiles[i].getName();
            }
            MediaScannerConnection.scanFile(this.a.getApplicationContext(), strArr, null, null);
        }
    }

    public final void h(String str, String str2) {
        try {
            File file = new File(str);
            if (file.exists() && file.canWrite()) {
                AudioFile audioFile = AudioFileIO.read(file);
                Tag tag = audioFile.getTag();
                if (tag != null) {
                    FieldKey fieldKey = FieldKey.TITLE;
                    if (str2.equals(tag.getFirst(fieldKey))) {
                        return;
                    }
                    tag.setField(fieldKey, str2);
                    AudioFileIO.write(audioFile);
                    Log.d("MediaStoreHelper", "Updated audio metadata TITLE: " + str + " -> " + str2);
                    return;
                }
                return;
            }
            Log.w("MediaStoreHelper", "Cannot update audio metadata: file not writable - " + str);
        } catch (Exception e) {
            Log.e("MediaStoreHelper", "Failed to update audio metadata: " + str, e);
        }
    }

    public void j(String str, String str2) {
        Log.d("MediaStoreHelper", "updateInMediaStore,newPath = " + str + ",oldPath = " + str2);
        if (this.a == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str)) {
            return;
        }
        ContentResolver contentResolver = this.a.getContentResolver();
        boolean zIsDirectory = new File(str).isDirectory();
        Uri contentUri = MediaStore.Files.getContentUri("external");
        long jB = b(str2);
        if (jB != -1) {
            contentUri = ContentUris.withAppendedId(contentUri, jB);
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("_data", str);
        if (!zIsDirectory) {
            int iLastIndexOf = str.lastIndexOf("/") + 1;
            contentValues.put("_display_name", str.substring(iLastIndexOf));
            boolean zContains = str.contains(Consts.DOT);
            int iLastIndexOf2 = zContains ? str.lastIndexOf(Consts.DOT) : 0;
            if (zContains) {
                contentValues.put("title", str.substring(iLastIndexOf, iLastIndexOf2));
            }
        }
        String[] strArr = {str2};
        try {
            Log.d("MediaStoreHelper", "updateInMediaStore,update.");
            contentResolver.update(contentUri, contentValues, "_data=?", strArr);
            if (!zIsDirectory && d(str)) {
                int iLastIndexOf3 = str.lastIndexOf("/") + 1;
                int iLastIndexOf4 = str.contains(Consts.DOT) ? str.lastIndexOf(Consts.DOT) : str.length();
                if (iLastIndexOf4 > iLastIndexOf3) {
                    h(str, str.substring(iLastIndexOf3, iLastIndexOf4));
                }
            }
            f(str);
        } catch (IllegalArgumentException e) {
            Log.e("MediaStoreHelper", "updateInMediaStore", e);
            f(str2);
            f(str);
        } catch (Exception e2) {
            Log.e("MediaStoreHelper", "Error, Exception !!!", e2);
        }
    }
}
