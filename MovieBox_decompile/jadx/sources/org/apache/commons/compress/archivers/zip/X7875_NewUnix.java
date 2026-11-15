package org.apache.commons.compress.archivers.zip;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.zip.ZipException;

public class X7875_NewUnix implements t, Cloneable, Serializable {
    private static final long serialVersionUID = 1;
    private BigInteger gid;
    private BigInteger uid;
    private int version = 1;
    private static final ZipShort HEADER_ID = new ZipShort(30837);
    private static final ZipShort ZERO = new ZipShort(0);
    private static final BigInteger ONE_THOUSAND = BigInteger.valueOf(1000);

    public X7875_NewUnix() {
        reset();
    }

    private void reset() {
        BigInteger bigInteger = ONE_THOUSAND;
        this.uid = bigInteger;
        this.gid = bigInteger;
    }

    static byte[] trimLeadingZeroesForceMinLength(byte[] bArr) {
        if (bArr == null) {
            return bArr;
        }
        int length = bArr.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length && bArr[i11] == 0; i11++) {
            i10++;
        }
        int iMax = Math.max(1, bArr.length - i10);
        byte[] bArr2 = new byte[iMax];
        int length2 = iMax - (bArr.length - i10);
        System.arraycopy(bArr, i10, bArr2, length2, iMax - length2);
        return bArr2;
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof X7875_NewUnix)) {
            return false;
        }
        X7875_NewUnix x7875_NewUnix = (X7875_NewUnix) obj;
        return this.version == x7875_NewUnix.version && this.uid.equals(x7875_NewUnix.uid) && this.gid.equals(x7875_NewUnix.gid);
    }

    public byte[] getCentralDirectoryData() {
        return new byte[0];
    }

    public ZipShort getCentralDirectoryLength() {
        return ZERO;
    }

    public long getGID() {
        return u.b(this.gid);
    }

    @Override
    public ZipShort getHeaderId() {
        return HEADER_ID;
    }

    public byte[] getLocalFileDataData() {
        byte[] byteArray = this.uid.toByteArray();
        byte[] byteArray2 = this.gid.toByteArray();
        byte[] bArrTrimLeadingZeroesForceMinLength = trimLeadingZeroesForceMinLength(byteArray);
        int length = bArrTrimLeadingZeroesForceMinLength != null ? bArrTrimLeadingZeroesForceMinLength.length : 0;
        byte[] bArrTrimLeadingZeroesForceMinLength2 = trimLeadingZeroesForceMinLength(byteArray2);
        int length2 = bArrTrimLeadingZeroesForceMinLength2 != null ? bArrTrimLeadingZeroesForceMinLength2.length : 0;
        byte[] bArr = new byte[length + 3 + length2];
        if (bArrTrimLeadingZeroesForceMinLength != null) {
            u.e(bArrTrimLeadingZeroesForceMinLength);
        }
        if (bArrTrimLeadingZeroesForceMinLength2 != null) {
            u.e(bArrTrimLeadingZeroesForceMinLength2);
        }
        bArr[0] = u.g(this.version);
        bArr[1] = u.g(length);
        if (bArrTrimLeadingZeroesForceMinLength != null) {
            System.arraycopy(bArrTrimLeadingZeroesForceMinLength, 0, bArr, 2, length);
        }
        int i10 = 2 + length;
        int i11 = length + 3;
        bArr[i10] = u.g(length2);
        if (bArrTrimLeadingZeroesForceMinLength2 != null) {
            System.arraycopy(bArrTrimLeadingZeroesForceMinLength2, 0, bArr, i11, length2);
        }
        return bArr;
    }

    public ZipShort getLocalFileDataLength() {
        byte[] bArrTrimLeadingZeroesForceMinLength = trimLeadingZeroesForceMinLength(this.uid.toByteArray());
        int length = bArrTrimLeadingZeroesForceMinLength == null ? 0 : bArrTrimLeadingZeroesForceMinLength.length;
        byte[] bArrTrimLeadingZeroesForceMinLength2 = trimLeadingZeroesForceMinLength(this.gid.toByteArray());
        return new ZipShort(length + 3 + (bArrTrimLeadingZeroesForceMinLength2 != null ? bArrTrimLeadingZeroesForceMinLength2.length : 0));
    }

    public long getUID() {
        return u.b(this.uid);
    }

    public int hashCode() {
        return (Integer.rotateLeft(this.uid.hashCode(), 16) ^ (this.version * (-1234567))) ^ this.gid.hashCode();
    }

    @Override
    public void parseFromCentralDirectoryData(byte[] bArr, int i10, int i11) throws ZipException {
    }

    @Override
    public void parseFromLocalFileData(byte[] bArr, int i10, int i11) throws ZipException {
        reset();
        if (i11 < 3) {
            throw new ZipException("X7875_NewUnix length is too short, only " + i11 + " bytes");
        }
        int i12 = i10 + 1;
        this.version = u.f(bArr[i10]);
        int i13 = i10 + 2;
        int iF = u.f(bArr[i12]);
        int i14 = iF + 3;
        if (i14 > i11) {
            throw new ZipException("X7875_NewUnix invalid: uidSize " + iF + " doesn't fit into " + i11 + " bytes");
        }
        int i15 = iF + i13;
        this.uid = new BigInteger(1, u.e(Arrays.copyOfRange(bArr, i13, i15)));
        int i16 = i15 + 1;
        int iF2 = u.f(bArr[i15]);
        if (i14 + iF2 <= i11) {
            this.gid = new BigInteger(1, u.e(Arrays.copyOfRange(bArr, i16, iF2 + i16)));
            return;
        }
        throw new ZipException("X7875_NewUnix invalid: gidSize " + iF2 + " doesn't fit into " + i11 + " bytes");
    }

    public void setGID(long j10) {
        this.gid = u.d(j10);
    }

    public void setUID(long j10) {
        this.uid = u.d(j10);
    }

    public String toString() {
        return "0x7875 Zip Extra Field: UID=" + this.uid + " GID=" + this.gid;
    }
}
