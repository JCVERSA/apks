package ru.zdevs.zarchiver.io;

import a0.c;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.system.OsConstants;
import h0.e;
import h0.h;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.InvalidPropertiesFormatException;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.provider.FileProvider;
import v0.b;
import v0.d;

public class SAF {

    public static final String[] f1693a = {"mime_type"};

    public static final String[] f1694b = {"_display_name", "mime_type", "_size", "last_modified", "document_id"};

    public static final String[] f1695c = {"mime_type", "last_modified", "_size"};

    public static final String[] f1696d = {"_display_name", "mime_type", "_size"};

    public static int f1697e;

    public static class DIR {
        public final String name;
        public final long size;
        public final long time;
        public final int type;

        public DIR(String str, int i2, long j2, long j3) {
            this.name = str;
            this.type = i2;
            this.size = j2;
            this.time = j3;
        }
    }

    public static class STAT {
        public final long date;
        public final int perm;
        public final long size;

        public STAT(long j2, long j3, int i2) {
            this.size = j2;
            this.date = j3;
            this.perm = i2;
        }
    }

    public static class a {

        public String f1698a;

        public boolean f1699b;

        public long f1700c;

        public long f1701d;

        public Uri f1702e;
    }

    public static Uri a(String str, String str2, int i2) {
        if (i2 == 1) {
            return Uri.parse(String.format("content://com.android.externalstorage.documents/tree/%s/document/%s%s/children", str, str, Uri.encode(str2)));
        }
        return i2 == 0 ? Uri.parse(String.format("content://com.android.externalstorage.documents/tree/%s/document/%s%s", str, str, Uri.encode(str2))) : Uri.parse(String.format("content://com.android.externalstorage.documents/tree/%s", str));
    }

    public static void b(Uri uri, String[] strArr, e.b bVar, d dVar, int i2) {
        Cursor cursorS;
        if (i2 <= 30 && (cursorS = s(DocumentsContract.buildChildDocumentsUriUsingTree(uri, DocumentsContract.getDocumentId(uri)), strArr)) != null) {
            while (cursorS.moveToNext()) {
                if (dVar != null && dVar.isCancelled()) {
                    return;
                }
                if ("vnd.android.document/directory".equals(cursorS.getString(0))) {
                    b(DocumentsContract.buildDocumentUriUsingTree(uri, cursorS.getString(2)), strArr, bVar, dVar, 1 + i2);
                } else {
                    bVar.f1091d++;
                    bVar.f1090c = cursorS.getLong(1) + bVar.f1090c;
                }
            }
            n0.e.b(cursorS);
        }
    }

    public static int c(String str) {
        String strY = c.Y(c.b0(str));
        if (!strY.startsWith("Android/")) {
            return 0;
        }
        int i2 = Build.VERSION.SDK_INT >= 33 ? 3 : 2;
        int iIndexOf = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            iIndexOf = strY.indexOf(47, iIndexOf + 1);
            if (iIndexOf < 0) {
                if (i3 + 1 != i2) {
                    break;
                }
                return strY.length();
            }
        }
        return iIndexOf;
    }

    public static int close(int i2) {
        return 0;
    }

    public static int d(Exception exc) {
        String message = exc.getMessage();
        if (message != null) {
            if (message.contains("Permission denied") || message.contains("There are no permissions") || message.contains("EACCES")) {
                return OsConstants.EACCES;
            }
            if (message.contains("No such file or directory") || message.contains("ENOENT")) {
                return OsConstants.ENOENT;
            }
            if (message.contains("I/O error") || message.contains("EIO")) {
                return OsConstants.EIO;
            }
            if (message.contains("Not a directory") || message.contains("ENOTDIR")) {
                return OsConstants.ENOTDIR;
            }
            if (message.contains("Invalid argument") || message.contains("EINVAL")) {
                return OsConstants.EINVAL;
            }
            if (message.contains("No space left on device") || message.contains("ENOSPC")) {
                return OsConstants.ENOSPC;
            }
            if (message.contains("Read only file system") || message.contains("EROFS")) {
                return OsConstants.EROFS;
            }
            if (message.contains("Illegal seek") || message.contains("ESPIPE")) {
                return OsConstants.ESPIPE;
            }
            if (message.contains("Bad file number") || message.contains("EBADF")) {
                return OsConstants.EBADF;
            }
            if (message.contains("Bad address") || message.contains("EFAULT")) {
                return OsConstants.EFAULT;
            }
            if (message.contains("File exists") || message.contains("EEXIST")) {
                return OsConstants.EEXIST;
            }
            if (message.contains("Is a directory") || message.contains("EISDIR")) {
                return OsConstants.EISDIR;
            }
        }
        if (exc instanceof IllegalStateException) {
            return OsConstants.EACCES;
        }
        if (exc instanceof InvalidPropertiesFormatException) {
            return OsConstants.EINVAL;
        }
        return exc instanceof IOException ? OsConstants.EIO : OsConstants.EPERM;
    }

    public static a e(String str) {
        Uri uriL = l(0, str);
        a aVar = null;
        if (uriL == null) {
            return null;
        }
        Cursor cursorS = s(uriL, f1694b);
        if (cursorS != null) {
            if (cursorS.moveToFirst()) {
                aVar = new a();
                aVar.f1698a = cursorS.getString(0);
                aVar.f1699b = "vnd.android.document/directory".equals(cursorS.getString(1));
                aVar.f1700c = cursorS.getLong(3);
                aVar.f1701d = cursorS.getLong(2);
                String string = cursorS.getString(4);
                if (string != null) {
                    aVar.f1702e = DocumentsContract.buildDocumentUriUsingTree(uriL, string);
                }
            }
            n0.e.b(cursorS);
        }
        return aVar;
    }

    public static int errno() {
        return f1697e;
    }

    public static a f(Uri uri) {
        String[] strArr = f1696d;
        Cursor cursorS = s(uri, strArr);
        a aVar = null;
        if (cursorS == null) {
            return null;
        }
        if (cursorS.moveToFirst()) {
            aVar = new a();
            int columnIndex = cursorS.getColumnIndex(strArr[0]);
            if (columnIndex != -1) {
                aVar.f1698a = cursorS.getString(columnIndex);
            }
            String[] strArr2 = f1694b;
            int columnIndex2 = cursorS.getColumnIndex(strArr2[1]);
            if (columnIndex2 != -1) {
                aVar.f1699b = "vnd.android.document/directory".equals(cursorS.getString(columnIndex2));
            }
            int columnIndex3 = cursorS.getColumnIndex(strArr2[2]);
            if (columnIndex3 != -1) {
                aVar.f1701d = cursorS.getLong(columnIndex3);
            }
        }
        n0.e.b(cursorS);
        return aVar;
    }

    public static String[] g(String str) {
        if (str == null || str.length() < 6 || !str.startsWith("/SAF")) {
            return null;
        }
        int iIndexOf = str.indexOf(47, 5);
        int iIndexOf2 = str.indexOf("%3A", 5);
        if (iIndexOf > 0 && iIndexOf2 > iIndexOf) {
            iIndexOf2 = -1;
        }
        String[] strArr = new String[2];
        if (iIndexOf2 != -1) {
            strArr[0] = str.substring(5, iIndexOf2);
            int i2 = iIndexOf2 + 3;
            strArr[1] = Uri.decode(iIndexOf != -1 ? str.substring(i2, iIndexOf) : str.substring(i2));
        } else if (iIndexOf != -1) {
            strArr[0] = str.substring(5, iIndexOf);
        } else {
            strArr[0] = str.substring(5);
        }
        return strArr;
    }

    public static Uri h(Context context, h hVar, boolean z2) {
        Uri uriJ;
        Uri uriL;
        String strR = hVar.r();
        if (strR.startsWith("/SAF") && (uriL = l(0, strR)) != null) {
            return uriL;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            return (!z2 || n0.e.l(strR) || !b.h() || (uriJ = j(context, strR)) == null) ? FileProvider.c(strR) : uriJ;
        }
        return KitKatExtSD.c(hVar);
    }

    public static String i(String str) {
        int iC;
        if (str == null || Build.VERSION.SDK_INT < 30 || (iC = c(str)) < 0) {
            return null;
        }
        return str.substring(0, iC);
    }

    public static Uri j(Context context, String str) throws Throwable {
        Cursor cursorQuery;
        Uri contentUri;
        Cursor cursor = null;
        try {
            byte bE = c.E(str);
            if (bE == 14) {
                contentUri = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
            } else if (bE == 7) {
                contentUri = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
            } else {
                contentUri = bE == 9 ? MediaStore.Images.Media.EXTERNAL_CONTENT_URI : MediaStore.Files.getContentUri("external");
            }
            cursorQuery = context.getContentResolver().query(contentUri, new String[]{"_id"}, "_data=? ", new String[]{str}, null);
            if (cursorQuery == null) {
                n0.e.b(cursorQuery);
                return null;
            }
            try {
                if (!cursorQuery.moveToFirst()) {
                    n0.e.b(cursorQuery);
                    return null;
                }
                Uri uriWithAppendedPath = Uri.withAppendedPath(contentUri, cursorQuery.getString(0));
                n0.e.b(cursorQuery);
                return uriWithAppendedPath;
            } catch (Exception unused) {
                n0.e.b(cursorQuery);
                return null;
            } catch (Throwable th) {
                cursor = cursorQuery;
                th = th;
                n0.e.b(cursor);
                throw th;
            }
        } catch (Exception unused2) {
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static Uri k(int i2, String str) throws FileNotFoundException, InvalidPropertiesFormatException {
        String strA;
        String strB;
        String strConcat;
        String str2;
        if (str == null) {
            throw new InvalidPropertiesFormatException("Path is NULL");
        }
        boolean zStartsWith = str.startsWith("/SAF");
        if (!zStartsWith) {
            x0.d.a aVarI = x0.d.i(str);
            if (aVarI == null) {
                throw new InvalidPropertiesFormatException("SAF Storage not found");
            }
            if (!aVarI.d(null)) {
                if (aVarI.e()) {
                    throw new InvalidPropertiesFormatException("Incorrect SAF Storage found");
                }
                throw new FileNotFoundException("There are no permissions to access the SAF: " + aVarI.f2255b);
            }
            strA = aVarI.a();
            if (strA == null) {
                throw new InvalidPropertiesFormatException("Incorrect Storage ID");
            }
            strB = aVarI.b(str);
            if (strB == null) {
                strConcat = strA;
                str2 = "";
            } else {
                String str3 = strA;
                str2 = strB;
                strConcat = str3;
            }
        } else {
            if (str.length() <= 5) {
                throw new InvalidPropertiesFormatException("Invalid SAF path");
            }
            int iIndexOf = str.indexOf(47, 5);
            if (iIndexOf == -1) {
                strConcat = str.substring(5);
                str2 = "";
            } else {
                strA = str.substring(5, iIndexOf);
                strB = c.Y(str.substring(iIndexOf));
                String str4 = strA;
                str2 = strB;
                strConcat = str4;
            }
        }
        if (!strConcat.contains("%3A")) {
            strConcat = strConcat.concat("%3A");
        }
        if (i2 != 2 && i2 != 3) {
            return a(strConcat, str2, i2);
        }
        if (zStartsWith) {
            Uri uriA = a(strConcat, str2, 0);
            if (p(uriA)) {
                return uriA;
            }
        } else if (n0.e.k(str)) {
            return a(strConcat, str2, 0);
        }
        return DocumentsContract.createDocument(ZApp.a(), a(strConcat, c.A(str2), 0), i2 == 3 ? "vnd.android.document/directory" : "", c.y(str2));
    }

    public static Uri l(int i2, String str) {
        try {
            f1697e = 0;
            return k(i2, str);
        } catch (Exception e2) {
            f1697e = d(e2);
            return null;
        }
    }

    public static h m(String str, String str2, boolean z2, boolean z3) {
        if (str2 == null || str == null) {
            return null;
        }
        int length = z2 ? str2.length() : c(str2);
        if (length < 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder("/SAF/");
        sb.append(Uri.encode(str + ":" + str2.substring(0, length)));
        sb.append(z3 ? "%2F" : "");
        String string = sb.toString();
        if (length < str2.length()) {
            string = string + str2.substring(length);
        }
        return new h("saf", string);
    }

    public static int mkdir(String str) {
        if (x0.d.f2253c || str == null) {
            return -OsConstants.EACCES;
        }
        if ("/SAF".equals(str) || l(3, str) != null) {
            return 0;
        }
        int i2 = f1697e;
        if (i2 == 0) {
            i2 = OsConstants.EPERM;
        }
        return -i2;
    }

    public static int mkdirs(String str, int i2) {
        int length;
        int iD;
        if (str != null) {
            if (str.startsWith("/SAF")) {
                if (p(l(0, str))) {
                    return 0;
                }
                length = str.indexOf(47, 5);
            } else {
                if (new File(str).exists()) {
                    return 0;
                }
                x0.d.a aVarI = x0.d.i(str);
                length = aVarI != null ? aVarI.f2255b.length() : str.length();
            }
            int length2 = str.length() - i2;
            if (length2 > length && i2 != 0 && str.charAt(length2) == '/') {
                length = length2;
            }
            Uri uriL = l(0, str.substring(0, length));
            if (uriL == null) {
                int i3 = f1697e;
                if (i3 == 0) {
                    i3 = OsConstants.EPERM;
                }
                return -i3;
            }
            String[] strArrH = v0.h.h(str.substring(length), '/');
            Uri uri = null;
            int i4 = 0;
            while (true) {
                if (i4 >= strArrH.length) {
                    uriL = uri;
                    break;
                }
                StringBuilder sb = new StringBuilder();
                sb.append(uriL);
                sb.append(Uri.encode("/" + strArrH[i4]));
                Uri uri2 = Uri.parse(sb.toString());
                if (!p(uri2)) {
                    break;
                }
                i4++;
                uri = uriL;
                uriL = uri2;
            }
            while (i4 < strArrH.length && uriL != null) {
                try {
                    uriL = DocumentsContract.createDocument(ZApp.a(), uriL, "vnd.android.document/directory", strArrH[i4]);
                    i4++;
                } catch (Exception e2) {
                    iD = d(e2);
                }
            }
            return 0;
        }
        iD = OsConstants.EPERM;
        return -iD;
    }

    public static h n(x0.d.a aVar, String str) {
        if (aVar.a() == null) {
            return null;
        }
        return m(aVar.a(), str, false, false);
    }

    public static String o(String str) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30 && i2 < 34 && str != null && str.startsWith("/SAF")) {
            int iIndexOf = str.indexOf(47, 5);
            String strSubstring = iIndexOf == -1 ? str.substring(5) : str.substring(5, iIndexOf);
            if (!strSubstring.startsWith("primary") && strSubstring.contains("%3AAndroid")) {
                return strSubstring.substring(0, strSubstring.indexOf("%3A"));
            }
        }
        return null;
    }

    public static int open(String str, int i2) {
        if (x0.d.f2253c) {
            f1697e = 0;
            return -1;
        }
        try {
            Uri uriK = ((OsConstants.O_CREAT | OsConstants.O_WRONLY) & i2) != 0 ? k(2, str) : k(0, str);
            ContentResolver contentResolverA = ZApp.a();
            synchronized (contentResolverA) {
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = contentResolverA.openFileDescriptor(uriK, ZAIO.d(i2));
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    return parcelFileDescriptorOpenFileDescriptor.detachFd();
                }
                f1697e = OsConstants.EIO;
                return -1;
            }
        } catch (Exception e2) {
            f1697e = d(e2);
            return -1;
        }
    }

    public static DIR[] opendir(String str) {
        if (x0.d.f2253c) {
            f1697e = OsConstants.EACCES;
            return null;
        }
        if (str == null || !str.startsWith("/SAF")) {
            f1697e = OsConstants.EINVAL;
            return null;
        }
        Uri uriL = l(1, str);
        Cursor cursorS = uriL == null ? null : s(uriL, f1694b);
        if (cursorS == null) {
            f1697e = OsConstants.EPERM;
            return null;
        }
        try {
            DIR[] dirArr = new DIR[cursorS.getCount()];
            int i2 = 0;
            while (cursorS.moveToNext()) {
                int i3 = i2 + 1;
                dirArr[i2] = new DIR(cursorS.getString(0), "vnd.android.document/directory".equals(cursorS.getString(1)) ? 4 : 8, cursorS.getLong(2), cursorS.getLong(3));
                i2 = i3;
            }
            n0.e.b(cursorS);
            return dirArr;
        } catch (Throwable th) {
            n0.e.b(cursorS);
            throw th;
        }
    }

    public static boolean p(Uri uri) {
        boolean z2 = false;
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = ZApp.a().query(uri, f1693a, null, null, null);
                if (cursorQuery != null && cursorQuery.moveToFirst()) {
                    z2 = true;
                }
                return z2;
            } catch (IllegalArgumentException unused) {
                return false;
            } catch (Exception unused2) {
                a0.b.e(uri);
                return false;
            }
        } finally {
            n0.e.b(cursorQuery);
        }
    }

    public static boolean q(String str) {
        if (!x0.d.f2253c && str != null) {
            if (str.startsWith("/SAF")) {
                return true;
            }
            x0.d.a aVarI = x0.d.i(str);
            if (aVarI != null && c.K(aVarI.f2259f, 8)) {
                return true;
            }
        }
        return false;
    }

    public static ArrayList r(Uri uri, String str) {
        Uri uriBuildChildDocumentsUriUsingTree;
        Cursor cursorS;
        if (uri == null) {
            uri = l(0, str);
        }
        if (uri == null || (cursorS = s((uriBuildChildDocumentsUriUsingTree = DocumentsContract.buildChildDocumentsUriUsingTree(uri, DocumentsContract.getDocumentId(uri))), f1694b)) == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(cursorS.getCount());
        while (cursorS.moveToNext()) {
            a aVar = new a();
            aVar.f1698a = cursorS.getString(0);
            aVar.f1699b = "vnd.android.document/directory".equals(cursorS.getString(1));
            aVar.f1700c = cursorS.getLong(3);
            aVar.f1701d = cursorS.getLong(2);
            aVar.f1702e = DocumentsContract.buildDocumentUriUsingTree(uriBuildChildDocumentsUriUsingTree, cursorS.getString(4));
            arrayList.add(aVar);
        }
        n0.e.b(cursorS);
        return arrayList;
    }

    public static int remove(String str) {
        int iD;
        if (x0.d.f2253c) {
            iD = OsConstants.EACCES;
        } else {
            Uri uriL = l(0, str);
            if (uriL == null) {
                int i2 = f1697e;
                if (i2 == 0) {
                    i2 = OsConstants.EPERM;
                }
                return -i2;
            }
            try {
                if (DocumentsContract.deleteDocument(ZApp.a(), uriL)) {
                    return 0;
                }
                return -OsConstants.EPERM;
            } catch (Exception e2) {
                iD = d(e2);
            }
        }
        return -iD;
    }

    public static int rename(String str, String str2) {
        int iD;
        if (x0.d.f2253c) {
            iD = OsConstants.EACCES;
        } else {
            try {
                int iLastIndexOf = str.lastIndexOf(47);
                String strSubstring = str.substring(iLastIndexOf + 1);
                String strSubstring2 = str.substring(0, iLastIndexOf);
                int iLastIndexOf2 = str2.lastIndexOf(47);
                String strSubstring3 = str2.substring(iLastIndexOf2 + 1);
                String strSubstring4 = str2.substring(0, iLastIndexOf2);
                boolean zU = !strSubstring2.equals(strSubstring4) ? u(strSubstring2, strSubstring, strSubstring4) : true;
                if (zU && !strSubstring.equals(strSubstring3)) {
                    zU = x(strSubstring4, strSubstring, strSubstring3);
                }
                if (zU) {
                    return 0;
                }
                return -OsConstants.EPERM;
            } catch (Exception e2) {
                iD = d(e2);
            }
        }
        return -iD;
    }

    public static Cursor s(Uri uri, String[] strArr) {
        try {
            return ZApp.a().query(uri, strArr, null, null, null);
        } catch (Exception unused) {
            a0.b.e(uri);
            return null;
        }
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x006e: MOVE (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]) (LINE:111), block:B:32:0x006e */
    public static STAT stat(String str) throws Throwable {
        Cursor cursorQuery;
        Cursor cursor;
        Cursor cursor2 = null;
        if (!str.startsWith("/SAF")) {
            f1697e = OsConstants.EINVAL;
            return null;
        }
        Uri uriL = l(0, str);
        try {
            try {
                cursorQuery = ZApp.a().query(uriL, f1695c, null, null, null);
                if (cursorQuery != null) {
                    try {
                        if (cursorQuery.moveToFirst()) {
                            STAT stat = new STAT(cursorQuery.getLong(2), cursorQuery.getLong(1), "vnd.android.document/directory".equals(cursorQuery.getString(0)) ? OsConstants.S_IFDIR : OsConstants.S_IFREG);
                            n0.e.b(cursorQuery);
                            return stat;
                        }
                    } catch (IllegalArgumentException unused) {
                        f1697e = OsConstants.ENOENT;
                    } catch (Exception e2) {
                        e = e2;
                        a0.b.b(uriL);
                        f1697e = d(e);
                    }
                }
                f1697e = OsConstants.EPERM;
            } catch (Throwable th) {
                th = th;
                cursor2 = cursor;
                n0.e.b(cursor2);
                throw th;
            }
        } catch (IllegalArgumentException unused2) {
            cursorQuery = null;
        } catch (Exception e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            n0.e.b(cursor2);
            throw th;
        }
        n0.e.b(cursorQuery);
        return null;
    }

    public static int t(String str) throws FileNotFoundException, InvalidPropertiesFormatException {
        if (x0.d.f2253c || str == null) {
            return -OsConstants.EACCES;
        }
        if ("/SAF".equals(str)) {
            return 0;
        }
        k(3, str);
        return 0;
    }

    public static boolean u(String str, String str2, String str3) {
        if (x0.d.f2253c || Build.VERSION.SDK_INT < 24 || str == null || str2 == null || str3 == null) {
            return false;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("/");
        sb.append(str2);
        return DocumentsContract.moveDocument(ZApp.a(), k(0, sb.toString()), k(0, str), k(0, str3)) != null;
    }

    public static OutputStream v(String str, boolean z2) throws FileNotFoundException, InvalidPropertiesFormatException {
        if (x0.d.f2253c) {
            return null;
        }
        String strO = o(str);
        if (Build.VERSION.SDK_INT < 30 || strO == null) {
            return ZApp.a().openOutputStream(k(2, str));
        }
        x0.d.a aVarJ = x0.d.j(strO);
        if (aVarJ == null) {
            aVarJ = x0.d.m();
        }
        h hVarN = n(aVarJ, "Android/data/ru.zdevs.zarchiver/cache");
        if (hVarN == null) {
            return null;
        }
        Uri uriK = k(3, hVarN.f1108c);
        Uri uriK2 = k(2, hVarN.f1108c + '/' + c.y(str));
        OutputStream outputStreamOpenOutputStream = ZApp.a().openOutputStream(uriK2);
        if (outputStreamOpenOutputStream != null) {
            return new n0.b(outputStreamOpenOutputStream, uriK2, uriK, c.A(str), z2);
        }
        return null;
    }

    public static boolean w(Uri uri) {
        if (x0.d.f2253c || uri == null) {
            return false;
        }
        return DocumentsContract.deleteDocument(ZApp.a(), uri);
    }

    public static boolean x(String str, String str2, String str3) throws FileNotFoundException {
        if (x0.d.f2253c || str == null || str2 == null || str3 == null) {
            return false;
        }
        try {
            return DocumentsContract.renameDocument(ZApp.a(), k(0, c.i(str, str2)), str3) != null;
        } catch (FileNotFoundException e2) {
            if (str.startsWith("/SAF") || new File(c.i(str, str3)).exists()) {
                return true;
            }
            throw e2;
        }
    }
}
