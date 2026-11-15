package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.internal.ads.h0;
import com.google.android.gms.internal.ads.i0;
import com.google.android.gms.internal.ads.zzgwn;
import com.google.android.gms.internal.ads.zzgyk;
import com.mgmi.ssp.AdError;
import com.transsion.livecaption.constant.ICode;
import java.io.File;
import java.util.HashSet;

public final class fyh {
    public static final Object f = new Object();
    public final Context a;
    public final SharedPreferences b;
    public final String c;
    public final rxh d;
    public boolean e;

    public fyh(Context context, int i, rxh rxhVar, boolean z) {
        this.e = false;
        this.a = context;
        this.c = Integer.toString(i - 1);
        this.b = context.getSharedPreferences("pcvmspf", 0);
        this.d = rxhVar;
        this.e = z;
    }

    public static String f(h0 h0Var) {
        yte yteVarE0 = i0.e0();
        yteVarE0.z(h0Var.d0().k0());
        yteVarE0.v(h0Var.d0().j0());
        yteVarE0.w(h0Var.d0().b0());
        yteVarE0.y(h0Var.d0().d0());
        yteVarE0.x(h0Var.d0().c0());
        return kp4.a(((i0) yteVarE0.q()).l());
    }

    public final boolean a(h0 h0Var) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (f) {
            try {
                if (!byh.e(new File(e(h0Var.d0().k0()), "pcbc"), h0Var.e0().zzA())) {
                    i(4020, jCurrentTimeMillis);
                    return false;
                }
                String strF = f(h0Var);
                SharedPreferences.Editor editorEdit = this.b.edit();
                editorEdit.putString(h(), strF);
                boolean zCommit = editorEdit.commit();
                if (zCommit) {
                    i(5015, jCurrentTimeMillis);
                } else {
                    i(4021, jCurrentTimeMillis);
                }
                return zCommit;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean b(h0 h0Var, eyh eyhVar) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (f) {
            try {
                i0 i0VarK = k(1);
                String strK0 = h0Var.d0().k0();
                if (i0VarK != null && i0VarK.k0().equals(strK0)) {
                    i(4014, jCurrentTimeMillis);
                    return false;
                }
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                File fileE = e(strK0);
                if (fileE.exists()) {
                    j(4023, jCurrentTimeMillis2, "d:" + (true != fileE.isDirectory() ? "0" : "1") + ",f:" + (true != fileE.isFile() ? "0" : "1"));
                    i(4015, jCurrentTimeMillis2);
                } else if (!fileE.mkdirs()) {
                    j(4024, jCurrentTimeMillis2, "cw:".concat(true != fileE.canWrite() ? "0" : "1"));
                    i(4015, jCurrentTimeMillis2);
                    return false;
                }
                File fileE2 = e(strK0);
                File file = new File(fileE2, "pcam.jar");
                File file2 = new File(fileE2, "pcbc");
                if (!byh.e(file, h0Var.f0().zzA())) {
                    i(4016, jCurrentTimeMillis);
                    return false;
                }
                if (!byh.e(file2, h0Var.e0().zzA())) {
                    i(4017, jCurrentTimeMillis);
                    return false;
                }
                if (eyhVar != null && !eyhVar.a(file)) {
                    i(AdError.ERROR_REASON_NATIVE_PERMISION, jCurrentTimeMillis);
                    byh.d(fileE2);
                    return false;
                }
                String strF = f(h0Var);
                long jCurrentTimeMillis3 = System.currentTimeMillis();
                SharedPreferences sharedPreferences = this.b;
                String string = sharedPreferences.getString(h(), null);
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                editorEdit.putString(h(), strF);
                if (string != null) {
                    editorEdit.putString(g(), string);
                }
                if (!editorEdit.commit()) {
                    i(4019, jCurrentTimeMillis3);
                    return false;
                }
                HashSet hashSet = new HashSet();
                i0 i0VarK2 = k(1);
                if (i0VarK2 != null) {
                    hashSet.add(i0VarK2.k0());
                }
                i0 i0VarK3 = k(2);
                if (i0VarK3 != null) {
                    hashSet.add(i0VarK3.k0());
                }
                for (File file3 : new File(this.a.getDir("pccache", 0), this.c).listFiles()) {
                    if (!hashSet.contains(file3.getName())) {
                        byh.d(file3);
                    }
                }
                i(5014, jCurrentTimeMillis);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zxh c(int i) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (f) {
            try {
                i0 i0VarK = k(1);
                if (i0VarK == null) {
                    i(4022, jCurrentTimeMillis);
                    return null;
                }
                File fileE = e(i0VarK.k0());
                File file = new File(fileE, "pcam.jar");
                if (!file.exists()) {
                    file = new File(fileE, "pcam");
                }
                File file2 = new File(fileE, "pcbc");
                File file3 = new File(fileE, "pcopt");
                i(5016, jCurrentTimeMillis);
                return new zxh(i0VarK, file, file2, file3);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean d(int i) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (f) {
            try {
                i0 i0VarK = k(1);
                if (i0VarK == null) {
                    i(4025, jCurrentTimeMillis);
                    return false;
                }
                File fileE = e(i0VarK.k0());
                if (!new File(fileE, "pcam.jar").exists()) {
                    i(4026, jCurrentTimeMillis);
                    return false;
                }
                if (new File(fileE, "pcbc").exists()) {
                    i(5019, jCurrentTimeMillis);
                    return true;
                }
                i(4027, jCurrentTimeMillis);
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final File e(String str) {
        return new File(new File(this.a.getDir("pccache", 0), this.c), str);
    }

    public final String g() {
        return "FBAMTD".concat(String.valueOf(this.c));
    }

    public final String h() {
        return "LATMTD".concat(String.valueOf(this.c));
    }

    public final void i(int i, long j) {
        this.d.b(i, j);
    }

    public final void j(int i, long j, String str) {
        this.d.a(i, j, str);
    }

    public final i0 k(int i) {
        String string = i == 1 ? this.b.getString(h(), null) : this.b.getString(g(), null);
        if (string == null) {
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            byte[] bArrC = kp4.c(string);
            zzgwn zzgwnVar = zzgwn.zzb;
            return i0.i0(zzgwn.zzv(bArrC, 0, bArrC.length), this.e ? esi.a() : esi.b());
        } catch (zzgyk unused) {
            return null;
        } catch (NullPointerException unused2) {
            i(2029, jCurrentTimeMillis);
            return null;
        } catch (RuntimeException unused3) {
            i(ICode.Function.EVENT_CODE_STATE_AST_INIT_FAILED, jCurrentTimeMillis);
            return null;
        }
    }
}
