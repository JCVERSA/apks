package com.cloud.tmc.miniutils.util;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.support.v4.media.session.PlaybackStateCompat;
import android.view.View;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

public final class ConvertUtils {
    private static final int BUFFER_SIZE = 8192;
    private static final char[] HEX_DIGITS_UPPER = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private static final char[] HEX_DIGITS_LOWER = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    private ConvertUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static byte[] bitmap2Bytes(Bitmap bitmap) {
        return UtilsBridge.bitmap2Bytes(bitmap);
    }

    public static Drawable bitmap2Drawable(Bitmap bitmap) {
        return UtilsBridge.bitmap2Drawable(bitmap);
    }

    public static byte[] bits2Bytes(String str) {
        int length = str.length() % 8;
        int length2 = str.length() / 8;
        if (length != 0) {
            while (length < 8) {
                str = "0" + str;
                length++;
            }
            length2++;
        }
        byte[] bArr = new byte[length2];
        for (int i10 = 0; i10 < length2; i10++) {
            for (int i11 = 0; i11 < 8; i11++) {
                byte b10 = (byte) (bArr[i10] << 1);
                bArr[i10] = b10;
                bArr[i10] = (byte) (b10 | (str.charAt((i10 * 8) + i11) - '0'));
            }
        }
        return bArr;
    }

    @SuppressLint({"DefaultLocale"})
    public static String byte2FitMemorySize(long j10) {
        return byte2FitMemorySize(j10, 3);
    }

    public static Bitmap bytes2Bitmap(byte[] bArr) {
        return UtilsBridge.bytes2Bitmap(bArr);
    }

    public static String bytes2Bits(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (byte b10 : bArr) {
            for (int i10 = 7; i10 >= 0; i10--) {
                sb2.append(((b10 >> i10) & 1) == 0 ? '0' : '1');
            }
        }
        return sb2.toString();
    }

    public static Drawable bytes2Drawable(byte[] bArr) {
        return UtilsBridge.bytes2Drawable(bArr);
    }

    public static String bytes2HexString(byte[] bArr) {
        return bytes2HexString(bArr, true);
    }

    public static JSONObject bytes2JSONObject(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            return new JSONObject(new String(bArr));
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static String bytes2String(byte[] bArr) {
        return bytes2String(bArr, "");
    }

    public static int dp2px(float f10) {
        return UtilsBridge.dp2px(f10);
    }

    public static Bitmap drawable2Bitmap(Drawable drawable) {
        return UtilsBridge.drawable2Bitmap(drawable);
    }

    public static byte[] drawable2Bytes(Drawable drawable) {
        return UtilsBridge.drawable2Bytes(drawable);
    }

    private static String getSafeCharset(String str) {
        return (UtilsBridge.isSpace(str) || !Charset.isSupported(str)) ? "UTF-8" : str;
    }

    private static int hex2Dec(char c10) {
        if (c10 >= '0' && c10 <= '9') {
            return c10 - '0';
        }
        if (c10 < 'A' || c10 > 'F') {
            throw new IllegalArgumentException();
        }
        return c10 - '7';
    }

    public static byte[] hexString2Bytes(String str) {
        if (UtilsBridge.isSpace(str)) {
            return new byte[0];
        }
        int length = str.length();
        if (length % 2 != 0) {
            str = "0" + str;
            length++;
        }
        char[] charArray = str.toUpperCase().toCharArray();
        byte[] bArr = new byte[length >> 1];
        for (int i10 = 0; i10 < length; i10 += 2) {
            bArr[i10 >> 1] = (byte) ((hex2Dec(charArray[i10]) << 4) | hex2Dec(charArray[i10 + 1]));
        }
        return bArr;
    }

    public static int hexString2Int(String str) {
        return Integer.parseInt(str, 16);
    }

    public static ByteArrayOutputStream input2OutputStream(InputStream inputStream) {
        try {
            if (inputStream == null) {
                return null;
            }
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    byte[] bArr = new byte[8192];
                    while (true) {
                        int i10 = inputStream.read(bArr, 0, 8192);
                        if (i10 == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, i10);
                    }
                    byteArrayOutputStream.close();
                    try {
                        inputStream.close();
                    } catch (IOException e10) {
                        e10.printStackTrace();
                    }
                    return byteArrayOutputStream;
                } catch (Throwable th2) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (IOException e11) {
                e11.printStackTrace();
                try {
                    inputStream.close();
                } catch (IOException e12) {
                    e12.printStackTrace();
                }
                return null;
            }
        } catch (Throwable th4) {
            try {
                inputStream.close();
            } catch (IOException e13) {
                e13.printStackTrace();
            }
            throw th4;
        }
    }

    public static byte[] inputStream2Bytes(InputStream inputStream) {
        if (inputStream == null) {
            return new byte[0];
        }
        ByteArrayOutputStream byteArrayOutputStreamInput2OutputStream = input2OutputStream(inputStream);
        return byteArrayOutputStreamInput2OutputStream == null ? new byte[0] : byteArrayOutputStreamInput2OutputStream.toByteArray();
    }

    public static List<String> inputStream2Lines(InputStream inputStream) {
        return inputStream2Lines(inputStream, "");
    }

    public static String int2HexString(int i10) {
        return Integer.toHexString(i10);
    }

    public static int px2dp(float f10) {
        return UtilsBridge.px2dp(f10);
    }

    public static int px2sp(float f10) {
        return UtilsBridge.px2sp(f10);
    }

    public static int sp2px(float f10) {
        return UtilsBridge.sp2px(f10);
    }

    public static Bitmap view2Bitmap(View view) {
        return UtilsBridge.view2Bitmap(view);
    }

    public static byte[] bitmap2Bytes(Bitmap bitmap, Bitmap.CompressFormat compressFormat, int i10) {
        return UtilsBridge.bitmap2Bytes(bitmap, compressFormat, i10);
    }

    @SuppressLint({"DefaultLocale"})
    public static String byte2FitMemorySize(long j10, int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("precision shouldn't be less than zero!");
        }
        if (j10 < 0) {
            throw new IllegalArgumentException("byteSize shouldn't be less than zero!");
        }
        if (j10 < 1024) {
            return String.format("%." + i10 + "fB", Double.valueOf(j10));
        }
        if (j10 < PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            return String.format("%." + i10 + "fKB", Double.valueOf(j10 / 1024.0d));
        }
        if (j10 < 1073741824) {
            return String.format("%." + i10 + "fMB", Double.valueOf(j10 / 1048576.0d));
        }
        return String.format("%." + i10 + "fGB", Double.valueOf(j10 / 1.073741824E9d));
    }

    public static String bytes2HexString(byte[] bArr, boolean z10) {
        if (bArr == null) {
            return "";
        }
        char[] cArr = z10 ? HEX_DIGITS_UPPER : HEX_DIGITS_LOWER;
        int length = bArr.length;
        if (length <= 0) {
            return "";
        }
        char[] cArr2 = new char[length << 1];
        int i10 = 0;
        for (byte b10 : bArr) {
            int i11 = i10 + 1;
            cArr2[i10] = cArr[(b10 >> 4) & 15];
            i10 += 2;
            cArr2[i11] = cArr[b10 & 15];
        }
        return new String(cArr2);
    }

    public static String bytes2String(byte[] bArr, String str) {
        if (bArr == null) {
            return null;
        }
        try {
            return new String(bArr, getSafeCharset(str));
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
            return new String(bArr);
        }
    }

    public static byte[] drawable2Bytes(Drawable drawable, Bitmap.CompressFormat compressFormat, int i10) {
        return UtilsBridge.drawable2Bytes(drawable, compressFormat, i10);
    }

    public static List<String> inputStream2Lines(InputStream inputStream, String str) throws Throwable {
        BufferedReader bufferedReader = null;
        try {
            try {
                ArrayList arrayList = new ArrayList();
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(inputStream, getSafeCharset(str)));
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line != null) {
                            arrayList.add(line);
                        } else {
                            try {
                                break;
                            } catch (IOException e10) {
                                e10.printStackTrace();
                            }
                        }
                    } catch (IOException e11) {
                        e = e11;
                        bufferedReader = bufferedReader2;
                        e.printStackTrace();
                        ArrayList arrayList2 = new ArrayList();
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e12) {
                                e12.printStackTrace();
                            }
                        }
                        return arrayList2;
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e13) {
                                e13.printStackTrace();
                            }
                        }
                        throw th;
                    }
                }
                bufferedReader2.close();
                return arrayList;
            } catch (IOException e14) {
                e = e14;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
