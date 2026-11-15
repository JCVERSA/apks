package androidx.constraintlayout.core;

import java.util.Arrays;
import java.util.HashSet;

public class SolverVariable implements Comparable {

    private static int f6297r = 1;

    public boolean f6298a;

    private String f6299b;

    public float f6303f;

    Type f6307j;

    public int f6300c = -1;

    int f6301d = -1;

    public int f6302e = 0;

    public boolean f6304g = false;

    float[] f6305h = new float[9];

    float[] f6306i = new float[9];

    b[] f6308k = new b[16];

    int f6309l = 0;

    public int f6310m = 0;

    boolean f6311n = false;

    int f6312o = -1;

    float f6313p = 0.0f;

    HashSet f6314q = null;

    public enum Type {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    public SolverVariable(Type type, String str) {
        this.f6307j = type;
    }

    static void d() {
        f6297r++;
    }

    public final void a(b bVar) {
        int i10 = 0;
        while (true) {
            int i11 = this.f6309l;
            if (i10 >= i11) {
                b[] bVarArr = this.f6308k;
                if (i11 >= bVarArr.length) {
                    this.f6308k = (b[]) Arrays.copyOf(bVarArr, bVarArr.length * 2);
                }
                b[] bVarArr2 = this.f6308k;
                int i12 = this.f6309l;
                bVarArr2[i12] = bVar;
                this.f6309l = i12 + 1;
                return;
            }
            if (this.f6308k[i10] == bVar) {
                return;
            } else {
                i10++;
            }
        }
    }

    @Override
    public int compareTo(SolverVariable solverVariable) {
        return this.f6300c - solverVariable.f6300c;
    }

    public final void e(b bVar) {
        int i10 = this.f6309l;
        int i11 = 0;
        while (i11 < i10) {
            if (this.f6308k[i11] == bVar) {
                while (i11 < i10 - 1) {
                    b[] bVarArr = this.f6308k;
                    int i12 = i11 + 1;
                    bVarArr[i11] = bVarArr[i12];
                    i11 = i12;
                }
                this.f6309l--;
                return;
            }
            i11++;
        }
    }

    public void f() {
        this.f6299b = null;
        this.f6307j = Type.UNKNOWN;
        this.f6302e = 0;
        this.f6300c = -1;
        this.f6301d = -1;
        this.f6303f = 0.0f;
        this.f6304g = false;
        this.f6311n = false;
        this.f6312o = -1;
        this.f6313p = 0.0f;
        int i10 = this.f6309l;
        for (int i11 = 0; i11 < i10; i11++) {
            this.f6308k[i11] = null;
        }
        this.f6309l = 0;
        this.f6310m = 0;
        this.f6298a = false;
        Arrays.fill(this.f6306i, 0.0f);
    }

    public void g(d dVar, float f10) {
        this.f6303f = f10;
        this.f6304g = true;
        this.f6311n = false;
        this.f6312o = -1;
        this.f6313p = 0.0f;
        int i10 = this.f6309l;
        this.f6301d = -1;
        for (int i11 = 0; i11 < i10; i11++) {
            this.f6308k[i11].A(dVar, this, false);
        }
        this.f6309l = 0;
    }

    public void h(Type type, String str) {
        this.f6307j = type;
    }

    public final void i(d dVar, b bVar) {
        int i10 = this.f6309l;
        for (int i11 = 0; i11 < i10; i11++) {
            this.f6308k[i11].B(dVar, bVar, false);
        }
        this.f6309l = 0;
    }

    public String toString() {
        if (this.f6299b != null) {
            return "" + this.f6299b;
        }
        return "" + this.f6300c;
    }
}
