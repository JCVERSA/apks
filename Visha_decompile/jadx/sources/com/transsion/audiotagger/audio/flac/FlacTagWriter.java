package com.transsion.audiotagger.audio.flac;

import com.transsion.audiotagger.audio.AudioFileIO;
import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.exceptions.CannotWriteException;
import com.transsion.audiotagger.audio.flac.metadatablock.BlockType;
import com.transsion.audiotagger.audio.flac.metadatablock.MetadataBlock;
import com.transsion.audiotagger.audio.flac.metadatablock.MetadataBlockDataApplication;
import com.transsion.audiotagger.audio.flac.metadatablock.MetadataBlockDataCueSheet;
import com.transsion.audiotagger.audio.flac.metadatablock.MetadataBlockDataPadding;
import com.transsion.audiotagger.audio.flac.metadatablock.MetadataBlockDataSeekTable;
import com.transsion.audiotagger.audio.flac.metadatablock.MetadataBlockDataStreamInfo;
import com.transsion.audiotagger.audio.flac.metadatablock.MetadataBlockHeader;
import com.transsion.audiotagger.tag.Tag;
import com.transsion.audiotagger.tag.TagOptionSingleton;
import com.transsion.audiotagger.tag.flac.FlacTag;
import com.transsion.audiotagger.utils.DirectByteBufferUtils;
import com.transsion.audiotagger.utils.PrimitiveUtils;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.logging.Level;
import java.util.logging.Logger;

public class FlacTagWriter {
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.flac");
    private FlacTagCreator tc = new FlacTagCreator();

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$transsion$audiotagger$audio$flac$metadatablock$BlockType;

        static {
            int[] iArr = new int[BlockType.values().length];
            $SwitchMap$com$transsion$audiotagger$audio$flac$metadatablock$BlockType = iArr;
            try {
                iArr[BlockType.STREAMINFO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$flac$metadatablock$BlockType[BlockType.VORBIS_COMMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$flac$metadatablock$BlockType[BlockType.PADDING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$flac$metadatablock$BlockType[BlockType.PICTURE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$flac$metadatablock$BlockType[BlockType.APPLICATION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$flac$metadatablock$BlockType[BlockType.SEEKTABLE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$flac$metadatablock$BlockType[BlockType.CUESHEET.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static class MetadataBlockInfo {
        private List<MetadataBlock> metadataBlockApplication;
        private List<MetadataBlock> metadataBlockCueSheet;
        private List<MetadataBlock> metadataBlockPadding;
        private List<MetadataBlock> metadataBlockSeekTable;
        private MetadataBlock streamInfoBlock;

        private MetadataBlockInfo() {
            this.metadataBlockPadding = new ArrayList(1);
            this.metadataBlockApplication = new ArrayList(1);
            this.metadataBlockSeekTable = new ArrayList(1);
            this.metadataBlockCueSheet = new ArrayList(1);
        }
    }

    private int computeAvailableRoom(MetadataBlockInfo metadataBlockInfo) {
        Iterator it = metadataBlockInfo.metadataBlockApplication.iterator();
        int length = 0;
        while (it.hasNext()) {
            length += ((MetadataBlock) it.next()).getLength();
        }
        Iterator it2 = metadataBlockInfo.metadataBlockSeekTable.iterator();
        while (it2.hasNext()) {
            length += ((MetadataBlock) it2.next()).getLength();
        }
        Iterator it3 = metadataBlockInfo.metadataBlockCueSheet.iterator();
        while (it3.hasNext()) {
            length += ((MetadataBlock) it3.next()).getLength();
        }
        Iterator it4 = metadataBlockInfo.metadataBlockPadding.iterator();
        while (it4.hasNext()) {
            length += ((MetadataBlock) it4.next()).getLength();
        }
        return length;
    }

    private int computeNeededRoom(MetadataBlockInfo metadataBlockInfo) {
        Iterator it = metadataBlockInfo.metadataBlockApplication.iterator();
        int length = 0;
        while (it.hasNext()) {
            length += ((MetadataBlock) it.next()).getLength();
        }
        Iterator it2 = metadataBlockInfo.metadataBlockSeekTable.iterator();
        while (it2.hasNext()) {
            length += ((MetadataBlock) it2.next()).getLength();
        }
        Iterator it3 = metadataBlockInfo.metadataBlockCueSheet.iterator();
        while (it3.hasNext()) {
            length += ((MetadataBlock) it3.next()).getLength();
        }
        return length;
    }

    private void insertTagAndShift(File file, Tag tag, FileChannel fileChannel, MetadataBlockInfo metadataBlockInfo, FlacStreamReader flacStreamReader, int i, int i2) throws IOException {
        int startOfFlacInFile = flacStreamReader.getStartOfFlacInFile() + 42;
        long j = startOfFlacInFile + i + FlacTagCreator.DEFAULT_PADDING;
        long size = j + (fileChannel.size() - ((long) (startOfFlacInFile + i2)));
        MappedByteBuffer mappedByteBuffer = null;
        try {
            MappedByteBuffer map = fileChannel.map(FileChannel.MapMode.READ_WRITE, 0L, size);
            try {
                insertTagAndShiftViaMappedByteBuffer(tag, map, fileChannel, j, size, metadataBlockInfo, flacStreamReader, i, i2);
            } catch (IOException e) {
                e = e;
                mappedByteBuffer = map;
                if (mappedByteBuffer == null) {
                    insertUsingChunks(file, tag, fileChannel, metadataBlockInfo, flacStreamReader, i + FlacTagCreator.DEFAULT_PADDING, i2);
                } else {
                    logger.log(Level.SEVERE, e.getMessage(), (Throwable) e);
                    throw e;
                }
            }
        } catch (IOException e2) {
            e = e2;
        }
    }

    private void insertTagAndShiftViaMappedByteBuffer(Tag tag, MappedByteBuffer mappedByteBuffer, FileChannel fileChannel, long j, long j2, MetadataBlockInfo metadataBlockInfo, FlacStreamReader flacStreamReader, int i, int i2) throws IOException {
        int iSafeLongToInt = PrimitiveUtils.safeLongToInt(fileChannel.size());
        int iSafeLongToInt2 = PrimitiveUtils.safeLongToInt(((j - 4000) - ((long) i)) + ((long) i2));
        int iSafeLongToInt3 = PrimitiveUtils.safeLongToInt(j2 - ((long) iSafeLongToInt));
        int iSafeLongToInt4 = PrimitiveUtils.safeLongToInt(TagOptionSingleton.getInstance().getWriteChunkSize());
        int i3 = iSafeLongToInt - iSafeLongToInt4;
        byte[] bArr = new byte[iSafeLongToInt4];
        while (i3 >= iSafeLongToInt2) {
            mappedByteBuffer.position(i3);
            mappedByteBuffer.get(bArr, 0, iSafeLongToInt4);
            mappedByteBuffer.position(i3 + iSafeLongToInt3);
            mappedByteBuffer.put(bArr, 0, iSafeLongToInt4);
            i3 -= iSafeLongToInt4;
        }
        int i4 = (i3 + iSafeLongToInt4) - iSafeLongToInt2;
        if (i4 > 0) {
            mappedByteBuffer.position(iSafeLongToInt2);
            mappedByteBuffer.get(bArr, 0, i4);
            mappedByteBuffer.position(iSafeLongToInt2 + iSafeLongToInt3);
            mappedByteBuffer.put(bArr, 0, i4);
        }
        DirectByteBufferUtils.release(mappedByteBuffer);
        writeTags(tag, fileChannel, metadataBlockInfo, flacStreamReader);
    }

    private void insertUsingChunks(File file, Tag tag, FileChannel fileChannel, MetadataBlockInfo metadataBlockInfo, FlacStreamReader flacStreamReader, int i, int i2) throws IOException {
        long size = fileChannel.size();
        long startOfFlacInFile = flacStreamReader.getStartOfFlacInFile() + 42 + i2;
        int i3 = i - i2;
        logger.config(file + " Audio needs shifting:" + i3);
        int writeChunkSize = (int) TagOptionSingleton.getInstance().getWriteChunkSize();
        if (writeChunkSize >= i3) {
            i3 = writeChunkSize;
        }
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        fileChannel.position(startOfFlacInFile);
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i3);
        fileChannel.read(byteBufferAllocateDirect);
        byteBufferAllocateDirect.flip();
        linkedBlockingQueue.add(byteBufferAllocateDirect);
        long jPosition = fileChannel.position();
        fileChannel.position(flacStreamReader.getStartOfFlacInFile() + 4);
        writeOtherMetadataBlocks(fileChannel, metadataBlockInfo);
        fileChannel.write(this.tc.convert(tag, FlacTagCreator.DEFAULT_PADDING));
        long jPosition2 = fileChannel.position();
        fileChannel.position(jPosition);
        while (fileChannel.position() < size) {
            ByteBuffer byteBufferAllocateDirect2 = ByteBuffer.allocateDirect(i3);
            fileChannel.read(byteBufferAllocateDirect2);
            long jPosition3 = fileChannel.position();
            byteBufferAllocateDirect2.flip();
            linkedBlockingQueue.add(byteBufferAllocateDirect2);
            fileChannel.position(jPosition2);
            fileChannel.write((ByteBuffer) linkedBlockingQueue.remove());
            jPosition2 = fileChannel.position();
            fileChannel.position(jPosition3);
        }
        fileChannel.position(jPosition2);
        fileChannel.write((ByteBuffer) linkedBlockingQueue.remove());
    }

    private void insertUsingDirectBuffer(File file, Tag tag, FileChannel fileChannel, MetadataBlockInfo metadataBlockInfo, FlacStreamReader flacStreamReader, int i) throws IOException {
        fileChannel.position(flacStreamReader.getStartOfFlacInFile() + 42 + i);
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect((int) (fileChannel.size() - fileChannel.position()));
        fileChannel.read(byteBufferAllocateDirect);
        byteBufferAllocateDirect.flip();
        fileChannel.position(flacStreamReader.getStartOfFlacInFile() + 4);
        writeOtherMetadataBlocks(fileChannel, metadataBlockInfo);
        fileChannel.write(this.tc.convert(tag, FlacTagCreator.DEFAULT_PADDING));
        fileChannel.write(byteBufferAllocateDirect);
    }

    private void writeOtherMetadataBlocks(FileChannel fileChannel, MetadataBlockInfo metadataBlockInfo) throws IOException {
        fileChannel.write(ByteBuffer.wrap(metadataBlockInfo.streamInfoBlock.getHeader().getBytesWithoutIsLastBlockFlag()));
        fileChannel.write(metadataBlockInfo.streamInfoBlock.getData().getBytes());
        for (MetadataBlock metadataBlock : metadataBlockInfo.metadataBlockApplication) {
            fileChannel.write(ByteBuffer.wrap(metadataBlock.getHeader().getBytesWithoutIsLastBlockFlag()));
            fileChannel.write(metadataBlock.getData().getBytes());
        }
        for (MetadataBlock metadataBlock2 : metadataBlockInfo.metadataBlockSeekTable) {
            fileChannel.write(ByteBuffer.wrap(metadataBlock2.getHeader().getBytesWithoutIsLastBlockFlag()));
            fileChannel.write(metadataBlock2.getData().getBytes());
        }
        for (MetadataBlock metadataBlock3 : metadataBlockInfo.metadataBlockCueSheet) {
            fileChannel.write(ByteBuffer.wrap(metadataBlock3.getHeader().getBytesWithoutIsLastBlockFlag()));
            fileChannel.write(metadataBlock3.getData().getBytes());
        }
    }

    private void writeTags(Tag tag, FileChannel fileChannel, MetadataBlockInfo metadataBlockInfo, FlacStreamReader flacStreamReader) throws IOException {
        fileChannel.position(flacStreamReader.getStartOfFlacInFile() + 4);
        writeOtherMetadataBlocks(fileChannel, metadataBlockInfo);
        fileChannel.write(this.tc.convert(tag, FlacTagCreator.DEFAULT_PADDING));
    }

    public void delete(Tag tag, File file) throws Throwable {
        write(new FlacTag(null, new ArrayList()), file);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v1, types: [java.io.Closeable[]] */
    /* JADX WARN: Type inference failed for: r2v1, types: [xx3] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    public void write(Tag tag, File file) throws Throwable {
        logger.config(file + " Writing tag");
        ?? r2 = 0;
        r2 = 0;
        try {
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                try {
                    FileChannel channel = randomAccessFile.getChannel();
                    MetadataBlockInfo metadataBlockInfo = new MetadataBlockInfo();
                    FlacStreamReader flacStreamReader = new FlacStreamReader(channel, file.toString() + " ");
                    try {
                        flacStreamReader.findStream();
                        boolean zIsLastBlock = false;
                        while (!zIsLastBlock) {
                            try {
                                MetadataBlockHeader header = MetadataBlockHeader.readHeader(channel);
                                if (header.getBlockType() != null) {
                                    switch (AnonymousClass1.$SwitchMap$com$transsion$audiotagger$audio$flac$metadatablock$BlockType[header.getBlockType().ordinal()]) {
                                        case 1:
                                            metadataBlockInfo.streamInfoBlock = new MetadataBlock(header, new MetadataBlockDataStreamInfo(header, channel));
                                            break;
                                        case 2:
                                        case 3:
                                        case 4:
                                            channel.position(channel.position() + ((long) header.getDataLength()));
                                            metadataBlockInfo.metadataBlockPadding.add(new MetadataBlock(header, new MetadataBlockDataPadding(header.getDataLength())));
                                            break;
                                        case 5:
                                            metadataBlockInfo.metadataBlockApplication.add(new MetadataBlock(header, new MetadataBlockDataApplication(header, channel)));
                                            break;
                                        case 6:
                                            metadataBlockInfo.metadataBlockSeekTable.add(new MetadataBlock(header, new MetadataBlockDataSeekTable(header, channel)));
                                            break;
                                        case 7:
                                            metadataBlockInfo.metadataBlockCueSheet.add(new MetadataBlock(header, new MetadataBlockDataCueSheet(header, channel)));
                                            break;
                                        default:
                                            channel.position(channel.position() + ((long) header.getDataLength()));
                                            break;
                                    }
                                }
                                zIsLastBlock = header.isLastBlock();
                            } catch (CannotReadException e) {
                                throw new CannotWriteException(e.getMessage());
                            }
                        }
                        int iComputeAvailableRoom = computeAvailableRoom(metadataBlockInfo);
                        int iLimit = this.tc.convert(tag).limit();
                        int iComputeNeededRoom = computeNeededRoom(metadataBlockInfo) + iLimit;
                        channel.position(flacStreamReader.getStartOfFlacInFile());
                        logger.config(file + ":Writing tag available bytes:" + iComputeAvailableRoom + ":needed bytes:" + iComputeNeededRoom);
                        if (iComputeAvailableRoom == iComputeNeededRoom || iComputeAvailableRoom > iComputeNeededRoom + 4) {
                            logger.config(file + ":Room to Rewrite");
                            channel.position((long) (flacStreamReader.getStartOfFlacInFile() + 4));
                            writeOtherMetadataBlocks(channel, metadataBlockInfo);
                            channel.write(this.tc.convert(tag, iComputeAvailableRoom - iComputeNeededRoom));
                        } else {
                            logger.config(file + ":Audio must be shifted NewTagSize:" + iLimit + ":AvailableRoom:" + iComputeAvailableRoom + ":MinimumAdditionalRoomRequired:" + (iComputeNeededRoom - iComputeAvailableRoom));
                            insertUsingChunks(file, tag, channel, metadataBlockInfo, flacStreamReader, iComputeNeededRoom + FlacTagCreator.DEFAULT_PADDING, iComputeAvailableRoom);
                        }
                        AudioFileIO.closeQuietly(randomAccessFile);
                    } catch (CannotReadException e2) {
                        throw new CannotWriteException(e2.getMessage());
                    }
                } catch (IOException e3) {
                    e = e3;
                    r2 = randomAccessFile;
                    logger.log(Level.SEVERE, e.getMessage(), (Throwable) e);
                    throw new CannotWriteException(file + StringUtils.PROCESS_POSTFIX_DELIMITER + e.getMessage());
                } catch (Throwable th) {
                    th = th;
                    r2 = randomAccessFile;
                    AudioFileIO.closeQuietly(new Closeable[]{r2});
                    throw th;
                }
            } catch (IOException e4) {
                e = e4;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
