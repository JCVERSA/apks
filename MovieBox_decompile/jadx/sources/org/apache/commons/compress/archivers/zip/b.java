package org.apache.commons.compress.archivers.zip;

import java.util.zip.CRC32;
import java.util.zip.ZipException;
import org.apache.tools.zip.UnixStat;

public class b implements t, Cloneable {

    private static final ZipShort f67965g = new ZipShort(30062);

    private int f67966a = 0;

    private int f67967b = 0;

    private int f67968c = 0;

    private String f67969d = "";

    private boolean f67970e = false;

    private CRC32 f67971f = new CRC32();

    public String a() {
        return this.f67969d;
    }

    protected int b(int i10) {
        int i11;
        if (e()) {
            i11 = UnixStat.LINK_FLAG;
        } else {
            i11 = c() ? 16384 : 32768;
        }
        return (i10 & UnixStat.PERM_MASK) | i11;
    }

    public boolean c() {
        return this.f67970e && !e();
    }

    public Object clone() {
        try {
            b bVar = (b) super.clone();
            bVar.f67971f = new CRC32();
            return bVar;
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public boolean e() {
        return a().length() != 0;
    }

    public void g(boolean z10) {
        this.f67970e = z10;
        this.f67966a = b(this.f67966a);
    }

    @Override
    public ZipShort getHeaderId() {
        return f67965g;
    }

    public void h(int i10) {
        this.f67966a = b(i10);
    }

    @Override
    public void parseFromCentralDirectoryData(byte[] bArr, int i10, int i11) throws ZipException {
        parseFromLocalFileData(bArr, i10, i11);
    }

    @Override
    public void parseFromLocalFileData(byte[] bArr, int i10, int i11) throws ZipException {
        long value = ZipLong.getValue(bArr, i10);
        int i12 = i11 - 4;
        byte[] bArr2 = new byte[i12];
        System.arraycopy(bArr, i10 + 4, bArr2, 0, i12);
        this.f67971f.reset();
        this.f67971f.update(bArr2);
        long value2 = this.f67971f.getValue();
        if (value != value2) {
            throw new ZipException("Bad CRC checksum, expected " + Long.toHexString(value) + " instead of " + Long.toHexString(value2));
        }
        int value3 = ZipShort.getValue(bArr2, 0);
        int value4 = (int) ZipLong.getValue(bArr2, 2);
        byte[] bArr3 = new byte[value4];
        this.f67967b = ZipShort.getValue(bArr2, 6);
        this.f67968c = ZipShort.getValue(bArr2, 8);
        if (value4 == 0) {
            this.f67969d = "";
        } else {
            if (value4 > i11 - 14) {
                throw new ZipException("Bad symbolic link name length " + value4 + " in ASI extra field");
            }
            System.arraycopy(bArr2, 10, bArr3, 0, value4);
            this.f67969d = new String(bArr3);
        }
        g((value3 & 16384) != 0);
        h(value3);
    }
}
