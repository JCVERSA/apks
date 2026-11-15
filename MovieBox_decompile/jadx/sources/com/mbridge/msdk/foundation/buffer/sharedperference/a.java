package com.mbridge.msdk.foundation.buffer.sharedperference;

import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.same.directory.e;
import com.mbridge.msdk.foundation.tools.FastKV;
import com.mbridge.msdk.foundation.tools.o0;

public class a {

    public static final String f34127b = "a";

    private static a f34128c;

    FastKV f34129a;

    private a() {
    }

    public static synchronized a b() {
        try {
            if (f34128c == null) {
                f34128c = new a();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f34128c;
    }

    public String a(String str) {
        try {
            if (c.m().d() == null) {
                return null;
            }
            a();
            FastKV fastKV = this.f34129a;
            if (fastKV != null) {
                try {
                    return fastKV.getString(str, "");
                } catch (Exception unused) {
                    return "";
                }
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                o0.a(f34127b, "get error: " + e10.getMessage());
            }
        }
        return null;
    }

    public void c(String str) {
        if (c.m().d() == null) {
            return;
        }
        a();
        FastKV fastKV = this.f34129a;
        if (fastKV != null) {
            try {
                fastKV.remove(str);
            } catch (Exception unused) {
            }
        }
    }

    public Long b(String str) {
        try {
            if (c.m().d() == null) {
                o0.b(f34127b, "context is null in get");
                return 0L;
            }
            a();
            FastKV fastKV = this.f34129a;
            if (fastKV != null) {
                try {
                    return Long.valueOf(fastKV.getLong(str, 0L));
                } catch (Exception unused) {
                    return 0L;
                }
            }
            return 0L;
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                o0.a(f34127b, "getLong error: " + e10.getMessage());
            }
        }
    }

    public int a(String str, int i10) {
        try {
            if (c.m().d() == null) {
                return i10;
            }
            a();
            FastKV fastKV = this.f34129a;
            if (fastKV != null) {
                try {
                    return fastKV.getInt(str, i10);
                } catch (Exception unused) {
                    return i10;
                }
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                o0.a(f34127b, "getInt error: " + e10.getMessage());
            }
        }
        return i10;
    }

    public void a(String str, String str2) {
        try {
            if (c.m().d() == null) {
                return;
            }
            a();
            FastKV fastKV = this.f34129a;
            if (fastKV != null) {
                try {
                    fastKV.putString(str, str2);
                } catch (Exception unused) {
                }
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                o0.a(f34127b, "put error: " + e10.getMessage());
            }
        }
    }

    public void b(String str, int i10) {
        try {
            if (c.m().d() == null) {
                return;
            }
            a();
            FastKV fastKV = this.f34129a;
            if (fastKV != null) {
                try {
                    fastKV.putInt(str, i10);
                } catch (Exception unused) {
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(String str, long j10) {
        try {
            if (c.m().d() == null) {
                o0.b(f34127b, "context is null in put");
                return;
            }
            a();
            FastKV fastKV = this.f34129a;
            if (fastKV != null) {
                try {
                    fastKV.putLong(str, j10);
                } catch (Exception unused) {
                }
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                o0.a(f34127b, "putLong error: " + e10.getMessage());
            }
        }
    }

    private void a() {
        if (this.f34129a == null) {
            try {
                this.f34129a = new FastKV.Builder(e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_CONFIG), "mbridge").build();
            } catch (Exception unused) {
                this.f34129a = null;
            }
        }
    }
}
