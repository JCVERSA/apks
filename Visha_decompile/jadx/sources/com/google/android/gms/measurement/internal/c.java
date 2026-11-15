package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import android.util.Log;
import defpackage.boi;
import defpackage.u6h;
import defpackage.wd8;
import defpackage.x7h;

public final class c extends boi {
    public char c;
    public long d;
    public String e;
    public final u6h f;
    public final u6h g;
    public final u6h h;
    public final u6h i;
    public final u6h j;
    public final u6h k;
    public final u6h l;
    public final u6h m;
    public final u6h n;

    public c(e eVar) {
        super(eVar);
        this.c = (char) 0;
        this.d = -1L;
        this.f = new u6h(this, 6, false, false);
        this.g = new u6h(this, 6, true, false);
        this.h = new u6h(this, 6, false, true);
        this.i = new u6h(this, 5, false, false);
        this.j = new u6h(this, 5, true, false);
        this.k = new u6h(this, 5, false, true);
        this.l = new u6h(this, 4, false, false);
        this.m = new u6h(this, 3, false, false);
        this.n = new u6h(this, 2, false, false);
    }

    public static String A(boolean z, Object obj) {
        String className;
        if (obj == null) {
            return "";
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Long) {
            if (!z) {
                return obj.toString();
            }
            Long l = (Long) obj;
            if (Math.abs(l.longValue()) < 100) {
                return obj.toString();
            }
            String str = obj.toString().charAt(0) == '-' ? "-" : "";
            String strValueOf = String.valueOf(Math.abs(l.longValue()));
            return str + Math.round(Math.pow(10.0d, strValueOf.length() - 1)) + "..." + str + Math.round(Math.pow(10.0d, strValueOf.length()) - 1.0d);
        }
        if (obj instanceof Boolean) {
            return obj.toString();
        }
        if (!(obj instanceof Throwable)) {
            if (obj instanceof x7h) {
                return ((x7h) obj).a;
            }
            return z ? "-" : obj.toString();
        }
        Throwable th = (Throwable) obj;
        StringBuilder sb = new StringBuilder(z ? th.getClass().getName() : th.toString());
        String strF = F(e.class.getCanonicalName());
        for (StackTraceElement stackTraceElement : th.getStackTrace()) {
            if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null && F(className).equals(strF)) {
                sb.append(": ");
                sb.append(stackTraceElement);
                break;
            }
        }
        return sb.toString();
    }

    public static String F(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int iLastIndexOf = str.lastIndexOf(46);
        return iLastIndexOf == -1 ? str : str.substring(0, iLastIndexOf);
    }

    public static Object y(String str) {
        if (str == null) {
            return null;
        }
        return new x7h(str);
    }

    public static String z(boolean z, String str, Object obj, Object obj2, Object obj3) {
        String str2 = "";
        if (str == null) {
            str = "";
        }
        String strA = A(z, obj);
        String strA2 = A(z, obj2);
        String strA3 = A(z, obj3);
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            str2 = ": ";
        }
        String str3 = ", ";
        if (!TextUtils.isEmpty(strA)) {
            sb.append(str2);
            sb.append(strA);
            str2 = ", ";
        }
        if (TextUtils.isEmpty(strA2)) {
            str3 = str2;
        } else {
            sb.append(str2);
            sb.append(strA2);
        }
        if (!TextUtils.isEmpty(strA3)) {
            sb.append(str3);
            sb.append(strA3);
        }
        return sb.toString();
    }

    public final String B() {
        String str;
        synchronized (this) {
            try {
                if (this.e == null) {
                    if (this.a.Q() != null) {
                        this.e = this.a.Q();
                    } else {
                        this.e = this.a.z().r();
                    }
                }
                wd8.l(this.e);
                str = this.e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    public final void E(int i, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (!z && Log.isLoggable(B(), i)) {
            Log.println(i, B(), z(false, str, obj, obj2, obj3));
        }
        if (z2 || i < 5) {
            return;
        }
        wd8.l(str);
        d dVarG = this.a.G();
        if (dVarG == null) {
            Log.println(6, B(), "Scheduler not set. Not logging error/warn");
        } else {
            if (!dVarG.m()) {
                Log.println(6, B(), "Scheduler not initialized. Not logging error/warn");
                return;
            }
            if (i >= 9) {
                i = 8;
            }
            dVarG.w(new zzel(this, i, str, obj, obj2, obj3));
        }
    }

    @Override
    public final boolean i() {
        return false;
    }

    public final u6h p() {
        return this.m;
    }

    public final u6h q() {
        return this.f;
    }

    public final u6h r() {
        return this.h;
    }

    public final u6h s() {
        return this.g;
    }

    public final u6h t() {
        return this.l;
    }

    public final u6h u() {
        return this.n;
    }

    public final u6h v() {
        return this.i;
    }

    public final u6h w() {
        return this.k;
    }

    public final u6h x() {
        return this.j;
    }
}
