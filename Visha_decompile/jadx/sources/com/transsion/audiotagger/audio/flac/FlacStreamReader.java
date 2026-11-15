package com.transsion.audiotagger.audio.flac;

import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.tag.id3.AbstractID3v2Tag;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.logging.Logger;

public class FlacStreamReader {
    public static final String FLAC_STREAM_IDENTIFIER = "fLaC";
    public static final int FLAC_STREAM_IDENTIFIER_LENGTH = 4;
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.flac");
    private FileChannel fc;
    private String loggingName;
    private int startOfFlacInFile;

    public FlacStreamReader(FileChannel fileChannel, String str) {
        this.fc = fileChannel;
        this.loggingName = str;
    }

    private boolean isFlacHeader() throws IOException {
        return Utils.readFourBytesAsChars(Utils.readFileDataIntoBufferBE(this.fc, 4)).equals(FLAC_STREAM_IDENTIFIER);
    }

    private boolean isId3v2Tag() throws IOException {
        this.fc.position(0L);
        if (!AbstractID3v2Tag.isId3Tag(this.fc)) {
            return false;
        }
        logger.warning(this.loggingName + ErrorMessage.FLAC_CONTAINS_ID3TAG.getMsg(Long.valueOf(this.fc.position())));
        return isFlacHeader();
    }

    public void findStream() throws CannotReadException, IOException {
        if (this.fc.size() == 0) {
            throw new CannotReadException("Error: File empty " + this.loggingName);
        }
        this.fc.position(0L);
        if (isFlacHeader()) {
            this.startOfFlacInFile = 0;
        } else {
            if (isId3v2Tag()) {
                this.startOfFlacInFile = (int) (this.fc.position() - 4);
                return;
            }
            throw new CannotReadException(this.loggingName + ErrorMessage.FLAC_NO_FLAC_HEADER_FOUND.getMsg());
        }
    }

    public int getStartOfFlacInFile() {
        return this.startOfFlacInFile;
    }
}
