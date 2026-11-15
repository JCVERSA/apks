package v9;

import java.util.Arrays;
import java.util.Random;

public interface t {

    public static class a implements t {

        private final Random f73535a;

        private final int[] f73536b;

        private final int[] f73537c;

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
        public t a(int i10, int i11) {
            int i12 = i11 - i10;
            int[] iArr = new int[this.f73536b.length - i12];
            int i13 = 0;
            int i14 = 0;
            while (true) {
                int[] iArr2 = this.f73536b;
                if (i13 >= iArr2.length) {
                    return new a(iArr, new Random(this.f73535a.nextLong()));
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
        public t cloneAndClear() {
            return new a(0, new Random(this.f73535a.nextLong()));
        }

        @Override
        public t cloneAndInsert(int i10, int i11) {
            int[] iArr = new int[i11];
            int[] iArr2 = new int[i11];
            int i12 = 0;
            int i13 = 0;
            while (i13 < i11) {
                iArr[i13] = this.f73535a.nextInt(this.f73536b.length + 1);
                int i14 = i13 + 1;
                int iNextInt = this.f73535a.nextInt(i14);
                iArr2[i13] = iArr2[iNextInt];
                iArr2[iNextInt] = i13 + i10;
                i13 = i14;
            }
            Arrays.sort(iArr);
            int[] iArr3 = new int[this.f73536b.length + i11];
            int i15 = 0;
            int i16 = 0;
            while (true) {
                int[] iArr4 = this.f73536b;
                if (i12 >= iArr4.length + i11) {
                    return new a(iArr3, new Random(this.f73535a.nextLong()));
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
            int[] iArr = this.f73536b;
            if (iArr.length > 0) {
                return iArr[0];
            }
            return -1;
        }

        @Override
        public int getLastIndex() {
            int[] iArr = this.f73536b;
            if (iArr.length > 0) {
                return iArr[iArr.length - 1];
            }
            return -1;
        }

        @Override
        public int getLength() {
            return this.f73536b.length;
        }

        @Override
        public int getNextIndex(int i10) {
            int i11 = this.f73537c[i10] + 1;
            int[] iArr = this.f73536b;
            if (i11 < iArr.length) {
                return iArr[i11];
            }
            return -1;
        }

        @Override
        public int getPreviousIndex(int i10) {
            int i11 = this.f73537c[i10] - 1;
            if (i11 >= 0) {
                return this.f73536b[i11];
            }
            return -1;
        }

        private a(int i10, Random random) {
            this(b(i10, random), random);
        }

        private a(int[] iArr, Random random) {
            this.f73536b = iArr;
            this.f73535a = random;
            this.f73537c = new int[iArr.length];
            for (int i10 = 0; i10 < iArr.length; i10++) {
                this.f73537c[iArr[i10]] = i10;
            }
        }
    }

    t a(int i10, int i11);

    t cloneAndClear();

    t cloneAndInsert(int i10, int i11);

    int getFirstIndex();

    int getLastIndex();

    int getLength();

    int getNextIndex(int i10);

    int getPreviousIndex(int i10);
}
