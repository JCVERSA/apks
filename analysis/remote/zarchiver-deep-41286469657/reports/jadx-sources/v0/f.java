package v0;

import android.content.ContentUris;
import android.content.Context;
import android.content.CursorLoader;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.system.Os;
import java.io.File;
import java.net.URLDecoder;
import java.util.Iterator;
import ru.zdevs.zarchiver.ZApp;

public final class f {

    public static final String[] f2188a = {"/storage/emulated/", "/sdcard/"};

    public static boolean a(String str) {
        return str != null && new File(str).exists();
    }

    public static String b(Uri uri, String str, String[] strArr) throws Throwable {
        Throwable th;
        Cursor cursorQuery;
        Cursor cursor = null;
        try {
            cursorQuery = ZApp.e().getContentResolver().query(uri, new String[]{"_data"}, str, strArr, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                        cursorQuery.close();
                        return string;
                    }
                } catch (Exception unused) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    cursor = cursorQuery;
                    if (cursor == null) {
                        throw th;
                    }
                    cursor.close();
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        } catch (Exception unused2) {
            cursorQuery = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static String c(Context context, Uri uri) {
        Context contextC = ZApp.c(context);
        if (contextC == null) {
            return null;
        }
        try {
            Cursor cursorQuery = contextC.getContentResolver().query(uri, null, null, null, null);
            if (cursorQuery == null) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return null;
            }
            try {
                int columnIndex = cursorQuery.getColumnIndex("_display_name");
                cursorQuery.moveToFirst();
                String string = cursorQuery.getString(columnIndex);
                cursorQuery.close();
                return string;
            } catch (Throwable th) {
                try {
                    cursorQuery.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Exception unused) {
            return null;
        }
    }

    public static String d(Context context, Uri uri) throws Throwable {
        Throwable th;
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor;
        ParcelFileDescriptor parcelFileDescriptor = null;
        if (Build.VERSION.SDK_INT < 21) {
            return null;
        }
        try {
            parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "r");
            if (parcelFileDescriptorOpenFileDescriptor == null) {
                n0.e.c(parcelFileDescriptorOpenFileDescriptor);
                return null;
            }
            try {
                String str = Os.readlink("/proc/self/fd/" + parcelFileDescriptorOpenFileDescriptor.getFd());
                n0.e.c(parcelFileDescriptorOpenFileDescriptor);
                return str;
            } catch (Exception unused) {
                n0.e.c(parcelFileDescriptorOpenFileDescriptor);
                return null;
            } catch (Throwable th2) {
                th = th2;
                parcelFileDescriptor = parcelFileDescriptorOpenFileDescriptor;
                n0.e.c(parcelFileDescriptor);
                throw th;
            }
        } catch (Exception unused2) {
            parcelFileDescriptorOpenFileDescriptor = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static String e(Context context, Uri uri) {
        Uri uri2 = null;
        if ((Build.VERSION.SDK_INT >= 19) && DocumentsContract.isDocumentUri(context, uri)) {
            if ("com.android.externalstorage.documents".equals(uri.getAuthority())) {
                String[] strArrSplit = DocumentsContract.getDocumentId(uri).split(":");
                String str = strArrSplit[0];
                if ("primary".equalsIgnoreCase(str)) {
                    return Environment.getExternalStorageDirectory() + "/" + strArrSplit[1];
                }
                if ("home".equalsIgnoreCase(str)) {
                    return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS) + "/" + strArrSplit[1];
                }
                x0.d.a aVarJ = x0.d.j(str);
                if (aVarJ != null) {
                    return aVarJ.f2255b + "/" + strArrSplit[1];
                }
            } else {
                if ("com.android.providers.downloads.documents".equals(uri.getAuthority())) {
                    return b(ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.parseLong(DocumentsContract.getDocumentId(uri))), null, null);
                }
                if ("com.android.providers.media.documents".equals(uri.getAuthority())) {
                    String[] strArrSplit2 = DocumentsContract.getDocumentId(uri).split(":");
                    String str2 = strArrSplit2[0];
                    if ("image".equals(str2)) {
                        uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                    } else if ("video".equals(str2)) {
                        uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                    } else if ("audio".equals(str2)) {
                        uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                    }
                    return b(uri2, "_id=?", new String[]{strArrSplit2[1]});
                }
            }
        } else if ("content".equalsIgnoreCase(uri.getScheme())) {
            return "com.google.android.apps.photos.content".equals(uri.getAuthority()) ? uri.getLastPathSegment() : b(uri, null, null);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0081 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:43:0x0082  */
    /* JADX WARN: Code duplicated, block: B:45:0x008c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:52:0x00af A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:55:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:58:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:65:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:68:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:70:0x0102  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:83:? A[LOOP:0: B:56:0x00ce->B:83:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:0x0114 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:86:0x0115 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x0115 A[SYNTHETIC] */
    public static String f(Context context, Uri uri) {
        String strE;
        String strD;
        Throwable th;
        Cursor cursorLoadInBackground;
        String query;
        String string;
        int iIndexOf;
        String[] strArr;
        int iIndexOf2;
        int iIndexOf3;
        String strDecode;
        String strDecode2;
        Iterator it;
        File file;
        String strDecode3;
        if (uri == null) {
            return null;
        }
        if ("file".equals(uri.getScheme())) {
            return uri.getPath();
        }
        if (!"content".equals(uri.getScheme())) {
            return null;
        }
        uri.toString();
        Context contextC = ZApp.c(context);
        if (contextC != null) {
            try {
                if (Build.VERSION.SDK_INT < 19) {
                    try {
                        cursorLoadInBackground = new CursorLoader(contextC, uri, new String[]{"_data"}, null, null, null).loadInBackground();
                        if (cursorLoadInBackground != null) {
                            try {
                                if (cursorLoadInBackground.moveToFirst()) {
                                    strE = cursorLoadInBackground.getString(cursorLoadInBackground.getColumnIndexOrThrow("_data"));
                                    cursorLoadInBackground.close();
                                }
                            } catch (Exception unused) {
                                if (cursorLoadInBackground != null) {
                                }
                                strE = null;
                                if (a(strE)) {
                                    return strE;
                                }
                                strD = d(contextC, uri);
                                if (a(strD)) {
                                    return strD;
                                }
                                query = uri.getQuery();
                                if (query != null) {
                                    strDecode3 = URLDecoder.decode(query.substring(query.indexOf("file://") + 7));
                                    if (a(strDecode3)) {
                                        return strDecode3;
                                    }
                                }
                                string = uri.toString();
                                iIndexOf = string.indexOf("%3A");
                                if (iIndexOf > 0) {
                                    strDecode2 = URLDecoder.decode(string.substring(iIndexOf + 3));
                                    it = x0.d.o().iterator();
                                    while (it.hasNext()) {
                                        file = new File(((x0.d.a) it.next()).f2255b, strDecode2);
                                        if (file.exists()) {
                                            return file.getAbsolutePath();
                                        }
                                    }
                                }
                                strArr = f2188a;
                                for (int i2 = 0; i2 < 2; i2++) {
                                    iIndexOf2 = string.indexOf(strArr[i2]);
                                    if (iIndexOf2 >= 0) {
                                        iIndexOf3 = string.indexOf("?", iIndexOf2);
                                        if (iIndexOf3 < 0) {
                                            iIndexOf3 = string.length();
                                        }
                                        strDecode = URLDecoder.decode(string.substring(iIndexOf2, iIndexOf3));
                                        if (a(strDecode)) {
                                            return strDecode;
                                        }
                                    }
                                }
                                return null;
                            } catch (Throwable th2) {
                                th = th2;
                                if (cursorLoadInBackground == null) {
                                    throw th;
                                }
                                cursorLoadInBackground.close();
                                throw th;
                            }
                        }
                        if (cursorLoadInBackground != null) {
                            cursorLoadInBackground.close();
                        }
                    } catch (Exception unused2) {
                        cursorLoadInBackground = null;
                    } catch (Throwable th3) {
                        th = th3;
                        cursorLoadInBackground = null;
                    }
                    strE = null;
                } else {
                    strE = e(contextC, uri);
                }
            } catch (Exception unused3) {
            }
            if (a(strE)) {
                return strE;
            }
            strD = d(contextC, uri);
            if (a(strD)) {
                return strD;
            }
        }
        query = uri.getQuery();
        if (query != null && query.contains("file://")) {
            strDecode3 = URLDecoder.decode(query.substring(query.indexOf("file://") + 7));
            if (a(strDecode3)) {
                return strDecode3;
            }
        }
        string = uri.toString();
        iIndexOf = string.indexOf("%3A");
        if (iIndexOf > 0) {
            strDecode2 = URLDecoder.decode(string.substring(iIndexOf + 3));
            it = x0.d.o().iterator();
            while (it.hasNext()) {
                file = new File(((x0.d.a) it.next()).f2255b, strDecode2);
                if (file.exists()) {
                    return file.getAbsolutePath();
                }
            }
        }
        strArr = f2188a;
        while (i2 < 2) {
            iIndexOf2 = string.indexOf(strArr[i2]);
            if (iIndexOf2 >= 0) {
                iIndexOf3 = string.indexOf("?", iIndexOf2);
                if (iIndexOf3 < 0) {
                    iIndexOf3 = string.length();
                }
                strDecode = URLDecoder.decode(string.substring(iIndexOf2, iIndexOf3));
                if (a(strDecode)) {
                    return strDecode;
                }
            }
        }
        return null;
    }
}
