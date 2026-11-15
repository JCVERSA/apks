package com.mgtv.task.http;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

class j {
    public static boolean a(@Nullable String str, @NonNull OutputStream outputStream) {
        try {
            if (str == null) {
                return false;
            }
            outputStream.write(str.getBytes("UTF-8"));
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        } finally {
            a(outputStream);
        }
    }

    public static boolean a(@Nullable String str, @NonNull File file) {
        return a(str, file, false);
    }

    public static boolean a(@Nullable String str, @NonNull File file, boolean z) throws Throwable {
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file, z);
                try {
                    boolean zA = a(str, fileOutputStream2);
                    a(fileOutputStream2);
                    return zA;
                } catch (FileNotFoundException e) {
                    e = e;
                    fileOutputStream = fileOutputStream2;
                    e.printStackTrace();
                    a(fileOutputStream);
                    return false;
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    a(fileOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (FileNotFoundException e2) {
            e = e2;
        }
    }

    @NonNull
    public static String a(@NonNull InputStream inputStream) {
        return a(inputStream, "UTF-8");
    }

    @NonNull
    public static String a(@NonNull InputStream inputStream, String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        while (true) {
            try {
                try {
                    int i = inputStream.read(bArr);
                    if (i > 0) {
                        byteArrayOutputStream.write(bArr, 0, i);
                    } else {
                        String str2 = new String(byteArrayOutputStream.toByteArray(), str);
                        a(byteArrayOutputStream);
                        a((Closeable) inputStream);
                        return str2;
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                    a(byteArrayOutputStream);
                    a((Closeable) inputStream);
                    return "";
                } catch (OutOfMemoryError e2) {
                    e2.printStackTrace();
                    a(byteArrayOutputStream);
                    a((Closeable) inputStream);
                    return "";
                }
            } catch (Throwable th) {
                a(byteArrayOutputStream);
                a((Closeable) inputStream);
                throw th;
            }
        }
    }

    @NonNull
    public static String a(@NonNull File file) {
        try {
            return a((InputStream) new FileInputStream(file));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static void a(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static String a(@NonNull String str) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(str.getBytes("UTF-8"));
            StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
            for (byte b : bArrDigest) {
                int i = b & 255;
                if (i < 16) {
                    sb.append("0");
                }
                sb.append(Integer.toHexString(i));
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return "";
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
            return "";
        }
    }
}
