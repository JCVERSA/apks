package com.transsion.audiotagger.audio.dsf;

import com.transsion.audiotagger.audio.AudioFileIO;
import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.generic.AudioFileReader;
import com.transsion.audiotagger.audio.generic.AudioFileReader2;
import com.transsion.audiotagger.audio.generic.GenericAudioHeader;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.audio.iff.IffHeaderChunk;
import com.transsion.audiotagger.tag.Tag;
import com.transsion.audiotagger.tag.TagException;
import com.transsion.audiotagger.tag.id3.ID3v22Tag;
import com.transsion.audiotagger.tag.id3.ID3v23Tag;
import com.transsion.audiotagger.tag.id3.ID3v24Tag;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.logging.Level;

public class DsfFileReader extends AudioFileReader2 {
    private Tag readTag(FileChannel fileChannel, DsdChunk dsdChunk, String str) throws CannotReadException, IOException {
        if (dsdChunk.getMetadataOffset() <= 0) {
            AudioFileReader.logger.log(Level.WARNING, str + " No existing ID3 tag(2)");
            return null;
        }
        fileChannel.position(dsdChunk.getMetadataOffset());
        ID3Chunk chunk = ID3Chunk.readChunk(Utils.readFileDataIntoBufferLE(fileChannel, (int) (fileChannel.size() - fileChannel.position())));
        if (chunk == null) {
            AudioFileReader.logger.log(Level.WARNING, str + " No existing ID3 tag(1)");
            return null;
        }
        byte b = chunk.getDataBuffer().get(3);
        try {
            if (b == 2) {
                return new ID3v22Tag(chunk.getDataBuffer(), "");
            }
            if (b == 3) {
                return new ID3v23Tag(chunk.getDataBuffer(), "");
            }
            if (b == 4) {
                return new ID3v24Tag(chunk.getDataBuffer(), "");
            }
            AudioFileReader.logger.log(Level.WARNING, str + " Unknown ID3v2 version " + ((int) b) + ". Returning an empty ID3v2 Tag.");
            return null;
        } catch (TagException unused) {
            throw new CannotReadException(str + " Could not read ID3v2 tag:corruption");
        }
    }

    @Override
    public GenericAudioHeader getEncodingInfo(File file) throws Throwable {
        RandomAccessFile randomAccessFile = null;
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "r");
            try {
                FileChannel channel = randomAccessFile2.getChannel();
                DsdChunk chunk = DsdChunk.readChunk(Utils.readFileDataIntoBufferLE(channel, DsdChunk.DSD_HEADER_LENGTH));
                if (chunk == null) {
                    throw new CannotReadException(file + " Not a valid dsf file. Content does not start with 'DSD '");
                }
                FmtChunk chunkHeader = FmtChunk.readChunkHeader(Utils.readFileDataIntoBufferLE(channel, IffHeaderChunk.SIGNATURE_LENGTH + 8));
                if (chunkHeader != null) {
                    GenericAudioHeader chunkData = chunkHeader.readChunkData(chunk, channel);
                    AudioFileIO.closeQuietly(randomAccessFile2);
                    return chunkData;
                }
                throw new CannotReadException(file + " Not a valid dsf file. Content does not include 'fmt ' chunk");
            } catch (Throwable th) {
                th = th;
                randomAccessFile = randomAccessFile2;
                AudioFileIO.closeQuietly(randomAccessFile);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override
    public Tag getTag(File file) throws Throwable {
        RandomAccessFile randomAccessFile = null;
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "r");
            try {
                FileChannel channel = randomAccessFile2.getChannel();
                DsdChunk chunk = DsdChunk.readChunk(Utils.readFileDataIntoBufferLE(channel, DsdChunk.DSD_HEADER_LENGTH));
                if (chunk != null) {
                    Tag tag = readTag(channel, chunk, file.toString());
                    AudioFileIO.closeQuietly(randomAccessFile2);
                    return tag;
                }
                throw new CannotReadException(file + " Not a valid dsf file. Content does not start with 'DSD '.");
            } catch (Throwable th) {
                th = th;
                randomAccessFile = randomAccessFile2;
                AudioFileIO.closeQuietly(randomAccessFile);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
