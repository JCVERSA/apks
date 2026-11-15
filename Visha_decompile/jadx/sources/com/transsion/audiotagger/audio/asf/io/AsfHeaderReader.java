package com.transsion.audiotagger.audio.asf.io;

import com.transsion.audiotagger.audio.asf.data.AsfHeader;
import com.transsion.audiotagger.audio.asf.data.ChunkContainer;
import com.transsion.audiotagger.audio.asf.data.GUID;
import com.transsion.audiotagger.audio.asf.util.Utils;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

public class AsfHeaderReader extends ChunkContainerReader<AsfHeader> {
    private static final GUID[] APPLYING = {GUID.GUID_HEADER};
    private static final AsfHeaderReader FULL_READER;
    private static final AsfHeaderReader INFO_READER;
    private static final AsfHeaderReader TAG_READER;

    static {
        ArrayList arrayList = new ArrayList();
        arrayList.add(FileHeaderReader.class);
        arrayList.add(StreamChunkReader.class);
        INFO_READER = new AsfHeaderReader(arrayList, true);
        arrayList.clear();
        arrayList.add(ContentDescriptionReader.class);
        arrayList.add(ContentBrandingReader.class);
        arrayList.add(LanguageListReader.class);
        arrayList.add(MetadataReader.class);
        AsfExtHeaderReader asfExtHeaderReader = new AsfExtHeaderReader(arrayList, true);
        AsfExtHeaderReader asfExtHeaderReader2 = new AsfExtHeaderReader(arrayList, true);
        AsfHeaderReader asfHeaderReader = new AsfHeaderReader(arrayList, true);
        TAG_READER = asfHeaderReader;
        asfHeaderReader.setExtendedHeaderReader(asfExtHeaderReader);
        arrayList.add(FileHeaderReader.class);
        arrayList.add(StreamChunkReader.class);
        arrayList.add(EncodingChunkReader.class);
        arrayList.add(EncryptionChunkReader.class);
        arrayList.add(StreamBitratePropertiesReader.class);
        AsfHeaderReader asfHeaderReader2 = new AsfHeaderReader(arrayList, false);
        FULL_READER = asfHeaderReader2;
        asfHeaderReader2.setExtendedHeaderReader(asfExtHeaderReader2);
    }

    public AsfHeaderReader(List<Class<? extends ChunkReader>> list, boolean z) {
        super(list, z);
    }

    private static InputStream createStream(RandomAccessFile randomAccessFile) {
        return new FullRequestInputStream(new BufferedInputStream(new RandomAccessFileInputstream(randomAccessFile)));
    }

    public static AsfHeader readHeader(File file) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        AsfHeader asfHeader = (AsfHeader) FULL_READER.read(Utils.readGUID(fileInputStream), (InputStream) fileInputStream, 0L);
        fileInputStream.close();
        return asfHeader;
    }

    public static AsfHeader readInfoHeader(RandomAccessFile randomAccessFile) throws IOException {
        InputStream inputStreamCreateStream = createStream(randomAccessFile);
        return (AsfHeader) INFO_READER.read(Utils.readGUID(inputStreamCreateStream), inputStreamCreateStream, 0L);
    }

    public static AsfHeader readTagHeader(RandomAccessFile randomAccessFile) throws IOException {
        InputStream inputStreamCreateStream = createStream(randomAccessFile);
        return (AsfHeader) TAG_READER.read(Utils.readGUID(inputStreamCreateStream), inputStreamCreateStream, 0L);
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
    public ChunkContainer read(GUID guid, InputStream inputStream, long j) throws IOException, IllegalArgumentException {
        return super.read(guid, inputStream, j);
    }

    public void setExtendedHeaderReader(AsfExtHeaderReader asfExtHeaderReader) {
        for (GUID guid : asfExtHeaderReader.getApplyingIds()) {
            this.readerMap.put(guid, asfExtHeaderReader);
        }
    }

    @Override
    public AsfHeader createContainer(long j, BigInteger bigInteger, InputStream inputStream) throws IOException {
        long uint32 = Utils.readUINT32(inputStream);
        if (inputStream.read() != 1) {
            throw new IOException("No ASF");
        }
        if (inputStream.read() == 2) {
            return new AsfHeader(j, bigInteger, uint32);
        }
        throw new IOException("No ASF");
    }

    public static AsfHeader readHeader(RandomAccessFile randomAccessFile) throws IOException {
        InputStream inputStreamCreateStream = createStream(randomAccessFile);
        return (AsfHeader) FULL_READER.read(Utils.readGUID(inputStreamCreateStream), inputStreamCreateStream, 0L);
    }
}
