package javassist.compiler.ast;

import defpackage.vfc;
import javassist.compiler.CompileError;

public class IntConst extends ASTree {
    private static final long serialVersionUID = 1;
    protected int type;
    protected long value;

    public IntConst(long j, int i) {
        this.value = j;
        this.type = i;
    }

    private IntConst compute0(int i, IntConst intConst) {
        long j;
        int i2 = this.type;
        int i3 = intConst.type;
        int i4 = 403;
        if (i2 != 403 && i3 != 403) {
            i4 = 401;
            if (i2 != 401 || i3 != 401) {
                i4 = 402;
            }
        }
        long j2 = this.value;
        long j3 = intConst.value;
        if (i == 37) {
            j = j2 % j3;
        } else if (i == 38) {
            j = j2 & j3;
        } else if (i == 42) {
            j = j2 * j3;
        } else if (i == 43) {
            j = j2 + j3;
        } else if (i == 45) {
            j = j2 - j3;
        } else if (i == 47) {
            j = j2 / j3;
        } else {
            if (i != 94) {
                if (i == 124) {
                    j = j2 | j3;
                } else if (i == 364) {
                    j = j2 << ((int) j3);
                } else if (i == 366) {
                    j = j2 >> ((int) j3);
                } else {
                    if (i != 370) {
                        return null;
                    }
                    j = j2 >>> ((int) j3);
                }
                return new IntConst(j, i2);
            }
            j = j2 ^ j3;
        }
        i2 = i4;
        return new IntConst(j, i2);
    }

    @Override
    public void accept(vfc vfcVar) throws CompileError {
        throw null;
    }

    public ASTree compute(int i, ASTree aSTree) {
        if (aSTree instanceof IntConst) {
            return compute0(i, (IntConst) aSTree);
        }
        if (aSTree instanceof DoubleConst) {
            return compute0(i, (DoubleConst) aSTree);
        }
        return null;
    }

    public long get() {
        return this.value;
    }

    public int getType() {
        return this.type;
    }

    public void set(long j) {
        this.value = j;
    }

    @Override
    public String toString() {
        return Long.toString(this.value);
    }

    private DoubleConst compute0(int i, DoubleConst doubleConst) {
        double d;
        double d2 = this.value;
        double d3 = doubleConst.value;
        if (i == 37) {
            d = d2 % d3;
        } else if (i == 45) {
            d = d2 - d3;
        } else if (i == 47) {
            d = d2 / d3;
        } else if (i == 42) {
            d = d2 * d3;
        } else {
            if (i != 43) {
                return null;
            }
            d = d2 + d3;
        }
        return new DoubleConst(d, doubleConst.type);
    }
}
