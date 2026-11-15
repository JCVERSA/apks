package com.mgtv.task.http.retry;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.mgtv.task.m;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

public class a implements c {

    @Nullable
    private static volatile RetryConfig i;
    protected int a;
    protected int b;
    protected int c;
    protected int d;
    protected final float e;
    protected c.a f;
    protected int g;
    private final Map<String, RetryConfig.Entry> h;

    public a() {
        this(0, 0, 3, 1.0f);
    }

    private RetryConfig.Entry g(String str, String str2) {
        RetryConfig retryConfigC;
        if (!e(str, str2) || (retryConfigC = c()) == null) {
            return null;
        }
        try {
            URL url = new URL(str);
            String host = url.getHost();
            String path = url.getPath();
            RetryConfig.Entry entry = this.h.get(host);
            if (entry != null) {
                return entry;
            }
            for (String str3 : retryConfigC.specialPath) {
                int iIndexOf = str3.indexOf(47);
                if (iIndexOf != -1) {
                    String strSubstring = str3.substring(0, iIndexOf);
                    String strSubstring2 = str3.substring(iIndexOf, str3.length());
                    if (strSubstring.equals(host) && strSubstring2.equals(path)) {
                        return null;
                    }
                }
            }
            for (RetryConfig.Entry entry2 : retryConfigC.retryHosts) {
                if (entry2.host.equals(host) && !entry2.backup.isEmpty()) {
                    this.h.put(str, entry2);
                    return entry2;
                }
            }
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public void a(int i2) {
        this.a = i2;
        this.g = i2;
    }

    public void b(int i2) {
        this.b = i2;
    }

    public void c(int i2) {
        this.d = i2;
    }

    @Override
    public int d(String str, String str2) {
        RetryConfig retryConfigC = c();
        if (retryConfigC == null || g(str, str2) == null) {
            return 0;
        }
        return retryConfigC.retryInterval * 1000;
    }

    public boolean e(String str, String str2) {
        return !"POST".equalsIgnoreCase(str2);
    }

    public boolean f(String str, String str2) {
        return this.c <= this.d;
    }

    public a(int i2, int i3, int i4, float f) {
        this.h = new Hashtable();
        this.a = i2;
        this.b = i3;
        this.d = i4;
        this.e = f;
        this.g = i2;
    }

    @Override
    public int b(String str, String str2) {
        int i2 = this.b;
        if (i2 != 0) {
            return i2;
        }
        RetryConfig retryConfigC = c();
        if (retryConfigC == null) {
            return this.b;
        }
        if (g(str, str2) == null) {
            return this.b;
        }
        if (this.c == 0) {
            int i3 = retryConfigC.mainHostTimeout;
            return i3 > 0 ? i3 * 1000 : this.b;
        }
        int i4 = retryConfigC.backupHostTimeout;
        return i4 > 0 ? i4 * 1000 : this.b;
    }

    @Override
    public int c(String str, String str2) {
        return this.c;
    }

    public static void a(@Nullable RetryConfig retryConfig) {
        i = retryConfig;
    }

    @Nullable
    public RetryConfig c() {
        RetryConfig retryConfig = i;
        if (retryConfig == null || retryConfig.retryStatus == 0) {
            return null;
        }
        return retryConfig;
    }

    @Override
    public int a(String str, String str2) {
        int i2 = this.a;
        if (i2 != 0) {
            return i2;
        }
        RetryConfig retryConfigC = c();
        if (retryConfigC == null) {
            return m.a;
        }
        if (g(str, str2) == null) {
            return m.a;
        }
        if (this.c == 0) {
            int i3 = retryConfigC.mainHostTimeout;
            return i3 > 0 ? i3 * 1000 : this.a;
        }
        int i4 = retryConfigC.backupHostTimeout;
        return i4 > 0 ? i4 * 1000 : this.a;
    }

    @Override
    public c.a b() {
        return this.f;
    }

    @Override
    public String a(String str, String str2, Exception exc) throws Exception {
        this.c++;
        int i2 = this.a;
        this.a = (int) (i2 + (i2 * this.e));
        if (f(str, str2)) {
            RetryConfig.Entry entryG = g(str, str2);
            if (entryG == null) {
                return null;
            }
            int i3 = this.c - 1;
            String str3 = i3 < entryG.backup.size() ? entryG.backup.get(i3) : null;
            if (!TextUtils.isEmpty(str3)) {
                URL url = new URL(str);
                String strReplace = str.replace(url.getHost(), str3);
                List<String> list = entryG.scheme;
                if (list == null || i3 >= list.size()) {
                    return strReplace;
                }
                String str4 = entryG.scheme.get(i3);
                return !TextUtils.isEmpty(str4) ? strReplace.replaceFirst(url.getProtocol(), str4) : strReplace;
            }
            throw exc;
        }
        throw exc;
    }
}
