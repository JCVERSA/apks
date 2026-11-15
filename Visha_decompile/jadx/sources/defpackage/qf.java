package defpackage;

import io.reactivex.internal.util.NotificationLite;

public class qf {
    public final int a;
    public final Object[] b;
    public Object[] c;
    public int d;

    public interface a extends ie8 {
        @Override
        boolean test(Object obj);
    }

    public qf(int i) {
        this.a = i;
        Object[] objArr = new Object[i + 1];
        this.b = objArr;
        this.c = objArr;
    }

    public boolean a(pd7 pd7Var) {
        Object[] objArr = this.b;
        int i = this.a;
        while (true) {
            if (objArr == null) {
                return false;
            }
            for (int i2 = 0; i2 < i; i2++) {
                Object[] objArr2 = objArr[i2];
                if (objArr2 == null) {
                    break;
                }
                if (NotificationLite.acceptFull(objArr2, pd7Var)) {
                    return true;
                }
            }
            objArr = objArr[i];
        }
    }

    public void b(Object obj) {
        int i = this.a;
        int i2 = this.d;
        if (i2 == i) {
            Object[] objArr = new Object[i + 1];
            this.c[i] = objArr;
            this.c = objArr;
            i2 = 0;
        }
        this.c[i2] = obj;
        this.d = i2 + 1;
    }

    public void c(a aVar) {
        int i = this.a;
        for (Object[] objArr = this.b; objArr != null; objArr = objArr[i]) {
            for (int i2 = 0; i2 < i; i2++) {
                Object obj = objArr[i2];
                if (obj == null) {
                    break;
                } else {
                    if (aVar.test(obj)) {
                        return;
                    }
                }
            }
        }
    }

    public void d(Object obj) {
        this.b[0] = obj;
    }
}
