package com.transsion.audiotagger.audio.asf.io;

import com.transsion.audiotagger.audio.asf.data.Chunk;
import com.transsion.audiotagger.audio.asf.data.EncryptionChunk;
import com.transsion.audiotagger.audio.asf.data.GUID;
import com.transsion.audiotagger.audio.asf.util.Utils;
import java.io.IOException;
import java.io.InputStream;

class EncryptionChunkReader implements ChunkReader {
    private static final GUID[] APPLYING = {GUID.GUID_CONTENT_ENCRYPTION};

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
        EncryptionChunk encryptionChunk = new EncryptionChunk(Utils.readBig64(inputStream));
        int uint32 = (int) Utils.readUINT32(inputStream);
        byte[] bArr = new byte[uint32 + 1];
        inputStream.read(bArr, 0, uint32);
        bArr[uint32] = 0;
        int uint33 = (int) Utils.readUINT32(inputStream);
        byte[] bArr2 = new byte[uint33 + 1];
        inputStream.read(bArr2, 0, uint33);
        bArr2[uint33] = 0;
        int uint34 = (int) Utils.readUINT32(inputStream);
        byte[] bArr3 = new byte[uint34 + 1];
        inputStream.read(bArr3, 0, uint34);
        bArr3[uint34] = 0;
        int uint35 = (int) Utils.readUINT32(inputStream);
        byte[] bArr4 = new byte[uint35 + 1];
        inputStream.read(bArr4, 0, uint35);
        bArr4[uint35] = 0;
        encryptionChunk.setSecretData(new String(bArr));
        encryptionChunk.setProtectionType(new String(bArr2));
        encryptionChunk.setKeyID(new String(bArr3));
        encryptionChunk.setLicenseURL(new String(bArr4));
        encryptionChunk.setPosition(j);
        return encryptionChunk;
    }
}
