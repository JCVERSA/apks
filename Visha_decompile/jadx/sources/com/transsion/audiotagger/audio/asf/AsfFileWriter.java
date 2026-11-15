package com.transsion.audiotagger.audio.asf;

import com.transsion.audiotagger.audio.AudioFile;
import com.transsion.audiotagger.audio.asf.data.AsfHeader;
import com.transsion.audiotagger.audio.asf.data.ChunkContainer;
import com.transsion.audiotagger.audio.asf.data.MetadataContainer;
import com.transsion.audiotagger.audio.asf.io.AsfExtHeaderModifier;
import com.transsion.audiotagger.audio.asf.io.AsfHeaderReader;
import com.transsion.audiotagger.audio.asf.io.AsfStreamer;
import com.transsion.audiotagger.audio.asf.io.RandomAccessFileInputstream;
import com.transsion.audiotagger.audio.asf.io.RandomAccessFileOutputStream;
import com.transsion.audiotagger.audio.asf.io.WriteableChunkModifer;
import com.transsion.audiotagger.audio.asf.util.TagConverter;
import com.transsion.audiotagger.audio.exceptions.CannotWriteException;
import com.transsion.audiotagger.audio.generic.AudioFileWriter;
import com.transsion.audiotagger.tag.Tag;
import com.transsion.audiotagger.tag.asf.AsfTag;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;

public class AsfFileWriter extends AudioFileWriter {
    static final boolean $assertionsDisabled = false;

    private boolean[] searchExistence(ChunkContainer chunkContainer, MetadataContainer[] metadataContainerArr) {
        int length = metadataContainerArr.length;
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            zArr[i] = chunkContainer.hasChunkByGUID(metadataContainerArr[i].getContainerType().getContainerGUID());
        }
        return zArr;
    }

    @Override
    public void deleteTag(Tag tag, RandomAccessFile randomAccessFile, RandomAccessFile randomAccessFile2) throws CannotWriteException, IOException {
        writeTag(null, new AsfTag(true), randomAccessFile, randomAccessFile2);
    }

    @Override
    public void writeTag(AudioFile audioFile, Tag tag, RandomAccessFile randomAccessFile, RandomAccessFile randomAccessFile2) throws CannotWriteException, IOException {
        AsfHeader tagHeader = AsfHeaderReader.readTagHeader(randomAccessFile);
        randomAccessFile.seek(0L);
        MetadataContainer[] metadataContainerArrDistributeMetadata = TagConverter.distributeMetadata(new AsfTag(tag, true));
        boolean[] zArrSearchExistence = searchExistence(tagHeader, metadataContainerArrDistributeMetadata);
        boolean[] zArrSearchExistence2 = searchExistence(tagHeader.getExtendedHeader(), metadataContainerArrDistributeMetadata);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < metadataContainerArrDistributeMetadata.length; i++) {
            WriteableChunkModifer writeableChunkModifer = new WriteableChunkModifer(metadataContainerArrDistributeMetadata[i]);
            if (zArrSearchExistence[i]) {
                arrayList.add(writeableChunkModifer);
            } else if (zArrSearchExistence2[i]) {
                arrayList2.add(writeableChunkModifer);
            } else if (i == 0 || i == 2 || i == 1) {
                arrayList.add(writeableChunkModifer);
            } else {
                arrayList2.add(writeableChunkModifer);
            }
        }
        if (!arrayList2.isEmpty()) {
            arrayList.add(new AsfExtHeaderModifier(arrayList2));
        }
        new AsfStreamer().createModifiedCopy(new RandomAccessFileInputstream(randomAccessFile), new RandomAccessFileOutputStream(randomAccessFile2), arrayList);
    }
}
