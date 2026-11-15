package com.transsion.socket.internal;

import android.app.Application;
import android.media.MediaScannerConnection;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.android.arouter.utils.Consts;
import com.transsion.letswitch.service.api.LetSwitchServiceProxy;
import com.transsion.socket.SocketMain;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

public class SocketUtils {
    public static final int DEFAULT_BUFFERED_SIZE = 10240;
    static final String ENCODING = "utf-8";

    public static String bytesToString(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        try {
            return new String(bArr, ENCODING);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return new String(bArr);
        }
    }

    public static long calculatePathsSize(String[] strArr, List<String> list) {
        long length;
        long j = 0;
        if (strArr == null) {
            return 0L;
        }
        for (String str : strArr) {
            File file = new File(str);
            if (file.exists()) {
                if (file.isDirectory()) {
                    length = calculatePathsSize(file.list(), list);
                } else if (file.isFile()) {
                    length = file.length();
                }
                j += length;
            } else {
                list.add(str);
            }
        }
        return j;
    }

    public static void close(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public static byte[] defaultData() {
        return new byte[0];
    }

    public static boolean renameFile(File file, File file2) {
        return renameFile(file, file2, false);
    }

    public static void renameToTmpFile(File file) {
        if (file.exists()) {
            try {
                File parentFile = file.getParentFile();
                if (parentFile == null) {
                    return;
                }
                int i = 0;
                while (i < 9) {
                    i++;
                    File file2 = new File(parentFile, file.getName().replaceFirst("\\.", "_bk_" + i + Consts.DOT).replace(".tmp", ""));
                    if (!file2.exists()) {
                        file.renameTo(file2);
                        return;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void scanFile(String str) {
        Application applicationApp;
        if (TextUtils.isEmpty(str) || (applicationApp = SocketMain.app()) == null) {
            return;
        }
        try {
            MediaScannerConnection.scanFile(applicationApp, new String[]{str}, null, null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static byte[] stringToBytes(String str) {
        if (str == null) {
            return defaultData();
        }
        try {
            return str.getBytes(ENCODING);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return str.getBytes();
        }
    }

    public static DataInputStream toDataInputStream(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            return new DataInputStream(new ByteArrayInputStream(bArr));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void writeStream(OutputStream outputStream, byte[] bArr, boolean z) {
        if (outputStream == null || bArr == null) {
            if (z) {
                close(outputStream);
                return;
            }
            return;
        }
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
            dataOutputStream.write(bArr, 0, bArr.length);
            dataOutputStream.flush();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (z) {
                close(outputStream);
            }
        }
    }

    public static boolean renameFile(File file, File file2, boolean z) {
        try {
            return LetSwitchServiceProxy.getFileOperation().rename(file.getCanonicalPath(), file2.getCanonicalPath(), z);
        } catch (Exception e) {
            Log.e("FileOperation", "rename fail: " + e.getMessage());
            return false;
        }
    }
}
