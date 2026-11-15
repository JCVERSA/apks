package com.bytedance.sdk.component.HiB.TKC.Sj;

import android.util.Log;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.lang.ref.SoftReference;
import java.util.LinkedHashMap;
import java.util.Map;

public class TKC<K, V> {
    private int Dq;
    private int EjP;
    private int HiB;
    private int Jcg;
    private final LinkedHashMap<K, SoftReference<V>> Sj;
    private int TKC;
    private int sP;
    private int vS;

    public TKC(int i10) {
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
        V v10;
        if (k10 == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            try {
                SoftReference<V> softReference = this.Sj.get(k10);
                if (softReference != null) {
                    v10 = softReference.get();
                    if (v10 != null) {
                        this.Jcg++;
                        return v10;
                    }
                    this.Sj.remove(k10);
                } else {
                    v10 = null;
                }
                this.Dq++;
                V vSP = sP(k10);
                if (vSP == null) {
                    return null;
                }
                synchronized (this) {
                    try {
                        this.HiB++;
                        SoftReference<V> softReferencePut = this.Sj.put(k10, new SoftReference<>(vSP));
                        if (softReferencePut != null) {
                            v10 = softReferencePut.get();
                        }
                        if (v10 != null) {
                            this.Sj.put(k10, softReferencePut);
                        } else {
                            this.sP += TKC(k10, vSP);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (v10 != null) {
                    return v10;
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
        return String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.TKC), Integer.valueOf(this.Jcg), Integer.valueOf(this.Dq), Integer.valueOf(i11 != 0 ? (i10 * 100) / i11 : 0));
    }

    protected V sP(K k10) {
        return null;
    }

    public final V Sj(K k10, V v10) {
        V v11;
        if (k10 != null && v10 != null) {
            synchronized (this) {
                try {
                    this.EjP++;
                    this.sP += TKC(k10, v10);
                    SoftReference<V> softReferencePut = this.Sj.put(k10, new SoftReference<>(v10));
                    if (softReferencePut != null) {
                        v11 = softReferencePut.get();
                        if (v11 != null) {
                            this.sP -= TKC(k10, v11);
                        }
                    } else {
                        v11 = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            Sj(this.TKC);
            return v11;
        }
        throw new NullPointerException("key == null || value == null");
    }

    public void Sj(int i10) {
        while (true) {
            synchronized (this) {
                try {
                    if (this.sP < 0 || (this.Sj.isEmpty() && this.sP != 0)) {
                        break;
                        break;
                    }
                    if (this.sP <= i10) {
                        return;
                    }
                    Map.Entry<K, SoftReference<V>> next = this.Sj.entrySet().iterator().next();
                    if (next == null) {
                        return;
                    }
                    K key = next.getKey();
                    SoftReference<V> value = next.getValue();
                    this.Sj.remove(key);
                    if (value != null) {
                        this.sP -= TKC(key, value.get());
                    }
                    this.vS++;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        Log.e("LruCache", "oom maybe occured, clear cache. size= " + this.sP + ", maxSize: " + i10);
        this.sP = 0;
        this.Sj.clear();
    }
}
