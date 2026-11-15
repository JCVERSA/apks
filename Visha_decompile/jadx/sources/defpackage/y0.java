package defpackage;

public class y0 {
    public static final x0[] d = new x0[0];
    public x0[] a;
    public int b;
    public boolean c;

    public y0() {
        this(10);
    }

    public static x0[] b(x0[] x0VarArr) {
        return x0VarArr.length < 1 ? d : (x0[]) x0VarArr.clone();
    }

    public void a(x0 x0Var) {
        if (x0Var == null) {
            throw new NullPointerException("'element' cannot be null");
        }
        int length = this.a.length;
        int i = this.b + 1;
        if (this.c | (i > length)) {
            e(i);
        }
        this.a[this.b] = x0Var;
        this.b = i;
    }

    public x0[] c() {
        int i = this.b;
        if (i == 0) {
            return d;
        }
        x0[] x0VarArr = new x0[i];
        System.arraycopy(this.a, 0, x0VarArr, 0, i);
        return x0VarArr;
    }

    public x0 d(int i) {
        if (i < this.b) {
            return this.a[i];
        }
        throw new ArrayIndexOutOfBoundsException(i + " >= " + this.b);
    }

    public final void e(int i) {
        x0[] x0VarArr = new x0[Math.max(this.a.length, i + (i >> 1))];
        System.arraycopy(this.a, 0, x0VarArr, 0, this.b);
        this.a = x0VarArr;
        this.c = false;
    }

    public int f() {
        return this.b;
    }

    public x0[] g() {
        int i = this.b;
        if (i == 0) {
            return d;
        }
        x0[] x0VarArr = this.a;
        if (x0VarArr.length == i) {
            this.c = true;
            return x0VarArr;
        }
        x0[] x0VarArr2 = new x0[i];
        System.arraycopy(x0VarArr, 0, x0VarArr2, 0, i);
        return x0VarArr2;
    }

    public y0(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("'initialCapacity' must not be negative");
        }
        this.a = i == 0 ? d : new x0[i];
        this.b = 0;
        this.c = false;
    }
}
