package org.apache.tools.zip;

import java.util.NoSuchElementException;
import java.util.Vector;
import java.util.zip.ZipException;
import okhttp3.internal.ws.WebSocketProtocol;

public class ZipEntry extends java.util.zip.ZipEntry implements Cloneable {
    private static final int PLATFORM_FAT = 0;
    private static final int PLATFORM_UNIX = 3;
    private static final int SHORT_MASK = 65535;
    private static final int SHORT_SHIFT = 16;
    private long externalAttributes;
    private Vector extraFields;
    private int internalAttributes;
    private String name;
    private int platform;

    public ZipEntry(String str) {
        super(str);
        this.internalAttributes = 0;
        this.platform = 0;
        this.externalAttributes = 0L;
        this.extraFields = null;
        this.name = null;
    }

    public void addExtraField(ZipExtraField zipExtraField) {
        if (this.extraFields == null) {
            this.extraFields = new Vector();
        }
        ZipShort headerId = zipExtraField.getHeaderId();
        int size = this.extraFields.size();
        boolean z10 = false;
        for (int i10 = 0; !z10 && i10 < size; i10++) {
            if (((ZipExtraField) this.extraFields.elementAt(i10)).getHeaderId().equals(headerId)) {
                this.extraFields.setElementAt(zipExtraField, i10);
                z10 = true;
            }
        }
        if (!z10) {
            this.extraFields.addElement(zipExtraField);
        }
        setExtra();
    }

    @Override
    public Object clone() {
        ZipEntry zipEntry = (ZipEntry) super.clone();
        Vector vector = this.extraFields;
        zipEntry.extraFields = vector != null ? (Vector) vector.clone() : null;
        zipEntry.setInternalAttributes(getInternalAttributes());
        zipEntry.setExternalAttributes(getExternalAttributes());
        zipEntry.setExtraFields(getExtraFields());
        return zipEntry;
    }

    public boolean equals(Object obj) {
        return this == obj;
    }

    public byte[] getCentralDirectoryExtra() {
        return ExtraFieldUtils.mergeCentralDirectoryData(getExtraFields());
    }

    public long getExternalAttributes() {
        return this.externalAttributes;
    }

    public ZipExtraField[] getExtraFields() {
        Vector vector = this.extraFields;
        if (vector == null) {
            return new ZipExtraField[0];
        }
        ZipExtraField[] zipExtraFieldArr = new ZipExtraField[vector.size()];
        this.extraFields.copyInto(zipExtraFieldArr);
        return zipExtraFieldArr;
    }

    public int getInternalAttributes() {
        return this.internalAttributes;
    }

    public byte[] getLocalFileDataExtra() {
        byte[] extra = getExtra();
        return extra != null ? extra : new byte[0];
    }

    @Override
    public String getName() {
        String str = this.name;
        return str == null ? super.getName() : str;
    }

    public int getPlatform() {
        return this.platform;
    }

    public int getUnixMode() {
        return (int) ((getExternalAttributes() >> 16) & WebSocketProtocol.PAYLOAD_SHORT_MAX);
    }

    @Override
    public int hashCode() {
        return getName().hashCode();
    }

    @Override
    public boolean isDirectory() {
        return getName().endsWith("/");
    }

    public void removeExtraField(ZipShort zipShort) {
        if (this.extraFields == null) {
            this.extraFields = new Vector();
        }
        int size = this.extraFields.size();
        boolean z10 = false;
        for (int i10 = 0; !z10 && i10 < size; i10++) {
            if (((ZipExtraField) this.extraFields.elementAt(i10)).getHeaderId().equals(zipShort)) {
                this.extraFields.removeElementAt(i10);
                z10 = true;
            }
        }
        if (!z10) {
            throw new NoSuchElementException();
        }
        setExtra();
    }

    public void setComprSize(long j10) {
        setCompressedSize(j10);
    }

    public void setExternalAttributes(long j10) {
        this.externalAttributes = j10;
    }

    @Override
    public void setExtra(byte[] bArr) throws RuntimeException {
        try {
            setExtraFields(ExtraFieldUtils.parse(bArr));
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage());
        }
    }

    public void setExtraFields(ZipExtraField[] zipExtraFieldArr) {
        this.extraFields = new Vector();
        for (ZipExtraField zipExtraField : zipExtraFieldArr) {
            this.extraFields.addElement(zipExtraField);
        }
        setExtra();
    }

    public void setInternalAttributes(int i10) {
        this.internalAttributes = i10;
    }

    protected void setName(String str) {
        this.name = str;
    }

    protected void setPlatform(int i10) {
        this.platform = i10;
    }

    public void setUnixMode(int i10) {
        setExternalAttributes(((i10 & 128) == 0 ? 1 : 0) | (i10 << 16) | (isDirectory() ? 16 : 0));
        this.platform = 3;
    }

    protected void setExtra() {
        super.setExtra(ExtraFieldUtils.mergeLocalFileDataData(getExtraFields()));
    }

    public ZipEntry(java.util.zip.ZipEntry zipEntry) throws ZipException {
        super(zipEntry);
        this.internalAttributes = 0;
        this.platform = 0;
        this.externalAttributes = 0L;
        this.extraFields = null;
        this.name = null;
        byte[] extra = zipEntry.getExtra();
        if (extra != null) {
            setExtraFields(ExtraFieldUtils.parse(extra));
        } else {
            setExtra();
        }
    }

    public ZipEntry(ZipEntry zipEntry) throws ZipException {
        this((java.util.zip.ZipEntry) zipEntry);
        setInternalAttributes(zipEntry.getInternalAttributes());
        setExternalAttributes(zipEntry.getExternalAttributes());
        setExtraFields(zipEntry.getExtraFields());
    }

    protected ZipEntry() {
        super("");
        this.internalAttributes = 0;
        this.platform = 0;
        this.externalAttributes = 0L;
        this.extraFields = null;
        this.name = null;
    }
}
