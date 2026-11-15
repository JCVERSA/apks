package com.transsion.audiotagger.audio.asf.io;

import com.transsion.audiotagger.audio.asf.data.Chunk;
import com.transsion.audiotagger.audio.asf.data.ChunkContainer;
import com.transsion.audiotagger.audio.asf.data.GUID;
import com.transsion.audiotagger.audio.asf.util.Utils;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

abstract class ChunkContainerReader<ChunkType extends ChunkContainer> implements ChunkReader {
    static final boolean $assertionsDisabled = false;
    protected static final Logger LOGGER = Logger.getLogger("org.jaudiotabgger.audio");
    public static final int READ_LIMIT = 8192;
    protected final boolean eachChunkOnce;
    protected boolean hasFailingReaders = false;
    protected final Map<GUID, ChunkReader> readerMap = new HashMap();

    public ChunkContainerReader(List<Class<? extends ChunkReader>> list, boolean z) {
        this.eachChunkOnce = z;
        Iterator<Class<? extends ChunkReader>> it = list.iterator();
        while (it.hasNext()) {
            register((Class) it.next());
        }
    }

    private <T extends ChunkReader> void register(Class<T> cls) {
        try {
            T tNewInstance = cls.newInstance();
            for (GUID guid : tNewInstance.getApplyingIds()) {
                this.readerMap.put(guid, tNewInstance);
            }
        } catch (IllegalAccessException e) {
            LOGGER.severe(e.getMessage());
        } catch (InstantiationException e2) {
            LOGGER.severe(e2.getMessage());
        }
    }

    public void checkStream(InputStream inputStream) throws IllegalArgumentException {
        if (this.hasFailingReaders && !inputStream.markSupported()) {
            throw new IllegalArgumentException("Stream has to support mark/reset.");
        }
    }

    public abstract ChunkType createContainer(long j, BigInteger bigInteger, InputStream inputStream) throws IOException;

    public ChunkReader getReader(GUID guid) {
        return this.readerMap.get(guid);
    }

    public boolean isReaderAvailable(GUID guid) {
        return this.readerMap.containsKey(guid);
    }

    @Override
    public ChunkType read(GUID guid, InputStream inputStream, long j) throws IOException, IllegalArgumentException {
        Chunk chunk;
        checkStream(inputStream);
        CountingInputStream countingInputStream = new CountingInputStream(inputStream);
        if (!Arrays.asList(getApplyingIds()).contains(guid)) {
            throw new IllegalArgumentException("provided GUID is not supported by this reader.");
        }
        ChunkType chunktype = (ChunkType) createContainer(j, Utils.readBig64(countingInputStream), countingInputStream);
        long readCount = j + countingInputStream.getReadCount() + 16;
        HashSet hashSet = new HashSet();
        while (readCount < chunktype.getChunkEnd()) {
            GUID guid2 = Utils.readGUID(countingInputStream);
            boolean z = this.eachChunkOnce && !(isReaderAvailable(guid2) && hashSet.add(guid2));
            if (z || !isReaderAvailable(guid2)) {
                chunk = ChunkHeaderReader.getInstance().read(guid2, countingInputStream, readCount);
            } else {
                if (getReader(guid2).canFail()) {
                    countingInputStream.mark(8192);
                }
                chunk = getReader(guid2).read(guid2, countingInputStream, readCount);
            }
            if (chunk == null) {
                countingInputStream.reset();
            } else {
                if (!z) {
                    chunktype.addChunk(chunk);
                }
                readCount = chunk.getChunkEnd();
            }
        }
        return chunktype;
    }
}
