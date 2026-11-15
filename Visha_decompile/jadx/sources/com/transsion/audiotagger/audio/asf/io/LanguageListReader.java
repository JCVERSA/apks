package com.transsion.audiotagger.audio.asf.io;

import com.transsion.audiotagger.audio.asf.data.Chunk;
import com.transsion.audiotagger.audio.asf.data.GUID;
import com.transsion.audiotagger.audio.asf.data.LanguageList;
import com.transsion.audiotagger.audio.asf.util.Utils;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;

public class LanguageListReader implements ChunkReader {
    static final boolean $assertionsDisabled = false;
    private static final GUID[] APPLYING = {GUID.GUID_LANGUAGE_LIST};

    @Override
    public boolean canFail() {
        return false;
    }

    @Override
    public GUID[] getApplyingIds() {
        return (GUID[]) APPLYING.clone();
    }

    @Override
    public Chunk read(GUID guid, InputStream inputStream, long j) throws IOException {
        BigInteger big64 = Utils.readBig64(inputStream);
        int uint16 = Utils.readUINT16(inputStream);
        LanguageList languageList = new LanguageList(j, big64);
        for (int i = 0; i < uint16; i++) {
            languageList.addLanguage(Utils.readFixedSizeUTF16Str(inputStream, inputStream.read() & 255));
        }
        return languageList;
    }
}
