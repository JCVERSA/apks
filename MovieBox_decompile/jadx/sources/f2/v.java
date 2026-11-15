package f2;

import java.util.Arrays;
import java.util.Random;

public interface v {

    public static class a implements v {

        private final Random f59947a;

        private final int[] f59948b;

        private final int[] f59949c;

        public a(int i10) {
            this(i10, new Random());
        }

        private static int[] b(int i10, Random random) {
            int[] iArr = new int[i10];
            int i11 = 0;
            while (i11 < i10) {
                int i12 = i11 + 1;
                int iNextInt = random.nextInt(i12);
                iArr[i11] = iArr[iNextInt];
                iArr[iNextInt] = i11;
                i11 = i12;
            }
            return iArr;
        }

        @Override
        public v a(int i10, int i11) {
            int i12 = i11 - i10;
            int[] iArr = new int[this.f59948b.length - i12];
            int i13 = 0;
            int i14 = 0;
            while (true) {
                int[] iArr2 = this.f59948b;
                if (i13 >= iArr2.length) {
                    return new a(iArr, new Random(this.f59947a.nextLong()));
                }
                int i15 = iArr2[i13];
                if (i15 < i10 || i15 >= i11) {
                    int i16 = i13 - i14;
                    if (i15 >= i10) {
                        i15 -= i12;
                    }
                    iArr[i16] = i15;
                } else {
                    i14++;
                }
                i13++;
            }
        }

        @Override
        public v cloneAndClear() {
            return new a(0, new Random(this.f59947a.nextLong()));
        }

        @Override
        public v cloneAndInsert(int i10, int i11) {
            int[] iArr = new int[i11];
            int[] iArr2 = new int[i11];
            int i12 = 0;
            int i13 = 0;
            while (i13 < i11) {
                iArr[i13] = this.f59947a.nextInt(this.f59948b.length + 1);
                int i14 = i13 + 1;
                int iNextInt = this.f59947a.nextInt(i14);
                iArr2[i13] = iArr2[iNextInt];
                iArr2[iNextInt] = i13 + i10;
                i13 = i14;
            }
            Arrays.sort(iArr);
            int[] iArr3 = new int[this.f59948b.length + i11];
            int i15 = 0;
            int i16 = 0;
            while (true) {
                int[] iArr4 = this.f59948b;
                if (i12 >= iArr4.length + i11) {
                    return new a(iArr3, new Random(this.f59947a.nextLong()));
                }
                if (i15 >= i11 || i16 != iArr[i15]) {
                    int i17 = i16 + 1;
                    int i18 = iArr4[i16];
                    iArr3[i12] = i18;
                    if (i18 >= i10) {
                        iArr3[i12] = i18 + i11;
                    }
                    i16 = i17;
                } else {
                    iArr3[i12] = iArr2[i15];
                    i15++;
                }
                i12++;
            }
        }

        @Override
        public int getFirstIndex() {
            int[] iArr = this.f59948b;
            if (iArr.length > 0) {
                return iArr[0];
            }
            return -1;
        }

        @Override
        public int getLastIndex() {
            int[] iArr = this.f59948b;
            if (iArr.length > 0) {
                return iArr[iArr.length - 1];
            }
            return -1;
        }

        @Override
        public int getLength() {
            return this.f59948b.length;
        }

        @Override
        public int getNextIndex(int i10) {
            int i11 = this.f59949c[i10] + 1;
            int[] iArr = this.f59948b;
            if (i11 < iArr.length) {
                return iArr[i11];
            }
            return -1;
        }

        @Override
        public int getPreviousIndex(int i10) {
            int i11 = this.f59949c[i10] - 1;
            if (i11 >= 0) {
                return this.f59948b[i11];
            }
            return -1;
        }

        private a(int i10, Random random) {
            this(b(i10, random), random);
        }

        private a(int[] iArr, Random random) {
            this.f59948b = iArr;
            this.f59947a = random;
            this.f59949c = new int[iArr.length];
            for (int i10 = 0; i10 < iArr.length; i10++) {
                this.f59949c[iArr[i10]] = i10;
            }
        }
    }

    v a(int i10, int i11);

    v cloneAndClear();

    v cloneAndInsert(int i10, int i11);

    int getFirstIndex();

    int getLastIndex();

    int getLength();

    int getNextIndex(int i10);

    int getPreviousIndex(int i10);
}
