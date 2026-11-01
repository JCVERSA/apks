package ru.zdevs.zarchiver.io;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore;
import h0.h;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import ru.zdevs.zarchiver.ZApp;

public class KitKatExtSD {

    public static String f1692a;

    public static Uri a(File file) {
        if (file.exists() && file.isDirectory()) {
            return null;
        }
        try {
            ContentResolver contentResolverA = ZApp.a();
            Uri contentUri = MediaStore.Files.getContentUri("external");
            contentResolverA.delete(contentUri, "_data=?", new String[]{file.getAbsolutePath()});
            ContentValues contentValues = new ContentValues();
            contentValues.put("_data", file.getAbsolutePath());
            contentValues.put("_size", (Integer) 1);
            return contentResolverA.insert(contentUri, contentValues);
        } catch (Exception unused) {
            return null;
        }
    }

    public static Uri b(String str) {
        File file = new File(str);
        if (file.exists() && file.isDirectory()) {
            return null;
        }
        try {
            Cursor cursorQuery = ZApp.a().query(MediaStore.Files.getContentUri("external"), new String[]{"_id"}, "_data=?", new String[]{file.getAbsolutePath()}, "_id");
            if (cursorQuery == null) {
                return null;
            }
            try {
                if (cursorQuery.getCount() == 1) {
                    int columnIndex = cursorQuery.getColumnIndex("_id");
                    cursorQuery.moveToFirst();
                    return MediaStore.Files.getContentUri("external", cursorQuery.getLong(columnIndex));
                }
            } finally {
                cursorQuery.close();
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static Uri c(h hVar) {
        File file = hVar.toFile();
        if (file == null) {
            return null;
        }
        return Uri.fromFile(file);
    }

    public static int close(int i2) {
        return 0;
    }

    public static boolean d(File file) {
        if (file.exists()) {
            return false;
        }
        OutputStream outputStreamE = e(file.getAbsoluteFile() + "/.za_tmp.txt");
        if (outputStreamE == null) {
            return false;
        }
        try {
            outputStreamE.close();
            return true;
        } catch (IOException unused) {
            return true;
        }
    }

    public static OutputStream e(String str) {
        try {
            Uri uriA = a(new File(str));
            if (uriA == null) {
                return null;
            }
            return ZApp.a().openOutputStream(uriA);
        } catch (Exception unused) {
            return null;
        }
    }

    public static int errno() {
        return 13;
    }

    public static boolean f(File file) {
        String[] list;
        String absolutePath = file.getAbsolutePath();
        String str = f1692a;
        if (!((str == null || absolutePath == null) ? false : absolutePath.startsWith(str))) {
            return false;
        }
        if (file.isDirectory() && (list = file.list()) != null && list.length > 0) {
            return false;
        }
        String[] strArr = {file.getAbsolutePath()};
        Uri contentUri = MediaStore.Files.getContentUri("external");
        ContentResolver contentResolverA = ZApp.a();
        try {
            contentResolverA.delete(contentUri, "_data=?", strArr);
        } catch (Exception unused) {
        }
        if (file.exists()) {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("_data", file.getAbsolutePath());
                contentResolverA.insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
                contentResolverA.delete(contentUri, "_data=?", strArr);
            } catch (Exception unused2) {
            }
        }
        return !file.exists();
    }

    public static int mkdir(String str) {
        File file = new File(str);
        if (file.exists()) {
            return -1;
        }
        OutputStream outputStreamE = e(file.getAbsoluteFile() + "/.za_tmp.txt");
        if (outputStreamE == null) {
            return -1;
        }
        try {
            outputStreamE.close();
            return 0;
        } catch (IOException unused) {
            return 0;
        }
    }

    public static int mkdirs(String str, int i2) {
        return mkdir(str);
    }

    public static int open(String str, int i2) {
        Uri uriB;
        try {
            if ((i2 & 65) != 0) {
                uriB = (i2 & 1026) != 0 ? b(str) : null;
                if (uriB == null) {
                    uriB = a(new File(str));
                }
            } else {
                uriB = b(str);
            }
            if (uriB == null) {
                return -2;
            }
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = ZApp.a().openFileDescriptor(uriB, ZAIO.d(i2));
            if (parcelFileDescriptorOpenFileDescriptor == null) {
                return -3;
            }
            return parcelFileDescriptorOpenFileDescriptor.detachFd();
        } catch (Exception unused) {
            return -4;
        }
    }

    public static int remove(String str) {
        File file = new File(str);
        return (file.exists() && !f(file)) ? -1 : 0;
    }

    public static int rename(String str, String str2) {
        return -1;
    }
}
