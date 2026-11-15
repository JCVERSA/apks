package com.yandex.mobile.ads.impl;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.EOFException;
import java.io.IOException;
import java.util.Map;

public final class nm implements dm1 {
    private final d80 a;

    @Nullable
    private z70 b;

    @Nullable
    private wz c;

    public nm(d80 d80Var) {
        this.a = d80Var;
    }

    public final void a() {
        z70 z70Var = this.b;
        if (z70Var instanceof a21) {
            ((a21) z70Var).a();
        }
    }

    public final long b() {
        wz wzVar = this.c;
        if (wzVar != null) {
            return wzVar.a();
        }
        return -1L;
    }

    public final void c() {
        z70 z70Var = this.b;
        if (z70Var != null) {
            z70Var.release();
            this.b = null;
        }
        this.c = null;
    }

    public final void a(tv tvVar, Uri uri, Map map, long j, long j2, b80 b80Var) throws IOException {
        wz wzVar = new wz(tvVar, j, j2);
        this.c = wzVar;
        if (this.b != null) {
            return;
        }
        z70[] z70VarArrA = this.a.a(uri, map);
        if (z70VarArrA.length == 1) {
            this.b = z70VarArrA[0];
        } else {
            for (z70 z70Var : z70VarArrA) {
                try {
                    if (z70Var.a(wzVar)) {
                        this.b = z70Var;
                        wzVar.c();
                        break;
                    } else if (this.b == null && wzVar.a() != j) {
                        throw new IllegalStateException();
                    }
                } catch (EOFException unused) {
                    if (this.b != null) {
                        continue;
                    } else if (wzVar.a() != j) {
                        throw new IllegalStateException();
                    }
                } catch (Throwable th) {
                    if (this.b == null && wzVar.a() != j) {
                        throw new IllegalStateException();
                    }
                    wzVar.c();
                    throw th;
                }
                wzVar.c();
            }
            if (this.b == null) {
                StringBuilder sb = new StringBuilder("None of the available extractors (");
                int i = f92.a;
                StringBuilder sb2 = new StringBuilder();
                for (int i2 = 0; i2 < z70VarArrA.length; i2++) {
                    sb2.append(z70VarArrA[i2].getClass().getSimpleName());
                    if (i2 < z70VarArrA.length - 1) {
                        sb2.append(", ");
                    }
                }
                sb.append(sb2.toString());
                sb.append(") could read the stream.");
                String string = sb.toString();
                uri.getClass();
                throw new k82(string);
            }
        }
        this.b.a(b80Var);
    }

    public final int a(pj1 pj1Var) throws IOException {
        z70 z70Var = this.b;
        z70Var.getClass();
        wz wzVar = this.c;
        wzVar.getClass();
        return z70Var.a(wzVar, pj1Var);
    }

    public final void a(long j, long j2) {
        z70 z70Var = this.b;
        z70Var.getClass();
        z70Var.a(j, j2);
    }
}
