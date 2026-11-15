package com.bytedance.adsdk.sP;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

public class sef<K, V> {
    private int Dq;
    private int EjP;
    private int HiB;
    private int Jcg;
    private final LinkedHashMap<K, V> Sj;
    private int TKC;
    private int sP;
    private int vS;

    public sef(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.TKC = i10;
        this.Sj = new LinkedHashMap<>(0, 0.75f, true);
    }

    private int TKC(K k10, V v10) {
        int iSP = sP(k10, v10);
        if (iSP >= 0) {
            return iSP;
        }
        throw new IllegalStateException("Negative size: " + k10 + UrlUtils.EQUAL_MARK + v10);
    }

    public final V Sj(K k10) {
        V vPut;
        if (k10 == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            try {
                V v10 = this.Sj.get(k10);
                if (v10 != null) {
                    this.Jcg++;
                    return v10;
                }
                this.Dq++;
                V vSP = sP(k10);
                if (vSP == null) {
                    return null;
                }
                synchronized (this) {
                    try {
                        this.HiB++;
                        vPut = this.Sj.put(k10, vSP);
                        if (vPut != null) {
                            this.Sj.put(k10, vPut);
                        } else {
                            this.sP += TKC(k10, vSP);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (vPut != null) {
                    return vPut;
                }
                Sj(this.TKC);
                return vSP;
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    protected int sP(K k10, V v10) {
        return 1;
    }

    public final synchronized String toString() {
        int i10;
        int i11;
        try {
            i10 = this.Jcg;
            i11 = this.Dq + i10;
        } catch (Throwable th2) {
            throw th2;
        }
        return String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.TKC), Integer.valueOf(this.Jcg), Integer.valueOf(this.Dq), Integer.valueOf(i11 != 0 ? (i10 * 100) / i11 : 0));
    }

    protected V sP(K k10) {
        return null;
    }

    public final V Sj(K k10, V v10) {
        V vPut;
        if (k10 != null && v10 != null) {
            synchronized (this) {
                try {
                    this.EjP++;
                    this.sP += TKC(k10, v10);
                    vPut = this.Sj.put(k10, v10);
                    if (vPut != null) {
                        this.sP -= TKC(k10, vPut);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            Sj(this.TKC);
            return vPut;
        }
        throw new NullPointerException("key == null || value == null");
    }

    public void Sj(int i10) {
        while (true) {
            synchronized (this) {
                try {
                    if (this.sP < 0 || (this.Sj.isEmpty() && this.sP != 0)) {
                        break;
                    }
                    if (this.sP > i10 && !this.Sj.isEmpty()) {
                        Map.Entry<K, V> next = this.Sj.entrySet().iterator().next();
                        K key = next.getKey();
                        V value = next.getValue();
                        this.Sj.remove(key);
                        this.sP -= TKC(key, value);
                        this.vS++;
                    }
                    return;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        throw new IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
    }
}
