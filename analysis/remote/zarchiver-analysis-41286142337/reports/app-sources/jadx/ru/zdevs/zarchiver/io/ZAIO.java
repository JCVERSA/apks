package ru.zdevs.zarchiver.io;

import a0.c;
import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.BufferedOutputStream;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import n0.e;
import ru.zdevs.zarchiver.ZApp;
import v0.f;

public class ZAIO {

    public static class a extends Thread {

        public final InputStream f1703a;

        public final ParcelFileDescriptor f1704b;

        public a(InputStream inputStream, ParcelFileDescriptor parcelFileDescriptor) {
            this.f1703a = inputStream;
            this.f1704b = parcelFileDescriptor;
        }

        @Override
        public final void run() {
            InputStream inputStream = this.f1703a;
            byte[] bArr = new byte[8192];
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(this.f1704b.getFileDescriptor()));
            while (true) {
                try {
                    int i2 = inputStream.read(bArr);
                    if (i2 < 0) {
                        break;
                    } else {
                        bufferedOutputStream.write(bArr, 0, i2);
                    }
                } catch (Exception unused) {
                }
            }
            bufferedOutputStream.flush();
            e.d(inputStream);
            e.d(bufferedOutputStream);
        }
    }

    public static String a(Uri uri) {
        if (uri == null || !"content".equals(uri.getScheme())) {
            return null;
        }
        String strReplace = uri.toString().replace("content://", "/uri/");
        int i2 = 0;
        while (i2 < 14) {
            StringBuilder sb = new StringBuilder();
            sb.append(i2 < 10 ? "$0" : "$");
            sb.append(i2);
            strReplace = strReplace.replace(String.valueOf("\"*+,:;<=>?\\[]|".charAt(i2)), sb.toString());
            i2++;
        }
        String strReplace2 = strReplace.replace("%2F", "%2F/");
        String strC = f.c(null, uri);
        if (strC == null || strReplace2.endsWith(strC)) {
            return strReplace2;
        }
        return strReplace2 + "$$/" + c.y(strC);
    }

    public static long b(Uri uri) {
        Cursor cursor = null;
        try {
            Cursor cursorQuery = ZApp.a().query(uri, new String[]{"_size"}, null, null, null);
            if (cursorQuery == null) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return 0L;
            }
            int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("_size");
            cursorQuery.moveToFirst();
            long j2 = cursorQuery.getLong(columnIndexOrThrow);
            cursorQuery.close();
            return j2;
        } catch (Exception unused) {
            if (0 != 0) {
                cursor.close();
            }
            return 0L;
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    public static Uri c(String str) {
        int i2 = 0;
        if (str.startsWith("/SAF")) {
            return SAF.l(0, str);
        }
        int iLastIndexOf = str.lastIndexOf("$$/");
        if (iLastIndexOf > 0) {
            str = str.substring(0, iLastIndexOf);
        }
        String strReplace = ("content://" + str.substring(5)).replace("%2F/", "%2F");
        while (i2 < 14) {
            StringBuilder sb = new StringBuilder();
            sb.append(i2 < 10 ? "$0" : "$");
            sb.append(i2);
            strReplace = strReplace.replace(sb.toString(), String.valueOf("\"*+,:;<=>?\\[]|".charAt(i2)));
            i2++;
        }
        return Uri.parse(strReplace);
    }

    public static String d(int i2) {
        String str;
        if ((i2 & 2) != 0) {
            str = "rw";
        } else if ((i2 & 1) != 0) {
            str = "w";
        } else {
            str = (i2 & 1024) == 1024 ? "ra" : "r";
        }
        return (i2 & 512) == 512 ? str.concat("t") : str;
    }

    public static ParcelFileDescriptor e(Uri uri, String str) {
        InputStream inputStreamOpenInputStream;
        FileDescriptor fd;
        ParcelFileDescriptor parcelFileDescriptorDup;
        ContentResolver contentResolverA = ZApp.a();
        try {
            return contentResolverA.openFileDescriptor(uri, str);
        } catch (Exception unused) {
            try {
                AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = contentResolverA.openAssetFileDescriptor(uri, str);
                if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                    return null;
                }
                return assetFileDescriptorOpenAssetFileDescriptor.getParcelFileDescriptor();
            } catch (Exception unused2) {
                try {
                    if (str.charAt(0) == 'w' || (inputStreamOpenInputStream = ZApp.a().openInputStream(uri)) == null) {
                        return null;
                    }
                    if ((inputStreamOpenInputStream instanceof FileInputStream) && (fd = ((FileInputStream) inputStreamOpenInputStream).getFD()) != null && (parcelFileDescriptorDup = ParcelFileDescriptor.dup(fd)) != null) {
                        inputStreamOpenInputStream.close();
                        return parcelFileDescriptorDup;
                    }
                    ParcelFileDescriptor[] parcelFileDescriptorArrCreatePipe = ParcelFileDescriptor.createPipe();
                    new a(inputStreamOpenInputStream, parcelFileDescriptorArrCreatePipe[1]).start();
                    return parcelFileDescriptorArrCreatePipe[0];
                } catch (Exception unused3) {
                    return null;
                }
            }
        }
    }

    public static long getSize(String str) {
        Uri uriC = c(str);
        if (uriC == null) {
            return 0L;
        }
        return b(uriC);
    }

    public static int openFd(String str, int i2) {
        Uri uriC = c(str);
        if (uriC == null) {
            return -1;
        }
        ParcelFileDescriptor parcelFileDescriptorE = e(uriC, d(i2));
        if (parcelFileDescriptorE == null) {
            return -3;
        }
        return parcelFileDescriptorE.detachFd();
    }
}
