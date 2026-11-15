package com.mgtv.data.aphone.core.j;

import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.alibaba.android.arouter.utils.Consts;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public class j {
    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private static String b(File file) {
        int iLastIndexOf;
        if (file != null && file.exists() && !file.isDirectory()) {
            String name = file.getName();
            if (!name.equals("") && !name.endsWith(Consts.DOT) && (iLastIndexOf = name.lastIndexOf(Consts.DOT)) != -1) {
                return name.substring(iLastIndexOf + 1).toLowerCase(Locale.US);
            }
        }
        return null;
    }

    public static String a(InputStream inputStream) {
        return a(inputStream, "UTF-8");
    }

    public static String a(InputStream inputStream, String str) {
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

    public static HashMap<String, String> a(String str) throws JSONException {
        HashMap<String, String> map = new HashMap<>();
        JSONObject jSONObject = new JSONObject(str);
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String strValueOf = String.valueOf(itKeys.next());
            map.put(strValueOf, (jSONObject.get(strValueOf).toString() == null || jSONObject.get(strValueOf).toString().equals("null")) ? "" : jSONObject.get(strValueOf).toString());
        }
        return map;
    }

    public static String a(File file) {
        String strB = b(file);
        if (strB == null) {
            return "file/*";
        }
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(strB);
        return !TextUtils.isEmpty(mimeTypeFromExtension) ? mimeTypeFromExtension : "file/*";
    }
}
