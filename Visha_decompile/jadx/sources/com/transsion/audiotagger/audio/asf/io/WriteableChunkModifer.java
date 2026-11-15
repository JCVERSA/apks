package com.transsion.audiotagger.audio.asf.io;

import com.transsion.audiotagger.audio.asf.data.GUID;
import com.transsion.audiotagger.audio.asf.util.Utils;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class WriteableChunkModifer implements ChunkModifier {
    static final boolean $assertionsDisabled = false;
    private final WriteableChunk writableChunk;

    public WriteableChunkModifer(WriteableChunk writeableChunk) {
        this.writableChunk = writeableChunk;
    }

    @Override
    public boolean isApplicable(GUID guid) {
        return guid.equals(this.writableChunk.getGuid());
    }

    @Override
    public ModificationResult modify(GUID guid, InputStream inputStream, OutputStream outputStream) throws IOException {
        long jWriteInto;
        int i = 0;
        long uint64 = 0;
        if (this.writableChunk.isEmpty()) {
            jWriteInto = 0;
        } else {
            jWriteInto = this.writableChunk.writeInto(outputStream);
            if (guid == null) {
                i = 1;
            }
        }
        if (guid != null) {
            if (this.writableChunk.isEmpty()) {
                i--;
            }
            uint64 = Utils.readUINT64(inputStream);
            inputStream.skip(uint64 - 24);
        }
        return new ModificationResult(i, jWriteInto - uint64, guid);
    }
}
