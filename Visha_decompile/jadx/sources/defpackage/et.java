package defpackage;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.audiotagger.audio.AudioFile;
import com.transsion.audiotagger.audio.AudioFileIO;
import com.transsion.audiotagger.tag.FieldKey;
import com.transsion.audiotagger.tag.Tag;
import com.transsion.utils.BaseConstant;
import java.io.File;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public abstract class et {
    public static final ExecutorService a = Executors.newSingleThreadExecutor();
    public static final Set b = new HashSet(Arrays.asList("mp3", "m4a", "m4b", "m4p", "aac", "ogg", "oga", "flac", "opus", "wv", "dsf", "dff"));

    public static void b(final Context context) {
        if (context == null) {
            return;
        }
        if (f(context)) {
            Log.d("AudioMetadataFixHelper", "Audio metadata fix already completed, skipping");
        } else {
            a.execute(new Runnable() {
                @Override
                public final void run() {
                    et.h(context);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:48:0x0184 A[PHI: r6 r7 r12 r13
      0x0184: PHI (r6v2 int) = (r6v4 int), (r6v6 int) binds: [B:50:0x018d, B:47:0x0182] A[DONT_GENERATE, DONT_INLINE]
      0x0184: PHI (r7v2 int) = (r7v4 int), (r7v6 int) binds: [B:50:0x018d, B:47:0x0182] A[DONT_GENERATE, DONT_INLINE]
      0x0184: PHI (r12v2 android.database.Cursor) = (r12v3 android.database.Cursor), (r12v4 android.database.Cursor) binds: [B:50:0x018d, B:47:0x0182] A[DONT_GENERATE, DONT_INLINE]
      0x0184: PHI (r13v1 int) = (r13v3 int), (r13v4 int) binds: [B:50:0x018d, B:47:0x0182] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:68:0x01bb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:? A[RETURN, SYNTHETIC] */
    public static void c(Context context) {
        int i;
        int i2;
        int i3;
        int i4;
        Cursor cursorQuery = null;
        int i5 = 0;
        try {
            try {
                cursorQuery = context.getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, new String[]{"_id", "_data", "_display_name", "title"}, null, null, null);
                if (cursorQuery == null || !cursorQuery.moveToFirst()) {
                    i = 0;
                    i2 = 0;
                } else {
                    int columnIndex = cursorQuery.getColumnIndex("_id");
                    int columnIndex2 = cursorQuery.getColumnIndex("_data");
                    int columnIndex3 = cursorQuery.getColumnIndex("_display_name");
                    int columnIndex4 = cursorQuery.getColumnIndex("title");
                    i = 0;
                    i2 = 0;
                    while (cursorQuery.moveToNext()) {
                        try {
                            i2++;
                            long j = cursorQuery.getLong(columnIndex);
                            String string = cursorQuery.getString(columnIndex2);
                            String string2 = cursorQuery.getString(columnIndex3);
                            String string3 = cursorQuery.getString(columnIndex4);
                            if (TextUtils.isEmpty(string) || !new File(string).exists()) {
                                i3 = columnIndex;
                                i4 = columnIndex2;
                            } else {
                                String strE = e(string2);
                                if (TextUtils.isEmpty(strE) || TextUtils.isEmpty(string3) || strE.equals(string3)) {
                                    i3 = columnIndex;
                                    i4 = columnIndex2;
                                } else {
                                    i3 = columnIndex;
                                    StringBuilder sb = new StringBuilder();
                                    i4 = columnIndex2;
                                    sb.append("Found mismatch: displayName=");
                                    sb.append(string2);
                                    sb.append(", title=");
                                    sb.append(string3);
                                    sb.append(", path=");
                                    sb.append(string);
                                    Log.d("AudioMetadataFixHelper", sb.toString());
                                    Log.d("AudioMetadataFixHelper", "Attempting to fix MediaStore entry for: " + string2 + " (mediaId=" + j + ")");
                                    if (k(context, j, strE)) {
                                        int i6 = i + 1;
                                        try {
                                            Log.d("AudioMetadataFixHelper", "Fixed MediaStore entry: " + string2);
                                            boolean zG = g(string);
                                            Log.d("AudioMetadataFixHelper", "Format check: " + string + " isSupported=" + zG);
                                            if (zG) {
                                                Log.d("AudioMetadataFixHelper", "Attempting to fix ID3 tag for: " + string);
                                                if (j(string, strE)) {
                                                    i5++;
                                                    Log.d("AudioMetadataFixHelper", "Fixed audio file ID3 tag: " + string);
                                                } else {
                                                    Log.d("AudioMetadataFixHelper", "ID3 tag already correct or update not needed for: " + string);
                                                }
                                            }
                                            i = i6;
                                        } catch (Exception e) {
                                            e = e;
                                            i = i6;
                                            Log.e("AudioMetadataFixHelper", "Error fixing audio metadata", e);
                                            if (cursorQuery != null) {
                                                cursorQuery.close();
                                            }
                                            Log.i("AudioMetadataFixHelper", "Audio metadata fix summary: fixed " + i5 + " ID3 tags, " + i + " MediaStore entries, total scanned " + i2 + " files");
                                            if (i > 0) {
                                                try {
                                                    context.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.parse(BaseConstant.k)));
                                                    Log.i("AudioMetadataFixHelper", "Triggered MediaStore scan to update app database");
                                                } catch (Exception e2) {
                                                    Log.e("AudioMetadataFixHelper", "Error triggering MediaStore scan", e2);
                                                    return;
                                                }
                                            }
                                        }
                                    } else {
                                        Log.w("AudioMetadataFixHelper", "Failed to fix MediaStore entry for: " + string2);
                                    }
                                }
                                if (i2 % 100 == 0) {
                                    Thread.sleep(100L);
                                }
                            }
                            columnIndex = i3;
                            columnIndex2 = i4;
                        } catch (Exception e3) {
                            e = e3;
                        }
                    }
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } catch (Exception e4) {
                e = e4;
                i = 0;
                i2 = 0;
            }
            Log.i("AudioMetadataFixHelper", "Audio metadata fix summary: fixed " + i5 + " ID3 tags, " + i + " MediaStore entries, total scanned " + i2 + " files");
            if (i > 0) {
                context.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.parse(BaseConstant.k)));
                Log.i("AudioMetadataFixHelper", "Triggered MediaStore scan to update app database");
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public static String d(String str) {
        int iLastIndexOf;
        return (!TextUtils.isEmpty(str) && (iLastIndexOf = str.lastIndexOf(46)) > 0 && iLastIndexOf < str.length() + (-1)) ? str.substring(iLastIndexOf + 1) : "";
    }

    public static String e(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int iLastIndexOf = str.lastIndexOf(46);
        return iLastIndexOf > 0 ? str.substring(0, iLastIndexOf) : str;
    }

    public static boolean f(Context context) {
        return context.getSharedPreferences("audio_metadata_fix", 0).getBoolean("fix_completed_v1", false);
    }

    public static boolean g(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return b.contains(d(str).toLowerCase(Locale.ROOT));
    }

    public static void h(Context context) {
        try {
            Log.i("AudioMetadataFixHelper", "Starting audio metadata fix...");
            c(context);
            i(context);
            Log.i("AudioMetadataFixHelper", "Audio metadata fix completed");
        } catch (Exception e) {
            Log.e("AudioMetadataFixHelper", "Error during audio metadata fix", e);
        }
    }

    public static void i(Context context) {
        context.getSharedPreferences("audio_metadata_fix", 0).edit().putBoolean("fix_completed_v1", true).apply();
    }

    public static boolean j(String str, String str2) {
        try {
            File file = new File(str);
            if (file.exists() && file.canWrite()) {
                long jLastModified = file.lastModified();
                AudioFile audioFile = AudioFileIO.read(file);
                Tag tag = audioFile.getTag();
                if (tag != null) {
                    FieldKey fieldKey = FieldKey.TITLE;
                    String first = tag.getFirst(fieldKey);
                    Log.d("AudioMetadataFixHelper", "Updating title from '" + first + "' to '" + str2 + "'");
                    boolean zD = ul.d(audioFile, fieldKey, str2, first);
                    StringBuilder sb = new StringBuilder();
                    sb.append("AudioAttrUtils.updateAudioFileField returned: ");
                    sb.append(zD);
                    Log.d("AudioMetadataFixHelper", sb.toString());
                    if (zD) {
                        AudioFileIO.write(audioFile);
                        if (file.setLastModified(jLastModified)) {
                            return true;
                        }
                        Log.w("AudioMetadataFixHelper", "Failed to restore original modification time for: " + str);
                        return true;
                    }
                    Log.w("AudioMetadataFixHelper", "AudioAttrUtils.updateAudioFileField returned false, no update needed or failed");
                } else {
                    Log.w("AudioMetadataFixHelper", "No tag found in audio file: " + str);
                }
                return false;
            }
            Log.w("AudioMetadataFixHelper", "File does not exist or not writable: " + str);
            return false;
        } catch (Exception e) {
            Log.e("AudioMetadataFixHelper", "Error updating audio file title: " + str, e);
        }
    }

    public static boolean k(Context context, long j, String str) {
        try {
            ContentResolver contentResolver = context.getContentResolver();
            Uri uriWithAppendedId = ContentUris.withAppendedId(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, j);
            ContentValues contentValues = new ContentValues();
            contentValues.put("title", str);
            contentValues.put("is_pending", (Integer) 1);
            Log.d("AudioMetadataFixHelper", "Updating MediaStore entry: uri=" + uriWithAppendedId + ", newTitle=" + str);
            int iUpdate = contentResolver.update(uriWithAppendedId, contentValues, null, null);
            if (iUpdate > 0) {
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("is_pending", (Integer) 0);
                contentResolver.update(uriWithAppendedId, contentValues2, null, null);
            }
            Log.d("AudioMetadataFixHelper", "MediaStore update result: rowsUpdated=" + iUpdate);
            return iUpdate > 0;
        } catch (Exception e) {
            Log.e("AudioMetadataFixHelper", "Error updating MediaStore title for media ID: " + j, e);
            return false;
        }
    }
}
