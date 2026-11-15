package org.apache.commons.compress.archivers.zip;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Date;
import java.util.zip.ZipException;

public class X5455_ExtendedTimestamp implements t, Cloneable, Serializable {
    public static final byte ACCESS_TIME_BIT = 2;
    public static final byte CREATE_TIME_BIT = 4;
    private static final ZipShort HEADER_ID = new ZipShort(21589);
    public static final byte MODIFY_TIME_BIT = 1;
    private static final long serialVersionUID = 1;
    private ZipLong accessTime;
    private boolean bit0_modifyTimePresent;
    private boolean bit1_accessTimePresent;
    private boolean bit2_createTimePresent;
    private ZipLong createTime;
    private byte flags;
    private ZipLong modifyTime;

    private static ZipLong dateToZipLong(Date date) {
        if (date == null) {
            return null;
        }
        return unixTimeToZipLong(date.getTime() / 1000);
    }

    private void reset() {
        setFlags((byte) 0);
        this.modifyTime = null;
        this.accessTime = null;
        this.createTime = null;
    }

    private static ZipLong unixTimeToZipLong(long j10) {
        if (j10 >= -2147483648L && j10 <= 2147483647L) {
            return new ZipLong(j10);
        }
        throw new IllegalArgumentException("X5455 timestamps must fit in a signed 32 bit integer: " + j10);
    }

    private static Date zipLongToDate(ZipLong zipLong) {
        if (zipLong != null) {
            return new Date(((long) zipLong.getIntValue()) * 1000);
        }
        return null;
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof X5455_ExtendedTimestamp)) {
            return false;
        }
        X5455_ExtendedTimestamp x5455_ExtendedTimestamp = (X5455_ExtendedTimestamp) obj;
        if ((this.flags & 7) != (x5455_ExtendedTimestamp.flags & 7)) {
            return false;
        }
        ZipLong zipLong = this.modifyTime;
        ZipLong zipLong2 = x5455_ExtendedTimestamp.modifyTime;
        if (zipLong != zipLong2 && (zipLong == null || !zipLong.equals(zipLong2))) {
            return false;
        }
        ZipLong zipLong3 = this.accessTime;
        ZipLong zipLong4 = x5455_ExtendedTimestamp.accessTime;
        if (zipLong3 != zipLong4 && (zipLong3 == null || !zipLong3.equals(zipLong4))) {
            return false;
        }
        ZipLong zipLong5 = this.createTime;
        ZipLong zipLong6 = x5455_ExtendedTimestamp.createTime;
        return zipLong5 == zipLong6 || (zipLong5 != null && zipLong5.equals(zipLong6));
    }

    public Date getAccessJavaTime() {
        return zipLongToDate(this.accessTime);
    }

    public ZipLong getAccessTime() {
        return this.accessTime;
    }

    public byte[] getCentralDirectoryData() {
        return Arrays.copyOf(getLocalFileDataData(), getCentralDirectoryLength().getValue());
    }

    public ZipShort getCentralDirectoryLength() {
        return new ZipShort((this.bit0_modifyTimePresent ? 4 : 0) + 1);
    }

    public Date getCreateJavaTime() {
        return zipLongToDate(this.createTime);
    }

    public ZipLong getCreateTime() {
        return this.createTime;
    }

    public byte getFlags() {
        return this.flags;
    }

    @Override
    public ZipShort getHeaderId() {
        return HEADER_ID;
    }

    public byte[] getLocalFileDataData() {
        ZipLong zipLong;
        ZipLong zipLong2;
        byte[] bArr = new byte[getLocalFileDataLength().getValue()];
        bArr[0] = 0;
        int i10 = 1;
        if (this.bit0_modifyTimePresent) {
            bArr[0] = (byte) 1;
            System.arraycopy(this.modifyTime.getBytes(), 0, bArr, 1, 4);
            i10 = 5;
        }
        if (this.bit1_accessTimePresent && (zipLong2 = this.accessTime) != null) {
            bArr[0] = (byte) (bArr[0] | 2);
            System.arraycopy(zipLong2.getBytes(), 0, bArr, i10, 4);
            i10 += 4;
        }
        if (this.bit2_createTimePresent && (zipLong = this.createTime) != null) {
            bArr[0] = (byte) (bArr[0] | 4);
            System.arraycopy(zipLong.getBytes(), 0, bArr, i10, 4);
        }
        return bArr;
    }

    public ZipShort getLocalFileDataLength() {
        int i10 = 0;
        int i11 = (this.bit0_modifyTimePresent ? 4 : 0) + 1 + ((!this.bit1_accessTimePresent || this.accessTime == null) ? 0 : 4);
        if (this.bit2_createTimePresent && this.createTime != null) {
            i10 = 4;
        }
        return new ZipShort(i11 + i10);
    }

    public Date getModifyJavaTime() {
        return zipLongToDate(this.modifyTime);
    }

    public ZipLong getModifyTime() {
        return this.modifyTime;
    }

    public int hashCode() {
        int iRotateLeft = (this.flags & 7) * (-123);
        ZipLong zipLong = this.modifyTime;
        if (zipLong != null) {
            iRotateLeft ^= zipLong.hashCode();
        }
        ZipLong zipLong2 = this.accessTime;
        if (zipLong2 != null) {
            iRotateLeft ^= Integer.rotateLeft(zipLong2.hashCode(), 11);
        }
        ZipLong zipLong3 = this.createTime;
        return zipLong3 != null ? iRotateLeft ^ Integer.rotateLeft(zipLong3.hashCode(), 22) : iRotateLeft;
    }

    public boolean isBit0_modifyTimePresent() {
        return this.bit0_modifyTimePresent;
    }

    public boolean isBit1_accessTimePresent() {
        return this.bit1_accessTimePresent;
    }

    public boolean isBit2_createTimePresent() {
        return this.bit2_createTimePresent;
    }

    @Override
    public void parseFromCentralDirectoryData(byte[] bArr, int i10, int i11) throws ZipException {
        reset();
        parseFromLocalFileData(bArr, i10, i11);
    }

    @Override
    public void parseFromLocalFileData(byte[] bArr, int i10, int i11) throws ZipException {
        int i12;
        int i13;
        reset();
        if (i11 < 1) {
            throw new ZipException("X5455_ExtendedTimestamp too short, only " + i11 + " bytes");
        }
        int i14 = i11 + i10;
        int i15 = i10 + 1;
        setFlags(bArr[i10]);
        if (this.bit0_modifyTimePresent && (i13 = i10 + 5) <= i14) {
            this.modifyTime = new ZipLong(bArr, i15);
            i15 = i13;
        }
        if (this.bit1_accessTimePresent && (i12 = i15 + 4) <= i14) {
            this.accessTime = new ZipLong(bArr, i15);
            i15 = i12;
        }
        if (!this.bit2_createTimePresent || i15 + 4 > i14) {
            return;
        }
        this.createTime = new ZipLong(bArr, i15);
    }

    public void setAccessJavaTime(Date date) {
        setAccessTime(dateToZipLong(date));
    }

    public void setAccessTime(ZipLong zipLong) {
        this.bit1_accessTimePresent = zipLong != null;
        byte b10 = this.flags;
        this.flags = (byte) (zipLong != null ? b10 | 2 : b10 & (-3));
        this.accessTime = zipLong;
    }

    public void setCreateJavaTime(Date date) {
        setCreateTime(dateToZipLong(date));
    }

    public void setCreateTime(ZipLong zipLong) {
        this.bit2_createTimePresent = zipLong != null;
        byte b10 = this.flags;
        this.flags = (byte) (zipLong != null ? b10 | 4 : b10 & (-5));
        this.createTime = zipLong;
    }

    public void setFlags(byte b10) {
        this.flags = b10;
        this.bit0_modifyTimePresent = (b10 & 1) == 1;
        this.bit1_accessTimePresent = (b10 & 2) == 2;
        this.bit2_createTimePresent = (b10 & 4) == 4;
    }

    public void setModifyJavaTime(Date date) {
        setModifyTime(dateToZipLong(date));
    }

    public void setModifyTime(ZipLong zipLong) {
        this.bit0_modifyTimePresent = zipLong != null;
        this.flags = (byte) (zipLong != null ? 1 | this.flags : this.flags & (-2));
        this.modifyTime = zipLong;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("0x5455 Zip Extra Field: Flags=");
        sb2.append(Integer.toBinaryString(u.g(this.flags)));
        sb2.append(" ");
        if (this.bit0_modifyTimePresent && this.modifyTime != null) {
            Date modifyJavaTime = getModifyJavaTime();
            sb2.append(" Modify:[");
            sb2.append(modifyJavaTime);
            sb2.append("] ");
        }
        if (this.bit1_accessTimePresent && this.accessTime != null) {
            Date accessJavaTime = getAccessJavaTime();
            sb2.append(" Access:[");
            sb2.append(accessJavaTime);
            sb2.append("] ");
        }
        if (this.bit2_createTimePresent && this.createTime != null) {
            Date createJavaTime = getCreateJavaTime();
            sb2.append(" Create:[");
            sb2.append(createJavaTime);
            sb2.append("] ");
        }
        return sb2.toString();
    }
}
