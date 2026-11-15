package com.transsion.audiotagger.audio.aiff.chunk;

import com.transsion.audiotagger.audio.AudioFile;
import com.transsion.audiotagger.audio.iff.Chunk;
import com.transsion.audiotagger.audio.iff.ChunkHeader;
import com.transsion.audiotagger.tag.TagException;
import com.transsion.audiotagger.tag.aiff.AiffTag;
import com.transsion.audiotagger.tag.id3.AbstractID3v2Tag;
import com.transsion.audiotagger.tag.id3.ID3v22Tag;
import com.transsion.audiotagger.tag.id3.ID3v23Tag;
import com.transsion.audiotagger.tag.id3.ID3v24Tag;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.logging.Logger;

public class ID3Chunk extends Chunk {
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.aiff.chunk");
    private AiffTag aiffTag;

    public ID3Chunk(ChunkHeader chunkHeader, ByteBuffer byteBuffer, AiffTag aiffTag) {
        super(byteBuffer, chunkHeader);
        this.aiffTag = aiffTag;
    }

    private boolean isId3v2Tag(ByteBuffer byteBuffer) throws IOException {
        for (int i = 0; i < 3; i++) {
            if (byteBuffer.get() != AbstractID3v2Tag.TAG_ID[i]) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean readChunk() throws IOException {
        AbstractID3v2Tag iD3v22Tag;
        AudioFile.logger.severe("Reading chunk");
        if (!isId3v2Tag(this.chunkData)) {
            logger.severe("Invalid ID3 header for ID3 chunk");
            return false;
        }
        byte b = this.chunkData.get();
        if (b == 2) {
            iD3v22Tag = new ID3v22Tag();
            AudioFile.logger.severe("Reading ID3V2.2 tag");
        } else if (b == 3) {
            iD3v22Tag = new ID3v23Tag();
            AudioFile.logger.severe("Reading ID3V2.3 tag");
        } else {
            if (b != 4) {
                return false;
            }
            iD3v22Tag = new ID3v24Tag();
            AudioFile.logger.severe("Reading ID3V2.4 tag");
        }
        this.aiffTag.setID3Tag(iD3v22Tag);
        this.chunkData.position(0);
        try {
            iD3v22Tag.read(this.chunkData);
            return true;
        } catch (TagException e) {
            AudioFile.logger.info("Exception reading ID3 tag: " + e.getClass().getName() + ": " + e.getMessage());
            return false;
        }
    }
}
