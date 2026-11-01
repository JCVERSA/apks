package ru.zdevs.zarchiver.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.ParcelFileDescriptor;
import android.os.storage.StorageManager;
import android.webkit.MimeTypeMap;
import h0.f;
import h0.h;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.InvalidPropertiesFormatException;
import n0.e;
import o0.c;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.io.SAF;
import t0.b;
import v0.d;

public final class FileProvider extends ContentProvider {

    public static final String[] f1710a = {"_display_name", "_size", "_data"};

    public static h b(Uri uri) {
        String strSubstring = uri.getPath().substring(3);
        int iIndexOf = strSubstring.indexOf(47);
        String strSubstring2 = strSubstring.substring(0, iIndexOf);
        int i2 = iIndexOf + 1;
        int iIndexOf2 = strSubstring.indexOf(47, i2);
        return new h("plugin", strSubstring.substring(iIndexOf2), strSubstring.substring(i2, iIndexOf2), strSubstring2);
    }

    public static Uri c(String str) {
        return new Uri.Builder().scheme("content").authority("ru.zdevs.zarchiver.external").path(str).build();
    }

    public static boolean d(Uri uri) {
        String path = uri.getPath();
        if (path != null) {
            return path.startsWith("/u/");
        }
        throw new IllegalStateException("Incorrect Uri");
    }

    public final File a(Uri uri) {
        if (getContext() == null) {
            throw new IllegalStateException("No Context attached");
        }
        String path = uri.getPath();
        if (path != null) {
            return new File(path);
        }
        throw new IllegalStateException("Incorrect Uri");
    }

    @Override
    public final int delete(Uri uri, String str, String[] strArr) {
        if (d(uri)) {
            return 0;
        }
        return a(uri).delete() ? 1 : 0;
    }

    public final ParcelFileDescriptor e(int i2, String str, long j2, int i3) throws FileNotFoundException {
        try {
            int i4 = 268435456;
            c cVar = new c(i3, str, j2, i2 == 268435456);
            StorageManager storageManager = (StorageManager) getContext().getSystemService("storage");
            if (i2 != 268435456) {
                i4 = 536870912;
            }
            HandlerThread handlerThread = new HandlerThread("ShellInputCallback");
            cVar.f1303g = handlerThread;
            handlerThread.start();
            return storageManager.openProxyFileDescriptor(i4, cVar, new Handler(cVar.f1303g.getLooper()));
        } catch (IOException e2) {
            throw new FileNotFoundException(e2.getMessage());
        }
    }

    @Override
    public final String getType(Uri uri) {
        String mimeTypeFromExtension;
        String strS = a0.c.s(a(uri).getName());
        return (v0.h.e(strS) || (mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(strS)) == null) ? "application/octet-stream" : mimeTypeFromExtension;
    }

    @Override
    public final Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("No support inserts");
    }

    @Override
    public final boolean onCreate() {
        return true;
    }

    @Override
    public final ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        int iB = h1.c.b(str);
        if (d(uri)) {
            return f.u(b(uri)).v(iB);
        }
        File fileA = a(uri);
        String absolutePath = fileA.getAbsolutePath();
        boolean z2 = iB != 268435456;
        if (e.l(absolutePath) && Build.VERSION.SDK_INT >= 19) {
            try {
                if (z2) {
                    throw new IllegalArgumentException("ZArchiver: Edit file is supported only in Donation/Pro version");
                }
                return ParcelFileDescriptor.open(fileA, iB);
            } catch (IOException e2) {
                throw new FileNotFoundException(e2.getMessage());
            }
        }
        String fragment = uri.getFragment();
        if ((fragment != null && fragment.startsWith("R:")) && Build.VERSION.SDK_INT >= 26) {
            String[] strArrH = v0.h.h(uri.getFragment(), ':');
            if (strArrH.length >= 4) {
                return e(iB, uri.getPath(), a0.c.j0(0L, strArrH[1]), a0.c.i0(0, strArrH[3]));
            }
            throw new FileNotFoundException("Bad Uri");
        }
        if ((!absolutePath.startsWith("/SAF") && !z2) || !SAF.q(absolutePath)) {
            return (iB != 536870912 || Build.VERSION.SDK_INT < 26 || !b.i(absolutePath) || fileA.canWrite()) ? ParcelFileDescriptor.open(fileA, iB) : e(iB, absolutePath, fileA.length(), b.f2092m);
        }
        try {
            return ZApp.b(getContext()).openFileDescriptor(SAF.k(0, absolutePath), str);
        } catch (InvalidPropertiesFormatException e3) {
            throw new FileNotFoundException(e3.getMessage());
        }
    }

    @Override
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int i2;
        String absolutePath;
        int i3;
        int i4;
        int i5;
        int i6;
        String[] strArr3 = strArr == null ? f1710a : strArr;
        int length = strArr3.length;
        String[] strArr4 = new String[length];
        int length2 = strArr3.length;
        Object[] objArr = new Object[length2];
        d dVar = null;
        if (d(uri)) {
            int length3 = strArr3.length;
            int i7 = 0;
            i2 = 0;
            while (i7 < length3) {
                String str3 = strArr3[i7];
                strArr4[i2] = str3;
                if ("_display_name".equals(str3)) {
                    objArr[i2] = a0.c.y(uri.getPath());
                    i2++;
                    i6 = i7;
                } else if ("_size".equals(str3)) {
                    h0.e.b bVarE = h0.e.e(b(uri), dVar);
                    i6 = i7;
                    if (bVarE != null) {
                        long j2 = bVarE.f1090c;
                        if (j2 > 0) {
                            objArr[i2] = Long.valueOf(j2);
                            i2++;
                        }
                    }
                } else {
                    i6 = i7;
                    if ("mime_type".equals(str3)) {
                        String strS = a0.c.s(a0.c.y(uri.getPath()));
                        if (!v0.h.e(strS)) {
                            objArr[i2] = MimeTypeMap.getSingleton().getMimeTypeFromExtension(strS);
                            i2++;
                        }
                    }
                }
                i7 = i6 + 1;
                dVar = null;
            }
        } else {
            File fileA = a(uri);
            String fragment = uri.getFragment();
            String[] strArrH = fragment != null && fragment.startsWith("R:") ? v0.h.h(uri.getFragment(), ':') : null;
            int length4 = strArr3.length;
            int i8 = 0;
            i2 = 0;
            while (i8 < length4) {
                String str4 = strArr3[i8];
                strArr4[i2] = str4;
                if ("_display_name".equals(str4)) {
                    objArr[i2] = fileA.getName();
                    i2++;
                    length4 = length4;
                } else if ("_size".equals(str4)) {
                    if (strArrH == null || strArrH.length < 3) {
                        objArr[i2] = Long.valueOf(fileA.length());
                        i2++;
                    } else {
                        objArr[i2] = Long.valueOf(a0.c.j0(0L, strArrH[1]));
                        i2++;
                    }
                    length4 = length4;
                } else if ("last_modified".equals(str4)) {
                    if (strArrH == null || strArrH.length < 3) {
                        i4 = i2 + 1;
                        objArr[i2] = Long.valueOf(fileA.lastModified());
                    } else {
                        i4 = i2 + 1;
                        objArr[i2] = Long.valueOf(a0.c.j0(0L, strArrH[2]));
                    }
                    i2 = i4;
                } else {
                    length4 = length4;
                    if ("_data".equals(str4)) {
                        try {
                            absolutePath = fileA.getCanonicalPath();
                        } catch (IOException unused) {
                            absolutePath = fileA.getAbsolutePath();
                        }
                        if (!e.l(absolutePath)) {
                            i3 = i2 + 1;
                            objArr[i2] = absolutePath;
                            i2 = i3;
                        }
                    } else if ("mime_type".equals(str4)) {
                        String strS2 = a0.c.s(fileA.getName());
                        if (!v0.h.e(strS2)) {
                            i3 = i2 + 1;
                            objArr[i2] = MimeTypeMap.getSingleton().getMimeTypeFromExtension(strS2);
                            i2 = i3;
                        }
                    }
                }
                i8++;
                length4 = length4;
            }
        }
        if (length == i2) {
            i5 = 0;
        } else {
            String[] strArr5 = new String[i2];
            i5 = 0;
            System.arraycopy(strArr4, 0, strArr5, 0, i2);
            strArr4 = strArr5;
        }
        if (length2 != i2) {
            Object[] objArr2 = new Object[i2];
            System.arraycopy(objArr, i5, objArr2, i5, i2);
            objArr = objArr2;
        }
        MatrixCursor matrixCursor = new MatrixCursor(strArr4, 1);
        matrixCursor.addRow(objArr);
        return matrixCursor;
    }

    @Override
    public final void shutdown() {
    }

    @Override
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("No support updates");
    }
}
