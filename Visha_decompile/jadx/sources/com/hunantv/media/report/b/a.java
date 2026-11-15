package com.hunantv.media.report.b;

import android.net.Uri;
import androidx.webkit.ProxyConfig;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.player.utils.UrlUtil;
import com.hunantv.media.report.c.c;
import com.hunantv.media.report.c.f;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.Map;
import java.util.Set;

public class a {
    private static boolean a = false;

    public interface InterfaceC0140a {
        void onFailed(String str, int i);

        void onSuccess(String str, int i, byte[] bArr);
    }

    public static class b {
        private boolean a = false;
        private C0142b b;
        private C0141a c;

        public static class C0141a {
            private int a;
            private String b;

            public C0141a(int i) {
                this.a = i;
            }

            public int a() {
                return this.a;
            }

            public C0141a(int i, String str) {
                this.a = i;
                this.b = str;
            }
        }

        public static class C0142b {
            private int a;
            private String b;
            private String c;
            private byte[] d;

            public C0142b(int i, String str, String str2) {
                this.a = i;
                this.b = str;
                this.c = str2;
            }
        }

        public C0141a b() {
            return this.c;
        }

        public C0142b a() {
            return this.b;
        }
    }

    private static b a(int i) {
        b bVar = new b();
        bVar.a = false;
        bVar.c = new b.C0141a(i);
        return bVar;
    }

    private static String b() {
        return "Requester";
    }

    private static b a(int i, String str) {
        b bVar = new b();
        bVar.a = false;
        bVar.c = new b.C0141a(i, str);
        return bVar;
    }

    public static void b(b bVar, InterfaceC0140a interfaceC0140a) {
        int i;
        byte[] bArr;
        if (interfaceC0140a == null) {
            return;
        }
        int iA = -1;
        String str = null;
        if (bVar != null) {
            if (bVar.a) {
                b.C0142b c0142bA = bVar.a();
                if (c0142bA != null) {
                    str = c0142bA.c;
                    i = c0142bA.a;
                    bArr = c0142bA.d;
                } else {
                    i = 0;
                    bArr = null;
                }
                interfaceC0140a.onSuccess(str, i, bArr);
                return;
            }
            b.C0141a c0141aB = bVar.b();
            if (c0141aB != null) {
                str = c0141aB.b;
                iA = c0141aB.a();
            }
        }
        interfaceC0140a.onFailed(str, iA);
    }

    private static b a(int i, byte[] bArr, String str) {
        b bVar = new b();
        bVar.a = true;
        bVar.b = new b.C0142b(i, new String(bArr), str);
        bVar.b.d = bArr;
        return bVar;
    }

    private static void b(HttpURLConnection httpURLConnection, byte[] bArr) throws Throwable {
        if (httpURLConnection == null || bArr == null || bArr.length <= 0) {
            return;
        }
        DataOutputStream dataOutputStream = null;
        try {
            try {
                DataOutputStream dataOutputStream2 = new DataOutputStream(httpURLConnection.getOutputStream());
                try {
                    dataOutputStream2.write(bArr);
                    dataOutputStream2.flush();
                    f.a(dataOutputStream2);
                    f.a(dataOutputStream2);
                } catch (Exception e) {
                    e = e;
                    dataOutputStream = dataOutputStream2;
                    e.printStackTrace();
                    f.a(dataOutputStream);
                } catch (Throwable th) {
                    th = th;
                    dataOutputStream = dataOutputStream2;
                    f.a(dataOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:122:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:126:0x01f5 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:132:0x0218 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:133:0x021a  */
    /* JADX WARN: Code duplicated, block: B:135:0x021d  */
    /* JADX WARN: Code duplicated, block: B:136:0x0220  */
    /* JADX WARN: Code duplicated, block: B:137:0x0223  */
    /* JADX WARN: Code duplicated, block: B:138:0x0226  */
    /* JADX WARN: Code duplicated, block: B:141:0x022e  */
    /* JADX WARN: Code duplicated, block: B:145:0x023d  */
    /* JADX WARN: Code duplicated, block: B:149:0x0246 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:157:0x026f  */
    /* JADX WARN: Code duplicated, block: B:160:0x0275  */
    /* JADX WARN: Code duplicated, block: B:169:0x0106 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:38:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:42:0x00db  */
    /* JADX WARN: Code duplicated, block: B:45:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:64:0x013e A[Catch: all -> 0x0176, Exception -> 0x017a, IOException -> 0x017f, InterruptedIOException -> 0x0186, SocketTimeoutException -> 0x018b, TRY_LEAVE, TryCatch #17 {IOException -> 0x017f, blocks: (B:62:0x0136, B:64:0x013e), top: B:167:0x0136 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x0192  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v19 */
    /* JADX WARN: Type inference failed for: r11v27 */
    public static b a(String str, Map<String, String> map, String str2, byte[] bArr, int i, boolean z, int i2) throws Throwable {
        String str3;
        String string;
        String str4;
        HttpURLConnection httpURLConnection;
        StringBuilder sb;
        int i3;
        String str5;
        HttpURLConnection httpURLConnection2;
        int responseCode;
        int i4 = i;
        DebugLog.i(b(), "postSync  urlStr:" + str + ",contentType:" + str2 + ",deep:" + i4 + ",retry:" + i2);
        ?? r11 = 3;
        ?? r12 = 3;
        if (i4 > 3) {
            return a(10001, str);
        }
        HttpURLConnection httpURLConnection3 = null;
        char c = 0;
        try {
            try {
                if (map != null) {
                    try {
                        if (map.size() > 0) {
                            String strA = a(map);
                            if (UrlUtil.existParams(str)) {
                                sb = new StringBuilder();
                                sb.append(str);
                                sb.append("&");
                            } else {
                                sb = new StringBuilder();
                                sb.append(str);
                                sb.append("?");
                            }
                            string = sb.toString();
                            try {
                                string = string + strA;
                            } catch (SocketTimeoutException e) {
                                e = e;
                                i4 = i4;
                                httpURLConnection = null;
                                e.printStackTrace();
                                if (z) {
                                }
                                b bVarA = a(10003, string);
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                                return bVarA;
                            } catch (InterruptedIOException e2) {
                                e = e2;
                                str4 = string;
                                e.printStackTrace();
                                b bVarA2 = a(10004, str4);
                                if (httpURLConnection3 != null) {
                                    httpURLConnection3.disconnect();
                                }
                                return bVarA2;
                            } catch (IOException e3) {
                                e = e3;
                                i4 = i4;
                                httpURLConnection = null;
                            } catch (Exception e4) {
                                e = e4;
                                str3 = string;
                                e.printStackTrace();
                                b bVarA3 = a(10000, str3);
                                if (httpURLConnection3 != null) {
                                    httpURLConnection3.disconnect();
                                }
                                return bVarA3;
                            }
                        } else {
                            string = str;
                        }
                        try {
                            try {
                                DebugLog.i(b(), "postSync  requestUrl:" + string);
                                try {
                                    httpURLConnection2 = (HttpURLConnection) new URL(string).openConnection();
                                    if (httpURLConnection2 != null) {
                                        try {
                                            try {
                                                string.startsWith(ProxyConfig.MATCH_HTTPS);
                                                httpURLConnection2.setConnectTimeout(10000);
                                                httpURLConnection2.setReadTimeout(10000);
                                                httpURLConnection2.setDoInput(true);
                                                httpURLConnection2.setUseCaches(false);
                                                httpURLConnection2.setInstanceFollowRedirects(true);
                                                httpURLConnection2.setRequestProperty("Charset", "UTF-8");
                                                httpURLConnection2.setRequestMethod("POST");
                                                httpURLConnection2.setRequestProperty("Content-Type", str2);
                                                httpURLConnection2.setDoOutput(true);
                                                a(httpURLConnection2, bArr);
                                                try {
                                                    httpURLConnection2.connect();
                                                    try {
                                                        responseCode = httpURLConnection2.getResponseCode();
                                                        try {
                                                            if (responseCode == 302) {
                                                                i4++;
                                                                httpURLConnection = httpURLConnection2;
                                                                str5 = string;
                                                                try {
                                                                    b bVarA4 = a(httpURLConnection2.getHeaderField("Location"), map, str2, bArr, i4, z, i2);
                                                                    httpURLConnection.disconnect();
                                                                    return bVarA4;
                                                                } catch (SocketTimeoutException e5) {
                                                                    e = e5;
                                                                    string = str5;
                                                                    e.printStackTrace();
                                                                    if (z) {
                                                                    }
                                                                    b bVarA5 = a(10003, string);
                                                                    if (httpURLConnection != null) {
                                                                        httpURLConnection.disconnect();
                                                                    }
                                                                    return bVarA5;
                                                                } catch (IOException e6) {
                                                                    e = e6;
                                                                }
                                                            } else {
                                                                httpURLConnection = httpURLConnection2;
                                                                str5 = string;
                                                                try {
                                                                    if (responseCode >= 200 || responseCode > 206) {
                                                                        b bVarA6 = a(responseCode, str5);
                                                                        httpURLConnection.disconnect();
                                                                        return bVarA6;
                                                                    }
                                                                    b bVarA7 = a(responseCode, a(httpURLConnection), str5);
                                                                    httpURLConnection.disconnect();
                                                                    return bVarA7;
                                                                } catch (SocketTimeoutException e7) {
                                                                    e = e7;
                                                                    i4 = i4;
                                                                    string = str5;
                                                                    e.printStackTrace();
                                                                    if (z || i2 != 0) {
                                                                        b bVarA8 = a(10003, string);
                                                                        if (httpURLConnection != null) {
                                                                            httpURLConnection.disconnect();
                                                                        }
                                                                        return bVarA8;
                                                                    }
                                                                    DebugLog.d(b(), "requestSync goto retry");
                                                                    b bVarA9 = a(str, map, str2, bArr, i4, z, i2 + 1);
                                                                    if (httpURLConnection != null) {
                                                                        httpURLConnection.disconnect();
                                                                    }
                                                                    return bVarA9;
                                                                } catch (IOException e8) {
                                                                    e = e8;
                                                                }
                                                            }
                                                        } catch (InterruptedIOException e9) {
                                                            e = e9;
                                                            httpURLConnection3 = httpURLConnection2;
                                                            str4 = r12;
                                                            e.printStackTrace();
                                                            b bVarA10 = a(10004, str4);
                                                            if (httpURLConnection3 != null) {
                                                                httpURLConnection3.disconnect();
                                                            }
                                                            return bVarA10;
                                                        } catch (Exception e10) {
                                                            e = e10;
                                                            httpURLConnection3 = httpURLConnection2;
                                                            str3 = r11;
                                                            e.printStackTrace();
                                                            b bVarA11 = a(10000, str3);
                                                            if (httpURLConnection3 != null) {
                                                                httpURLConnection3.disconnect();
                                                            }
                                                            return bVarA11;
                                                        }
                                                    } catch (IOException e11) {
                                                        e = e11;
                                                        httpURLConnection = httpURLConnection2;
                                                        str5 = string;
                                                    }
                                                    i4 = i4;
                                                    string = str5;
                                                    c = 3;
                                                } catch (IOException e12) {
                                                    e = e12;
                                                    httpURLConnection = httpURLConnection2;
                                                    i4 = i4;
                                                    string = string;
                                                    c = 2;
                                                }
                                            } catch (IOException e13) {
                                                e = e13;
                                                httpURLConnection = httpURLConnection2;
                                                c = 1;
                                            }
                                        } catch (SocketTimeoutException e14) {
                                            e = e14;
                                            httpURLConnection = httpURLConnection2;
                                            str5 = string;
                                        } catch (InterruptedIOException e15) {
                                            e = e15;
                                            r12 = string;
                                        } catch (Exception e16) {
                                            e = e16;
                                            r11 = string;
                                        } catch (Throwable th) {
                                            th = th;
                                            httpURLConnection3 = httpURLConnection2;
                                            if (httpURLConnection3 != null) {
                                                httpURLConnection3.disconnect();
                                            }
                                            throw th;
                                        }
                                        e.printStackTrace();
                                        if (!z && i2 == 0) {
                                            DebugLog.d(b(), "requestSync goto retry");
                                            b bVarA12 = a(str, map, str2, bArr, i4, z, i2 + 1);
                                            if (httpURLConnection != null) {
                                                httpURLConnection.disconnect();
                                            }
                                            return bVarA12;
                                        }
                                        if (c == 1) {
                                            i3 = 10006;
                                        } else if (c == 2) {
                                            i3 = 10007;
                                        } else if (c != 3) {
                                            i3 = 10005;
                                        } else {
                                            i3 = 10008;
                                        }
                                        b bVarA13 = a(i3, string);
                                        if (httpURLConnection != null) {
                                            httpURLConnection.disconnect();
                                        }
                                        return bVarA13;
                                    }
                                    try {
                                        b bVarA14 = a(10002);
                                        if (httpURLConnection2 != null) {
                                            httpURLConnection2.disconnect();
                                        }
                                        return bVarA14;
                                    } catch (SocketTimeoutException e17) {
                                        e = e17;
                                        i4 = i4;
                                        httpURLConnection = httpURLConnection2;
                                        string = string;
                                        e.printStackTrace();
                                        if (z) {
                                        }
                                        b bVarA15 = a(10003, string);
                                        if (httpURLConnection != null) {
                                            httpURLConnection.disconnect();
                                        }
                                        return bVarA15;
                                    } catch (InterruptedIOException e18) {
                                        e = e18;
                                        httpURLConnection3 = httpURLConnection2;
                                        str4 = string;
                                        e.printStackTrace();
                                        b bVarA16 = a(10004, str4);
                                        if (httpURLConnection3 != null) {
                                            httpURLConnection3.disconnect();
                                        }
                                        return bVarA16;
                                    } catch (IOException e19) {
                                        e = e19;
                                        i4 = i4;
                                        httpURLConnection = httpURLConnection2;
                                        c = 1;
                                        e.printStackTrace();
                                        if (!z) {
                                        }
                                        if (c == 1) {
                                            i3 = 10006;
                                        } else if (c == 2) {
                                            i3 = 10007;
                                        } else if (c != 3) {
                                            i3 = 10005;
                                        } else {
                                            i3 = 10008;
                                        }
                                        b bVarA17 = a(i3, string);
                                        if (httpURLConnection != null) {
                                            httpURLConnection.disconnect();
                                        }
                                        return bVarA17;
                                    } catch (Exception e20) {
                                        e = e20;
                                        httpURLConnection3 = httpURLConnection2;
                                        str3 = string;
                                        e.printStackTrace();
                                        b bVarA18 = a(10000, str3);
                                        if (httpURLConnection3 != null) {
                                            httpURLConnection3.disconnect();
                                        }
                                        return bVarA18;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        httpURLConnection3 = httpURLConnection2;
                                    }
                                } catch (IOException e21) {
                                    e = e21;
                                    httpURLConnection = null;
                                }
                            } catch (IOException e22) {
                                e = e22;
                                i4 = i4;
                                httpURLConnection = null;
                                string = string;
                            }
                        } catch (SocketTimeoutException e23) {
                            e = e23;
                            str5 = string;
                            i4 = i4;
                            httpURLConnection = null;
                        } catch (InterruptedIOException e24) {
                            e = e24;
                        } catch (Exception e25) {
                            e = e25;
                        }
                    } catch (SocketTimeoutException e26) {
                        e = e26;
                        string = str;
                    } catch (InterruptedIOException e27) {
                        e = e27;
                        str4 = str;
                    } catch (IOException e28) {
                        e = e28;
                        string = str;
                    } catch (Exception e29) {
                        e = e29;
                        str3 = str;
                    }
                } else {
                    string = str;
                    DebugLog.i(b(), "postSync  requestUrl:" + string);
                    httpURLConnection2 = (HttpURLConnection) new URL(string).openConnection();
                    if (httpURLConnection2 != null) {
                        b bVarA19 = a(10002);
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                        return bVarA19;
                    }
                    string.startsWith(ProxyConfig.MATCH_HTTPS);
                    httpURLConnection2.setConnectTimeout(10000);
                    httpURLConnection2.setReadTimeout(10000);
                    httpURLConnection2.setDoInput(true);
                    httpURLConnection2.setUseCaches(false);
                    httpURLConnection2.setInstanceFollowRedirects(true);
                    httpURLConnection2.setRequestProperty("Charset", "UTF-8");
                    httpURLConnection2.setRequestMethod("POST");
                    httpURLConnection2.setRequestProperty("Content-Type", str2);
                    httpURLConnection2.setDoOutput(true);
                    a(httpURLConnection2, bArr);
                    httpURLConnection2.connect();
                    responseCode = httpURLConnection2.getResponseCode();
                    if (responseCode == 302) {
                        i4++;
                        httpURLConnection = httpURLConnection2;
                        str5 = string;
                        b bVarA20 = a(httpURLConnection2.getHeaderField("Location"), map, str2, bArr, i4, z, i2);
                        httpURLConnection.disconnect();
                        return bVarA20;
                    }
                    httpURLConnection = httpURLConnection2;
                    str5 = string;
                    if (responseCode >= 200) {
                    }
                    b bVarA21 = a(responseCode, str5);
                    httpURLConnection.disconnect();
                    return bVarA21;
                    i4 = i4;
                    string = str5;
                    c = 3;
                    e.printStackTrace();
                    if (!z) {
                    }
                    if (c == 1) {
                        i3 = 10006;
                    } else if (c == 2) {
                        i3 = 10007;
                    } else if (c != 3) {
                        i3 = 10005;
                    } else {
                        i3 = 10008;
                    }
                    b bVarA110 = a(i3, string);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return bVarA110;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
        if (httpURLConnection3 != null) {
            httpURLConnection3.disconnect();
        }
        throw th;
    }

    private static String a(Map<String, String> map) {
        String str;
        String str2 = "";
        try {
            Set<Map.Entry<String, String>> setEntrySet = map.entrySet();
            int size = setEntrySet.size() - 1;
            int i = 0;
            for (Map.Entry<String, String> entry : setEntrySet) {
                c.a("theo", "key= " + entry.getKey() + " and value= " + entry.getValue());
                try {
                    str = Uri.encode(entry.getKey(), "UTF-8") + "=" + Uri.encode(entry.getValue(), "UTF-8");
                    if (i < size) {
                        str = str + "&";
                    }
                } catch (Exception unused) {
                    str = entry.getKey() + "=" + entry.getValue();
                    if (i < size) {
                        str = str + "&";
                    }
                }
                i++;
                str2 = str2 + str;
            }
        } catch (Exception unused2) {
        }
        return str2;
    }

    public static void a(final String str, final Map<String, String> map, final String str2, final byte[] bArr, final boolean z, final InterfaceC0140a interfaceC0140a) {
        Thread thread = new Thread(new Runnable() {
            @Override
            public void run() {
                a.b(a.a(str, map, str2, bArr, 0, z, 0), interfaceC0140a);
            }
        });
        thread.setName("mgtvmp_netReq");
        thread.start();
    }

    private static void a(HttpURLConnection httpURLConnection, byte[] bArr) throws Throwable {
        if (httpURLConnection == null || bArr == null || bArr.length <= 0) {
            return;
        }
        b(httpURLConnection, bArr);
    }

    public static void a(boolean z) {
        a = z;
    }

    public static boolean a() {
        return a;
    }

    private static byte[] a(HttpURLConnection httpURLConnection) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        if (httpURLConnection == null) {
            return null;
        }
        try {
            byte[] bArr = new byte[1024];
            byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                try {
                    try {
                        int i = httpURLConnection.getInputStream().read(bArr);
                        if (i < 0) {
                            byte[] byteArray = byteArrayOutputStream.toByteArray();
                            f.a(byteArrayOutputStream);
                            return byteArray;
                        }
                        byteArrayOutputStream.write(bArr, 0, i);
                        byteArrayOutputStream.flush();
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                        f.a(byteArrayOutputStream);
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    byteArrayOutputStream2 = byteArrayOutputStream;
                }
                th = th;
                byteArrayOutputStream2 = byteArrayOutputStream;
                f.a(byteArrayOutputStream2);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            byteArrayOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
