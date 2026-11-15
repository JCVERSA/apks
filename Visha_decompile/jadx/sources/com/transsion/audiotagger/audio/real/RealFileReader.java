package com.transsion.audiotagger.audio.real;

import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.generic.AudioFileReader;
import com.transsion.audiotagger.audio.generic.GenericAudioHeader;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.tag.FieldDataInvalidException;
import com.transsion.audiotagger.tag.FieldKey;
import com.transsion.audiotagger.tag.Tag;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;

public class RealFileReader extends AudioFileReader {
    private RealChunk findContChunk(RandomAccessFile randomAccessFile) throws CannotReadException, IOException {
        RealChunk.readChunk(randomAccessFile);
        RealChunk.readChunk(randomAccessFile);
        RealChunk chunk = RealChunk.readChunk(randomAccessFile);
        while (!chunk.isCONT()) {
            chunk = RealChunk.readChunk(randomAccessFile);
        }
        return chunk;
    }

    private RealChunk findPropChunk(RandomAccessFile randomAccessFile) throws CannotReadException, IOException {
        RealChunk.readChunk(randomAccessFile);
        return RealChunk.readChunk(randomAccessFile);
    }

    @Override
    public GenericAudioHeader getEncodingInfo(RandomAccessFile randomAccessFile) throws CannotReadException, IOException {
        GenericAudioHeader genericAudioHeader = new GenericAudioHeader();
        DataInputStream dataInputStream = findPropChunk(randomAccessFile).getDataInputStream();
        if (Utils.readUint16(dataInputStream) == 0) {
            long uint32 = Utils.readUint32(dataInputStream) / 1000;
            long uint33 = Utils.readUint32(dataInputStream) / 1000;
            Utils.readUint32(dataInputStream);
            Utils.readUint32(dataInputStream);
            Utils.readUint32(dataInputStream);
            int uint34 = ((int) Utils.readUint32(dataInputStream)) / 1000;
            Utils.readUint32(dataInputStream);
            Utils.readUint32(dataInputStream);
            Utils.readUint32(dataInputStream);
            Utils.readUint16(dataInputStream);
            Utils.readUint16(dataInputStream);
            genericAudioHeader.setBitRate((int) uint33);
            genericAudioHeader.setPreciseLength(uint34);
            genericAudioHeader.setVariableBitRate(uint32 != uint33);
        }
        return genericAudioHeader;
    }

    @Override
    public Tag getTag(RandomAccessFile randomAccessFile) throws CannotReadException, IOException {
        DataInputStream dataInputStream = findContChunk(randomAccessFile).getDataInputStream();
        String string = Utils.readString(dataInputStream, Utils.readUint16(dataInputStream));
        String string2 = Utils.readString(dataInputStream, Utils.readUint16(dataInputStream));
        String string3 = Utils.readString(dataInputStream, Utils.readUint16(dataInputStream));
        String string4 = Utils.readString(dataInputStream, Utils.readUint16(dataInputStream));
        RealTag realTag = new RealTag();
        try {
            realTag.addField(FieldKey.TITLE, string.length() == 0 ? string2 : string);
            FieldKey fieldKey = FieldKey.ARTIST;
            if (string.length() == 0) {
                string2 = string3;
            }
            realTag.addField(fieldKey, string2);
            realTag.addField(FieldKey.COMMENT, string4);
            return realTag;
        } catch (FieldDataInvalidException e) {
            throw new RuntimeException(e);
        }
    }
}
