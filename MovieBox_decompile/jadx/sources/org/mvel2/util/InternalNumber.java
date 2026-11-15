package org.mvel2.util;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;

public class InternalNumber extends BigDecimal {
    public InternalNumber(char[] cArr, int i10, int i11) {
        super(cArr, i10, i11);
    }

    public InternalNumber(char[] cArr, int i10, int i11, MathContext mathContext) {
        super(cArr, i10, i11, mathContext);
    }

    public InternalNumber(char[] cArr) {
        super(cArr);
    }

    public InternalNumber(char[] cArr, MathContext mathContext) {
        super(cArr, mathContext);
    }

    public InternalNumber(String str) {
        super(str);
    }

    public InternalNumber(String str, MathContext mathContext) {
        super(str, mathContext);
    }

    public InternalNumber(double d10) {
        super(d10);
    }

    public InternalNumber(double d10, MathContext mathContext) {
        super(d10, mathContext);
    }

    public InternalNumber(BigInteger bigInteger) {
        super(bigInteger);
    }

    public InternalNumber(BigInteger bigInteger, MathContext mathContext) {
        super(bigInteger, mathContext);
    }

    public InternalNumber(BigInteger bigInteger, int i10) {
        super(bigInteger, i10);
    }

    public InternalNumber(BigInteger bigInteger, int i10, MathContext mathContext) {
        super(bigInteger, i10, mathContext);
    }

    public InternalNumber(int i10) {
        super(i10);
    }

    public InternalNumber(int i10, MathContext mathContext) {
        super(i10, mathContext);
    }

    public InternalNumber(long j10) {
        super(j10);
    }

    public InternalNumber(long j10, MathContext mathContext) {
        super(j10, mathContext);
    }
}
