package com.dianping.logan;

import defpackage.ef7;
import defpackage.fq5;
import defpackage.hq5;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class CLoganProtocol implements hq5 {
    public static CLoganProtocol e;
    public static boolean f;
    public boolean a;
    public boolean b;
    public ef7 c;
    public Set d = Collections.synchronizedSet(new HashSet());

    static {
        try {
            System.loadLibrary("logan");
            f = true;
        } catch (Throwable unused) {
            f = false;
        }
    }

    private native void clogan_debug(boolean z);

    private native void clogan_flush();

    private native int clogan_init(String str, String str2, int i, String str3, String str4);

    private native int clogan_open(String str);

    private native int clogan_write(int i, String str, long j, String str2, long j2, int i2);

    public static boolean g() {
        return f;
    }

    public static CLoganProtocol i() {
        if (e == null) {
            synchronized (CLoganProtocol.class) {
                try {
                    if (e == null) {
                        e = new CLoganProtocol();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    @Override
    public void a(ef7 ef7Var) {
        this.c = ef7Var;
    }

    @Override
    public void b() {
        if (this.b && f) {
            try {
                clogan_flush();
            } catch (UnsatisfiedLinkError unused) {
            }
        }
    }

    @Override
    public void c(String str, String str2, int i, String str3, String str4) {
        if (this.a) {
            return;
        }
        if (!f) {
            h("logan_loadso", -5020);
            return;
        }
        try {
            int iClogan_init = clogan_init(str, str2, i, str3, str4);
            this.a = true;
            h("clogan_init", iClogan_init);
        } catch (UnsatisfiedLinkError unused) {
            h("clogan_init", -1060);
        }
    }

    @Override
    public void d(int i, String str, long j, String str2, long j2, boolean z) {
        if (this.b && f) {
            try {
                int iClogan_write = clogan_write(i, str, j, str2, j2, z ? 1 : 0);
                if (iClogan_write != -4010 || fq5.d) {
                    h("clogan_write", iClogan_write);
                }
            } catch (UnsatisfiedLinkError unused) {
                h("clogan_write", -4060);
            }
        }
    }

    @Override
    public void e(String str) {
        if (this.a && f) {
            try {
                int iClogan_open = clogan_open(str);
                this.b = true;
                h("clogan_open", iClogan_open);
            } catch (UnsatisfiedLinkError unused) {
                h("clogan_open", -2070);
            }
        }
    }

    @Override
    public void f(boolean z) {
        if (this.a && f) {
            try {
                clogan_debug(z);
            } catch (UnsatisfiedLinkError unused) {
            }
        }
    }

    public final void h(String str, int i) {
        if (i < 0) {
            if ("clogan_write".endsWith(str) && i != -4060) {
                if (this.d.contains(Integer.valueOf(i))) {
                    return;
                } else {
                    this.d.add(Integer.valueOf(i));
                }
            }
            ef7 ef7Var = this.c;
            if (ef7Var != null) {
                ef7Var.a(str, i);
            }
        }
    }
}
