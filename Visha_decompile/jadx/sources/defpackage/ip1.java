package defpackage;

import android.content.Context;
import com.lzy.okgo.cookie.SerializableCookie;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import okhttp3.Cookie;
import okhttp3.HttpUrl;

public class ip1 implements vj1 {
    public final Map a;

    public ip1(Context context) {
        tj1.p(context);
        this.a = new HashMap();
        for (SerializableCookie serializableCookie : tj1.o().i()) {
            if (!this.a.containsKey(serializableCookie.host)) {
                this.a.put(serializableCookie.host, new ConcurrentHashMap());
            }
            Cookie cookie = serializableCookie.getCookie();
            ((ConcurrentHashMap) this.a.get(serializableCookie.host)).put(c(cookie), cookie);
        }
    }

    public static boolean d(Cookie cookie) {
        return cookie.expiresAt() < System.currentTimeMillis();
    }

    @Override
    public synchronized List a(HttpUrl httpUrl) {
        try {
            ArrayList arrayList = new ArrayList();
            if (!this.a.containsKey(httpUrl.host())) {
                return arrayList;
            }
            Iterator it = tj1.o().g("host=?", new String[]{httpUrl.host()}).iterator();
            while (it.hasNext()) {
                Cookie cookie = ((SerializableCookie) it.next()).getCookie();
                if (d(cookie)) {
                    e(httpUrl, cookie);
                } else {
                    arrayList.add(cookie);
                }
            }
            return arrayList;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public synchronized void b(HttpUrl httpUrl, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            f(httpUrl, (Cookie) it.next());
        }
    }

    public final String c(Cookie cookie) {
        return cookie.name() + "@" + cookie.domain();
    }

    public synchronized boolean e(HttpUrl httpUrl, Cookie cookie) {
        if (!this.a.containsKey(httpUrl.host())) {
            return false;
        }
        String strC = c(cookie);
        if (!((ConcurrentHashMap) this.a.get(httpUrl.host())).containsKey(strC)) {
            return false;
        }
        ((ConcurrentHashMap) this.a.get(httpUrl.host())).remove(strC);
        tj1.o().b("host=? and name=? and domain=?", new String[]{httpUrl.host(), cookie.name(), cookie.domain()});
        return true;
    }

    public synchronized void f(HttpUrl httpUrl, Cookie cookie) {
        try {
            if (!this.a.containsKey(httpUrl.host())) {
                this.a.put(httpUrl.host(), new ConcurrentHashMap());
            }
            if (d(cookie)) {
                e(httpUrl, cookie);
            } else {
                ((ConcurrentHashMap) this.a.get(httpUrl.host())).put(c(cookie), cookie);
                tj1.o().k(new SerializableCookie(httpUrl.host(), cookie));
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
