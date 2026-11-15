package com.transsion.audiotagger.audio.mp4;

import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.exceptions.CannotWriteException;
import com.transsion.audiotagger.audio.mp4.atom.Mp4BoxHeader;
import com.transsion.audiotagger.audio.mp4.atom.Mp4FreeBox;
import com.transsion.audiotagger.audio.mp4.atom.Mp4HdlrBox;
import com.transsion.audiotagger.audio.mp4.atom.Mp4MetaBox;
import com.transsion.audiotagger.audio.mp4.atom.Mp4StcoBox;
import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.tag.Tag;
import com.transsion.audiotagger.tag.TagOptionSingleton;
import com.transsion.audiotagger.tag.mp4.Mp4Tag;
import com.transsion.audiotagger.tag.mp4.Mp4TagCreator;
import com.transsion.audiotagger.utils.tree.DefaultMutableTreeNode;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;

public class Mp4TagWriter {
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.tag.mp4");
    private Mp4TagCreator tc = new Mp4TagCreator();

    private void adjustFreeAtom(FileChannel fileChannel, FileChannel fileChannel2, int i, int i2) throws CannotWriteException, IOException {
        int i3 = i - 8;
        if (i3 < i2) {
            if (i == i2) {
                logger.config("Writing:Option 7;Larger Size uses top free atom including header");
                fileChannel.position(fileChannel.position() + ((long) i));
                return;
            }
            return;
        }
        logger.config("Writing:Option 6;Larger Size can use top free atom");
        Mp4FreeBox mp4FreeBox = new Mp4FreeBox(i3 - i2);
        fileChannel2.write(mp4FreeBox.getHeader().getHeaderData());
        fileChannel2.write(mp4FreeBox.getData());
        fileChannel.position(fileChannel.position() + ((long) i));
    }

    private void adjustSizeOfMoovHeader(Mp4BoxHeader mp4BoxHeader, ByteBuffer byteBuffer, int i, Mp4BoxHeader mp4BoxHeader2, Mp4BoxHeader mp4BoxHeader3) throws IOException {
        mp4BoxHeader.setLength(mp4BoxHeader.getLength() + i);
        if (mp4BoxHeader2 != null) {
            mp4BoxHeader2.setLength(mp4BoxHeader2.getLength() + i);
            byteBuffer.position((int) ((mp4BoxHeader2.getFilePos() - mp4BoxHeader.getFilePos()) - 8));
            byteBuffer.put(mp4BoxHeader2.getHeaderData());
        }
        if (mp4BoxHeader3 != null) {
            mp4BoxHeader3.setLength(mp4BoxHeader3.getLength() + i);
            byteBuffer.position((int) ((mp4BoxHeader3.getFilePos() - mp4BoxHeader.getFilePos()) - 8));
            byteBuffer.put(mp4BoxHeader3.getHeaderData());
        }
    }

    private boolean adjustStcosIfNoSuitableTopLevelAtom(int i, boolean z, int i2, List<Mp4StcoBox> list, Mp4BoxHeader mp4BoxHeader, Mp4BoxHeader mp4BoxHeader2) {
        if (mp4BoxHeader2.getFilePos() <= mp4BoxHeader.getFilePos()) {
            return false;
        }
        if (z && (i - 8 >= i2 || i == i2)) {
            return false;
        }
        Iterator<Mp4StcoBox> it = list.iterator();
        while (it.hasNext()) {
            it.next().adjustOffsets(i2);
        }
        return true;
    }

    private void checkFileWrittenCorrectly(RandomAccessFile randomAccessFile, Mp4BoxHeader mp4BoxHeader, FileChannel fileChannel, List<Mp4StcoBox> list) throws CannotWriteException, IOException {
        logger.config("Checking file has been written correctly");
        try {
            try {
                Mp4AtomTree mp4AtomTree = new Mp4AtomTree(randomAccessFile, false);
                Mp4BoxHeader boxHeader = mp4AtomTree.getBoxHeader(mp4AtomTree.getMdatNode());
                if (boxHeader == null) {
                    throw new CannotWriteException(ErrorMessage.MP4_CHANGES_TO_FILE_FAILED_NO_DATA.getMsg());
                }
                if (boxHeader.getLength() != mp4BoxHeader.getLength()) {
                    throw new CannotWriteException(ErrorMessage.MP4_CHANGES_TO_FILE_FAILED_DATA_CORRUPT.getMsg());
                }
                if (mp4AtomTree.getBoxHeader(mp4AtomTree.getUdtaNode()) == null) {
                    throw new CannotWriteException(ErrorMessage.MP4_CHANGES_TO_FILE_FAILED_NO_TAG_DATA.getMsg());
                }
                if (mp4AtomTree.getBoxHeader(mp4AtomTree.getMetaNode()) == null) {
                    throw new CannotWriteException(ErrorMessage.MP4_CHANGES_TO_FILE_FAILED_NO_TAG_DATA.getMsg());
                }
                List<Mp4StcoBox> stcos = mp4AtomTree.getStcos();
                if (stcos.size() != list.size()) {
                    throw new CannotWriteException(ErrorMessage.MP4_CHANGES_TO_FILE_FAILED_INCORRECT_NUMBER_OF_TRACKS.getMsg(Integer.valueOf(list.size()), Integer.valueOf(stcos.size())));
                }
                int firstOffSet = 0;
                for (int i = 0; i < stcos.size(); i++) {
                    Mp4StcoBox mp4StcoBox = stcos.get(i);
                    Mp4StcoBox mp4StcoBox2 = list.get(i);
                    logger.finer("stco:Original First Offset" + mp4StcoBox2.getFirstOffSet());
                    logger.finer("stco:Original Diff" + ((int) (((long) mp4StcoBox2.getFirstOffSet()) - mp4BoxHeader.getFilePos())));
                    logger.finer("stco:Original Mdat Pos" + mp4BoxHeader.getFilePos());
                    logger.finer("stco:New First Offset" + mp4StcoBox.getFirstOffSet());
                    logger.finer("stco:New Diff" + ((int) (((long) mp4StcoBox.getFirstOffSet()) - boxHeader.getFilePos())));
                    logger.finer("stco:New Mdat Pos" + boxHeader.getFilePos());
                    if (i == 0) {
                        long firstOffSet2 = (int) (((long) mp4StcoBox2.getFirstOffSet()) - mp4BoxHeader.getFilePos());
                        if (((long) mp4StcoBox.getFirstOffSet()) - boxHeader.getFilePos() != firstOffSet2) {
                            throw new CannotWriteException(ErrorMessage.MP4_CHANGES_TO_FILE_FAILED_INCORRECT_OFFSETS.getMsg(Integer.valueOf((int) ((((long) mp4StcoBox.getFirstOffSet()) - boxHeader.getFilePos()) - firstOffSet2))));
                        }
                        firstOffSet = mp4StcoBox2.getFirstOffSet() - mp4StcoBox.getFirstOffSet();
                    } else if (firstOffSet != mp4StcoBox2.getFirstOffSet() - mp4StcoBox.getFirstOffSet()) {
                        throw new CannotWriteException(ErrorMessage.MP4_CHANGES_TO_FILE_FAILED_INCORRECT_OFFSETS.getMsg(Integer.valueOf(firstOffSet)));
                    }
                }
                randomAccessFile.close();
                fileChannel.close();
                logger.config("File has been written correctly");
            } catch (Exception e) {
                if (e instanceof CannotWriteException) {
                    throw ((CannotWriteException) e);
                }
                e.printStackTrace();
                throw new CannotWriteException(ErrorMessage.MP4_CHANGES_TO_FILE_FAILED.getMsg() + StringUtils.PROCESS_POSTFIX_DELIMITER + e.getMessage());
            }
        } catch (Throwable th) {
            randomAccessFile.close();
            fileChannel.close();
            throw th;
        }
    }

    private void convertandWriteTagsAtomToFreeAtom(FileChannel fileChannel, Mp4BoxHeader mp4BoxHeader) throws IOException {
        Mp4FreeBox mp4FreeBox = new Mp4FreeBox(mp4BoxHeader.getDataLength());
        fileChannel.write(mp4FreeBox.getHeader().getHeaderData());
        fileChannel.write(mp4FreeBox.getData());
    }

    private void createMetadataAtoms(Mp4BoxHeader mp4BoxHeader, ByteBuffer byteBuffer, int i, Mp4BoxHeader mp4BoxHeader2, Mp4BoxHeader mp4BoxHeader3) throws IOException {
        mp4BoxHeader.setLength(mp4BoxHeader.getLength() + i);
    }

    private int getMetaLevelFreeAtomSize(Mp4AtomTree mp4AtomTree) {
        for (DefaultMutableTreeNode defaultMutableTreeNode : mp4AtomTree.getFreeNodes()) {
            DefaultMutableTreeNode defaultMutableTreeNode2 = (DefaultMutableTreeNode) defaultMutableTreeNode.getParent();
            DefaultMutableTreeNode previousSibling = defaultMutableTreeNode.getPreviousSibling();
            if (!defaultMutableTreeNode2.isRoot()) {
                Mp4BoxHeader mp4BoxHeader = (Mp4BoxHeader) defaultMutableTreeNode2.getUserObject();
                Mp4BoxHeader mp4BoxHeader2 = (Mp4BoxHeader) defaultMutableTreeNode.getUserObject();
                if (previousSibling != null) {
                    Mp4BoxHeader mp4BoxHeader3 = (Mp4BoxHeader) previousSibling.getUserObject();
                    if (mp4BoxHeader.getId().equals(Mp4AtomIdentifier.META.getFieldName()) && mp4BoxHeader3.getId().equals(Mp4AtomIdentifier.ILST.getFieldName())) {
                        return mp4BoxHeader2.getLength();
                    }
                } else {
                    continue;
                }
            }
        }
        return 0;
    }

    private void writeDataAfterIlst(FileChannel fileChannel, FileChannel fileChannel2, Mp4BoxHeader mp4BoxHeader) throws CannotWriteException, IOException {
        if (mp4BoxHeader != null) {
            writeNeroData(fileChannel, fileChannel2, mp4BoxHeader);
        } else {
            writeDataInChunks(fileChannel, fileChannel2);
        }
    }

    private void writeDataInChunks(FileChannel fileChannel, FileChannel fileChannel2) throws CannotWriteException, IOException {
        long size = fileChannel.size() - fileChannel.position();
        long writeChunkSize = TagOptionSingleton.getInstance().getWriteChunkSize();
        long j = size / writeChunkSize;
        long j2 = size % writeChunkSize;
        long jTransferFrom = 0;
        for (int i = 0; i < j; i++) {
            jTransferFrom += fileChannel2.transferFrom(fileChannel, fileChannel2.position(), writeChunkSize);
            fileChannel2.position(fileChannel2.position() + writeChunkSize);
        }
        if (j2 > 0) {
            long jTransferFrom2 = jTransferFrom + fileChannel2.transferFrom(fileChannel, fileChannel2.position(), j2);
            if (jTransferFrom2 == size) {
                return;
            }
            throw new CannotWriteException("Was meant to write " + size + " bytes but only written " + jTransferFrom2 + " bytes");
        }
    }

    private void writeDataUptoIncludingIlst(FileChannel fileChannel, FileChannel fileChannel2, Mp4BoxHeader mp4BoxHeader, ByteBuffer byteBuffer) throws IOException {
        fileChannel.position(0L);
        fileChannel2.transferFrom(fileChannel, 0L, mp4BoxHeader.getFilePos());
        fileChannel2.position(mp4BoxHeader.getFilePos());
        fileChannel2.write(byteBuffer);
        fileChannel.position(mp4BoxHeader.getFileEndPos());
    }

    private void writeFromEndOfIlstToNeroTagsAndMakeNeroFree(long j, FileChannel fileChannel, FileChannel fileChannel2, Mp4BoxHeader mp4BoxHeader) throws IOException {
        long filePos = mp4BoxHeader.getFilePos() - fileChannel.position();
        fileChannel2.transferFrom(fileChannel, fileChannel2.position(), filePos);
        fileChannel2.position(fileChannel2.position() + filePos);
        convertandWriteTagsAtomToFreeAtom(fileChannel2, mp4BoxHeader);
        fileChannel.position(mp4BoxHeader.getFileEndPos());
        fileChannel2.transferFrom(fileChannel, fileChannel2.position(), j - fileChannel.position());
    }

    private void writeHaveExistingMetadata(Mp4BoxHeader mp4BoxHeader, Mp4BoxHeader mp4BoxHeader2, FileChannel fileChannel, FileChannel fileChannel2, int i, Mp4BoxHeader mp4BoxHeader3, ByteBuffer byteBuffer, Mp4BoxHeader mp4BoxHeader4, List<Mp4StcoBox> list, int i2, int i3, boolean z, ByteBuffer byteBuffer2, Mp4BoxHeader mp4BoxHeader5, int i4, int i5, int i6) throws CannotWriteException, IOException {
        logger.config("Writing:Option 5.3;udta and meta atom exists");
        boolean zAdjustStcosIfNoSuitableTopLevelAtom = adjustStcosIfNoSuitableTopLevelAtom(i3, z, i2, list, mp4BoxHeader3, mp4BoxHeader4);
        long fileEndPos = mp4BoxHeader3.getFileEndPos();
        adjustSizeOfMoovHeader(mp4BoxHeader3, byteBuffer, i2, mp4BoxHeader, mp4BoxHeader2);
        fileChannel2.write(mp4BoxHeader3.getHeaderData());
        byteBuffer.rewind();
        byteBuffer.limit(i);
        fileChannel2.write(byteBuffer);
        fileChannel2.write(byteBuffer2);
        if (mp4BoxHeader5 != null) {
            fileChannel.position(i5 + i6 + i4);
            writeFromEndOfIlstToNeroTagsAndMakeNeroFree(fileEndPos, fileChannel, fileChannel2, mp4BoxHeader5);
        } else {
            byteBuffer.limit(byteBuffer.capacity());
            byteBuffer.position(i + i6 + i4);
            fileChannel2.write(byteBuffer);
            fileChannel.position(mp4BoxHeader3.getFileEndPos() - ((long) i2));
        }
        if (zAdjustStcosIfNoSuitableTopLevelAtom) {
            logger.config("Writing:Option 9;Top Level Free comes after Mdat or before Metadata or not large enough");
        } else {
            adjustFreeAtom(fileChannel, fileChannel2, i3, i2);
        }
        writeDataInChunks(fileChannel, fileChannel2);
    }

    private void writeMetadataSameSize(FileChannel fileChannel, FileChannel fileChannel2, Mp4BoxHeader mp4BoxHeader, ByteBuffer byteBuffer, Mp4BoxHeader mp4BoxHeader2) throws CannotWriteException, IOException {
        logger.config("Writing:Option 1:Same Size");
        fileChannel.position(0L);
        fileChannel2.transferFrom(fileChannel, 0L, mp4BoxHeader.getFilePos());
        fileChannel2.position(mp4BoxHeader.getFilePos());
        fileChannel2.write(byteBuffer);
        fileChannel.position(mp4BoxHeader.getFileEndPos());
        writeDataAfterIlst(fileChannel, fileChannel2, mp4BoxHeader2);
    }

    private void writeNeroData(FileChannel fileChannel, FileChannel fileChannel2, Mp4BoxHeader mp4BoxHeader) throws CannotWriteException, IOException {
        long filePos = mp4BoxHeader.getFilePos() - fileChannel.position();
        fileChannel2.transferFrom(fileChannel, fileChannel2.position(), filePos);
        fileChannel2.position(fileChannel2.position() + filePos);
        convertandWriteTagsAtomToFreeAtom(fileChannel2, mp4BoxHeader);
        fileChannel.position(mp4BoxHeader.getFileEndPos());
        writeDataInChunks(fileChannel, fileChannel2);
    }

    private void writeNewMetadataLargerButCanUseFreeAtom(FileChannel fileChannel, FileChannel fileChannel2, Mp4BoxHeader mp4BoxHeader, Mp4BoxHeader mp4BoxHeader2, int i, ByteBuffer byteBuffer, int i2) throws CannotWriteException, IOException {
        int i3 = i - i2;
        logger.config("Writing:Option 5;Larger Size can use meta free atom need extra:" + i3 + "bytes");
        writeDataUptoIncludingIlst(fileChannel, fileChannel2, mp4BoxHeader, byteBuffer);
        Mp4FreeBox mp4FreeBox = new Mp4FreeBox(i3 + (-8));
        fileChannel2.write(mp4FreeBox.getHeader().getHeaderData());
        fileChannel2.write(mp4FreeBox.getData());
        fileChannel.position(fileChannel.position() + ((long) i));
        writeDataAfterIlst(fileChannel, fileChannel2, mp4BoxHeader2);
    }

    private void writeNoExistingMetaAtom(Mp4BoxHeader mp4BoxHeader, FileChannel fileChannel, FileChannel fileChannel2, ByteBuffer byteBuffer, Mp4BoxHeader mp4BoxHeader2, ByteBuffer byteBuffer2, Mp4BoxHeader mp4BoxHeader3, List<Mp4StcoBox> list, int i, boolean z, Mp4BoxHeader mp4BoxHeader4, int i2, int i3, int i4, int i5, int i6) throws CannotWriteException, IOException {
        logger.severe("Writing:Option 5.2;No meta atom");
        long fileEndPos = mp4BoxHeader2.getFileEndPos();
        int iLimit = byteBuffer.limit();
        int dataLength = mp4BoxHeader2.getDataLength();
        int length = mp4BoxHeader.getLength();
        int dataLength2 = mp4BoxHeader.getDataLength();
        Mp4HdlrBox mp4HdlrBoxCreateiTunesStyleHdlrBox = Mp4HdlrBox.createiTunesStyleHdlrBox();
        Mp4MetaBox mp4MetaBoxCreateiTunesStyleMetaBox = Mp4MetaBox.createiTunesStyleMetaBox(mp4HdlrBoxCreateiTunesStyleHdlrBox.getHeader().getLength() + iLimit);
        Mp4BoxHeader mp4BoxHeader5 = new Mp4BoxHeader(Mp4AtomIdentifier.UDTA.getFieldName());
        mp4BoxHeader5.setLength(mp4MetaBoxCreateiTunesStyleMetaBox.getHeader().getLength() + 8 + dataLength2);
        int dataLength3 = mp4BoxHeader5.getDataLength() - dataLength2;
        boolean zAdjustStcosIfNoSuitableTopLevelAtom = adjustStcosIfNoSuitableTopLevelAtom(i, z, dataLength3, list, mp4BoxHeader2, mp4BoxHeader3);
        mp4BoxHeader2.setLength(mp4BoxHeader2.getLength() + dataLength3);
        fileChannel2.write(mp4BoxHeader2.getHeaderData());
        byteBuffer2.rewind();
        byteBuffer2.limit(dataLength - length);
        fileChannel2.write(byteBuffer2);
        fileChannel2.write(mp4BoxHeader5.getHeaderData());
        if (byteBuffer2.position() + 8 < byteBuffer2.capacity()) {
            byteBuffer2.limit(byteBuffer2.capacity());
            byteBuffer2.position(byteBuffer2.position() + 8);
            fileChannel2.write(byteBuffer2);
        }
        fileChannel2.write(mp4MetaBoxCreateiTunesStyleMetaBox.getHeader().getHeaderData());
        fileChannel2.write(mp4MetaBoxCreateiTunesStyleMetaBox.getData());
        fileChannel2.write(mp4HdlrBoxCreateiTunesStyleHdlrBox.getHeader().getHeaderData());
        fileChannel2.write(mp4HdlrBoxCreateiTunesStyleHdlrBox.getData());
        fileChannel2.write(byteBuffer);
        fileChannel.position(i3 + i4 + i2);
        if (mp4BoxHeader4 != null) {
            writeFromEndOfIlstToNeroTagsAndMakeNeroFree(fileEndPos, fileChannel, fileChannel2, mp4BoxHeader4);
        } else {
            long jPosition = fileEndPos - fileChannel.position();
            fileChannel2.transferFrom(fileChannel, fileChannel2.position(), jPosition);
            fileChannel2.position(fileChannel2.position() + jPosition);
        }
        if (zAdjustStcosIfNoSuitableTopLevelAtom) {
            logger.config("Writing:Option 9;Top Level Free comes after Mdat or before Metadata or not large enough");
        } else {
            adjustFreeAtom(fileChannel, fileChannel2, i5, i6);
        }
        writeDataInChunks(fileChannel, fileChannel2);
    }

    private void writeNoExistingUdtaAtom(FileChannel fileChannel, FileChannel fileChannel2, ByteBuffer byteBuffer, Mp4BoxHeader mp4BoxHeader, ByteBuffer byteBuffer2, Mp4BoxHeader mp4BoxHeader2, List<Mp4StcoBox> list, int i, boolean z, Mp4BoxHeader mp4BoxHeader3, int i2, int i3, int i4, int i5, int i6) throws CannotWriteException, IOException {
        logger.severe("Writing:Option 5.1;No udta atom");
        long fileEndPos = mp4BoxHeader.getFileEndPos();
        Mp4HdlrBox mp4HdlrBoxCreateiTunesStyleHdlrBox = Mp4HdlrBox.createiTunesStyleHdlrBox();
        Mp4MetaBox mp4MetaBoxCreateiTunesStyleMetaBox = Mp4MetaBox.createiTunesStyleMetaBox(mp4HdlrBoxCreateiTunesStyleHdlrBox.getHeader().getLength() + byteBuffer.limit());
        Mp4BoxHeader mp4BoxHeader4 = new Mp4BoxHeader(Mp4AtomIdentifier.UDTA.getFieldName());
        mp4BoxHeader4.setLength(mp4MetaBoxCreateiTunesStyleMetaBox.getHeader().getLength() + 8);
        boolean zAdjustStcosIfNoSuitableTopLevelAtom = adjustStcosIfNoSuitableTopLevelAtom(i, z, mp4BoxHeader4.getLength(), list, mp4BoxHeader, mp4BoxHeader2);
        mp4BoxHeader.setLength(mp4BoxHeader.getLength() + mp4BoxHeader4.getLength());
        fileChannel2.write(mp4BoxHeader.getHeaderData());
        byteBuffer2.rewind();
        fileChannel2.write(byteBuffer2);
        fileChannel2.write(mp4BoxHeader4.getHeaderData());
        fileChannel2.write(mp4MetaBoxCreateiTunesStyleMetaBox.getHeader().getHeaderData());
        fileChannel2.write(mp4MetaBoxCreateiTunesStyleMetaBox.getData());
        fileChannel2.write(mp4HdlrBoxCreateiTunesStyleHdlrBox.getHeader().getHeaderData());
        fileChannel2.write(mp4HdlrBoxCreateiTunesStyleHdlrBox.getData());
        fileChannel2.write(byteBuffer);
        fileChannel.position(i3 + i4 + i2);
        if (mp4BoxHeader3 != null) {
            writeFromEndOfIlstToNeroTagsAndMakeNeroFree(fileEndPos, fileChannel, fileChannel2, mp4BoxHeader3);
        } else {
            long jPosition = fileEndPos - fileChannel.position();
            fileChannel2.transferFrom(fileChannel, fileChannel2.position(), jPosition);
            fileChannel2.position(fileChannel2.position() + jPosition);
        }
        if (zAdjustStcosIfNoSuitableTopLevelAtom) {
            logger.config("Writing:Option 9;Top Level Free comes after Mdat or before Metadata or not large enough");
        } else {
            adjustFreeAtom(fileChannel, fileChannel2, i5, i6);
        }
        writeDataInChunks(fileChannel, fileChannel2);
    }

    private void writeOldMetadataLargerThanNewMetadata(FileChannel fileChannel, FileChannel fileChannel2, Mp4BoxHeader mp4BoxHeader, Mp4BoxHeader mp4BoxHeader2, Mp4BoxHeader mp4BoxHeader3, Mp4BoxHeader mp4BoxHeader4, Mp4BoxHeader mp4BoxHeader5, Mp4BoxHeader mp4BoxHeader6, ByteBuffer byteBuffer, ByteBuffer byteBuffer2, List<Mp4StcoBox> list, int i) throws CannotWriteException, IOException {
        logger.config("Writing:Option 1:Smaller Size");
        int filePos = (int) (mp4BoxHeader4.getFilePos() - (mp4BoxHeader.getFilePos() + 8));
        int iLimit = byteBuffer2.limit();
        if (i > 0) {
            logger.config("Writing:Option 2:Smaller Size have free atom:" + mp4BoxHeader4.getLength() + StringUtils.PROCESS_POSTFIX_DELIMITER + iLimit);
            writeDataUptoIncludingIlst(fileChannel, fileChannel2, mp4BoxHeader4, byteBuffer2);
            Mp4FreeBox mp4FreeBox = new Mp4FreeBox(i + (mp4BoxHeader4.getLength() - iLimit) + (-8));
            fileChannel2.write(mp4FreeBox.getHeader().getHeaderData());
            fileChannel2.write(mp4FreeBox.getData());
            fileChannel.position(fileChannel.position() + ((long) i));
            writeDataAfterIlst(fileChannel, fileChannel2, mp4BoxHeader6);
            return;
        }
        int length = (mp4BoxHeader4.getLength() - iLimit) - 8;
        if (length > 0) {
            logger.config("Writing:Option 3:Smaller Size can create free atom");
            writeDataUptoIncludingIlst(fileChannel, fileChannel2, mp4BoxHeader4, byteBuffer2);
            Mp4FreeBox mp4FreeBox2 = new Mp4FreeBox(length);
            fileChannel2.write(mp4FreeBox2.getHeader().getHeaderData());
            fileChannel2.write(mp4FreeBox2.getData());
            writeDataAfterIlst(fileChannel, fileChannel2, mp4BoxHeader6);
            return;
        }
        logger.config("Writing:Option 4:Smaller Size <=8 cannot create free atoms");
        int length2 = mp4BoxHeader4.getLength() - iLimit;
        fileChannel.position(0L);
        fileChannel2.transferFrom(fileChannel, 0L, mp4BoxHeader.getFilePos());
        fileChannel2.position(mp4BoxHeader.getFilePos());
        if (mp4BoxHeader5.getFilePos() > mp4BoxHeader.getFilePos()) {
            Iterator<Mp4StcoBox> it = list.iterator();
            while (it.hasNext()) {
                it.next().adjustOffsets(-length2);
            }
        }
        adjustSizeOfMoovHeader(mp4BoxHeader, byteBuffer, -length2, mp4BoxHeader2, mp4BoxHeader3);
        fileChannel2.write(mp4BoxHeader.getHeaderData());
        byteBuffer.rewind();
        byteBuffer.limit(filePos);
        fileChannel2.write(byteBuffer);
        fileChannel2.write(byteBuffer2);
        byteBuffer.limit(byteBuffer.capacity());
        byteBuffer.position(filePos + mp4BoxHeader4.getLength());
        fileChannel2.write(byteBuffer);
        fileChannel.position(mp4BoxHeader.getFileEndPos() + ((long) length2));
        writeDataAfterIlst(fileChannel, fileChannel2, mp4BoxHeader6);
    }

    private void writeUpToMoovHeader(FileChannel fileChannel, FileChannel fileChannel2, Mp4BoxHeader mp4BoxHeader) throws CannotWriteException, IOException {
        fileChannel.position(0L);
        fileChannel2.transferFrom(fileChannel, 0L, mp4BoxHeader.getFilePos());
        fileChannel2.position(mp4BoxHeader.getFilePos());
    }

    public void delete(RandomAccessFile randomAccessFile, RandomAccessFile randomAccessFile2) throws IOException {
        try {
            write(new Mp4Tag(), randomAccessFile, randomAccessFile2);
        } catch (CannotWriteException e) {
            throw new IOException(e.getMessage());
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x010a  */
    /* JADX WARN: Code duplicated, block: B:31:0x0134  */
    /* JADX WARN: Code duplicated, block: B:34:0x0142  */
    /* JADX WARN: Code duplicated, block: B:38:0x014e  */
    /* JADX WARN: Code duplicated, block: B:41:0x015f  */
    /* JADX WARN: Code duplicated, block: B:43:0x0175 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:44:0x0177  */
    /* JADX WARN: Code duplicated, block: B:45:0x018e  */
    /* JADX WARN: Code duplicated, block: B:47:0x0198  */
    /* JADX WARN: Code duplicated, block: B:48:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:50:0x01af  */
    /* JADX WARN: Code duplicated, block: B:51:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:53:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:54:0x0200  */
    /* JADX WARN: Code duplicated, block: B:64:0x012f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x011c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:? A[LOOP:0: B:24:0x0104->B:66:?, LOOP_END, SYNTHETIC] */
    public void write(Tag tag, RandomAccessFile randomAccessFile, RandomAccessFile randomAccessFile2) throws CannotWriteException, IOException {
        int i;
        int fileEndPos;
        int length;
        long j;
        long filePos;
        int fileEndPos2;
        int length2;
        int i2;
        int metaLevelFreeAtomSize;
        Iterator<DefaultMutableTreeNode> it;
        int filePos2;
        int i3;
        int i4;
        int i5;
        List<Mp4StcoBox> list;
        Mp4BoxHeader mp4BoxHeader;
        int i6;
        int i7;
        int i8;
        FileChannel fileChannel;
        FileChannel fileChannel2;
        long j2;
        DefaultMutableTreeNode next;
        logger.config("Started writing tag data");
        FileChannel channel = randomAccessFile.getChannel();
        FileChannel channel2 = randomAccessFile2.getChannel();
        try {
            Mp4AtomTree mp4AtomTree = new Mp4AtomTree(randomAccessFile, false);
            Mp4BoxHeader boxHeader = mp4AtomTree.getBoxHeader(mp4AtomTree.getMdatNode());
            if (boxHeader == null) {
                throw new CannotWriteException(ErrorMessage.MP4_CHANGES_TO_FILE_FAILED_CANNOT_FIND_AUDIO.getMsg());
            }
            ByteBuffer byteBufferConvert = this.tc.convert(tag);
            byteBufferConvert.rewind();
            int iLimit = byteBufferConvert.limit();
            Mp4BoxHeader boxHeader2 = mp4AtomTree.getBoxHeader(mp4AtomTree.getMoovNode());
            List<Mp4StcoBox> stcos = mp4AtomTree.getStcos();
            Mp4BoxHeader boxHeader3 = mp4AtomTree.getBoxHeader(mp4AtomTree.getIlstNode());
            Mp4BoxHeader boxHeader4 = mp4AtomTree.getBoxHeader(mp4AtomTree.getUdtaNode());
            Mp4BoxHeader boxHeader5 = mp4AtomTree.getBoxHeader(mp4AtomTree.getMetaNode());
            Mp4BoxHeader boxHeader6 = mp4AtomTree.getBoxHeader(mp4AtomTree.getHdlrWithinMetaNode());
            Mp4BoxHeader boxHeader7 = mp4AtomTree.getBoxHeader(mp4AtomTree.getTagsNode());
            boolean z = true;
            Mp4BoxHeader boxHeader8 = mp4AtomTree.getBoxHeader(mp4AtomTree.getTrakNodes().get(mp4AtomTree.getTrakNodes().size() - 1));
            ByteBuffer moovBuffer = mp4AtomTree.getMoovBuffer();
            if (boxHeader4 == null) {
                i = iLimit;
                if (boxHeader5 != null) {
                    fileEndPos = (int) boxHeader8.getFileEndPos();
                    j = fileEndPos;
                    filePos = boxHeader2.getFilePos();
                } else {
                    fileEndPos = (int) boxHeader2.getFileEndPos();
                    length = boxHeader2.getLength() - 8;
                }
                fileEndPos2 = fileEndPos;
                length2 = length;
                i2 = 0;
                metaLevelFreeAtomSize = getMetaLevelFreeAtomSize(mp4AtomTree);
                it = mp4AtomTree.getFreeNodes().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        filePos2 = 0;
                        i3 = 0;
                        break;
                    }
                    next = it.next();
                    if (((DefaultMutableTreeNode) next.getParent()).isRoot()) {
                        Mp4BoxHeader mp4BoxHeader2 = (Mp4BoxHeader) next.getUserObject();
                        int length3 = mp4BoxHeader2.getLength();
                        filePos2 = (int) mp4BoxHeader2.getFilePos();
                        i3 = length3;
                        break;
                    }
                }
                if (i3 > 0) {
                    j2 = filePos2;
                    if (j2 > boxHeader.getFilePos()) {
                    }
                    i4 = filePos2;
                    z = false;
                    logger.config("Read header successfully ready for writing");
                    i5 = i;
                    if (i2 == i5) {
                        writeMetadataSameSize(channel, channel2, boxHeader3, byteBufferConvert, boxHeader7);
                        list = stcos;
                        mp4BoxHeader = boxHeader;
                    } else {
                        if (i2 > i5) {
                            list = stcos;
                            mp4BoxHeader = boxHeader;
                            i6 = i5 - i2;
                            if (i6 <= metaLevelFreeAtomSize - 8) {
                                writeNewMetadataLargerButCanUseFreeAtom(channel, channel2, boxHeader3, boxHeader7, metaLevelFreeAtomSize, byteBufferConvert, i6);
                            } else {
                                i7 = i6 - metaLevelFreeAtomSize;
                                writeUpToMoovHeader(channel, channel2, boxHeader2);
                                if (boxHeader4 == null) {
                                    fileChannel = channel2;
                                    fileChannel2 = channel;
                                    writeNoExistingUdtaAtom(channel, channel2, byteBufferConvert, boxHeader2, moovBuffer, mp4BoxHeader, list, i3, z, boxHeader7, metaLevelFreeAtomSize, fileEndPos2, i2, i4, i7);
                                } else {
                                    i8 = i2;
                                    fileChannel = channel2;
                                    fileChannel2 = channel;
                                    if (boxHeader5 == null) {
                                        writeNoExistingMetaAtom(boxHeader4, fileChannel2, fileChannel, byteBufferConvert, boxHeader2, moovBuffer, mp4BoxHeader, list, i3, z, boxHeader7, metaLevelFreeAtomSize, fileEndPos2, i8, i4, i7);
                                    } else {
                                        writeHaveExistingMetadata(boxHeader4, boxHeader5, fileChannel2, fileChannel, length2, boxHeader2, moovBuffer, mp4BoxHeader, list, i7, i3, z, byteBufferConvert, boxHeader7, metaLevelFreeAtomSize, fileEndPos2, i8);
                                    }
                                }
                            }
                            fileChannel2.close();
                            randomAccessFile.close();
                            checkFileWrittenCorrectly(randomAccessFile2, mp4BoxHeader, fileChannel, list);
                        }
                        list = stcos;
                        mp4BoxHeader = boxHeader;
                        writeOldMetadataLargerThanNewMetadata(channel, channel2, boxHeader2, boxHeader4, boxHeader5, boxHeader3, boxHeader, boxHeader7, moovBuffer, byteBufferConvert, list, metaLevelFreeAtomSize);
                    }
                    fileChannel = channel2;
                    fileChannel2 = channel;
                    fileChannel2.close();
                    randomAccessFile.close();
                    checkFileWrittenCorrectly(randomAccessFile2, mp4BoxHeader, fileChannel, list);
                }
                filePos2 = (int) boxHeader.getFilePos();
                i4 = filePos2;
                logger.config("Read header successfully ready for writing");
                i5 = i;
                if (i2 == i5) {
                    writeMetadataSameSize(channel, channel2, boxHeader3, byteBufferConvert, boxHeader7);
                    list = stcos;
                    mp4BoxHeader = boxHeader;
                } else {
                    if (i2 > i5) {
                        list = stcos;
                        mp4BoxHeader = boxHeader;
                        i6 = i5 - i2;
                        if (i6 <= metaLevelFreeAtomSize - 8) {
                            writeNewMetadataLargerButCanUseFreeAtom(channel, channel2, boxHeader3, boxHeader7, metaLevelFreeAtomSize, byteBufferConvert, i6);
                        } else {
                            i7 = i6 - metaLevelFreeAtomSize;
                            writeUpToMoovHeader(channel, channel2, boxHeader2);
                            if (boxHeader4 == null) {
                                fileChannel = channel2;
                                fileChannel2 = channel;
                                writeNoExistingUdtaAtom(channel, channel2, byteBufferConvert, boxHeader2, moovBuffer, mp4BoxHeader, list, i3, z, boxHeader7, metaLevelFreeAtomSize, fileEndPos2, i2, i4, i7);
                            } else {
                                i8 = i2;
                                fileChannel = channel2;
                                fileChannel2 = channel;
                                if (boxHeader5 == null) {
                                    writeNoExistingMetaAtom(boxHeader4, fileChannel2, fileChannel, byteBufferConvert, boxHeader2, moovBuffer, mp4BoxHeader, list, i3, z, boxHeader7, metaLevelFreeAtomSize, fileEndPos2, i8, i4, i7);
                                } else {
                                    writeHaveExistingMetadata(boxHeader4, boxHeader5, fileChannel2, fileChannel, length2, boxHeader2, moovBuffer, mp4BoxHeader, list, i7, i3, z, byteBufferConvert, boxHeader7, metaLevelFreeAtomSize, fileEndPos2, i8);
                                }
                            }
                        }
                        fileChannel2.close();
                        randomAccessFile.close();
                        checkFileWrittenCorrectly(randomAccessFile2, mp4BoxHeader, fileChannel, list);
                    }
                    list = stcos;
                    mp4BoxHeader = boxHeader;
                    writeOldMetadataLargerThanNewMetadata(channel, channel2, boxHeader2, boxHeader4, boxHeader5, boxHeader3, boxHeader, boxHeader7, moovBuffer, byteBufferConvert, list, metaLevelFreeAtomSize);
                }
                fileChannel = channel2;
                fileChannel2 = channel;
                fileChannel2.close();
                randomAccessFile.close();
                checkFileWrittenCorrectly(randomAccessFile2, mp4BoxHeader, fileChannel, list);
            }
            if (boxHeader5 == null) {
                i = iLimit;
                length2 = boxHeader2.getLength() - 8;
                fileEndPos2 = (int) boxHeader2.getFileEndPos();
                i2 = 0;
            } else if (boxHeader3 != null) {
                int length4 = boxHeader3.getLength();
                i = iLimit;
                int filePos3 = (int) boxHeader3.getFilePos();
                fileEndPos2 = filePos3;
                i2 = length4;
                length2 = (int) (((long) filePos3) - (boxHeader2.getFilePos() + 8));
            } else {
                i = iLimit;
                if (boxHeader6 != null) {
                    fileEndPos = (int) boxHeader6.getFileEndPos();
                    j = fileEndPos;
                    filePos = boxHeader2.getFilePos();
                } else {
                    fileEndPos = ((int) boxHeader5.getFilePos()) + 12;
                    j = fileEndPos;
                    filePos = boxHeader2.getFilePos();
                }
            }
            metaLevelFreeAtomSize = getMetaLevelFreeAtomSize(mp4AtomTree);
            it = mp4AtomTree.getFreeNodes().iterator();
            while (true) {
                if (!it.hasNext()) {
                    filePos2 = 0;
                    i3 = 0;
                    break;
                }
                next = it.next();
                if (((DefaultMutableTreeNode) next.getParent()).isRoot()) {
                    Mp4BoxHeader mp4BoxHeader3 = (Mp4BoxHeader) next.getUserObject();
                    int length5 = mp4BoxHeader3.getLength();
                    filePos2 = (int) mp4BoxHeader3.getFilePos();
                    i3 = length5;
                    break;
                }
            }
            if (i3 > 0) {
                j2 = filePos2;
                if (j2 > boxHeader.getFilePos() || j2 < boxHeader2.getFilePos()) {
                    i4 = filePos2;
                    z = false;
                }
                logger.config("Read header successfully ready for writing");
                i5 = i;
                if (i2 == i5) {
                    writeMetadataSameSize(channel, channel2, boxHeader3, byteBufferConvert, boxHeader7);
                    list = stcos;
                    mp4BoxHeader = boxHeader;
                } else {
                    if (i2 > i5) {
                        list = stcos;
                        mp4BoxHeader = boxHeader;
                        i6 = i5 - i2;
                        if (i6 <= metaLevelFreeAtomSize - 8) {
                            writeNewMetadataLargerButCanUseFreeAtom(channel, channel2, boxHeader3, boxHeader7, metaLevelFreeAtomSize, byteBufferConvert, i6);
                        } else {
                            i7 = i6 - metaLevelFreeAtomSize;
                            writeUpToMoovHeader(channel, channel2, boxHeader2);
                            if (boxHeader4 == null) {
                                fileChannel = channel2;
                                fileChannel2 = channel;
                                writeNoExistingUdtaAtom(channel, channel2, byteBufferConvert, boxHeader2, moovBuffer, mp4BoxHeader, list, i3, z, boxHeader7, metaLevelFreeAtomSize, fileEndPos2, i2, i4, i7);
                            } else {
                                i8 = i2;
                                fileChannel = channel2;
                                fileChannel2 = channel;
                                if (boxHeader5 == null) {
                                    writeNoExistingMetaAtom(boxHeader4, fileChannel2, fileChannel, byteBufferConvert, boxHeader2, moovBuffer, mp4BoxHeader, list, i3, z, boxHeader7, metaLevelFreeAtomSize, fileEndPos2, i8, i4, i7);
                                } else {
                                    writeHaveExistingMetadata(boxHeader4, boxHeader5, fileChannel2, fileChannel, length2, boxHeader2, moovBuffer, mp4BoxHeader, list, i7, i3, z, byteBufferConvert, boxHeader7, metaLevelFreeAtomSize, fileEndPos2, i8);
                                }
                            }
                        }
                        fileChannel2.close();
                        randomAccessFile.close();
                        checkFileWrittenCorrectly(randomAccessFile2, mp4BoxHeader, fileChannel, list);
                    }
                    list = stcos;
                    mp4BoxHeader = boxHeader;
                    writeOldMetadataLargerThanNewMetadata(channel, channel2, boxHeader2, boxHeader4, boxHeader5, boxHeader3, boxHeader, boxHeader7, moovBuffer, byteBufferConvert, list, metaLevelFreeAtomSize);
                }
                fileChannel = channel2;
                fileChannel2 = channel;
                fileChannel2.close();
                randomAccessFile.close();
                checkFileWrittenCorrectly(randomAccessFile2, mp4BoxHeader, fileChannel, list);
            }
            filePos2 = (int) boxHeader.getFilePos();
            i4 = filePos2;
            logger.config("Read header successfully ready for writing");
            i5 = i;
            if (i2 == i5) {
                writeMetadataSameSize(channel, channel2, boxHeader3, byteBufferConvert, boxHeader7);
                list = stcos;
                mp4BoxHeader = boxHeader;
            } else {
                if (i2 > i5) {
                    list = stcos;
                    mp4BoxHeader = boxHeader;
                    i6 = i5 - i2;
                    if (i6 <= metaLevelFreeAtomSize - 8) {
                        writeNewMetadataLargerButCanUseFreeAtom(channel, channel2, boxHeader3, boxHeader7, metaLevelFreeAtomSize, byteBufferConvert, i6);
                    } else {
                        i7 = i6 - metaLevelFreeAtomSize;
                        writeUpToMoovHeader(channel, channel2, boxHeader2);
                        if (boxHeader4 == null) {
                            fileChannel = channel2;
                            fileChannel2 = channel;
                            writeNoExistingUdtaAtom(channel, channel2, byteBufferConvert, boxHeader2, moovBuffer, mp4BoxHeader, list, i3, z, boxHeader7, metaLevelFreeAtomSize, fileEndPos2, i2, i4, i7);
                        } else {
                            i8 = i2;
                            fileChannel = channel2;
                            fileChannel2 = channel;
                            if (boxHeader5 == null) {
                                writeNoExistingMetaAtom(boxHeader4, fileChannel2, fileChannel, byteBufferConvert, boxHeader2, moovBuffer, mp4BoxHeader, list, i3, z, boxHeader7, metaLevelFreeAtomSize, fileEndPos2, i8, i4, i7);
                            } else {
                                writeHaveExistingMetadata(boxHeader4, boxHeader5, fileChannel2, fileChannel, length2, boxHeader2, moovBuffer, mp4BoxHeader, list, i7, i3, z, byteBufferConvert, boxHeader7, metaLevelFreeAtomSize, fileEndPos2, i8);
                            }
                        }
                    }
                    fileChannel2.close();
                    randomAccessFile.close();
                    checkFileWrittenCorrectly(randomAccessFile2, mp4BoxHeader, fileChannel, list);
                }
                list = stcos;
                mp4BoxHeader = boxHeader;
                writeOldMetadataLargerThanNewMetadata(channel, channel2, boxHeader2, boxHeader4, boxHeader5, boxHeader3, boxHeader, boxHeader7, moovBuffer, byteBufferConvert, list, metaLevelFreeAtomSize);
            }
            fileChannel = channel2;
            fileChannel2 = channel;
            fileChannel2.close();
            randomAccessFile.close();
            checkFileWrittenCorrectly(randomAccessFile2, mp4BoxHeader, fileChannel, list);
            length = (int) (j - (filePos + 8));
            fileEndPos2 = fileEndPos;
            length2 = length;
            i2 = 0;
            metaLevelFreeAtomSize = getMetaLevelFreeAtomSize(mp4AtomTree);
            it = mp4AtomTree.getFreeNodes().iterator();
            while (true) {
                if (!it.hasNext()) {
                    filePos2 = 0;
                    i3 = 0;
                    break;
                }
                next = it.next();
                if (((DefaultMutableTreeNode) next.getParent()).isRoot()) {
                    Mp4BoxHeader mp4BoxHeader4 = (Mp4BoxHeader) next.getUserObject();
                    int length6 = mp4BoxHeader4.getLength();
                    filePos2 = (int) mp4BoxHeader4.getFilePos();
                    i3 = length6;
                    break;
                }
            }
            if (i3 > 0) {
                j2 = filePos2;
                if (j2 > boxHeader.getFilePos()) {
                }
                i4 = filePos2;
                z = false;
                logger.config("Read header successfully ready for writing");
                i5 = i;
                if (i2 == i5) {
                    writeMetadataSameSize(channel, channel2, boxHeader3, byteBufferConvert, boxHeader7);
                    list = stcos;
                    mp4BoxHeader = boxHeader;
                } else {
                    if (i2 > i5) {
                        list = stcos;
                        mp4BoxHeader = boxHeader;
                        i6 = i5 - i2;
                        if (i6 <= metaLevelFreeAtomSize - 8) {
                            writeNewMetadataLargerButCanUseFreeAtom(channel, channel2, boxHeader3, boxHeader7, metaLevelFreeAtomSize, byteBufferConvert, i6);
                        } else {
                            i7 = i6 - metaLevelFreeAtomSize;
                            writeUpToMoovHeader(channel, channel2, boxHeader2);
                            if (boxHeader4 == null) {
                                fileChannel = channel2;
                                fileChannel2 = channel;
                                writeNoExistingUdtaAtom(channel, channel2, byteBufferConvert, boxHeader2, moovBuffer, mp4BoxHeader, list, i3, z, boxHeader7, metaLevelFreeAtomSize, fileEndPos2, i2, i4, i7);
                            } else {
                                i8 = i2;
                                fileChannel = channel2;
                                fileChannel2 = channel;
                                if (boxHeader5 == null) {
                                    writeNoExistingMetaAtom(boxHeader4, fileChannel2, fileChannel, byteBufferConvert, boxHeader2, moovBuffer, mp4BoxHeader, list, i3, z, boxHeader7, metaLevelFreeAtomSize, fileEndPos2, i8, i4, i7);
                                } else {
                                    writeHaveExistingMetadata(boxHeader4, boxHeader5, fileChannel2, fileChannel, length2, boxHeader2, moovBuffer, mp4BoxHeader, list, i7, i3, z, byteBufferConvert, boxHeader7, metaLevelFreeAtomSize, fileEndPos2, i8);
                                }
                            }
                        }
                        fileChannel2.close();
                        randomAccessFile.close();
                        checkFileWrittenCorrectly(randomAccessFile2, mp4BoxHeader, fileChannel, list);
                    }
                    list = stcos;
                    mp4BoxHeader = boxHeader;
                    writeOldMetadataLargerThanNewMetadata(channel, channel2, boxHeader2, boxHeader4, boxHeader5, boxHeader3, boxHeader, boxHeader7, moovBuffer, byteBufferConvert, list, metaLevelFreeAtomSize);
                }
                fileChannel = channel2;
                fileChannel2 = channel;
                fileChannel2.close();
                randomAccessFile.close();
                checkFileWrittenCorrectly(randomAccessFile2, mp4BoxHeader, fileChannel, list);
            }
            filePos2 = (int) boxHeader.getFilePos();
            i4 = filePos2;
            logger.config("Read header successfully ready for writing");
            i5 = i;
            if (i2 == i5) {
                writeMetadataSameSize(channel, channel2, boxHeader3, byteBufferConvert, boxHeader7);
                list = stcos;
                mp4BoxHeader = boxHeader;
            } else {
                if (i2 > i5) {
                    list = stcos;
                    mp4BoxHeader = boxHeader;
                    i6 = i5 - i2;
                    if (i6 <= metaLevelFreeAtomSize - 8) {
                        writeNewMetadataLargerButCanUseFreeAtom(channel, channel2, boxHeader3, boxHeader7, metaLevelFreeAtomSize, byteBufferConvert, i6);
                    } else {
                        i7 = i6 - metaLevelFreeAtomSize;
                        writeUpToMoovHeader(channel, channel2, boxHeader2);
                        if (boxHeader4 == null) {
                            fileChannel = channel2;
                            fileChannel2 = channel;
                            writeNoExistingUdtaAtom(channel, channel2, byteBufferConvert, boxHeader2, moovBuffer, mp4BoxHeader, list, i3, z, boxHeader7, metaLevelFreeAtomSize, fileEndPos2, i2, i4, i7);
                        } else {
                            i8 = i2;
                            fileChannel = channel2;
                            fileChannel2 = channel;
                            if (boxHeader5 == null) {
                                writeNoExistingMetaAtom(boxHeader4, fileChannel2, fileChannel, byteBufferConvert, boxHeader2, moovBuffer, mp4BoxHeader, list, i3, z, boxHeader7, metaLevelFreeAtomSize, fileEndPos2, i8, i4, i7);
                            } else {
                                writeHaveExistingMetadata(boxHeader4, boxHeader5, fileChannel2, fileChannel, length2, boxHeader2, moovBuffer, mp4BoxHeader, list, i7, i3, z, byteBufferConvert, boxHeader7, metaLevelFreeAtomSize, fileEndPos2, i8);
                            }
                        }
                    }
                    fileChannel2.close();
                    randomAccessFile.close();
                    checkFileWrittenCorrectly(randomAccessFile2, mp4BoxHeader, fileChannel, list);
                }
                list = stcos;
                mp4BoxHeader = boxHeader;
                writeOldMetadataLargerThanNewMetadata(channel, channel2, boxHeader2, boxHeader4, boxHeader5, boxHeader3, boxHeader, boxHeader7, moovBuffer, byteBufferConvert, list, metaLevelFreeAtomSize);
            }
            fileChannel = channel2;
            fileChannel2 = channel;
            fileChannel2.close();
            randomAccessFile.close();
            checkFileWrittenCorrectly(randomAccessFile2, mp4BoxHeader, fileChannel, list);
        } catch (CannotReadException e) {
            throw new CannotWriteException(e.getMessage());
        }
    }
}
