package ru.zdevs.zarchiver.provider;

import a0.c;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.FileNotFoundException;
import n0.e;
import ru.zdevs.zarchiver.ZApp;
import v0.h;

public class PluginFileProvider extends ContentProvider {

    public static final String[] f1711a = {"_display_name", "_size"};

    public static String a(Uri uri) {
        return e.h() + '/' + uri.getFragment();
    }

    @Override
    public final int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException("No support updates");
    }

    @Override
    public final String getType(Uri uri) {
        String mimeTypeFromExtension;
        String strS = c.s(uri.getFragment());
        return (!h.e(strS) || (mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(strS)) == null) ? "application/octet-stream" : mimeTypeFromExtension;
    }

    @Override
    public final Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("No support inserts");
    }

    @Override
    public final boolean onCreate() {
        Context applicationContext = ZApp.f1434c;
        if (applicationContext == null) {
            if (getContext() != null) {
                applicationContext = getContext().getApplicationContext();
                if (applicationContext == null) {
                    applicationContext = getContext();
                }
            } else {
                applicationContext = null;
            }
        }
        if (applicationContext == null) {
            return true;
        }
        l0.c.i(applicationContext);
        return true;
    }

    @Override
    public final ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        String strSubstring;
        String strSubstring2;
        String strSubstring3;
        String strSubstring4;
        String strSubstring5;
        String strA = a(uri);
        int iB = h1.c.b(str);
        if (c.K(iB, 268435456) && !c.K(iB, 536870912)) {
            return ParcelFileDescriptor.open(new File(strA), iB);
        }
        if (!c.K(iB, 536870912)) {
            throw new IllegalArgumentException("Invalid mode: " + str);
        }
        String path = uri.getPath();
        boolean zStartsWith = path.startsWith("/");
        int iIndexOf = path.indexOf(":/");
        h0.h hVar = null;
        strSubstring = null;
        String strSubstring6 = null;
        if (iIndexOf >= 0) {
            String strSubstring7 = path.substring(zStartsWith ? 1 : 0, iIndexOf);
            int i2 = iIndexOf + 2;
            int iIndexOf2 = path.indexOf(47, i2);
            if (iIndexOf2 > i2) {
                strSubstring = path.substring(i2, iIndexOf2);
                i2 = iIndexOf2;
            } else {
                strSubstring = null;
            }
            int iIndexOf3 = path.indexOf(35, i2);
            int iIndexOf4 = iIndexOf3 < 0 ? path.indexOf(36, i2) : path.indexOf(36, iIndexOf3 + 1);
            if (iIndexOf3 > i2) {
                strSubstring2 = path.substring(i2, iIndexOf3);
                if (iIndexOf4 > iIndexOf3) {
                    strSubstring4 = path.substring(iIndexOf3 + 1, iIndexOf4);
                    strSubstring5 = path.substring(iIndexOf4);
                } else {
                    strSubstring3 = path.substring(iIndexOf3 + 1);
                }
                h0.h hVar2 = new h0.h(strSubstring7, strSubstring2, strSubstring4, strSubstring);
                hVar2.f1109d = strSubstring5;
                hVar = hVar2;
            } else {
                if (iIndexOf4 > i2) {
                    strSubstring2 = path.substring(i2, iIndexOf4);
                    strSubstring6 = path.substring(iIndexOf4);
                } else {
                    strSubstring2 = path.substring(i2);
                }
                strSubstring3 = "";
            }
            String str2 = strSubstring6;
            strSubstring4 = strSubstring3;
            strSubstring5 = str2;
            h0.h hVar3 = new h0.h(strSubstring7, strSubstring2, strSubstring4, strSubstring);
            hVar3.f1109d = strSubstring5;
            hVar = hVar3;
        }
        if (hVar == null) {
            throw new FileNotFoundException();
        }
        if (c.K(l0.c.d(hVar), 256)) {
            throw new IllegalArgumentException("ZArchiver: Remote storage is read only");
        }
        throw new IllegalArgumentException("ZArchiver: Edit file is supported only in Donation/Pro version");
    }

    @Override
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int i2;
        String strA = a(uri);
        String[] strArr3 = strArr == null ? f1711a : strArr;
        try {
            File file = new File(strA);
            if (!file.exists()) {
                return null;
            }
            int length = strArr3.length;
            String[] strArr4 = new String[length];
            int length2 = strArr3.length;
            Object[] objArr = new Object[length2];
            int i3 = 0;
            for (String str3 : strArr3) {
                if ("_display_name".equals(str3)) {
                    strArr4[i3] = "_display_name";
                    i2 = i3 + 1;
                    objArr[i3] = c.y(strA);
                } else {
                    if ("_size".equals(str3)) {
                        strArr4[i3] = "_size";
                        i2 = i3 + 1;
                        objArr[i3] = Long.valueOf(file.length());
                    }
                }
                i3 = i2;
            }
            if (length != i3) {
                String[] strArr5 = new String[i3];
                System.arraycopy(strArr4, 0, strArr5, 0, i3);
                strArr4 = strArr5;
            }
            if (length2 != i3) {
                Object[] objArr2 = new Object[i3];
                System.arraycopy(objArr, 0, objArr2, 0, i3);
                objArr = objArr2;
            }
            MatrixCursor matrixCursor = new MatrixCursor(strArr4, 1);
            matrixCursor.addRow(objArr);
            return matrixCursor;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override
    public final void shutdown() {
    }

    @Override
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("No support updates");
    }
}
