package org.apache.tools.zip;

import java.util.zip.CRC32;
import java.util.zip.ZipException;

public class AsiExtraField implements ZipExtraField, UnixStat, Cloneable {
    private static final ZipShort HEADER_ID = new ZipShort(30062);
    private static final int WORD = 4;
    private int mode = 0;
    private int uid = 0;
    private int gid = 0;
    private String link = "";
    private boolean dirFlag = false;
    private CRC32 crc = new CRC32();

    @Override
    public byte[] getCentralDirectoryData() {
        return getLocalFileDataData();
    }

    @Override
    public ZipShort getCentralDirectoryLength() {
        return getLocalFileDataLength();
    }

    public int getGroupId() {
        return this.gid;
    }

    @Override
    public ZipShort getHeaderId() {
        return HEADER_ID;
    }

    public String getLinkedFile() {
        return this.link;
    }

    @Override
    public byte[] getLocalFileDataData() {
        int value = getLocalFileDataLength().getValue();
        int i10 = value - 4;
        byte[] bArr = new byte[i10];
        System.arraycopy(ZipShort.getBytes(getMode()), 0, bArr, 0, 2);
        byte[] bytes = getLinkedFile().getBytes();
        System.arraycopy(ZipLong.getBytes(bytes.length), 0, bArr, 2, 4);
        System.arraycopy(ZipShort.getBytes(getUserId()), 0, bArr, 6, 2);
        System.arraycopy(ZipShort.getBytes(getGroupId()), 0, bArr, 8, 2);
        System.arraycopy(bytes, 0, bArr, 10, bytes.length);
        this.crc.reset();
        this.crc.update(bArr);
        byte[] bArr2 = new byte[value];
        System.arraycopy(ZipLong.getBytes(this.crc.getValue()), 0, bArr2, 0, 4);
        System.arraycopy(bArr, 0, bArr2, 4, i10);
        return bArr2;
    }

    @Override
    public ZipShort getLocalFileDataLength() {
        return new ZipShort(getLinkedFile().getBytes().length + 14);
    }

    public int getMode() {
        return this.mode;
    }

    public int getUserId() {
        return this.uid;
    }

    public boolean isDirectory() {
        return this.dirFlag && !isLink();
    }

    public boolean isLink() {
        return getLinkedFile().length() != 0;
    }

    @Override
    public void parseFromLocalFileData(byte[] bArr, int i10, int i11) throws ZipException {
        long value = ZipLong.getValue(bArr, i10);
        int i12 = i11 - 4;
        byte[] bArr2 = new byte[i12];
        System.arraycopy(bArr, i10 + 4, bArr2, 0, i12);
        this.crc.reset();
        this.crc.update(bArr2);
        long value2 = this.crc.getValue();
        if (value != value2) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("bad CRC checksum ");
            stringBuffer.append(Long.toHexString(value));
            stringBuffer.append(" instead of ");
            stringBuffer.append(Long.toHexString(value2));
            throw new ZipException(stringBuffer.toString());
        }
        int value3 = ZipShort.getValue(bArr2, 0);
        int value4 = (int) ZipLong.getValue(bArr2, 2);
        byte[] bArr3 = new byte[value4];
        this.uid = ZipShort.getValue(bArr2, 6);
        this.gid = ZipShort.getValue(bArr2, 8);
        if (value4 == 0) {
            this.link = "";
        } else {
            System.arraycopy(bArr2, 10, bArr3, 0, value4);
            this.link = new String(bArr3);
        }
        setDirectory((value3 & 16384) != 0);
        setMode(value3);
    }

    public void setDirectory(boolean z10) {
        this.dirFlag = z10;
        this.mode = getMode(this.mode);
    }

    public void setGroupId(int i10) {
        this.gid = i10;
    }

    public void setLinkedFile(String str) {
        this.link = str;
        this.mode = getMode(this.mode);
    }

    public void setMode(int i10) {
        this.mode = getMode(i10);
    }

    public void setUserId(int i10) {
        this.uid = i10;
    }

    protected int getMode(int i10) {
        int i11;
        if (isLink()) {
            i11 = UnixStat.LINK_FLAG;
        } else {
            i11 = isDirectory() ? 16384 : 32768;
        }
        return (i10 & UnixStat.PERM_MASK) | i11;
    }
}
