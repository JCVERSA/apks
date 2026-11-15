package org.apache.commons.compress.archivers.zip;

import androidx.core.view.InputDeviceCompat;
import com.cloud.tmc.kernel.constants.TmcConstants;
import java.math.BigInteger;
import java.util.Arrays;

public abstract class u {

    private static final byte[] f68029a = ZipLong.getBytes(8448);

    public static long a(int i10) {
        return i10 < 0 ? ((long) i10) + TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE : i10;
    }

    static long b(BigInteger bigInteger) {
        if (bigInteger.bitLength() <= 63) {
            return bigInteger.longValue();
        }
        throw new NumberFormatException("The BigInteger cannot fit inside a 64 bit java long: [" + bigInteger + "]");
    }

    static byte[] c(byte[] bArr) {
        if (bArr != null) {
            return Arrays.copyOf(bArr, bArr.length);
        }
        return null;
    }

    static BigInteger d(long j10) {
        if (j10 >= -2147483648L) {
            if (j10 < 0 && j10 >= -2147483648L) {
                j10 = a((int) j10);
            }
            return BigInteger.valueOf(j10);
        }
        throw new IllegalArgumentException("Negative longs < -2^31 not permitted: [" + j10 + "]");
    }

    public static byte[] e(byte[] bArr) {
        int length = bArr.length - 1;
        for (int i10 = 0; i10 < bArr.length / 2; i10++) {
            byte b10 = bArr[i10];
            int i11 = length - i10;
            bArr[i10] = bArr[i11];
            bArr[i11] = b10;
        }
        return bArr;
    }

    public static int f(byte b10) {
        return b10 >= 0 ? b10 : b10 + 256;
    }

    public static byte g(int i10) {
        if (i10 <= 255 && i10 >= 0) {
            return i10 < 128 ? (byte) i10 : (byte) (i10 + InputDeviceCompat.SOURCE_ANY);
        }
        throw new IllegalArgumentException("Can only convert non-negative integers between [0,255] to byte: [" + i10 + "]");
    }
}
