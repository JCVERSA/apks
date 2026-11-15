package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.h0;
import com.google.android.gms.internal.ads.i0;
import com.google.android.gms.internal.ads.zzgwn;
import com.google.android.gms.internal.ads.zzgyk;
import java.io.File;
import java.util.HashSet;

public final class ayh {
    public final File a;
    public final File b;
    public final SharedPreferences c;
    public final int d;

    public ayh(Context context, int i) {
        this.c = context.getSharedPreferences("pcvmspf", 0);
        File dir = context.getDir("pccache", 0);
        byh.a(dir, false);
        this.a = dir;
        File dir2 = context.getDir("tmppccache", 0);
        byh.a(dir2, true);
        this.b = dir2;
        this.d = i;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x007d  */
    public final boolean a(h0 h0Var, eyh eyhVar) {
        boolean z;
        String strK0 = h0Var.d0().k0();
        byte[] bArrZzA = h0Var.f0().zzA();
        byte[] bArrZzA2 = h0Var.e0().zzA();
        if (!TextUtils.isEmpty(strK0) && bArrZzA2 != null && bArrZzA2.length != 0) {
            File file = this.b;
            byh.d(file);
            file.mkdirs();
            byh.c(strK0, file).mkdirs();
            File fileB = byh.b(strK0, "pcam.jar", file);
            if ((bArrZzA == null || bArrZzA.length <= 0 || byh.e(fileB, bArrZzA)) && byh.e(byh.b(strK0, "pcbc", file), bArrZzA2)) {
                File fileB2 = byh.b(h0Var.d0().k0(), "pcam.jar", file);
                if (fileB2.exists() && eyhVar != null && !eyhVar.a(fileB2)) {
                    return false;
                }
                String strK1 = h0Var.d0().k0();
                if (TextUtils.isEmpty(strK1)) {
                    z = false;
                } else {
                    File fileB3 = byh.b(strK1, "pcam.jar", file);
                    File fileB4 = byh.b(strK1, "pcbc", file);
                    File fileB5 = byh.b(strK1, "pcam.jar", d());
                    File fileB6 = byh.b(strK1, "pcbc", d());
                    if ((!fileB3.exists() || fileB3.renameTo(fileB5)) && fileB4.exists() && fileB4.renameTo(fileB6)) {
                        yte yteVarE0 = i0.e0();
                        yteVarE0.z(h0Var.d0().k0());
                        yteVarE0.v(h0Var.d0().j0());
                        yteVarE0.w(h0Var.d0().b0());
                        yteVarE0.y(h0Var.d0().d0());
                        yteVarE0.x(h0Var.d0().c0());
                        i0 i0Var = (i0) yteVarE0.q();
                        i0 i0VarB = b(1);
                        SharedPreferences.Editor editorEdit = this.c.edit();
                        if (i0VarB != null && !i0Var.k0().equals(i0VarB.k0())) {
                            editorEdit.putString(e(), kp4.a(i0VarB.l()));
                        }
                        editorEdit.putString(f(), kp4.a(i0Var.l()));
                        if (editorEdit.commit()) {
                            z = true;
                        } else {
                            z = false;
                        }
                    } else {
                        z = false;
                    }
                }
                HashSet hashSet = new HashSet();
                i0 i0VarB2 = b(1);
                if (i0VarB2 != null) {
                    hashSet.add(i0VarB2.k0());
                }
                i0 i0VarB3 = b(2);
                if (i0VarB3 != null) {
                    hashSet.add(i0VarB3.k0());
                }
                for (File file2 : d().listFiles()) {
                    String name = file2.getName();
                    if (!hashSet.contains(name)) {
                        byh.d(byh.c(name, d()));
                    }
                }
                return z;
            }
        }
        return false;
    }

    public final i0 b(int i) {
        String string = i == 1 ? this.c.getString(f(), null) : this.c.getString(e(), null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            byte[] bArrC = kp4.c(string);
            zzgwn zzgwnVar = zzgwn.zzb;
            i0 i0VarH0 = i0.h0(zzgwn.zzv(bArrC, 0, bArrC.length));
            String strK0 = i0VarH0.k0();
            File fileB = byh.b(strK0, "pcam.jar", d());
            if (!fileB.exists()) {
                fileB = byh.b(strK0, "pcam", d());
            }
            File fileB2 = byh.b(strK0, "pcbc", d());
            if (fileB.exists() && fileB2.exists()) {
                return i0VarH0;
            }
            return null;
        } catch (zzgyk unused) {
        }
    }

    public final zxh c(int i) {
        i0 i0VarB = b(1);
        if (i0VarB == null) {
            return null;
        }
        String strK0 = i0VarB.k0();
        File fileB = byh.b(strK0, "pcam.jar", d());
        if (!fileB.exists()) {
            fileB = byh.b(strK0, "pcam", d());
        }
        return new zxh(i0VarB, fileB, byh.b(strK0, "pcbc", d()), byh.b(strK0, "pcopt", d()));
    }

    public final File d() {
        File file = new File(this.a, Integer.toString(this.d - 1));
        if (!file.exists()) {
            file.mkdir();
        }
        return file;
    }

    public final String e() {
        StringBuilder sb = new StringBuilder();
        sb.append("FBAMTD");
        sb.append(this.d - 1);
        return sb.toString();
    }

    public final String f() {
        StringBuilder sb = new StringBuilder();
        sb.append("LATMTD");
        sb.append(this.d - 1);
        return sb.toString();
    }
}
