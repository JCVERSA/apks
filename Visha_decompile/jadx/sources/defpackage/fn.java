package defpackage;

import android.text.TextUtils;
import android.util.Log;
import android.util.LruCache;
import androidx.webkit.ProxyConfig;
import com.blankj.utilcode.util.Utils;
import com.danikula.videocache.HttpProxyCacheServer;
import java.io.File;

public abstract class fn {
    public static LruCache a = new LruCache(32);
    public static sp0 b = new a();
    public static HttpProxyCacheServer c;

    public class a implements sp0 {
        @Override
        public void onCacheAvailable(File file, String str, int i) {
            fn.a.put(str, Integer.valueOf(i));
        }
    }

    public static HttpProxyCacheServer a() {
        if (c == null) {
            c = c();
        }
        return c;
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        if (!str.toLowerCase().startsWith(ProxyConfig.MATCH_HTTP)) {
            a.put(str, 100);
            return str;
        }
        HttpProxyCacheServer httpProxyCacheServerA = a();
        String strJ = httpProxyCacheServerA.j(str);
        if (TextUtils.isEmpty(strJ)) {
            Log.w("AudioCacheManager", "proxyUrl is empty.");
            return str;
        }
        if (strJ.startsWith("file")) {
            a.put(str, 100);
        }
        httpProxyCacheServerA.p(b, str);
        Log.d("AudioCacheManager", "httpConvertToLocalPath-url:" + str);
        Log.d("AudioCacheManager", "httpConvertToLocalPath-proxyUrl:" + strJ);
        return strJ;
    }

    public static HttpProxyCacheServer c() {
        return new HttpProxyCacheServer.b(Utils.a()).c(av3.v(Utils.a())).d(1073741824L).a();
    }
}
