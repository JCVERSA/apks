package com.transsion.audiotagger.tag.lyrics3;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.TagOptionSingleton;
import com.transsion.audiotagger.tag.datatype.AbstractDataType;
import com.transsion.audiotagger.tag.id3.AbstractTagFrameBody;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.util.ListIterator;

public abstract class AbstractLyrics3v2FieldFrameBody extends AbstractTagFrameBody {
    public AbstractLyrics3v2FieldFrameBody() {
    }

    @Override
    public void read(ByteBuffer byteBuffer) throws InvalidTagException {
        int size = getSize();
        byte[] bArr = new byte[size];
        byteBuffer.get(bArr);
        ListIterator<AbstractDataType> listIterator = this.objectList.listIterator();
        int size2 = 0;
        while (listIterator.hasNext()) {
            if (size2 > size - 1) {
                throw new InvalidTagException("Invalid size for Frame Body");
            }
            AbstractDataType next = listIterator.next();
            next.readByteArray(bArr, size2);
            size2 += next.getSize();
        }
    }

    public int readHeader(RandomAccessFile randomAccessFile) throws IOException, InvalidTagException {
        byte[] bArr = new byte[5];
        randomAccessFile.read(bArr, 0, 5);
        int i = Integer.parseInt(new String(bArr, 0, 5));
        if (i != 0 || TagOptionSingleton.getInstance().isLyrics3KeepEmptyFieldIfRead()) {
            return i;
        }
        throw new InvalidTagException("Lyircs3v2 Field has size of zero.");
    }

    public void write(RandomAccessFile randomAccessFile) throws IOException {
        ListIterator<AbstractDataType> listIterator = this.objectList.listIterator();
        while (listIterator.hasNext()) {
            randomAccessFile.write(listIterator.next().writeByteArray());
        }
    }

    public void writeHeader(RandomAccessFile randomAccessFile, int i) throws IOException {
        byte[] bArr = new byte[5];
        String string = Integer.toString(getSize());
        for (int i2 = 0; i2 < 5 - string.length(); i2++) {
            bArr[i2] = 48;
        }
        int length = 5 - string.length();
        for (int i3 = 0; i3 < string.length(); i3++) {
            bArr[i3 + length] = (byte) string.charAt(i3);
        }
        randomAccessFile.write(bArr);
    }

    public AbstractLyrics3v2FieldFrameBody(AbstractLyrics3v2FieldFrameBody abstractLyrics3v2FieldFrameBody) {
        super(abstractLyrics3v2FieldFrameBody);
    }
}
