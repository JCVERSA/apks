package h6;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.bykv.vk.openvk.Sj.Sj.sP.sP.sP;
import com.bykv.vk.openvk.Sj.Sj.sP.sP.uA;
import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.component.Dq.vS;
import j6.b;
import j6.c;
import java.io.Closeable;
import java.io.RandomAccessFile;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

public abstract class a {

    private static final Handler f61294a = new Handler(Looper.getMainLooper());

    public static final Charset f61295b = Charset.forName("UTF-8");

    public static int a() {
        return Math.max(Runtime.getRuntime().availableProcessors(), 1);
    }

    public static int b(c cVar) {
        int iLastIndexOf;
        if (cVar == null) {
            return -1;
        }
        if (cVar.d() == 200) {
            return c(cVar.g(HttpHeaders.CONTENT_LENGTH, null), -1);
        }
        if (cVar.d() == 206) {
            String strG = cVar.g("Content-Range", null);
            if (!TextUtils.isEmpty(strG) && (iLastIndexOf = strG.lastIndexOf("/")) >= 0 && iLastIndexOf < strG.length() - 1) {
                return c(strG.substring(iLastIndexOf + 1), -1);
            }
        }
        return -1;
    }

    public static int c(String str, int i10) {
        if (TextUtils.isEmpty(str)) {
            return i10;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return i10;
        }
    }

    public static sP.d d(c cVar, sP.e eVar, String str, int i10) {
        String strW;
        String str2;
        String string;
        sP.d dVarC = eVar.c(str, i10);
        if (dVarC != null) {
            return dVarC;
        }
        int iB = b(cVar);
        String strG = cVar.g(HttpHeaders.CONTENT_TYPE, null);
        if (iB <= 0 || TextUtils.isEmpty(strG)) {
            return dVarC;
        }
        b bVarC = cVar.c();
        if (bVarC != null) {
            str2 = bVarC.f63049b;
            strW = w(bVarC.f63052e);
        } else {
            strW = "";
            str2 = strW;
        }
        String strV = v(cVar.h());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("requestUrl", str2);
            jSONObject.put("requestHeaders", strW);
            jSONObject.put("responseHeaders", strV);
            string = jSONObject.toString();
        } catch (Throwable unused) {
            string = "";
        }
        sP.d dVar = new sP.d(str, strG, iB, i10, string);
        eVar.d(dVar);
        return dVar;
    }

    public static String e(int i10, int i11) {
        String strU = u(i10, i11);
        if (strU == null) {
            return null;
        }
        return "bytes=".concat(strU);
    }

    public static String f(sP.d dVar, int i10) {
        StringBuilder sb2 = new StringBuilder();
        if (i10 <= 0) {
            sb2.append("HTTP/1.1 200 OK\r\n");
        } else {
            sb2.append("HTTP/1.1 206 Partial Content\r\n");
        }
        sb2.append("Accept-Ranges: bytes\r\n");
        sb2.append("Content-Type: ");
        sb2.append(dVar.f19652b);
        sb2.append("\r\n");
        if (i10 <= 0) {
            sb2.append("Content-Length: ");
            sb2.append(dVar.f19653c);
            sb2.append("\r\n");
        } else {
            sb2.append("Content-Range: bytes ");
            sb2.append(i10);
            sb2.append("-");
            sb2.append(dVar.f19653c - 1);
            sb2.append("/");
            sb2.append(dVar.f19653c);
            sb2.append("\r\n");
            sb2.append("Content-Length: ");
            sb2.append(dVar.f19653c - i10);
            sb2.append("\r\n");
        }
        sb2.append("Connection: close\r\n");
        sb2.append("\r\n");
        String string = sb2.toString();
        boolean z10 = com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b;
        return string;
    }

    public static String g(c cVar, int i10) {
        boolean z10;
        int iB;
        if (cVar == null || !cVar.i()) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(cVar.b().toUpperCase());
        sb2.append(' ');
        sb2.append(cVar.d());
        sb2.append(' ');
        sb2.append(cVar.j());
        sb2.append("\r\n");
        if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(cVar.b().toUpperCase());
            sb3.append(" ");
            sb3.append(cVar.d());
            sb3.append(" ");
            sb3.append(cVar.j());
        }
        List listI = i(cVar.h());
        if (listI != null) {
            int size = listI.size();
            z10 = true;
            for (int i11 = 0; i11 < size; i11++) {
                uA.c cVar2 = (uA.c) listI.get(i11);
                if (cVar2 != null) {
                    String str = cVar2.f19671a;
                    String str2 = cVar2.f19672b;
                    sb2.append(str);
                    sb2.append(": ");
                    sb2.append(str2);
                    sb2.append("\r\n");
                    if ("Content-Range".equalsIgnoreCase(str) || ("Accept-Ranges".equalsIgnoreCase(str) && "bytes".equalsIgnoreCase(str2))) {
                        z10 = false;
                    }
                }
            }
        } else {
            z10 = true;
        }
        if (z10 && (iB = b(cVar)) > 0) {
            sb2.append("Content-Range: bytes ");
            sb2.append(Math.max(i10, 0));
            sb2.append("-");
            sb2.append(iB - 1);
            sb2.append("/");
            sb2.append(iB);
            sb2.append("\r\n");
        }
        sb2.append("Connection: close\r\n");
        sb2.append("\r\n");
        String string = sb2.toString();
        boolean z11 = com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b;
        return string;
    }

    public static String h(c cVar, boolean z10, boolean z11) {
        String strG;
        if (cVar == null) {
            if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                Log.e("TAG_PROXY_Response", "response null");
            }
            return "response null";
        }
        if (!cVar.i()) {
            if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                Log.e("TAG_PROXY_Response", "response code: " + cVar.d());
            }
            return "response code: " + cVar.d();
        }
        String strG2 = cVar.g(HttpHeaders.CONTENT_TYPE, null);
        if (!s(strG2)) {
            if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                Log.e("TAG_PROXY_Response", "Content-Type: ".concat(String.valueOf(strG2)));
            }
            return "Content-Type: ".concat(String.valueOf(strG2));
        }
        int iB = b(cVar);
        if (iB <= 0) {
            if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                Log.e("TAG_PROXY_Response", "Content-Length: ".concat(String.valueOf(iB)));
            }
            return "Content-Length: ".concat(String.valueOf(iB));
        }
        if (z10 && ((strG = cVar.g("Accept-Ranges", null)) == null || !strG.contains("bytes"))) {
            if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                Log.e("TAG_PROXY_Response", "Accept-Ranges: ".concat(String.valueOf(strG)));
            }
            return "Accept-Ranges: ".concat(String.valueOf(strG));
        }
        if (!z11 || cVar.a() != null) {
            return null;
        }
        if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
            Log.e("TAG_PROXY_Response", "response body null");
        }
        return "response body null";
    }

    public static List i(List list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                uA.c cVar = (uA.c) list.get(i10);
                if (cVar != null) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(cVar.f19671a);
                    sb2.append(": ");
                    sb2.append(cVar.f19671a);
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            uA.c cVar2 = (uA.c) it.next();
            if (HttpHeaders.HOST.equals(cVar2.f19671a) || "Keep-Alive".equals(cVar2.f19671a) || "Connection".equals(cVar2.f19671a) || "Proxy-Connection".equals(cVar2.f19671a)) {
                arrayList.add(cVar2);
            }
        }
        list.removeAll(arrayList);
        if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
            int size2 = list.size();
            for (int i11 = 0; i11 < size2; i11++) {
                uA.c cVar3 = (uA.c) list.get(i11);
                if (cVar3 != null) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(cVar3.f19671a);
                    sb3.append(": ");
                    sb3.append(cVar3.f19672b);
                }
            }
        }
        return list;
    }

    public static List j(Map map) {
        if (map != null && !map.isEmpty()) {
            try {
                Set<Map.Entry> setEntrySet = map.entrySet();
                ArrayList arrayList = new ArrayList();
                for (Map.Entry entry : setEntrySet) {
                    arrayList.add(new uA.c((String) entry.getKey(), (String) entry.getValue()));
                }
                return arrayList;
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static List k(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            if (r(str)) {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }

    public static void l(Dq dq2) {
        if (dq2 != null) {
            if (x()) {
                vS.sP(dq2);
                if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                    Log.e("TAG_PROXY_UTIL", "invoke in pool thread");
                    return;
                }
                return;
            }
            dq2.run();
            if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                Log.e("TAG_PROXY_UTIL", "invoke calling thread");
            }
        }
    }

    public static void m(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static void n(RandomAccessFile randomAccessFile) {
        if (randomAccessFile != null) {
            try {
                randomAccessFile.getFD().sync();
                randomAccessFile.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static void o(Runnable runnable) {
        if (runnable != null) {
            if (x()) {
                runnable.run();
            } else {
                f61294a.post(runnable);
            }
        }
    }

    public static void p(ServerSocket serverSocket) {
        if (serverSocket != null) {
            try {
                serverSocket.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static void q(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static boolean r(String str) {
        if (str != null) {
            return str.startsWith("http://") || str.startsWith("https://");
        }
        return false;
    }

    public static boolean s(String str) {
        if (str != null) {
            return str.startsWith("video/") || OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE.equals(str) || "binary/octet-stream".equals(str);
        }
        return false;
    }

    public static int t(String str) {
        return c(str, 0);
    }

    public static String u(int i10, int i11) {
        if (i10 >= 0 && i11 > 0) {
            return i10 + "-" + i11;
        }
        if (i10 > 0) {
            return i10 + "-";
        }
        if (i10 >= 0 || i11 <= 0) {
            return null;
        }
        return "-".concat(String.valueOf(i11));
    }

    public static String v(List list) {
        if (list == null || list.size() == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            uA.c cVar = (uA.c) list.get(0);
            if (cVar != null) {
                sb2.append(cVar.f19671a);
                sb2.append(": ");
                sb2.append(cVar.f19672b);
                sb2.append("\r\n");
            }
        }
        return sb2.toString();
    }

    public static String w(Map map) {
        if (map == null || map.size() == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (Map.Entry entry : map.entrySet()) {
            sb2.append(entry.getKey());
            sb2.append(": ");
            sb2.append(entry.getValue());
            sb2.append("\r\n");
        }
        return sb2.toString();
    }

    public static boolean x() {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }
}
