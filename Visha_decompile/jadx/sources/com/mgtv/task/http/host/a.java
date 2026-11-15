package com.mgtv.task.http.host;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.mgtv.task.m;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Hashtable;
import java.util.Map;

public class a extends com.mgtv.task.http.retry.a {
    private static Map<String, HostConfig.Entry> h = new Hashtable();

    @Nullable
    private static volatile HostConfig i;
    private boolean j;
    private boolean k;

    public a() {
        this(0, 0, 3, 1.0f);
    }

    private boolean d() {
        return this.j && i != null && i.masterStatus == 1;
    }

    private boolean e() {
        return this.k && i != null && i.retryStatus == 1;
    }

    public void a(boolean z) {
        this.j = z;
    }

    public void b(boolean z) {
        this.k = z;
    }

    @Override
    public int c(String str, String str2) {
        return this.c;
    }

    public a(int i2, int i3, int i4, float f) {
        super(i2, i3, i4, f);
        this.j = true;
        this.k = true;
    }

    public static void a(@Nullable HostConfig hostConfig) {
        i = hostConfig;
        h.clear();
    }

    @Override
    public int b(String str, String str2) {
        int i2 = this.b;
        if (i2 != 0) {
            return i2;
        }
        HostConfig hostConfigA = a();
        if (hostConfigA == null) {
            return this.b;
        }
        if (a(str, false) == null) {
            return this.b;
        }
        if (this.c == 0) {
            int i3 = hostConfigA.mainHostTimeout;
            return i3 > 0 ? i3 * 1000 : this.b;
        }
        int i4 = hostConfigA.backupHostTimeout;
        return i4 > 0 ? i4 * 1000 : this.b;
    }

    @Override
    public int a(String str, String str2) {
        int i2 = this.a;
        if (i2 != 0) {
            return i2;
        }
        HostConfig hostConfigA = a();
        if (hostConfigA == null) {
            return m.a;
        }
        if (a(str, false) == null) {
            return m.a;
        }
        if (this.c == 0) {
            int i3 = hostConfigA.mainHostTimeout;
            return i3 > 0 ? i3 * 1000 : this.a;
        }
        int i4 = hostConfigA.backupHostTimeout;
        return i4 > 0 ? i4 * 1000 : this.a;
    }

    @Override
    public int d(String str, String str2) {
        HostConfig hostConfigA = a();
        if (hostConfigA == null || a(str, false) == null) {
            return 0;
        }
        return hostConfigA.retryInterval * 1000;
    }

    @Override
    public boolean e(String str, String str2) {
        return e();
    }

    @Override
    public String a(String str, String str2, Exception exc) throws Exception {
        if (e(str, str2)) {
            this.c++;
            int i2 = this.a;
            this.a = (int) (i2 + (i2 * this.e));
            if (f(str, str2)) {
                HostConfig.Entry entryA = a(str, false);
                if (entryA == null) {
                    return null;
                }
                int i3 = this.c - 1;
                String str3 = i3 < entryA.backup.size() ? entryA.backup.get(i3) : null;
                if (!TextUtils.isEmpty(str3)) {
                    URL url = new URL(str);
                    String host = url.getHost();
                    return str.replace(url.getProtocol() + "://" + host, str3);
                }
                throw exc;
            }
            throw exc;
        }
        throw exc;
    }

    private HostConfig.Entry a(String str, boolean z) {
        HostConfig hostConfigA = a();
        if (hostConfigA == null) {
            return null;
        }
        try {
            URL url = new URL(str);
            String host = url.getHost();
            HostConfig.Entry entry = h.get(host);
            if (entry == null) {
                for (HostConfig.Entry entry2 : hostConfigA.retryHosts) {
                    if (new URL(entry2.host).getHost().equals(host)) {
                        h.put(host, entry2);
                        entry = entry2;
                        break;
                    }
                }
            }
            if (entry != null) {
                if (z) {
                    if ((url.getProtocol() + "://" + host).equals(entry.host)) {
                    }
                }
                return entry;
            }
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Nullable
    public HostConfig a() {
        HostConfig hostConfig = i;
        if (hostConfig == null || hostConfig.chemestatus == 0) {
            return null;
        }
        return hostConfig;
    }

    public String a(String str) {
        HostConfig.Entry entryA;
        if (d() && (entryA = a(str, true)) != null && !TextUtils.isEmpty(entryA.master)) {
            try {
                URL url = new URL(str);
                String host = url.getHost();
                return str.replace(url.getProtocol() + "://" + host, entryA.master);
            } catch (MalformedURLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }
}
