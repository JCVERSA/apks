package com.hunantv.media.player.utils;

import android.content.Context;
import androidx.annotation.Nullable;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.channels.FileChannel;

public class FileUtil {
    public static void close(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static boolean copyAssertThrow(Context context, String str, String str2) throws Throwable {
        FileOutputStream fileOutputStream;
        if (context == null || StringUtil.isEmpty(str) || StringUtil.isEmpty(str2)) {
            return false;
        }
        InputStream inputStream = null;
        try {
            InputStream inputStreamOpen = context.getAssets().open(str);
            try {
                File file = new File(str2);
                deleteFile(file);
                mkdirs(file.getParentFile());
                fileOutputStream = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i = inputStreamOpen.read(bArr);
                        if (i < 0) {
                            close(inputStreamOpen);
                            close(fileOutputStream);
                            return true;
                        }
                        fileOutputStream.write(bArr, 0, i);
                        fileOutputStream.flush();
                    }
                } catch (Throwable th) {
                    th = th;
                    inputStream = inputStreamOpen;
                    close(inputStream);
                    close(fileOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.io.Closeable, java.io.FileInputStream] */
    private static boolean copyFile(File file, File file2) throws Throwable {
        ?? name;
        if (file2.exists()) {
            if (file2.isDirectory()) {
                name = file.getName();
                file2 = new File(file2, (String) name);
            }
        } else if (!mkdirs(file2.getParentFile()) || !createNewFile(file2)) {
            return false;
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                name = new FileInputStream(file);
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                    try {
                        FileChannel channel = name.getChannel();
                        FileChannel channel2 = fileOutputStream2.getChannel();
                        channel2.transferFrom(channel, 0L, channel.size());
                        close(channel);
                        close(channel2);
                        close(fileOutputStream2);
                        close(name);
                        return true;
                    } catch (FileNotFoundException e) {
                        e = e;
                        fileOutputStream = fileOutputStream2;
                        e.printStackTrace();
                        close(fileOutputStream);
                        close(name);
                        return false;
                    } catch (IOException e2) {
                        e = e2;
                        fileOutputStream = fileOutputStream2;
                        e.printStackTrace();
                        close(fileOutputStream);
                        close(name);
                        return false;
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        close(fileOutputStream);
                        close(name);
                        throw th;
                    }
                } catch (FileNotFoundException e3) {
                    e = e3;
                } catch (IOException e4) {
                    e = e4;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (FileNotFoundException e5) {
            e = e5;
            name = 0;
        } catch (IOException e6) {
            e = e6;
            name = 0;
        } catch (Throwable th3) {
            th = th3;
            name = 0;
        }
    }

    public static boolean createNewFile(File file) {
        if (file == null) {
            return false;
        }
        try {
            return file.createNewFile() || file.isFile();
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean deleteDir(File file) {
        if (file == null) {
            return false;
        }
        if (file.isDirectory()) {
            for (String str : file.list()) {
                if (!deleteDir(new File(file, str))) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    public static boolean deleteFile(File file) {
        if (file == null) {
            return false;
        }
        return file.delete();
    }

    public static boolean exist(String str) {
        if (str == null) {
            return false;
        }
        try {
            return new File(str).exists();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static String[] list(File file, final String str) {
        if (file == null) {
            return null;
        }
        try {
            return str == null ? file.list() : file.list(new FilenameFilter() {
                @Override
                public boolean accept(File file2, String str2) {
                    if (str2 != null) {
                        return str2.endsWith(str);
                    }
                    return false;
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static int listCount(File file, String str) {
        String[] list = list(file, str);
        if (list != null) {
            return list.length;
        }
        return 0;
    }

    public static boolean mkdirs(File file) {
        if (file == null) {
            return false;
        }
        return file.mkdirs() || file.isDirectory();
    }

    public static String read(String str) throws Throwable {
        InputStreamReader inputStreamReader;
        InputStreamReader inputStreamReader2 = null;
        try {
            char[] cArr = new char[1024];
            StringBuffer stringBuffer = new StringBuffer();
            inputStreamReader = new InputStreamReader(new FileInputStream(str));
            while (true) {
                try {
                    try {
                        int i = inputStreamReader.read(cArr);
                        if (i < 0) {
                            String string = stringBuffer.toString();
                            close(inputStreamReader);
                            return string;
                        }
                        stringBuffer.append(cArr, 0, i);
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                        close(inputStreamReader);
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    inputStreamReader2 = inputStreamReader;
                }
                th = th;
                inputStreamReader2 = inputStreamReader;
                close(inputStreamReader2);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            inputStreamReader = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Not initialized variable reg: 3, insn: 0x0026: MOVE (r0 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:11:0x0026 */
    public static String readAssert(Context context, String str) throws Throwable {
        InputStreamReader inputStreamReader;
        Closeable closeable;
        Closeable closeable2 = null;
        if (context == null) {
            return null;
        }
        try {
            try {
                char[] cArr = new char[1024];
                StringBuffer stringBuffer = new StringBuffer();
                inputStreamReader = new InputStreamReader(context.getAssets().open(str));
                while (true) {
                    try {
                        int i = inputStreamReader.read(cArr);
                        if (i < 0) {
                            String string = stringBuffer.toString();
                            close(inputStreamReader);
                            return string;
                        }
                        stringBuffer.append(cArr, 0, i);
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                        close(inputStreamReader);
                        return null;
                    }
                }
            } catch (Throwable th) {
                th = th;
                closeable2 = closeable;
                close(closeable2);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            inputStreamReader = null;
        } catch (Throwable th2) {
            th = th2;
            close(closeable2);
            throw th;
        }
    }

    public static byte[] readBytes(InputStream inputStream) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        if (inputStream == null) {
            return null;
        }
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                try {
                    byte[] bArr = new byte[2048];
                    while (true) {
                        int i = inputStream.read(bArr);
                        if (i < 0) {
                            byte[] byteArray = byteArrayOutputStream.toByteArray();
                            close(byteArrayOutputStream);
                            return byteArray;
                        }
                        byteArrayOutputStream.write(bArr, 0, i);
                        th = th;
                        byteArrayOutputStream2 = byteArrayOutputStream;
                        close(byteArrayOutputStream2);
                        throw th;
                    }
                } catch (Exception e) {
                    e = e;
                    e.printStackTrace();
                    close(byteArrayOutputStream);
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                byteArrayOutputStream2 = byteArrayOutputStream;
            }
        } catch (Exception e2) {
            e = e2;
            byteArrayOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static boolean remkdirs(String str) {
        deleteDir(str);
        return mkdirs(str) && exist(str);
    }

    public static boolean deleteDir(String str) {
        if (StringUtil.isEmpty(str)) {
            return false;
        }
        try {
            return deleteDir(new File(str));
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean mkdirs(String str) {
        return mkdirs(new File(str));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.io.Closeable] */
    public static byte[] readBytes(String str) throws Throwable {
        Throwable th;
        FileInputStream fileInputStream;
        try {
            try {
                File file = new File((String) str);
                if (file.length() >= 2147483647L) {
                    close(null);
                    return null;
                }
                fileInputStream = new FileInputStream(file);
                try {
                    byte[] bytes = readBytes(fileInputStream);
                    close(fileInputStream);
                    return bytes;
                } catch (Exception e) {
                    e = e;
                }
            } catch (Throwable th2) {
                th = th2;
                close(str);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            str = 0;
            close(str);
            throw th;
        }
        e.printStackTrace();
        close(fileInputStream);
        return null;
    }
}
