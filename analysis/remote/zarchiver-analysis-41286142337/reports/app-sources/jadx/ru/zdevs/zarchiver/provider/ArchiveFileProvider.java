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
import h0.h;
import java.io.FileNotFoundException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import n0.e;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.archiver.NArc;
import x0.d;

public class ArchiveFileProvider extends ContentProvider {

    public static final String[] f1705a = {"_display_name", "_size"};

    public static class a {

        public final h f1706a;

        public final String f1707b;

        public final int f1708c;

        public final long f1709d;

        public a(h hVar, String str, int i2, long j2) {
            this.f1706a = hVar;
            this.f1707b = str;
            this.f1708c = i2;
            this.f1709d = j2;
        }
    }

    public static a b(Context context, Uri uri) {
        String strSubstring;
        int i2;
        String strSubstring2;
        String strA;
        String path = uri.getPath();
        if (path == null) {
            throw new IllegalStateException("Incorrect Uri");
        }
        int iIndexOf = path.indexOf("&FILE=");
        String strSubstring3 = null;
        if (iIndexOf > 0) {
            strSubstring = path.substring(iIndexOf + 6);
            path = path.substring(0, iIndexOf);
        } else {
            strSubstring = null;
        }
        int iIndexOf2 = path.indexOf("&L=");
        long jJ0 = -2;
        if (iIndexOf2 > 0) {
            jJ0 = c.j0(-2L, path.substring(iIndexOf2 + 3));
            path = path.substring(0, iIndexOf2);
        }
        long j2 = jJ0;
        int iIndexOf3 = path.indexOf("&S=");
        if (iIndexOf3 > 0) {
            int iI0 = c.i0(0, path.substring(iIndexOf3 + 3));
            path = path.substring(0, iIndexOf3);
            i2 = iI0;
        } else {
            i2 = 0;
        }
        int iIndexOf4 = path.indexOf("&ID=");
        if (iIndexOf4 > 0) {
            strSubstring2 = path.substring(iIndexOf4 + 4);
            path = path.substring(0, iIndexOf4);
        } else {
            strSubstring2 = null;
        }
        int iIndexOf5 = path.indexOf("&TYPE=");
        if (iIndexOf5 > 0) {
            strSubstring3 = path.substring(iIndexOf5 + 6);
            path = path.substring(0, iIndexOf5);
        }
        String fragment = uri.getFragment();
        if (fragment != null) {
            try {
                strA = h1.c.a(context, path, fragment);
            } catch (h1.c.a | ParseException unused) {
                throw new IllegalStateException("Password expired");
            }
        } else {
            strA = fragment;
        }
        if (strSubstring == null && strSubstring2 == null) {
            throw new IllegalStateException("Incorrect Uri");
        }
        if (strSubstring == null) {
            strSubstring = "";
        }
        h hVar = new h("arch", path, strSubstring);
        hVar.f1109d = strSubstring2;
        hVar.f1107b = strSubstring3;
        hVar.f1111f = 0;
        return new a(hVar, strA, i2, j2);
    }

    public static Uri d(Context context, h hVar, String str, long j2, String str2, int i2) {
        String string;
        StringBuilder sb = new StringBuilder(hVar.f1108c);
        if (str != null) {
            sb.append("&TYPE=");
            sb.append(str);
        }
        if (hVar.f1109d != null) {
            sb.append("&ID=");
            sb.append(hVar.f1109d);
        }
        sb.append("&S=");
        sb.append(i2);
        sb.append("&L=");
        sb.append(j2);
        sb.append("&FILE=");
        sb.append(hVar.f1110e);
        Uri.Builder builderPath = new Uri.Builder().scheme("content").authority("ru.zdevs.zarchiver.archive").path(sb.toString());
        String str3 = hVar.f1108c;
        if (str2 == null) {
            string = null;
        } else {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmm", Locale.ENGLISH);
            Calendar calendar = Calendar.getInstance();
            i.a aVar = new i.a(context);
            String str4 = simpleDateFormat.format(calendar.getTime());
            StringBuilder sb2 = new StringBuilder("DP");
            sb2.append(aVar.b(str4 + aVar.b(str2, i.a.c(str4)), i.a.c(str3)));
            string = sb2.toString();
        }
        return builderPath.fragment(string).build();
    }

    public final Context a() {
        ZApp zApp = ZApp.f1434c;
        if (zApp != null) {
            return zApp;
        }
        if (getContext() == null) {
            return null;
        }
        Context applicationContext = getContext().getApplicationContext();
        return applicationContext != null ? applicationContext : getContext();
    }

    public final a c(Uri uri) {
        Context context = getContext();
        if (context != null) {
            return b(context, uri);
        }
        throw new IllegalStateException("No Context attached");
    }

    @Override
    public final int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException("No support updates");
    }

    @Override
    public final String getType(Uri uri) {
        String mimeTypeFromExtension;
        String strS = c.s(c(uri).f1706a.f1110e);
        return (!v0.h.e(strS) || (mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(strS)) == null) ? "application/octet-stream" : mimeTypeFromExtension;
    }

    @Override
    public final Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("No support inserts");
    }

    @Override
    public final boolean onCreate() {
        Context contextA = a();
        if (contextA != null) {
            n0.a.a(contextA);
        }
        d.e(contextA);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:68:0x00e4  */
    @Override
    public final ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        boolean z2;
        a aVarC = c(uri);
        h hVar = aVarC.f1706a;
        int iI0 = c.i0(-1, hVar.f1109d);
        String str2 = hVar.f1108c;
        boolean z3 = false;
        if (str2 != null && str2.startsWith("/uri/")) {
            ZApp.b(getContext());
        }
        if (C2JBridge.f1613c || C2JBridge.e()) {
            int i2 = aVarC.f1708c;
            C2JBridge.cSetOption(1, i2 >> 16);
            C2JBridge.cSetOption(4, c.K(i2, 4) ? 1 : 0);
        }
        if (!(str.indexOf(114) != -1 && str.indexOf(119) == -1)) {
            if (!(str.indexOf(119) != -1)) {
                throw new IllegalArgumentException("Invalid mode: ".concat(str));
            }
            String str3 = hVar.f1107b;
            if (str3 != null) {
                if (!(str3.equals("apk") || str3.equals("zip") || str3.equals("7z") || str3.equals("tar") || str3.equals("jar") || str3.equals("wim"))) {
                    if (hVar.f1107b == null) {
                    }
                    throw new IllegalArgumentException("ZArchiver: Operation not supported for this type of archive");
                }
            } else if (hVar.f1107b == null || !c.N(1, hVar.f1108c)) {
                throw new IllegalArgumentException("ZArchiver: Operation not supported for this type of archive");
            }
            throw new IllegalArgumentException("ZArchiver: Edit file is supported only in Donation/Pro version");
        }
        NArc nArcK = null;
        try {
            nArcK = NArc.k(hVar.f1108c, hVar.f1107b, aVarC.f1707b);
            z2 = false;
            for (int i3 = 0; i3 < 2 && nArcK != null; i3++) {
                try {
                    try {
                        ParcelFileDescriptor parcelFileDescriptorE = nArcK.e(a(), iI0, hVar.f1110e, 2097152, true);
                        if (parcelFileDescriptorE == null) {
                            break;
                        }
                        return parcelFileDescriptorE;
                    } catch (OutOfMemoryError unused) {
                        System.gc();
                        if (i3 == 1) {
                            z2 = true;
                        }
                    } catch (NArc.NArcPasswordException unused2) {
                        ZApp.i(R.string.ERROR_WRONG_PASSWORD);
                    }
                } catch (Exception unused3) {
                    z3 = z2;
                    z2 = z3;
                }
            }
        } catch (Exception unused4) {
        }
        e.d(nArcK);
        if (z2) {
            throw new IllegalArgumentException("ZArchiver: File is too big for direct open");
        }
        throw new FileNotFoundException();
    }

    @Override
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int i2;
        a aVarC = c(uri);
        String[] strArr3 = strArr == null ? f1705a : strArr;
        String strE = aVarC.f1706a.e();
        int length = strArr3.length;
        String[] strArr4 = new String[length];
        int length2 = strArr3.length;
        Object[] objArr = new Object[length2];
        int i3 = 0;
        for (String str3 : strArr3) {
            strArr4[i3] = str3;
            if ("_display_name".equals(str3)) {
                i2 = i3 + 1;
                objArr[i3] = strE;
            } else if ("_size".equals(str3)) {
                i2 = i3 + 1;
                long j2 = aVarC.f1709d;
                objArr[i3] = Long.valueOf(j2 > 0 ? j2 : 0L);
            } else {
                if ("mime_type".equals(str3)) {
                    i2 = i3 + 1;
                    objArr[i3] = c.x(strE);
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
    }

    @Override
    public final void shutdown() {
    }

    @Override
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("No support updates");
    }
}
