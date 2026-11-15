package com.mbridge.msdk.foundation.tools;

import android.text.TextUtils;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

public final class q0 {

    private final Object f34959a;

    private final Object f34960b;

    private final Object f34961c;

    private final Object f34962d;

    public volatile JSONObject f34963e;

    private String f34964f;

    private volatile ConcurrentHashMap<String, Boolean> f34965g;

    private volatile ConcurrentHashMap<String, Integer> f34966h;

    private volatile ConcurrentHashMap<String, String> f34967i;

    private volatile com.mbridge.msdk.setting.g f34968j;

    private static final class b {

        private static final q0 f34969a = new q0();
    }

    public static q0 a() {
        return b.f34969a;
    }

    private static Integer b(String str, ConcurrentHashMap<String, Integer> concurrentHashMap) {
        try {
            return concurrentHashMap.get(str);
        } catch (Exception unused) {
            return null;
        }
    }

    private static String c(String str, ConcurrentHashMap<String, String> concurrentHashMap) {
        try {
            return concurrentHashMap.get(str);
        } catch (Exception unused) {
            return null;
        }
    }

    private ConcurrentHashMap<String, String> d() {
        synchronized (this.f34960b) {
            try {
                if (this.f34967i == null) {
                    this.f34967i = new ConcurrentHashMap<>();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return this.f34967i;
    }

    private boolean e() {
        return this.f34968j.D() == 1;
    }

    private q0() {
        this.f34959a = new Object();
        this.f34960b = new Object();
        this.f34961c = new Object();
        this.f34962d = new Object();
    }

    private int a(String str, String str2, int i10) {
        if (a(true)) {
            return i10;
        }
        try {
            String strOptString = this.f34963e.optString(str, "");
            if (TextUtils.isEmpty(strOptString)) {
                return i10;
            }
            String strA = i0.a(strOptString);
            return TextUtils.isEmpty(strA) ? i10 : new JSONObject(strA).optInt(str2, i10);
        } catch (Exception unused) {
            return i10;
        }
    }

    private ConcurrentHashMap<String, Integer> c() {
        synchronized (this.f34959a) {
            try {
                if (this.f34966h == null) {
                    this.f34966h = new ConcurrentHashMap<>();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return this.f34966h;
    }

    public int b(String str, int i10) {
        Integer numValueOf;
        try {
            if (TextUtils.isEmpty(str)) {
                return i10;
            }
            ConcurrentHashMap<String, Integer> concurrentHashMapC = c();
            Integer numB = b(str, concurrentHashMapC);
            if (numB != null) {
                return numB.intValue();
            }
            try {
                numValueOf = Integer.valueOf(a(str, i10));
            } catch (Exception unused) {
                numValueOf = Integer.valueOf(i10);
            }
            concurrentHashMapC.put(str, numValueOf);
            return numValueOf.intValue();
        } catch (Exception unused2) {
            return i10;
        }
    }

    private int a(String str, int i10) {
        if (a(true)) {
            return i10;
        }
        try {
            return this.f34963e.optInt(str, i10);
        } catch (Exception unused) {
            return i10;
        }
    }

    public String b(String str, String str2, boolean z10) {
        String strA;
        String strC;
        try {
            if (TextUtils.isEmpty(str)) {
                return str2;
            }
            ConcurrentHashMap<String, String> concurrentHashMapD = d();
            if (z10 && (strC = c(str, concurrentHashMapD)) != null) {
                return strC;
            }
            try {
                strA = a(str, str2, z10);
            } catch (Exception unused) {
                strA = str2;
            }
            concurrentHashMapD.put(str, strA);
            return strA;
        } catch (Exception unused2) {
            return str2;
        }
    }

    private String a(String str, String str2, boolean z10) {
        if (a(z10)) {
            return str2;
        }
        try {
            return this.f34963e.optString(str, str2);
        } catch (Exception unused) {
            return str2;
        }
    }

    public boolean a(String str, boolean z10) {
        try {
            return b(str, z10, true);
        } catch (Exception unused) {
            return z10;
        }
    }

    private static Boolean a(String str, ConcurrentHashMap<String, Boolean> concurrentHashMap) {
        try {
            return concurrentHashMap.get(str);
        } catch (Exception unused) {
            return null;
        }
    }

    private boolean a(String str, boolean z10, boolean z11) {
        if (a(z11)) {
            return z10;
        }
        try {
            return this.f34963e.optInt(str, z10 ? 1 : 0) != 0;
        } catch (Exception unused) {
            return z10;
        }
    }

    public int b(String str, String str2, int i10) {
        Integer numValueOf;
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                String str3 = str + "_" + str2;
                ConcurrentHashMap<String, Integer> concurrentHashMapC = c();
                Integer numB = b(str3, concurrentHashMapC);
                if (numB != null) {
                    return numB.intValue();
                }
                try {
                    numValueOf = Integer.valueOf(a(str, str2, i10));
                } catch (Exception unused) {
                    numValueOf = Integer.valueOf(i10);
                }
                concurrentHashMapC.put(str3, numValueOf);
                return numValueOf.intValue();
            }
            return b(str2, i10);
        } catch (Exception unused2) {
            return i10;
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x004a A[Catch: all -> 0x0010, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:21:0x0046, B:23:0x004a, B:24:0x0052, B:12:0x0012, B:14:0x001a, B:16:0x002a, B:17:0x0036, B:20:0x0044), top: B:35:0x0003, inners: #1 }] */
    private boolean a(boolean z10) {
        synchronized (this.f34962d) {
            if (this.f34968j == null || e() || !z10) {
                try {
                    if (TextUtils.isEmpty(this.f34964f)) {
                        String strB = com.mbridge.msdk.foundation.controller.c.m().b();
                        this.f34964f = strB;
                        if (TextUtils.isEmpty(strB)) {
                            this.f34964f = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("app_id");
                        }
                    }
                    this.f34968j = com.mbridge.msdk.setting.h.b().b(this.f34964f);
                } catch (Exception unused) {
                    this.f34968j = null;
                }
                if (this.f34968j != null) {
                    this.f34963e = this.f34968j.j0();
                }
            } else if (this.f34968j != null) {
                this.f34963e = this.f34968j.j0();
            }
            throw th;
        }
        return this.f34968j == null || this.f34963e == null;
    }

    public boolean b(String str, boolean z10, boolean z11) {
        Boolean boolValueOf;
        Boolean boolA;
        try {
            if (TextUtils.isEmpty(str)) {
                return z10;
            }
            ConcurrentHashMap<String, Boolean> concurrentHashMapB = b();
            if (z11 && (boolA = a(str, concurrentHashMapB)) != null) {
                return boolA.booleanValue();
            }
            try {
                boolValueOf = Boolean.valueOf(a(str, z10, z11));
            } catch (Exception unused) {
                boolValueOf = Boolean.valueOf(z10);
            }
            concurrentHashMapB.put(str, boolValueOf);
            return boolValueOf.booleanValue();
        } catch (Exception unused2) {
            return z10;
        }
    }

    private ConcurrentHashMap<String, Boolean> b() {
        synchronized (this.f34961c) {
            try {
                if (this.f34965g == null) {
                    this.f34965g = new ConcurrentHashMap<>();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return this.f34965g;
    }
}
