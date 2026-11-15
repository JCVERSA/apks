package defpackage;

import java.security.SecureRandom;

public class gz4 implements bb3 {
    public final SecureRandom a;
    public final boolean b;

    public class a implements fz4 {
        public final int a;
        public final int b;

        public a(int i) {
            this.b = i;
            this.a = (i + 7) / 8;
        }

        @Override
        public byte[] a(long j) throws InterruptedException {
            int i;
            int i2 = this.a;
            byte[] bArr = new byte[i2];
            int i3 = 0;
            while (true) {
                i = this.a;
                if (i3 >= i / 8) {
                    break;
                }
                gz4.c(j);
                byte[] bArrGenerateSeed = gz4.this.a.generateSeed(8);
                System.arraycopy(bArrGenerateSeed, 0, bArr, i3 * 8, bArrGenerateSeed.length);
                i3++;
            }
            int i4 = i - ((i / 8) * 8);
            if (i4 != 0) {
                gz4.c(j);
                byte[] bArrGenerateSeed2 = gz4.this.a.generateSeed(i4);
                System.arraycopy(bArrGenerateSeed2, 0, bArr, i2 - bArrGenerateSeed2.length, bArrGenerateSeed2.length);
            }
            return bArr;
        }

        @Override
        public byte[] b() {
            try {
                return a(0L);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException("initial entropy fetch interrupted");
            }
        }

        @Override
        public int c() {
            return this.b;
        }
    }

    public gz4(SecureRandom secureRandom, boolean z) {
        this.a = secureRandom;
        this.b = z;
    }

    public static void c(long j) throws InterruptedException {
        if (j != 0) {
            Thread.sleep(j);
        }
    }

    @Override
    public ab3 get(int i) {
        return new a(i);
    }
}
