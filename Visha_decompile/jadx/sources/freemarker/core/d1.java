package freemarker.core;

import defpackage.bga;
import defpackage.zfa;
import freemarker.template.SimpleNumber;
import java.math.BigInteger;

public class d1 implements bga {
    public boolean b;
    public int c = 1;
    public int d;
    public long e;
    public BigInteger f;
    public final ListableRightUnboundedRangeModel g;

    public d1(ListableRightUnboundedRangeModel listableRightUnboundedRangeModel) {
        this.g = listableRightUnboundedRangeModel;
        this.d = listableRightUnboundedRangeModel.getBegining();
    }

    @Override
    public boolean hasNext() {
        return true;
    }

    @Override
    public zfa next() {
        if (this.b) {
            int i = this.c;
            if (i == 1) {
                int i2 = this.d;
                if (i2 < Integer.MAX_VALUE) {
                    this.d = i2 + 1;
                } else {
                    this.c = 2;
                    this.e = ((long) i2) + 1;
                }
            } else if (i != 2) {
                this.f = this.f.add(BigInteger.ONE);
            } else {
                long j = this.e;
                if (j < Long.MAX_VALUE) {
                    this.e = j + 1;
                } else {
                    this.c = 3;
                    BigInteger bigIntegerValueOf = BigInteger.valueOf(j);
                    this.f = bigIntegerValueOf;
                    this.f = bigIntegerValueOf.add(BigInteger.ONE);
                }
            }
        }
        this.b = true;
        int i3 = this.c;
        if (i3 == 1) {
            return new SimpleNumber(this.d);
        }
        return i3 == 2 ? new SimpleNumber(this.e) : new SimpleNumber(this.f);
    }
}
