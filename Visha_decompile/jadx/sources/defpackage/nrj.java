package defpackage;

import java.util.Arrays;

public final class nrj {
    public int a;
    public int b;
    public int c = 0;
    public brj[] d = new brj[100];

    public nrj(boolean z, int i) {
    }

    public final synchronized int a() {
        return this.b * 65536;
    }

    public final synchronized brj b() {
        brj brjVar;
        try {
            this.b++;
            int i = this.c;
            if (i > 0) {
                brj[] brjVarArr = this.d;
                int i2 = i - 1;
                this.c = i2;
                brjVar = brjVarArr[i2];
                if (brjVar == null) {
                    throw null;
                }
                brjVarArr[i2] = null;
            } else {
                brjVar = new brj(new byte[65536], 0);
                int i3 = this.b;
                brj[] brjVarArr2 = this.d;
                int length = brjVarArr2.length;
                if (i3 > length) {
                    this.d = (brj[]) Arrays.copyOf(brjVarArr2, length + length);
                    return brjVar;
                }
            }
            return brjVar;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void c(brj brjVar) {
        brj[] brjVarArr = this.d;
        int i = this.c;
        this.c = i + 1;
        brjVarArr[i] = brjVar;
        this.b--;
        notifyAll();
    }

    public final synchronized void d(crj crjVar) {
        while (crjVar != null) {
            try {
                brj[] brjVarArr = this.d;
                int i = this.c;
                this.c = i + 1;
                brjVarArr[i] = crjVar.zzc();
                this.b--;
                crjVar = crjVar.zzd();
            } catch (Throwable th) {
                throw th;
            }
        }
        notifyAll();
    }

    public final synchronized void e() {
        f(0);
    }

    public final synchronized void f(int i) {
        int i2 = this.a;
        this.a = i;
        if (i < i2) {
            g();
        }
    }

    public final synchronized void g() {
        int i = this.a;
        int i2 = kfh.a;
        int iMax = Math.max(0, ((i + 65535) / 65536) - this.b);
        int i3 = this.c;
        if (iMax >= i3) {
            return;
        }
        Arrays.fill(this.d, iMax, i3, (Object) null);
        this.c = iMax;
    }
}
