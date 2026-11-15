package javassist.compiler.ast;

import defpackage.vfc;
import javassist.compiler.CompileError;

public class DoubleConst extends ASTree {
    private static final long serialVersionUID = 1;
    protected int type;
    protected double value;

    public DoubleConst(double d, int i) {
        this.value = d;
        this.type = i;
    }

    private DoubleConst compute0(int i, DoubleConst doubleConst) {
        int i2 = 405;
        if (this.type != 405 && doubleConst.type != 405) {
            i2 = 404;
        }
        return compute(i, this.value, doubleConst.value, i2);
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

    public double get() {
        return this.value;
    }

    public int getType() {
        return this.type;
    }

    public void set(double d) {
        this.value = d;
    }

    @Override
    public String toString() {
        return Double.toString(this.value);
    }

    private DoubleConst compute0(int i, IntConst intConst) {
        return compute(i, this.value, intConst.value, this.type);
    }

    private static DoubleConst compute(int i, double d, double d2, int i2) {
        double d3;
        if (i == 37) {
            d3 = d % d2;
        } else if (i == 45) {
            d3 = d - d2;
        } else if (i == 47) {
            d3 = d / d2;
        } else if (i == 42) {
            d3 = d * d2;
        } else {
            if (i != 43) {
                return null;
            }
            d3 = d + d2;
        }
        return new DoubleConst(d3, i2);
    }
}
