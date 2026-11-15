package org.apache.tools.zip;

public class UnrecognizedExtraField implements ZipExtraField {
    private byte[] centralData;
    private ZipShort headerId;
    private byte[] localData;

    @Override
    public byte[] getCentralDirectoryData() {
        byte[] bArr = this.centralData;
        return bArr != null ? bArr : getLocalFileDataData();
    }

    @Override
    public ZipShort getCentralDirectoryLength() {
        byte[] bArr = this.centralData;
        return bArr != null ? new ZipShort(bArr.length) : getLocalFileDataLength();
    }

    @Override
    public ZipShort getHeaderId() {
        return this.headerId;
    }

    @Override
    public byte[] getLocalFileDataData() {
        return this.localData;
    }

    @Override
    public ZipShort getLocalFileDataLength() {
        return new ZipShort(this.localData.length);
    }

    @Override
    public void parseFromLocalFileData(byte[] bArr, int i10, int i11) {
        byte[] bArr2 = new byte[i11];
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        setLocalFileDataData(bArr2);
    }

    public void setCentralDirectoryData(byte[] bArr) {
        this.centralData = bArr;
    }

    public void setHeaderId(ZipShort zipShort) {
        this.headerId = zipShort;
    }

    public void setLocalFileDataData(byte[] bArr) {
        this.localData = bArr;
    }
}
