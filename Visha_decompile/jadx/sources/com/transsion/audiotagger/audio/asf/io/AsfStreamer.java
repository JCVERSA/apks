package com.transsion.audiotagger.audio.asf.io;

import com.transsion.audiotagger.audio.asf.data.GUID;
import com.transsion.audiotagger.audio.asf.util.Utils;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class AsfStreamer {
    private void copyChunk(GUID guid, InputStream inputStream, OutputStream outputStream) throws IOException {
        long uint64 = Utils.readUINT64(inputStream);
        outputStream.write(guid.getBytes());
        Utils.writeUINT64(uint64, outputStream);
        Utils.copy(inputStream, outputStream, uint64 - 24);
    }

    private void modifyFileHeader(InputStream inputStream, OutputStream outputStream, long j) throws IOException {
        outputStream.write(GUID.GUID_FILE.getBytes());
        long uint64 = Utils.readUINT64(inputStream);
        Utils.writeUINT64(uint64, outputStream);
        outputStream.write(Utils.readGUID(inputStream).getBytes());
        Utils.writeUINT64(Utils.readUINT64(inputStream) + j, outputStream);
        Utils.copy(inputStream, outputStream, uint64 - 48);
    }

    public void createModifiedCopy(InputStream inputStream, OutputStream outputStream, List<ChunkModifier> list) throws IOException {
        byte[] byteArray;
        byte[] bArr;
        long j;
        boolean z;
        int i;
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            arrayList.addAll(list);
        }
        GUID guid = Utils.readGUID(inputStream);
        if (!GUID.GUID_HEADER.equals(guid)) {
            throw new IllegalArgumentException("No ASF header object.");
        }
        long uint64 = Utils.readUINT64(inputStream);
        long uint32 = Utils.readUINT32(inputStream);
        byte[] bArr2 = {(byte) (inputStream.read() & 255), (byte) (inputStream.read() & 255)};
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        long j2 = 0;
        long byteDifference = 0;
        long chunkCountDifference = 0;
        byte[] bArr3 = null;
        while (j2 < uint32) {
            GUID guid2 = Utils.readGUID(inputStream);
            if (GUID.GUID_FILE.equals(guid2)) {
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                long uint65 = Utils.readUINT64(inputStream);
                Utils.writeUINT64(uint65, byteArrayOutputStream2);
                Utils.copy(inputStream, byteArrayOutputStream2, uint65 - 24);
                byteArray = byteArrayOutputStream2.toByteArray();
                bArr = bArr2;
                j = uint32;
                z = true;
            } else {
                byte[] bArr4 = bArr2;
                byteArray = bArr3;
                int i2 = 0;
                boolean z2 = false;
                while (i2 < arrayList.size() && !z2) {
                    if (((ChunkModifier) arrayList.get(i2)).isApplicable(guid2)) {
                        ModificationResult modificationResultModify = ((ChunkModifier) arrayList.get(i2)).modify(guid2, inputStream, byteArrayOutputStream);
                        chunkCountDifference += (long) modificationResultModify.getChunkCountDifference();
                        byteDifference += modificationResultModify.getByteDifference();
                        arrayList.remove(i2);
                        i = 1;
                        z2 = true;
                    } else {
                        i = 1;
                    }
                    i2 += i;
                    bArr4 = bArr4;
                    uint32 = uint32;
                }
                bArr = bArr4;
                j = uint32;
                z = true;
                if (!z2) {
                    copyChunk(guid2, inputStream, byteArrayOutputStream);
                }
            }
            j2++;
            bArr3 = byteArray;
            bArr2 = bArr;
            uint32 = j;
        }
        byte[] bArr5 = bArr3;
        long j3 = uint32;
        byte[] bArr6 = bArr2;
        Iterator it = arrayList.iterator();
        long byteDifference2 = byteDifference;
        while (it.hasNext()) {
            ModificationResult modificationResultModify2 = ((ChunkModifier) it.next()).modify(null, null, byteArrayOutputStream);
            chunkCountDifference += (long) modificationResultModify2.getChunkCountDifference();
            byteDifference2 += modificationResultModify2.getByteDifference();
        }
        outputStream.write(guid.getBytes());
        Utils.writeUINT64(uint64 + byteDifference2, outputStream);
        Utils.writeUINT32(j3 + chunkCountDifference, outputStream);
        outputStream.write(bArr6);
        modifyFileHeader(new ByteArrayInputStream(bArr5), outputStream, byteDifference2);
        outputStream.write(byteArrayOutputStream.toByteArray());
        Utils.flush(inputStream, outputStream);
    }
}
