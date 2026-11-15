package com.google.common.primitives;

import com.google.common.base.m;
import com.transsion.gslb.Utils;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;
import java.util.regex.Pattern;

public abstract class Doubles extends b {

    static final Pattern f30090a = c();

    private static class DoubleArrayAsList extends AbstractList<Double> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;
        final double[] array;
        final int end;
        final int start;

        DoubleArrayAsList(double[] dArr) {
            this(dArr, 0, dArr.length);
        }

        @Override
        public boolean contains(Object obj) {
            return (obj instanceof Double) && Doubles.e(this.array, ((Double) obj).doubleValue(), this.start, this.end) != -1;
        }

        @Override
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof DoubleArrayAsList)) {
                return super.equals(obj);
            }
            DoubleArrayAsList doubleArrayAsList = (DoubleArrayAsList) obj;
            int size = size();
            if (doubleArrayAsList.size() != size) {
                return false;
            }
            for (int i10 = 0; i10 < size; i10++) {
                if (this.array[this.start + i10] != doubleArrayAsList.array[doubleArrayAsList.start + i10]) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int hashCode() {
            int iD = 1;
            for (int i10 = this.start; i10 < this.end; i10++) {
                iD = (iD * 31) + Doubles.d(this.array[i10]);
            }
            return iD;
        }

        @Override
        public int indexOf(Object obj) {
            int iE;
            if (!(obj instanceof Double) || (iE = Doubles.e(this.array, ((Double) obj).doubleValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iE - this.start;
        }

        @Override
        public boolean isEmpty() {
            return false;
        }

        @Override
        public int lastIndexOf(Object obj) {
            int iG;
            if (!(obj instanceof Double) || (iG = Doubles.g(this.array, ((Double) obj).doubleValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iG - this.start;
        }

        @Override
        public int size() {
            return this.end - this.start;
        }

        @Override
        public List<Double> subList(int i10, int i11) {
            m.t(i10, i11, size());
            if (i10 == i11) {
                return Collections.emptyList();
            }
            double[] dArr = this.array;
            int i12 = this.start;
            return new DoubleArrayAsList(dArr, i10 + i12, i12 + i11);
        }

        double[] toDoubleArray() {
            return Arrays.copyOfRange(this.array, this.start, this.end);
        }

        @Override
        public String toString() {
            StringBuilder sb2 = new StringBuilder(size() * 12);
            sb2.append('[');
            sb2.append(this.array[this.start]);
            int i10 = this.start;
            while (true) {
                i10++;
                if (i10 >= this.end) {
                    sb2.append(']');
                    return sb2.toString();
                }
                sb2.append(", ");
                sb2.append(this.array[i10]);
            }
        }

        DoubleArrayAsList(double[] dArr, int i10, int i11) {
            this.array = dArr;
            this.start = i10;
            this.end = i11;
        }

        @Override
        public Double get(int i10) {
            m.m(i10, size());
            return Double.valueOf(this.array[this.start + i10]);
        }

        @Override
        public Double set(int i10, Double d10) {
            m.m(i10, size());
            double[] dArr = this.array;
            int i11 = this.start;
            double d11 = dArr[i11 + i10];
            dArr[i11 + i10] = ((Double) m.o(d10)).doubleValue();
            return Double.valueOf(d11);
        }
    }

    private enum LexicographicalComparator implements Comparator<double[]> {
        INSTANCE;

        @Override
        public String toString() {
            return "Doubles.lexicographicalComparator()";
        }

        @Override
        public int compare(double[] dArr, double[] dArr2) {
            int iMin = Math.min(dArr.length, dArr2.length);
            for (int i10 = 0; i10 < iMin; i10++) {
                int iCompare = Double.compare(dArr[i10], dArr2[i10]);
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return dArr.length - dArr2.length;
        }
    }

    private static Pattern c() {
        return Pattern.compile(("[+-]?(?:NaN|Infinity|" + ("(?:\\d+#(?:\\.\\d*#)?|\\.\\d+#)(?:[eE][+-]?\\d+#)?[fFdD]?") + "|" + ("0[xX](?:[0-9a-fA-F]+#(?:\\.[0-9a-fA-F]*#)?|\\.[0-9a-fA-F]+#)[pP][+-]?\\d+#[fFdD]?") + ")").replace(Utils.SEPARATOR, "+"));
    }

    public static int d(double d10) {
        return Double.valueOf(d10).hashCode();
    }

    public static int e(double[] dArr, double d10, int i10, int i11) {
        while (i10 < i11) {
            if (dArr[i10] == d10) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static boolean f(double d10) {
        return Double.NEGATIVE_INFINITY < d10 && d10 < Double.POSITIVE_INFINITY;
    }

    public static int g(double[] dArr, double d10, int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            if (dArr[i12] == d10) {
                return i12;
            }
        }
        return -1;
    }

    public static double[] h(Collection collection) {
        if (collection instanceof DoubleArrayAsList) {
            return ((DoubleArrayAsList) collection).toDoubleArray();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        double[] dArr = new double[length];
        for (int i10 = 0; i10 < length; i10++) {
            dArr[i10] = ((Number) m.o(array[i10])).doubleValue();
        }
        return dArr;
    }
}
