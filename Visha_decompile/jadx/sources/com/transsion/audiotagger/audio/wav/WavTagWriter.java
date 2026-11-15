package com.transsion.audiotagger.audio.wav;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.audio.AudioFileIO;
import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.exceptions.CannotWriteException;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.audio.iff.ChunkHeader;
import com.transsion.audiotagger.audio.iff.IffHeaderChunk;
import com.transsion.audiotagger.audio.wav.chunk.WavChunkSummary;
import com.transsion.audiotagger.audio.wav.chunk.WavInfoIdentifier;
import com.transsion.audiotagger.tag.FieldKey;
import com.transsion.audiotagger.tag.Tag;
import com.transsion.audiotagger.tag.TagField;
import com.transsion.audiotagger.tag.TagOptionSingleton;
import com.transsion.audiotagger.tag.TagTextField;
import com.transsion.audiotagger.tag.wav.WavInfoTag;
import com.transsion.audiotagger.tag.wav.WavTag;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;

public class WavTagWriter {
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.wav");
    private String loggingName;

    public class BothTagsFileStructure {
        boolean isInfoTagFirst = false;
        boolean isContiguous = false;
        boolean isAtEnd = false;

        public BothTagsFileStructure() {
        }

        public String toString() {
            return "IsInfoTagFirst:" + this.isInfoTagFirst + ":isContiguous:" + this.isContiguous + ":isAtEnd:" + this.isAtEnd;
        }
    }

    public class InfoFieldWriterOrderComparator implements Comparator<TagField> {
        public InfoFieldWriterOrderComparator() {
        }

        @Override
        public int compare(TagField tagField, TagField tagField2) {
            WavInfoIdentifier byByFieldKey = WavInfoIdentifier.getByByFieldKey(FieldKey.valueOf(tagField.getId()));
            WavInfoIdentifier byByFieldKey2 = WavInfoIdentifier.getByByFieldKey(FieldKey.valueOf(tagField2.getId()));
            return (byByFieldKey != null ? byByFieldKey.getPreferredWriteOrder() : Integer.MAX_VALUE) - (byByFieldKey2 != null ? byByFieldKey2.getPreferredWriteOrder() : Integer.MAX_VALUE);
        }
    }

    public WavTagWriter(String str) {
        this.loggingName = str;
    }

    private BothTagsFileStructure checkExistingLocations(WavTag wavTag, FileChannel fileChannel) throws IOException {
        BothTagsFileStructure bothTagsFileStructure = new BothTagsFileStructure();
        if (wavTag.getInfoTag().getStartLocationInFile().longValue() < wavTag.getID3Tag().getStartLocationInFile().longValue()) {
            bothTagsFileStructure.isInfoTagFirst = true;
            if (Math.abs(wavTag.getInfoTag().getEndLocationInFile().longValue() - wavTag.getStartLocationInFileOfId3Chunk()) <= 1) {
                bothTagsFileStructure.isContiguous = true;
                if (isID3TagAtEndOfFileAllowingForPaddingByte(wavTag, fileChannel)) {
                    bothTagsFileStructure.isAtEnd = true;
                }
            }
        } else if (Math.abs(wavTag.getID3Tag().getEndLocationInFile().longValue() - wavTag.getInfoTag().getStartLocationInFile().longValue()) <= 1) {
            bothTagsFileStructure.isContiguous = true;
            if (isInfoTagAtEndOfFileAllowingForPaddingByte(wavTag, fileChannel)) {
                bothTagsFileStructure.isAtEnd = true;
            }
        }
        return bothTagsFileStructure;
    }

    private void deleteExistingMetadataTagsToEndOfFile(FileChannel fileChannel, WavTag wavTag) throws IOException {
        if (Utils.isOddLength(WavChunkSummary.getChunkBeforeFirstMetadataTag(wavTag).getEndLocation())) {
            logger.severe(this.loggingName + " Truncating corrupted metadata tags from:" + wavTag.getInfoTag().getStartLocationInFile());
            fileChannel.truncate(wavTag.getInfoTag().getStartLocationInFile().longValue());
            return;
        }
        logger.severe(this.loggingName + " Truncating corrupted metadata tags from:" + (wavTag.getInfoTag().getStartLocationInFile().longValue() - 1));
        fileChannel.truncate(wavTag.getInfoTag().getStartLocationInFile().longValue() - 1);
    }

    private void deleteId3TagChunk(FileChannel fileChannel, WavTag wavTag, ChunkHeader chunkHeader) throws IOException {
        deleteTagChunk(fileChannel, (int) wavTag.getEndLocationInFileOfId3Chunk(), ((int) chunkHeader.getSize()) + 8);
    }

    private void deleteInfoTagChunk(FileChannel fileChannel, WavTag wavTag, ChunkHeader chunkHeader) throws IOException {
        WavInfoTag infoTag = wavTag.getInfoTag();
        deleteTagChunk(fileChannel, infoTag.getEndLocationInFile().intValue(), ((int) chunkHeader.getSize()) + 8);
    }

    private void deleteTagChunk(FileChannel fileChannel, int i, int i2) throws IOException {
        fileChannel.position(i);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate((int) TagOptionSingleton.getInstance().getWriteChunkSize());
        while (true) {
            if (fileChannel.read(byteBufferAllocate) < 0 && byteBufferAllocate.position() == 0) {
                long size = fileChannel.size() - ((long) i2);
                logger.config(this.loggingName + " Setting new length to:" + size);
                fileChannel.truncate(size);
                return;
            }
            byteBufferAllocate.flip();
            long jPosition = fileChannel.position();
            fileChannel.position((jPosition - ((long) i2)) - ((long) byteBufferAllocate.limit()));
            fileChannel.write(byteBufferAllocate);
            fileChannel.position(jPosition);
            byteBufferAllocate.compact();
        }
    }

    private WavTag getExistingMetadata(File file) throws CannotWriteException, IOException {
        try {
            return new WavTagReader(this.loggingName).read(file);
        } catch (CannotReadException unused) {
            throw new CannotWriteException("Failed to read file " + file.getPath());
        }
    }

    private boolean isID3TagAtEndOfFileAllowingForPaddingByte(WavTag wavTag, FileChannel fileChannel) throws IOException {
        return wavTag.getID3Tag().getEndLocationInFile().longValue() == fileChannel.size() || ((wavTag.getID3Tag().getEndLocationInFile().longValue() & 1) != 0 && wavTag.getID3Tag().getEndLocationInFile().longValue() + 1 == fileChannel.size());
    }

    private boolean isInfoTagAtEndOfFileAllowingForPaddingByte(WavTag wavTag, FileChannel fileChannel) throws IOException {
        return wavTag.getInfoTag().getEndLocationInFile().longValue() == fileChannel.size() || ((wavTag.getInfoTag().getEndLocationInFile().longValue() & 1) != 0 && wavTag.getInfoTag().getEndLocationInFile().longValue() + 1 == fileChannel.size());
    }

    private void rewriteRiffHeaderSize(FileChannel fileChannel) throws IOException {
        fileChannel.position(IffHeaderChunk.SIGNATURE_LENGTH);
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(IffHeaderChunk.SIZE_LENGTH);
        byteBufferAllocateDirect.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocateDirect.putInt((((int) fileChannel.size()) - IffHeaderChunk.SIGNATURE_LENGTH) - IffHeaderChunk.SIZE_LENGTH);
        byteBufferAllocateDirect.flip();
        fileChannel.write(byteBufferAllocateDirect);
    }

    private void saveActive(WavTag wavTag, FileChannel fileChannel, WavTag wavTag2) throws CannotWriteException, IOException {
        if (wavTag.getActiveTag() instanceof WavInfoTag) {
            ByteBuffer byteBufferConvertInfoChunk = convertInfoChunk(wavTag);
            long jLimit = byteBufferConvertInfoChunk.limit();
            if (wavTag2.isIncorrectlyAlignedTag()) {
                if (WavChunkSummary.isOnlyMetadataTagsAfterStartingMetadataTag(wavTag2)) {
                    deleteExistingMetadataTagsToEndOfFile(fileChannel, wavTag2);
                    fileChannel.position(fileChannel.size());
                    writeInfoDataToFile(fileChannel, byteBufferConvertInfoChunk, jLimit);
                    return;
                } else {
                    throw new CannotWriteException(this.loggingName + " Metadata tags are corrupted and not at end of file so cannot be fixed");
                }
            }
            if (wavTag2.isExistingId3Tag()) {
                if (isID3TagAtEndOfFileAllowingForPaddingByte(wavTag2, fileChannel)) {
                    fileChannel.truncate(wavTag2.getStartLocationInFileOfId3Chunk());
                } else {
                    deleteId3TagChunk(fileChannel, wavTag2, seekToStartOfId3Metadata(fileChannel, wavTag2));
                }
            }
            if (!wavTag2.isExistingInfoTag()) {
                fileChannel.position(fileChannel.size());
                writeInfoDataToFile(fileChannel, byteBufferConvertInfoChunk, jLimit);
                return;
            }
            ChunkHeader chunkHeaderSeekToStartOfListInfoMetadata = seekToStartOfListInfoMetadata(fileChannel, wavTag2);
            if (isInfoTagAtEndOfFileAllowingForPaddingByte(wavTag2, fileChannel)) {
                writeInfoChunk(fileChannel, wavTag2.getInfoTag(), byteBufferConvertInfoChunk);
                return;
            }
            deleteInfoTagChunk(fileChannel, wavTag2, chunkHeaderSeekToStartOfListInfoMetadata);
            fileChannel.position(fileChannel.size());
            writeInfoDataToFile(fileChannel, byteBufferConvertInfoChunk, byteBufferConvertInfoChunk.limit());
            return;
        }
        ByteBuffer byteBufferConvertID3Chunk = convertID3Chunk(wavTag, wavTag2);
        if (wavTag2.isIncorrectlyAlignedTag()) {
            if (WavChunkSummary.isOnlyMetadataTagsAfterStartingMetadataTag(wavTag2)) {
                deleteExistingMetadataTagsToEndOfFile(fileChannel, wavTag2);
                fileChannel.position(fileChannel.size());
                writeID3DataToFile(fileChannel, byteBufferConvertID3Chunk);
                return;
            } else {
                throw new CannotWriteException(this.loggingName + " Metadata tags are corrupted and not at end of file so cannot be fixed");
            }
        }
        if (wavTag2.isExistingInfoTag()) {
            ChunkHeader chunkHeaderSeekToStartOfListInfoMetadata2 = seekToStartOfListInfoMetadata(fileChannel, wavTag2);
            if (isInfoTagAtEndOfFileAllowingForPaddingByte(wavTag2, fileChannel)) {
                fileChannel.truncate(wavTag2.getInfoTag().getStartLocationInFile().longValue());
            } else {
                deleteInfoTagChunk(fileChannel, wavTag2, chunkHeaderSeekToStartOfListInfoMetadata2);
            }
        }
        if (!wavTag2.isExistingId3Tag()) {
            fileChannel.position(fileChannel.size());
            writeID3DataToFile(fileChannel, byteBufferConvertID3Chunk);
            return;
        }
        ChunkHeader chunkHeaderSeekToStartOfId3Metadata = seekToStartOfId3Metadata(fileChannel, wavTag2);
        if (isID3TagAtEndOfFileAllowingForPaddingByte(wavTag2, fileChannel)) {
            writeID3DataToFile(fileChannel, byteBufferConvertID3Chunk);
            return;
        }
        deleteId3TagChunk(fileChannel, wavTag2, chunkHeaderSeekToStartOfId3Metadata);
        fileChannel.position(fileChannel.size());
        writeID3DataToFile(fileChannel, byteBufferConvertID3Chunk);
    }

    private void saveActiveExisting(WavTag wavTag, FileChannel fileChannel, WavTag wavTag2) throws CannotWriteException, IOException {
        if (wavTag.getActiveTag() instanceof WavInfoTag) {
            if (wavTag2.isExistingId3Tag()) {
                saveBoth(wavTag, fileChannel, wavTag2);
                return;
            } else {
                saveActive(wavTag, fileChannel, wavTag2);
                return;
            }
        }
        if (wavTag2.isExistingInfoTag()) {
            saveBoth(wavTag, fileChannel, wavTag2);
        } else {
            saveActive(wavTag, fileChannel, wavTag2);
        }
    }

    private void saveBoth(WavTag wavTag, FileChannel fileChannel, WavTag wavTag2) throws CannotWriteException, IOException {
        ByteBuffer byteBufferConvertInfoChunk = convertInfoChunk(wavTag);
        ByteBuffer byteBufferConvertID3Chunk = convertID3Chunk(wavTag, wavTag2);
        if (wavTag2.isExistingInfoTag() && wavTag2.isExistingId3Tag()) {
            if (wavTag2.isIncorrectlyAlignedTag()) {
                if (WavChunkSummary.isOnlyMetadataTagsAfterStartingMetadataTag(wavTag2)) {
                    deleteExistingMetadataTagsToEndOfFile(fileChannel, wavTag2);
                    fileChannel.position(fileChannel.size());
                    writeBothTags(fileChannel, byteBufferConvertInfoChunk, byteBufferConvertID3Chunk);
                    return;
                } else {
                    throw new CannotWriteException(this.loggingName + " Metadata tags are corrupted and not at end of file so cannot be fixed");
                }
            }
            BothTagsFileStructure bothTagsFileStructureCheckExistingLocations = checkExistingLocations(wavTag2, fileChannel);
            if (!bothTagsFileStructureCheckExistingLocations.isContiguous || !bothTagsFileStructureCheckExistingLocations.isAtEnd) {
                ChunkHeader chunkHeaderSeekToStartOfListInfoMetadata = seekToStartOfListInfoMetadata(fileChannel, wavTag2);
                ChunkHeader chunkHeaderSeekToStartOfId3Metadata = seekToStartOfId3Metadata(fileChannel, wavTag2);
                deleteInfoTagChunk(fileChannel, wavTag2, chunkHeaderSeekToStartOfListInfoMetadata);
                deleteId3TagChunk(fileChannel, wavTag2, chunkHeaderSeekToStartOfId3Metadata);
                fileChannel.position(fileChannel.size());
                writeBothTags(fileChannel, byteBufferConvertInfoChunk, byteBufferConvertID3Chunk);
                return;
            }
            if (bothTagsFileStructureCheckExistingLocations.isInfoTagFirst) {
                seekToStartOfListInfoMetadata(fileChannel, wavTag2);
                writeBothTags(fileChannel, byteBufferConvertInfoChunk, byteBufferConvertID3Chunk);
                fileChannel.truncate(fileChannel.position());
                return;
            } else {
                seekToStartOfId3Metadata(fileChannel, wavTag2);
                writeBothTags(fileChannel, byteBufferConvertInfoChunk, byteBufferConvertID3Chunk);
                fileChannel.truncate(fileChannel.position());
                return;
            }
        }
        if (wavTag2.isExistingInfoTag() && !wavTag2.isExistingId3Tag()) {
            if (wavTag2.isIncorrectlyAlignedTag()) {
                if (WavChunkSummary.isOnlyMetadataTagsAfterStartingMetadataTag(wavTag2)) {
                    deleteExistingMetadataTagsToEndOfFile(fileChannel, wavTag2);
                    fileChannel.position(fileChannel.size());
                    writeBothTags(fileChannel, byteBufferConvertInfoChunk, byteBufferConvertID3Chunk);
                    return;
                } else {
                    throw new CannotWriteException(this.loggingName + " Metadata tags are corrupted and not at end of file so cannot be fixed");
                }
            }
            ChunkHeader chunkHeaderSeekToStartOfListInfoMetadata2 = seekToStartOfListInfoMetadata(fileChannel, wavTag2);
            if (isInfoTagAtEndOfFileAllowingForPaddingByte(wavTag2, fileChannel)) {
                writeBothTags(fileChannel, byteBufferConvertInfoChunk, byteBufferConvertID3Chunk);
                fileChannel.truncate(fileChannel.position());
                return;
            } else {
                deleteInfoTagChunk(fileChannel, wavTag2, chunkHeaderSeekToStartOfListInfoMetadata2);
                fileChannel.position(fileChannel.size());
                writeBothTags(fileChannel, byteBufferConvertInfoChunk, byteBufferConvertID3Chunk);
                return;
            }
        }
        if (!wavTag2.isExistingId3Tag() || wavTag2.isExistingInfoTag()) {
            fileChannel.position(fileChannel.size());
            writeBothTags(fileChannel, byteBufferConvertInfoChunk, byteBufferConvertID3Chunk);
            return;
        }
        if (wavTag2.isIncorrectlyAlignedTag()) {
            if (WavChunkSummary.isOnlyMetadataTagsAfterStartingMetadataTag(wavTag2)) {
                deleteExistingMetadataTagsToEndOfFile(fileChannel, wavTag2);
                fileChannel.position(fileChannel.size());
                writeBothTags(fileChannel, byteBufferConvertInfoChunk, byteBufferConvertID3Chunk);
                return;
            } else {
                throw new CannotWriteException(this.loggingName + " Metadata tags are corrupted and not at end of file so cannot be fixed");
            }
        }
        ChunkHeader chunkHeaderSeekToStartOfId3Metadata2 = seekToStartOfId3Metadata(fileChannel, wavTag2);
        if (isID3TagAtEndOfFileAllowingForPaddingByte(wavTag2, fileChannel)) {
            writeBothTags(fileChannel, byteBufferConvertInfoChunk, byteBufferConvertID3Chunk);
            fileChannel.truncate(fileChannel.position());
        } else {
            deleteId3TagChunk(fileChannel, wavTag2, chunkHeaderSeekToStartOfId3Metadata2);
            fileChannel.position(fileChannel.size());
            writeBothTags(fileChannel, byteBufferConvertInfoChunk, byteBufferConvertID3Chunk);
        }
    }

    private ChunkHeader seekToStartOfId3Metadata(FileChannel fileChannel, WavTag wavTag) throws CannotWriteException, IOException {
        fileChannel.position(wavTag.getStartLocationInFileOfId3Chunk());
        ChunkHeader chunkHeader = new ChunkHeader(ByteOrder.LITTLE_ENDIAN);
        chunkHeader.readHeader(fileChannel);
        fileChannel.position(fileChannel.position() - 8);
        if (WavChunkType.ID3.getCode().equals(chunkHeader.getID())) {
            return chunkHeader;
        }
        throw new CannotWriteException(this.loggingName + " Unable to find ID3 chunk at original location has file been modified externally");
    }

    private ChunkHeader seekToStartOfListInfoMetadata(FileChannel fileChannel, WavTag wavTag) throws CannotWriteException, IOException {
        fileChannel.position(wavTag.getInfoTag().getStartLocationInFile().longValue());
        ChunkHeader chunkHeader = new ChunkHeader(ByteOrder.LITTLE_ENDIAN);
        chunkHeader.readHeader(fileChannel);
        fileChannel.position(fileChannel.position() - 8);
        if (WavChunkType.LIST.getCode().equals(chunkHeader.getID())) {
            return chunkHeader;
        }
        throw new CannotWriteException(this.loggingName + " Unable to find List chunk at original location has file been modified externally");
    }

    private void writeBothTags(FileChannel fileChannel, ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws IOException {
        if (TagOptionSingleton.getInstance().getWavSaveOrder() == WavSaveOrder.INFO_THEN_ID3) {
            writeInfoDataToFile(fileChannel, byteBuffer);
            writeID3DataToFile(fileChannel, byteBuffer2);
        } else {
            writeID3DataToFile(fileChannel, byteBuffer2);
            writeInfoDataToFile(fileChannel, byteBuffer);
        }
    }

    private void writeExtraByteIfChunkOddSize(FileChannel fileChannel, long j) throws IOException {
        if (Utils.isOddLength(j)) {
            writePaddingToFile(fileChannel, 1);
        }
    }

    private void writeID3DataToFile(FileChannel fileChannel, ByteBuffer byteBuffer) throws IOException {
        if (Utils.isOddLength(fileChannel.position())) {
            writePaddingToFile(fileChannel, 1);
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.put(WavChunkType.ID3.getCode().getBytes(StandardCharsets.US_ASCII));
        byteBufferAllocate.putInt(byteBuffer.limit());
        byteBufferAllocate.flip();
        fileChannel.write(byteBufferAllocate);
        fileChannel.write(byteBuffer);
    }

    private void writeInfoChunk(FileChannel fileChannel, WavInfoTag wavInfoTag, ByteBuffer byteBuffer) throws CannotWriteException, IOException {
        long jLimit = byteBuffer.limit();
        if (wavInfoTag.getSizeOfTag() < jLimit) {
            writeInfoDataToFile(fileChannel, byteBuffer, jLimit);
            return;
        }
        writeInfoDataToFile(fileChannel, byteBuffer, wavInfoTag.getSizeOfTag());
        if (wavInfoTag.getSizeOfTag() > jLimit) {
            writePaddingToFile(fileChannel, (int) (wavInfoTag.getSizeOfTag() - jLimit));
        }
    }

    private void writeInfoDataToFile(FileChannel fileChannel, ByteBuffer byteBuffer, long j) throws IOException {
        if (Utils.isOddLength(fileChannel.position())) {
            writePaddingToFile(fileChannel, 1);
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.put(WavChunkType.LIST.getCode().getBytes(StandardCharsets.US_ASCII));
        byteBufferAllocate.putInt((int) j);
        byteBufferAllocate.flip();
        fileChannel.write(byteBufferAllocate);
        fileChannel.write(byteBuffer);
        writeExtraByteIfChunkOddSize(fileChannel, j);
    }

    private void writePaddingToFile(FileChannel fileChannel, int i) throws IOException {
        fileChannel.write(ByteBuffer.allocateDirect(i));
    }

    public ByteBuffer convertID3Chunk(WavTag wavTag, WavTag wavTag2) throws UnsupportedEncodingException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            long sizeOfID3TagOnly = wavTag2.getSizeOfID3TagOnly();
            if (sizeOfID3TagOnly > 0 && (sizeOfID3TagOnly & 1) != 0) {
                sizeOfID3TagOnly++;
            }
            wavTag.getID3Tag().write(byteArrayOutputStream, (int) sizeOfID3TagOnly);
            if ((byteArrayOutputStream.toByteArray().length & 1) != 0) {
                int length = byteArrayOutputStream.toByteArray().length + 1;
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                wavTag.getID3Tag().write(byteArrayOutputStream2, length);
                byteArrayOutputStream = byteArrayOutputStream2;
            }
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(byteArrayOutputStream.toByteArray());
            byteBufferWrap.rewind();
            return byteBufferWrap;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public ByteBuffer convertInfoChunk(WavTag wavTag) throws UnsupportedEncodingException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            WavInfoTag infoTag = wavTag.getInfoTag();
            List<TagField> all = infoTag.getAll();
            Collections.sort(all, new InfoFieldWriterOrderComparator());
            Iterator<TagField> it = all.iterator();
            while (it.hasNext()) {
                TagTextField tagTextField = (TagTextField) it.next();
                WavInfoIdentifier byByFieldKey = WavInfoIdentifier.getByByFieldKey(FieldKey.valueOf(tagTextField.getId()));
                String code = byByFieldKey.getCode();
                Charset charset = StandardCharsets.US_ASCII;
                byteArrayOutputStream.write(code.getBytes(charset));
                logger.config(this.loggingName + " Writing:" + byByFieldKey.getCode() + StringUtils.PROCESS_POSTFIX_DELIMITER + tagTextField.getContent());
                byte[] bytes = tagTextField.getContent().getBytes(StandardCharsets.UTF_8);
                byteArrayOutputStream.write(Utils.getSizeLEInt32(bytes.length));
                byteArrayOutputStream.write(bytes);
                if (Utils.isOddLength(bytes.length)) {
                    byteArrayOutputStream.write(0);
                }
                if (byByFieldKey == WavInfoIdentifier.TRACKNO && TagOptionSingleton.getInstance().isWriteWavForTwonky()) {
                    WavInfoIdentifier wavInfoIdentifier = WavInfoIdentifier.TWONKY_TRACKNO;
                    byteArrayOutputStream.write(wavInfoIdentifier.getCode().getBytes(charset));
                    logger.config(this.loggingName + " Writing:" + wavInfoIdentifier.getCode() + StringUtils.PROCESS_POSTFIX_DELIMITER + tagTextField.getContent());
                    byteArrayOutputStream.write(Utils.getSizeLEInt32(bytes.length));
                    byteArrayOutputStream.write(bytes);
                    if (Utils.isOddLength(bytes.length)) {
                        byteArrayOutputStream.write(0);
                    }
                }
            }
            for (TagTextField tagTextField2 : infoTag.getUnrecognisedFields()) {
                byteArrayOutputStream.write(tagTextField2.getId().getBytes(StandardCharsets.US_ASCII));
                logger.config(this.loggingName + " Writing:" + tagTextField2.getId() + StringUtils.PROCESS_POSTFIX_DELIMITER + tagTextField2.getContent());
                byte[] bytes2 = tagTextField2.getContent().getBytes(StandardCharsets.UTF_8);
                byteArrayOutputStream.write(Utils.getSizeLEInt32(bytes2.length));
                byteArrayOutputStream.write(bytes2);
                if (Utils.isOddLength(bytes2.length)) {
                    byteArrayOutputStream.write(0);
                }
            }
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(byteArrayOutputStream.toByteArray());
            byteBufferWrap.rewind();
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(IffHeaderChunk.SIGNATURE_LENGTH);
            byteBufferAllocate.put(WavChunkType.INFO.getCode().getBytes(StandardCharsets.US_ASCII));
            byteBufferAllocate.flip();
            ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(byteBufferAllocate.limit() + byteBufferWrap.limit());
            byteBufferAllocateDirect.put(byteBufferAllocate);
            byteBufferAllocateDirect.put(byteBufferWrap);
            byteBufferAllocateDirect.flip();
            return byteBufferAllocateDirect;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public void delete(Tag tag, File file) throws Throwable {
        logger.info(this.loggingName + " Deleting metadata from file");
        RandomAccessFile randomAccessFile = null;
        try {
            try {
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "rw");
                try {
                    FileChannel channel = randomAccessFile2.getChannel();
                    WavTag existingMetadata = getExistingMetadata(file);
                    if (existingMetadata.isExistingId3Tag() && existingMetadata.isExistingInfoTag()) {
                        BothTagsFileStructure bothTagsFileStructureCheckExistingLocations = checkExistingLocations(existingMetadata, channel);
                        if (!bothTagsFileStructureCheckExistingLocations.isContiguous) {
                            WavInfoTag infoTag = existingMetadata.getInfoTag();
                            ChunkHeader chunkHeaderSeekToStartOfListInfoMetadata = seekToStartOfListInfoMetadata(channel, existingMetadata);
                            ChunkHeader chunkHeaderSeekToStartOfId3Metadata = seekToStartOfId3Metadata(channel, existingMetadata);
                            if (isInfoTagAtEndOfFileAllowingForPaddingByte(existingMetadata, channel)) {
                                channel.truncate(infoTag.getStartLocationInFile().longValue());
                                deleteId3TagChunk(channel, existingMetadata, chunkHeaderSeekToStartOfId3Metadata);
                            } else if (isID3TagAtEndOfFileAllowingForPaddingByte(existingMetadata, channel)) {
                                channel.truncate(existingMetadata.getStartLocationInFileOfId3Chunk());
                                deleteInfoTagChunk(channel, existingMetadata, chunkHeaderSeekToStartOfListInfoMetadata);
                            } else {
                                deleteId3TagChunk(channel, existingMetadata, chunkHeaderSeekToStartOfId3Metadata);
                                deleteInfoTagChunk(channel, getExistingMetadata(file), chunkHeaderSeekToStartOfListInfoMetadata);
                            }
                        } else if (bothTagsFileStructureCheckExistingLocations.isAtEnd) {
                            if (bothTagsFileStructureCheckExistingLocations.isInfoTagFirst) {
                                logger.info(this.loggingName + ":Setting new length to:" + existingMetadata.getInfoTag().getStartLocationInFile());
                                channel.truncate(existingMetadata.getInfoTag().getStartLocationInFile().longValue());
                            } else {
                                logger.info(this.loggingName + ":Setting new length to:" + existingMetadata.getStartLocationInFileOfId3Chunk());
                                channel.truncate(existingMetadata.getStartLocationInFileOfId3Chunk());
                            }
                        } else if (bothTagsFileStructureCheckExistingLocations.isInfoTagFirst) {
                            deleteTagChunk(channel, (int) existingMetadata.getEndLocationInFileOfId3Chunk(), (int) (existingMetadata.getEndLocationInFileOfId3Chunk() - existingMetadata.getInfoTag().getStartLocationInFile().longValue()));
                        } else {
                            deleteTagChunk(channel, existingMetadata.getInfoTag().getEndLocationInFile().intValue(), (int) (((long) existingMetadata.getInfoTag().getEndLocationInFile().intValue()) - existingMetadata.getStartLocationInFileOfId3Chunk()));
                        }
                    } else if (existingMetadata.isExistingInfoTag()) {
                        WavInfoTag infoTag2 = existingMetadata.getInfoTag();
                        ChunkHeader chunkHeaderSeekToStartOfListInfoMetadata2 = seekToStartOfListInfoMetadata(channel, existingMetadata);
                        if (infoTag2.getEndLocationInFile().longValue() == channel.size()) {
                            logger.info(this.loggingName + ":Setting new length to:" + infoTag2.getStartLocationInFile());
                            channel.truncate(infoTag2.getStartLocationInFile().longValue());
                        } else {
                            deleteInfoTagChunk(channel, existingMetadata, chunkHeaderSeekToStartOfListInfoMetadata2);
                        }
                    } else if (existingMetadata.isExistingId3Tag()) {
                        ChunkHeader chunkHeaderSeekToStartOfId3Metadata2 = seekToStartOfId3Metadata(channel, existingMetadata);
                        if (isID3TagAtEndOfFileAllowingForPaddingByte(existingMetadata, channel)) {
                            logger.info(this.loggingName + ":Setting new length to:" + existingMetadata.getStartLocationInFileOfId3Chunk());
                            channel.truncate(existingMetadata.getStartLocationInFileOfId3Chunk());
                        } else {
                            deleteId3TagChunk(channel, existingMetadata, chunkHeaderSeekToStartOfId3Metadata2);
                        }
                    }
                    rewriteRiffHeaderSize(channel);
                    AudioFileIO.closeQuietly(randomAccessFile2);
                } catch (IOException e) {
                    e = e;
                    throw new CannotWriteException(file + StringUtils.PROCESS_POSTFIX_DELIMITER + e.getMessage());
                } catch (Throwable th) {
                    th = th;
                    randomAccessFile = randomAccessFile2;
                    AudioFileIO.closeQuietly(randomAccessFile);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e2) {
            e = e2;
        }
    }

    public void write(Tag tag, File file) throws Throwable {
        logger.config(this.loggingName + " Writing tag to file:start");
        WavSaveOptions wavSaveOptions = TagOptionSingleton.getInstance().getWavSaveOptions();
        try {
            WavTag existingMetadata = getExistingMetadata(file);
            RandomAccessFile randomAccessFile = null;
            try {
                try {
                    RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "rw");
                    try {
                        FileChannel channel = randomAccessFile2.getChannel();
                        WavTag wavTag = (WavTag) tag;
                        if (wavSaveOptions == WavSaveOptions.SAVE_BOTH) {
                            saveBoth(wavTag, channel, existingMetadata);
                        } else if (wavSaveOptions == WavSaveOptions.SAVE_ACTIVE) {
                            saveActive(wavTag, channel, existingMetadata);
                        } else if (wavSaveOptions == WavSaveOptions.SAVE_EXISTING_AND_ACTIVE) {
                            saveActiveExisting(wavTag, channel, existingMetadata);
                        } else if (wavSaveOptions == WavSaveOptions.SAVE_BOTH_AND_SYNC) {
                            wavTag.syncTagBeforeWrite();
                            saveBoth(wavTag, channel, existingMetadata);
                        } else {
                            if (wavSaveOptions != WavSaveOptions.SAVE_EXISTING_AND_ACTIVE_AND_SYNC) {
                                throw new RuntimeException(this.loggingName + " No setting for:WavSaveOptions");
                            }
                            wavTag.syncTagBeforeWrite();
                            saveActiveExisting(wavTag, channel, existingMetadata);
                        }
                        rewriteRiffHeaderSize(channel);
                        AudioFileIO.closeQuietly(randomAccessFile2);
                    } catch (IOException e) {
                        e = e;
                        randomAccessFile = randomAccessFile2;
                        throw new CannotWriteException(file + StringUtils.PROCESS_POSTFIX_DELIMITER + e.getMessage());
                    } catch (Throwable th) {
                        th = th;
                        randomAccessFile = randomAccessFile2;
                        AudioFileIO.closeQuietly(randomAccessFile);
                        throw th;
                    }
                } catch (IOException e2) {
                    e = e2;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e3) {
            throw new CannotWriteException(file + StringUtils.PROCESS_POSTFIX_DELIMITER + e3.getMessage());
        }
    }

    private void writeInfoDataToFile(FileChannel fileChannel, ByteBuffer byteBuffer) throws IOException {
        writeInfoDataToFile(fileChannel, byteBuffer, byteBuffer.limit());
    }
}
