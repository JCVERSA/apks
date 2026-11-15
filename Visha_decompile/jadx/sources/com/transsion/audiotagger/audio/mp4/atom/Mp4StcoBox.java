package com.transsion.audiotagger.audio.mp4.atom;

import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.audio.mp4.Mp4AtomIdentifier;
import java.io.IOException;
import java.io.PrintStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;

public class Mp4StcoBox extends AbstractMp4Box {
    public static final int NO_OF_OFFSETS_LENGTH = 4;
    public static final int NO_OF_OFFSETS_POS = 4;
    public static final int OFFSET_LENGTH = 4;
    public static final int OTHER_FLAG_LENGTH = 3;
    public static final int OTHER_FLAG_POS = 1;
    public static final int VERSION_FLAG_LENGTH = 1;
    public static final int VERSION_FLAG_POS = 0;
    private int firstOffSet;
    private int noOfOffSets;

    public Mp4StcoBox(Mp4BoxHeader mp4BoxHeader, ByteBuffer byteBuffer) {
        this.noOfOffSets = 0;
        this.header = mp4BoxHeader;
        ByteBuffer byteBufferSlice = byteBuffer.slice();
        this.dataBuffer = byteBufferSlice;
        byteBufferSlice.order(ByteOrder.BIG_ENDIAN);
        ByteBuffer byteBuffer2 = this.dataBuffer;
        byteBuffer2.position(byteBuffer2.position() + 4);
        this.noOfOffSets = this.dataBuffer.getInt();
        this.firstOffSet = this.dataBuffer.getInt();
    }

    public static void debugShowStcoInfo(RandomAccessFile randomAccessFile) throws CannotReadException, IOException {
        getStco(randomAccessFile).printAllOffsets();
    }

    public static Mp4StcoBox getStco(RandomAccessFile randomAccessFile) throws CannotReadException, IOException {
        FileChannel channel = randomAccessFile.getChannel();
        Mp4BoxHeader mp4BoxHeaderSeekWithinLevel = Mp4BoxHeader.seekWithinLevel(channel, Mp4AtomIdentifier.MOOV.getFieldName());
        if (mp4BoxHeaderSeekWithinLevel == null) {
            throw new CannotReadException("This file does not appear to be an audio file");
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(mp4BoxHeaderSeekWithinLevel.getLength() - 8);
        channel.read(byteBufferAllocate);
        byteBufferAllocate.rewind();
        Mp4BoxHeader mp4BoxHeaderSeekWithinLevel2 = Mp4BoxHeader.seekWithinLevel(byteBufferAllocate, Mp4AtomIdentifier.MVHD.getFieldName());
        if (mp4BoxHeaderSeekWithinLevel2 == null) {
            throw new CannotReadException("This file does not appear to be an audio file");
        }
        ByteBuffer byteBufferSlice = byteBufferAllocate.slice();
        new Mp4MvhdBox(mp4BoxHeaderSeekWithinLevel2, byteBufferSlice);
        byteBufferSlice.position(byteBufferSlice.position() + mp4BoxHeaderSeekWithinLevel2.getDataLength());
        Mp4BoxHeader mp4BoxHeaderSeekWithinLevel3 = Mp4BoxHeader.seekWithinLevel(byteBufferSlice, Mp4AtomIdentifier.TRAK.getFieldName());
        byteBufferSlice.position();
        mp4BoxHeaderSeekWithinLevel3.getDataLength();
        if (Mp4BoxHeader.seekWithinLevel(byteBufferSlice, Mp4AtomIdentifier.MDIA.getFieldName()) == null) {
            throw new CannotReadException("This file does not appear to be an audio file");
        }
        Mp4BoxHeader mp4BoxHeaderSeekWithinLevel4 = Mp4BoxHeader.seekWithinLevel(byteBufferSlice, Mp4AtomIdentifier.MDHD.getFieldName());
        if (mp4BoxHeaderSeekWithinLevel4 == null) {
            throw new CannotReadException("This file does not appear to be an audio file");
        }
        byteBufferSlice.position(byteBufferSlice.position() + mp4BoxHeaderSeekWithinLevel4.getDataLength());
        if (Mp4BoxHeader.seekWithinLevel(byteBufferSlice, Mp4AtomIdentifier.MINF.getFieldName()) == null) {
            throw new CannotReadException("This file does not appear to be an audio file");
        }
        Mp4BoxHeader mp4BoxHeaderSeekWithinLevel5 = Mp4BoxHeader.seekWithinLevel(byteBufferSlice, Mp4AtomIdentifier.SMHD.getFieldName());
        if (mp4BoxHeaderSeekWithinLevel5 == null) {
            throw new CannotReadException("This file does not appear to be an audio file");
        }
        byteBufferSlice.position(byteBufferSlice.position() + mp4BoxHeaderSeekWithinLevel5.getDataLength());
        if (Mp4BoxHeader.seekWithinLevel(byteBufferSlice, Mp4AtomIdentifier.STBL.getFieldName()) == null) {
            throw new CannotReadException("This file does not appear to be an audio file");
        }
        Mp4BoxHeader mp4BoxHeaderSeekWithinLevel6 = Mp4BoxHeader.seekWithinLevel(byteBufferSlice, Mp4AtomIdentifier.STCO.getFieldName());
        if (mp4BoxHeaderSeekWithinLevel6 != null) {
            return new Mp4StcoBox(mp4BoxHeaderSeekWithinLevel6, byteBufferSlice);
        }
        throw new CannotReadException("This file does not appear to be an audio file");
    }

    public void adjustOffsets(int i) {
        this.dataBuffer.rewind();
        ByteBuffer byteBuffer = this.dataBuffer;
        byteBuffer.position(byteBuffer.position() + 8);
        for (int i2 = 0; i2 < this.noOfOffSets; i2++) {
            int i3 = this.dataBuffer.getInt() + i;
            ByteBuffer byteBuffer2 = this.dataBuffer;
            byteBuffer2.position(byteBuffer2.position() - 4);
            this.dataBuffer.putInt(i3);
        }
    }

    public int getFirstOffSet() {
        return this.firstOffSet;
    }

    public int getNoOfOffSets() {
        return this.noOfOffSets;
    }

    public void printAllOffsets() {
        System.out.println("Print Offsets:start");
        this.dataBuffer.rewind();
        this.dataBuffer.position(8);
        for (int i = 0; i < this.noOfOffSets - 1; i++) {
            int i2 = this.dataBuffer.getInt();
            System.out.println("offset into audio data is:" + i2);
        }
        int i3 = this.dataBuffer.getInt();
        PrintStream printStream = System.out;
        printStream.println("offset into audio data is:" + i3);
        printStream.println("Print Offsets:end");
    }

    public void printTotalOffset() {
        this.dataBuffer.rewind();
        this.dataBuffer.position(8);
        int intBE = 0;
        for (int i = 0; i < this.noOfOffSets - 1; i++) {
            ByteBuffer byteBuffer = this.dataBuffer;
            intBE += Utils.getIntBE(byteBuffer, byteBuffer.position(), this.dataBuffer.position() + 3);
            ByteBuffer byteBuffer2 = this.dataBuffer;
            byteBuffer2.position(byteBuffer2.position() + 4);
        }
        ByteBuffer byteBuffer3 = this.dataBuffer;
        int intBE2 = intBE + Utils.getIntBE(byteBuffer3, byteBuffer3.position(), this.dataBuffer.position() + 3);
        System.out.println("Print Offset Total:" + intBE2);
    }

    public Mp4StcoBox(Mp4BoxHeader mp4BoxHeader, ByteBuffer byteBuffer, int i) {
        this.noOfOffSets = 0;
        this.header = mp4BoxHeader;
        ByteBuffer byteBufferSlice = byteBuffer.slice();
        this.dataBuffer = byteBufferSlice;
        byteBufferSlice.position(byteBufferSlice.position() + 4);
        ByteBuffer byteBuffer2 = this.dataBuffer;
        this.noOfOffSets = Utils.getIntBE(byteBuffer2, byteBuffer2.position(), this.dataBuffer.position() + 3);
        ByteBuffer byteBuffer3 = this.dataBuffer;
        byteBuffer3.position(byteBuffer3.position() + 4);
        for (int i2 = 0; i2 < this.noOfOffSets; i2++) {
            ByteBuffer byteBuffer4 = this.dataBuffer;
            this.dataBuffer.put(Utils.getSizeBEInt32(Utils.getIntBE(byteBuffer4, byteBuffer4.position(), this.dataBuffer.position() + 3) + i));
        }
    }
}
