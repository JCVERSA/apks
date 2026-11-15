package com.transsion.audiotagger.audio.asf.io;

import com.transsion.audiotagger.audio.asf.data.Chunk;
import com.transsion.audiotagger.audio.asf.data.ContainerType;
import com.transsion.audiotagger.audio.asf.data.GUID;
import com.transsion.audiotagger.audio.asf.data.MetadataContainer;
import com.transsion.audiotagger.audio.asf.data.MetadataDescriptor;
import com.transsion.audiotagger.audio.asf.util.Utils;
import java.io.IOException;
import java.io.InputStream;

public class MetadataReader implements ChunkReader {
    static final boolean $assertionsDisabled = false;
    private static final GUID[] APPLYING = {ContainerType.EXTENDED_CONTENT.getContainerGUID(), ContainerType.METADATA_OBJECT.getContainerGUID(), ContainerType.METADATA_LIBRARY_OBJECT.getContainerGUID()};

    private boolean readBoolean(InputStream inputStream, int i) throws IOException {
        byte[] bArr = new byte[i];
        inputStream.read(bArr);
        boolean z = false;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 == i - 1) {
                z = bArr[i2] == 1;
            }
        }
        return z;
    }

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
        int uint16;
        int uint17;
        MetadataContainer metadataContainer = new MetadataContainer(guid, j, Utils.readBig64(inputStream));
        boolean z = metadataContainer.getContainerType() == ContainerType.EXTENDED_CONTENT;
        int uint18 = Utils.readUINT16(inputStream);
        int i = 0;
        while (i < uint18) {
            if (z) {
                uint16 = 0;
                uint17 = 0;
            } else {
                uint17 = Utils.readUINT16(inputStream);
                uint16 = Utils.readUINT16(inputStream);
            }
            int uint19 = Utils.readUINT16(inputStream);
            String fixedSizeUTF16Str = z ? Utils.readFixedSizeUTF16Str(inputStream, uint19) : null;
            int uint110 = Utils.readUINT16(inputStream);
            long uint111 = z ? Utils.readUINT16(inputStream) : Utils.readUINT32(inputStream);
            int i2 = i;
            MetadataDescriptor metadataDescriptor = new MetadataDescriptor(metadataContainer.getContainerType(), !z ? Utils.readFixedSizeUTF16Str(inputStream, uint19) : fixedSizeUTF16Str, uint110, uint16, uint17);
            switch (uint110) {
                case 0:
                    metadataDescriptor.setStringValue(Utils.readFixedSizeUTF16Str(inputStream, (int) uint111));
                    continue;
                    metadataContainer.addDescriptor(metadataDescriptor);
                    i = i2 + 1;
                    break;
                case 1:
                    metadataDescriptor.setBinaryValue(Utils.readBinary(inputStream, uint111));
                    continue;
                    metadataContainer.addDescriptor(metadataDescriptor);
                    i = i2 + 1;
                    break;
                case 2:
                    metadataDescriptor.setBooleanValue(readBoolean(inputStream, (int) uint111));
                    continue;
                    metadataContainer.addDescriptor(metadataDescriptor);
                    i = i2 + 1;
                    break;
                case 3:
                    metadataDescriptor.setDWordValue(Utils.readUINT32(inputStream));
                    break;
                case 4:
                    metadataDescriptor.setQWordValue(Utils.readUINT64(inputStream));
                    break;
                case 5:
                    metadataDescriptor.setWordValue(Utils.readUINT16(inputStream));
                    break;
                case 6:
                    metadataDescriptor.setGUIDValue(Utils.readGUID(inputStream));
                    break;
                default:
                    metadataDescriptor.setStringValue("Invalid datatype: " + new String(Utils.readBinary(inputStream, uint111)));
                    break;
            }
            metadataContainer.addDescriptor(metadataDescriptor);
            i = i2 + 1;
        }
        return metadataContainer;
    }
}
