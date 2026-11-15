package org.apache.commons.compress.archivers.zip;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.ZipException;
import okhttp3.internal.http2.Settings;

public abstract class PKWareExtraHeader implements t {

    private final ZipShort f67959a;

    private byte[] f67960b;

    private byte[] f67961c;

    public enum EncryptionAlgorithm {
        DES(26113),
        RC2pre52(26114),
        TripleDES168(26115),
        TripleDES192(26121),
        AES128(26126),
        AES192(26127),
        AES256(26128),
        RC2(26370),
        RC4(26625),
        UNKNOWN(Settings.DEFAULT_INITIAL_WINDOW_SIZE);

        private static final Map<Integer, EncryptionAlgorithm> codeToEnum;
        private final int code;

        static {
            HashMap map = new HashMap();
            for (EncryptionAlgorithm encryptionAlgorithm : values()) {
                map.put(Integer.valueOf(encryptionAlgorithm.getCode()), encryptionAlgorithm);
            }
            codeToEnum = Collections.unmodifiableMap(map);
        }

        EncryptionAlgorithm(int i10) {
            this.code = i10;
        }

        public static EncryptionAlgorithm getAlgorithmByCode(int i10) {
            return codeToEnum.get(Integer.valueOf(i10));
        }

        public int getCode() {
            return this.code;
        }
    }

    public enum HashAlgorithm {
        NONE(0),
        CRC32(1),
        MD5(32771),
        SHA1(32772),
        RIPEND160(32775),
        SHA256(32780),
        SHA384(32781),
        SHA512(32782);

        private static final Map<Integer, HashAlgorithm> codeToEnum;
        private final int code;

        static {
            HashMap map = new HashMap();
            for (HashAlgorithm hashAlgorithm : values()) {
                map.put(Integer.valueOf(hashAlgorithm.getCode()), hashAlgorithm);
            }
            codeToEnum = Collections.unmodifiableMap(map);
        }

        HashAlgorithm(int i10) {
            this.code = i10;
        }

        public static HashAlgorithm getAlgorithmByCode(int i10) {
            return codeToEnum.get(Integer.valueOf(i10));
        }

        public int getCode() {
            return this.code;
        }
    }

    protected PKWareExtraHeader(ZipShort zipShort) {
        this.f67959a = zipShort;
    }

    protected final void a(int i10, int i11) throws ZipException {
        if (i11 >= i10) {
            return;
        }
        throw new ZipException(getClass().getName() + " is too short, only " + i11 + " bytes, expected at least " + i10);
    }

    public void b(byte[] bArr) {
        this.f67961c = u.c(bArr);
    }

    public void c(byte[] bArr) {
        this.f67960b = u.c(bArr);
    }

    @Override
    public ZipShort getHeaderId() {
        return this.f67959a;
    }

    @Override
    public void parseFromCentralDirectoryData(byte[] bArr, int i10, int i11) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i10, i11 + i10);
        b(bArrCopyOfRange);
        if (this.f67960b == null) {
            c(bArrCopyOfRange);
        }
    }

    @Override
    public void parseFromLocalFileData(byte[] bArr, int i10, int i11) {
        c(Arrays.copyOfRange(bArr, i10, i11 + i10));
    }
}
