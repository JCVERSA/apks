package com.transsion.audiotagger.tag.lyrics3;

import com.transsion.audiotagger.tag.InvalidTagException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.util.Arrays;

public class FieldFrameBodyUnsupported extends AbstractLyrics3v2FieldFrameBody {
    private byte[] value;

    public FieldFrameBodyUnsupported() {
        this.value = null;
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof FieldFrameBodyUnsupported) && Arrays.equals(this.value, ((FieldFrameBodyUnsupported) obj).value) && super.equals(obj);
    }

    @Override
    public String getIdentifier() {
        return "ZZZ";
    }

    @Override
    public boolean isSubsetOf(Object obj) {
        if (obj instanceof FieldFrameBodyUnsupported) {
            return new String(((FieldFrameBodyUnsupported) obj).value).contains(new String(this.value)) && super.isSubsetOf(obj);
        }
        return false;
    }

    @Override
    public void read(ByteBuffer byteBuffer) throws InvalidTagException {
        byte[] bArr = new byte[5];
        byteBuffer.get(bArr, 0, 5);
        byte[] bArr2 = new byte[Integer.parseInt(new String(bArr, 0, 5))];
        this.value = bArr2;
        byteBuffer.get(bArr2);
    }

    @Override
    public void setupObjectList() {
    }

    @Override
    public String toString() {
        return getIdentifier() + " : " + new String(this.value);
    }

    @Override
    public void write(RandomAccessFile randomAccessFile) throws IOException {
        byte[] bArr = new byte[5];
        String string = Integer.toString(this.value.length);
        for (int i = 0; i < 5 - string.length(); i++) {
            bArr[i] = 48;
        }
        int length = 5 - string.length();
        for (int i2 = 0; i2 < string.length(); i2++) {
            bArr[i2 + length] = (byte) string.charAt(i2);
        }
        randomAccessFile.write(bArr);
        randomAccessFile.write(this.value);
    }

    public FieldFrameBodyUnsupported(FieldFrameBodyUnsupported fieldFrameBodyUnsupported) {
        super(fieldFrameBodyUnsupported);
        this.value = null;
        this.value = (byte[]) fieldFrameBodyUnsupported.value.clone();
    }

    public FieldFrameBodyUnsupported(byte[] bArr) {
        this.value = bArr;
    }

    public FieldFrameBodyUnsupported(ByteBuffer byteBuffer) throws InvalidTagException {
        this.value = null;
        read(byteBuffer);
    }
}
