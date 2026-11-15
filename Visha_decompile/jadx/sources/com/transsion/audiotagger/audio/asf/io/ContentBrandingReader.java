package com.transsion.audiotagger.audio.asf.io;

import com.transsion.audiotagger.audio.asf.data.Chunk;
import com.transsion.audiotagger.audio.asf.data.ContentBranding;
import com.transsion.audiotagger.audio.asf.data.GUID;
import com.transsion.audiotagger.audio.asf.util.Utils;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;

public class ContentBrandingReader implements ChunkReader {
    static final boolean $assertionsDisabled = false;
    private static final GUID[] APPLYING = {GUID.GUID_CONTENT_BRANDING};

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
        long uint32 = Utils.readUINT32(inputStream);
        byte[] binary = Utils.readBinary(inputStream, Utils.readUINT32(inputStream));
        String str = new String(Utils.readBinary(inputStream, Utils.readUINT32(inputStream)));
        String str2 = new String(Utils.readBinary(inputStream, Utils.readUINT32(inputStream)));
        ContentBranding contentBranding = new ContentBranding(j, big64);
        contentBranding.setImage(uint32, binary);
        contentBranding.setCopyRightURL(str);
        contentBranding.setBannerImageURL(str2);
        return contentBranding;
    }
}
