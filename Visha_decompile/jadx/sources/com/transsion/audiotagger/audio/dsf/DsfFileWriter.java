package com.transsion.audiotagger.audio.dsf;

import com.transsion.audiotagger.audio.AudioFileIO;
import com.transsion.audiotagger.audio.exceptions.CannotWriteException;
import com.transsion.audiotagger.audio.generic.AudioFileWriter2;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.tag.Tag;
import com.transsion.audiotagger.tag.id3.AbstractID3v2Tag;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

public class DsfFileWriter extends AudioFileWriter2 {
    public ByteBuffer convert(AbstractID3v2Tag abstractID3v2Tag) throws UnsupportedEncodingException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            long size = abstractID3v2Tag.getSize();
            if (size > 0 && Utils.isOddLength(size)) {
                size++;
            }
            abstractID3v2Tag.write(byteArrayOutputStream, (int) size);
            if ((byteArrayOutputStream.toByteArray().length & 1) != 0) {
                int length = byteArrayOutputStream.toByteArray().length + 1;
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                abstractID3v2Tag.write(byteArrayOutputStream2, length);
                byteArrayOutputStream = byteArrayOutputStream2;
            }
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(byteArrayOutputStream.toByteArray());
            byteBufferWrap.rewind();
            return byteBufferWrap;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x005c: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:13:0x005c */
    @Override
    public void deleteTag(Tag tag, File file) throws Throwable {
        IOException e;
        Closeable closeable;
        Closeable closeable2 = null;
        try {
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                try {
                    FileChannel channel = randomAccessFile.getChannel();
                    DsdChunk chunk = DsdChunk.readChunk(Utils.readFileDataIntoBufferLE(channel, DsdChunk.DSD_HEADER_LENGTH));
                    if (chunk != null && chunk.getMetadataOffset() > 0) {
                        channel.position(chunk.getMetadataOffset());
                        if (ID3Chunk.readChunk(Utils.readFileDataIntoBufferLE(channel, (int) (channel.size() - channel.position()))) != null) {
                            channel.truncate(chunk.getMetadataOffset());
                            chunk.setMetadataOffset(0L);
                            chunk.setFileLength(channel.size());
                            channel.position(0L);
                            channel.write(chunk.write());
                        }
                    }
                    AudioFileIO.closeQuietly(randomAccessFile);
                } catch (IOException e2) {
                    e = e2;
                    throw new CannotWriteException(file + StringUtils.PROCESS_POSTFIX_DELIMITER + e.getMessage());
                }
            } catch (Throwable th) {
                th = th;
                closeable2 = closeable;
                AudioFileIO.closeQuietly(closeable2);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
        } catch (Throwable th2) {
            th = th2;
            AudioFileIO.closeQuietly(closeable2);
            throw th;
        }
    }

    @Override
    public void writeTag(Tag tag, File file) throws Throwable {
        RandomAccessFile randomAccessFile = null;
        try {
            try {
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "rw");
                try {
                    FileChannel channel = randomAccessFile2.getChannel();
                    DsdChunk chunk = DsdChunk.readChunk(Utils.readFileDataIntoBufferLE(channel, DsdChunk.DSD_HEADER_LENGTH));
                    if (chunk != null) {
                        if (chunk.getMetadataOffset() > 0) {
                            channel.position(chunk.getMetadataOffset());
                            if (ID3Chunk.readChunk(Utils.readFileDataIntoBufferLE(channel, (int) (channel.size() - channel.position()))) == null) {
                                throw new CannotWriteException(file + "Could not find existing ID3v2 Tag");
                            }
                            channel.position(chunk.getMetadataOffset());
                            channel.write(convert((AbstractID3v2Tag) tag));
                        } else {
                            channel.position(channel.size());
                            chunk.setMetadataOffset(channel.size());
                            channel.write(convert((AbstractID3v2Tag) tag));
                            chunk.setFileLength(channel.size());
                            channel.position(0L);
                            channel.write(chunk.write());
                        }
                    }
                    AudioFileIO.closeQuietly(randomAccessFile2);
                } catch (IOException e) {
                    e = e;
                    randomAccessFile = randomAccessFile2;
                    throw new CannotWriteException(e.getMessage());
                } catch (Throwable th) {
                    th = th;
                    randomAccessFile = randomAccessFile2;
                    AudioFileIO.closeQuietly(randomAccessFile);
                    throw th;
                }
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
