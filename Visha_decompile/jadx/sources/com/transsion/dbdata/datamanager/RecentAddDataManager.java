package com.transsion.dbdata.datamanager;

import android.net.Uri;
import android.text.TextUtils;
import com.blankj.utilcode.util.LogUtils;
import com.google.gson.reflect.TypeToken;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.media.MediaItem;
import defpackage.fi1;
import defpackage.it1;
import defpackage.r0a;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

public class RecentAddDataManager {
    public static final String m = "RecentAddDataManager";
    public static final RecentAddDataManager n = new RecentAddDataManager();
    public long d;
    public File e;
    public Uri i;
    public Uri j;
    public Set a = null;
    public Set b = null;
    public Set c = null;
    public final Object f = new Object();
    public final Object g = new Object();
    public final Object h = new Object();
    public Set k = new TreeSet();
    public Set l = new TreeSet();

    public static RecentAddDataManager a() {
        return n;
    }

    public Set b(boolean z) {
        return z ? this.k : this.l;
    }

    public Set c(boolean z) {
        return z ? this.a : this.b;
    }

    public void d(boolean z) {
        if (this.c != null) {
            if (z && this.a != null) {
                return;
            }
            if (!z && this.b != null) {
                return;
            }
        }
        synchronized (this.h) {
            try {
                if (z) {
                    if (this.a == null) {
                        try {
                            String string = MMKV.p().getString("recentFilterVideo", "");
                            if (TextUtils.isEmpty(string)) {
                                this.a = new TreeSet();
                            } else {
                                Set set = (Set) fi1.c(string, new TypeToken<TreeSet<Integer>>() {
                                }.getType());
                                this.a = set;
                                if (set == null) {
                                    this.a = new TreeSet();
                                }
                            }
                        } catch (Exception e) {
                            LogUtils.m(m, "Exception:" + e.getMessage());
                        }
                    }
                } else if (this.b == null) {
                    try {
                        String string2 = MMKV.p().getString("recentFilterMusic", "");
                        if (TextUtils.isEmpty(string2)) {
                            this.b = new TreeSet();
                        } else {
                            Set set2 = (Set) fi1.c(string2, new TypeToken<TreeSet<Integer>>() {
                            }.getType());
                            this.b = set2;
                            if (set2 == null) {
                                this.b = new TreeSet();
                            }
                        }
                    } catch (Exception e2) {
                        LogUtils.m(m, "Exception:" + e2.getMessage());
                    }
                }
                if (this.c == null) {
                    try {
                        String string3 = MMKV.p().getString("recentFilterPath", "");
                        if (TextUtils.isEmpty(string3)) {
                            this.c = new TreeSet();
                        } else {
                            Set set3 = (Set) fi1.c(string3, new TypeToken<TreeSet<Integer>>() {
                            }.getType());
                            this.c = set3;
                            if (set3 == null) {
                                this.c = new TreeSet();
                            }
                        }
                    } catch (Exception e3) {
                        LogUtils.m(m, "Exception:" + e3.getMessage());
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean e(MediaItem mediaItem, boolean z) {
        if (mediaItem != null) {
            try {
                if (!r0a.g(mediaItem.data)) {
                    d(z);
                    return (mediaItem.data == null || !b(z).contains(Integer.valueOf(mediaItem.id)) || c(z).contains(Integer.valueOf(mediaItem.id))) ? false : true;
                }
            } catch (Exception e) {
                LogUtils.m(m, "Exception:" + e.getMessage());
            }
        }
        return false;
    }

    public boolean f(MediaItem mediaItem, boolean z) {
        synchronized (this.f) {
            boolean z2 = false;
            if (mediaItem != null) {
                try {
                    if (!r0a.g(mediaItem.data)) {
                        d(z);
                        File file = new File(mediaItem.data);
                        this.e = file;
                        if (file.exists() && it1.e(this.e.lastModified())) {
                            z2 = true;
                        }
                        return z2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return false;
        }
    }

    public boolean g(MediaItem mediaItem, boolean z) {
        if (mediaItem == null || r0a.g(mediaItem.data)) {
            return false;
        }
        d(z);
        if (mediaItem.dateModified <= 0) {
            LogUtils.O("isRecentAddJustDateNoIo:" + mediaItem.data + "  " + mediaItem.dateModified);
        }
        return it1.e(mediaItem.dateModified * 1000);
    }

    public boolean h(MediaItem mediaItem, boolean z) {
        if (mediaItem != null) {
            try {
                if (!r0a.g(mediaItem.data)) {
                    d(z);
                    if (mediaItem.data == null) {
                        return false;
                    }
                    File file = new File(mediaItem.data);
                    return file.exists() && it1.e(file.lastModified()) && !this.c.contains(Integer.valueOf(mediaItem.id));
                }
            } catch (Exception e) {
                LogUtils.m(m, "Exception:" + e.getMessage());
            }
        }
        return false;
    }

    public void i(int i, boolean z) {
        if (System.currentTimeMillis() - this.d < 1000) {
            return;
        }
        d(z);
        try {
            c(z).add(Integer.valueOf(i));
            this.c.add(Integer.valueOf(i));
            MMKV.p().w("recentFilterPath", fi1.e(this.c));
            MMKV.p().w(z ? "recentFilterVideo" : "recentFilterMusic", fi1.e(c(z)));
        } catch (Exception e) {
            LogUtils.m(m, "Exception:" + e.getMessage());
        }
        this.d = System.currentTimeMillis();
    }

    public void j(List list, boolean z) {
        if (list == null) {
            return;
        }
        d(z);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            MediaItem mediaItem = (MediaItem) it.next();
            if (mediaItem != null) {
                c(z).add(Integer.valueOf(mediaItem.id));
                this.c.add(Integer.valueOf(mediaItem.id));
            }
        }
        MMKV.p().w("recentFilterPath", fi1.e(this.c));
        MMKV.p().w(z ? "recentFilterVideo" : "recentFilterMusic", fi1.e(c(z)));
    }

    public void k(int i) {
        if (System.currentTimeMillis() - this.d < 1000) {
            return;
        }
        d(true);
        try {
            this.c.add(Integer.valueOf(i));
            MMKV.p().w("recentFilterPath", fi1.e(this.c));
        } catch (Exception e) {
            LogUtils.m(m, "Exception:" + e.getMessage());
        }
        this.d = System.currentTimeMillis();
    }

    public synchronized void l(Set set, boolean z) {
        b(z).clear();
        b(z).addAll(set);
    }
}
