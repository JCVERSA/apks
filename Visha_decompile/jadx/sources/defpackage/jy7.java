package defpackage;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.util.Log;
import androidx.documentfile.provider.DocumentFile;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Arrays;

public abstract class jy7 {
    /* JADX WARN: Code duplicated, block: B:25:0x0056  */
    public static String a(Context context, Uri uri, String str, String[] strArr) throws Throwable {
        Cursor cursorQuery;
        Cursor cursor = null;
        try {
            cursorQuery = context.getContentResolver().query(uri, new String[]{"_data"}, str, strArr, null);
            if (cursorQuery != null) {
                try {
                    try {
                        if (cursorQuery.moveToFirst()) {
                            String string = cursorQuery.getString(cursorQuery.getColumnIndex("_data"));
                            cursorQuery.close();
                            return string;
                        }
                    } catch (Exception e) {
                        e = e;
                        Log.e("PathUriUtil", "getDataColumn " + e.getMessage());
                        if (cursorQuery != null) {
                        }
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        } catch (Exception e2) {
            e = e2;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        return null;
    }

    public static String b(Context context, Uri uri) throws Throwable {
        if (uri == null) {
            Log.e("PathUriUtil", "getFilePathByUri null uri");
            return "";
        }
        Log.e("PathUriUtil", "getFilePathByUri " + uri);
        if ("file".equals(uri.getScheme())) {
            return uri.getPath();
        }
        boolean zIsDocumentUri = DocumentFile.isDocumentUri(context, uri);
        Log.e("PathUriUtil", "getFilePathByUri isDocumentUri: " + zIsDocumentUri);
        Uri uri2 = null;
        if (!zIsDocumentUri) {
            if (f(uri)) {
                String strA = a(context, uri, null, null);
                Log.i("PathUriUtil", "getFilePathByUri path:" + strA);
                return strA;
            }
            String strG = g(context.getContentResolver(), uri);
            String path = uri.getPath();
            if (strG != null || path == null || !path.contains("/storage")) {
                return strG;
            }
            String strSubstring = path.substring(path.indexOf("/storage"));
            Log.i("PathUriUtil", "getFilePathByUri substring path:" + strSubstring + ",uriPath:" + path);
            return strSubstring;
        }
        if (d(uri)) {
            String[] strArrSplit = DocumentsContract.getDocumentId(uri).split(StringUtils.PROCESS_POSTFIX_DELIMITER);
            if ("primary".equalsIgnoreCase(strArrSplit[0])) {
                return Environment.getExternalStorageDirectory() + "/" + strArrSplit[1];
            }
        } else {
            if (c(uri)) {
                String documentId = DocumentsContract.getDocumentId(uri);
                Log.i("PathUriUtil", "getFilePathByUri id: " + documentId);
                if (documentId != null && documentId.startsWith("raw:")) {
                    return documentId.replaceFirst("raw:", "");
                }
                if (documentId != null && documentId.startsWith("msf:")) {
                    String[] strArrSplit2 = documentId.split(StringUtils.PROCESS_POSTFIX_DELIMITER);
                    if (strArrSplit2.length > 1) {
                        documentId = strArrSplit2[1];
                    }
                }
                Uri uriWithAppendedId = ContentUris.withAppendedId(MediaStore.Downloads.EXTERNAL_CONTENT_URI, Long.valueOf(documentId).longValue());
                String strA2 = a(context, uriWithAppendedId, null, null);
                Log.i("PathUriUtil", "getFilePathByUri path:" + strA2 + StringUtils.COMMA + uriWithAppendedId);
                return strA2;
            }
            if (e(uri)) {
                String documentId2 = DocumentsContract.getDocumentId(uri);
                Log.i("PathUriUtil", "getFilePathByUri " + documentId2);
                String[] strArrSplit3 = documentId2.split(StringUtils.PROCESS_POSTFIX_DELIMITER);
                String str = strArrSplit3[0];
                if ("image".equals(str)) {
                    uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                } else if ("video".equals(str)) {
                    uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                } else if ("audio".equals(str)) {
                    uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                }
                String strA3 = a(context, uri2, "_id=?", new String[]{strArrSplit3[1]});
                Log.i("PathUriUtil", "getFilePathByUri path:" + strA3);
                return strA3;
            }
        }
        return null;
    }

    public static boolean c(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    public static boolean d(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    public static boolean e(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    public static boolean f(Uri uri) {
        return "media".equals(uri.getAuthority());
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0079  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r8v0, types: [android.content.ContentResolver] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v4, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    public static String g(ContentResolver contentResolver, Uri uri) throws Throwable {
        Cursor cursorQuery;
        ?? r7 = 0;
        string = null;
        string = null;
        String string = null;
        try {
            try {
                cursorQuery = contentResolver.query(uri, null, null, null, null);
                if (cursorQuery == null) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
                try {
                    Log.i("PathUriUtil", "queryPathFromUriByOtherProvider count:" + cursorQuery.getColumnCount() + StringUtils.COMMA + Arrays.toString(cursorQuery.getColumnNames()));
                    boolean zMoveToFirst = cursorQuery.moveToFirst();
                    contentResolver = cursorQuery;
                    if (zMoveToFirst) {
                        string = cursorQuery.getString(cursorQuery.getColumnIndex("_data"));
                        contentResolver = cursorQuery;
                    }
                } catch (Exception e) {
                    e = e;
                    Log.e("PathUriUtil", "queryPathFromUriByOtherProvider " + e.getMessage());
                    contentResolver = cursorQuery;
                    if (cursorQuery != null) {
                    }
                    return string;
                }
                contentResolver.close();
                return string;
            } catch (Throwable th) {
                th = th;
                r7 = contentResolver;
                if (r7 != 0) {
                    r7.close();
                }
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (r7 != 0) {
                r7.close();
            }
            throw th;
        }
    }
}
