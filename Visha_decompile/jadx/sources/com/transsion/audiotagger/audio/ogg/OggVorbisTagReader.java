package com.transsion.audiotagger.audio.ogg;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.ogg.util.OggPageHeader;
import com.transsion.audiotagger.audio.ogg.util.VorbisHeader;
import com.transsion.audiotagger.audio.ogg.util.VorbisPacketType;
import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.tag.Tag;
import com.transsion.audiotagger.tag.vorbiscomment.VorbisCommentReader;
import com.transsion.audiotagger.tag.vorbiscomment.VorbisCommentTag;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;

public class OggVorbisTagReader {
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.ogg");
    private VorbisCommentReader vorbisCommentReader = new VorbisCommentReader();

    public static class OggVorbisHeaderSizes {
        private int commentHeaderSize;
        private long commentHeaderStartPosition;
        private List<OggPageHeader.PacketStartAndLength> packetList;
        private int setupHeaderSize;
        private long setupHeaderStartPosition;

        public OggVorbisHeaderSizes(long j, long j2, int i, int i2, List<OggPageHeader.PacketStartAndLength> list) {
            this.packetList = list;
            this.commentHeaderStartPosition = j;
            this.setupHeaderStartPosition = j2;
            this.commentHeaderSize = i;
            this.setupHeaderSize = i2;
        }

        public int getCommentHeaderSize() {
            return this.commentHeaderSize;
        }

        public long getCommentHeaderStartPosition() {
            return this.commentHeaderStartPosition;
        }

        public int getExtraPacketDataSize() {
            Iterator<OggPageHeader.PacketStartAndLength> it = this.packetList.iterator();
            int length = 0;
            while (it.hasNext()) {
                length += it.next().getLength();
            }
            return length;
        }

        public List<OggPageHeader.PacketStartAndLength> getExtraPacketList() {
            return this.packetList;
        }

        public int getSetupHeaderSize() {
            return this.setupHeaderSize;
        }

        public long getSetupHeaderStartPosition() {
            return this.setupHeaderStartPosition;
        }
    }

    private byte[] convertToVorbisCommentPacket(OggPageHeader oggPageHeader, RandomAccessFile randomAccessFile) throws CannotReadException, IOException {
        OggPageHeader oggPageHeader2;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[oggPageHeader.getPacketList().get(0).getLength() - 7];
        randomAccessFile.read(bArr);
        byteArrayOutputStream.write(bArr);
        if (oggPageHeader.getPacketList().size() > 1) {
            logger.config("Comments finish on 2nd Page because there is another packet on this page");
            return byteArrayOutputStream.toByteArray();
        }
        if (!oggPageHeader.isLastPacketIncomplete()) {
            logger.config("Comments finish on 2nd Page because this packet is complete");
            return byteArrayOutputStream.toByteArray();
        }
        do {
            logger.config("Reading next page");
            oggPageHeader2 = OggPageHeader.read(randomAccessFile);
            byte[] bArr2 = new byte[oggPageHeader2.getPacketList().get(0).getLength()];
            randomAccessFile.read(bArr2);
            byteArrayOutputStream.write(bArr2);
            if (oggPageHeader2.getPacketList().size() > 1) {
                logger.config("Comments finish on Page because there is another packet on this page");
                return byteArrayOutputStream.toByteArray();
            }
        } while (oggPageHeader2.isLastPacketIncomplete());
        logger.config("Comments finish on Page because this packet is complete");
        return byteArrayOutputStream.toByteArray();
    }

    public byte[] convertToVorbisSetupHeaderPacket(long j, RandomAccessFile randomAccessFile) throws CannotReadException, IOException {
        OggPageHeader oggPageHeader;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        randomAccessFile.seek(j);
        OggPageHeader oggPageHeader2 = OggPageHeader.read(randomAccessFile);
        if (oggPageHeader2.getPacketList().size() > 1) {
            randomAccessFile.skipBytes(oggPageHeader2.getPacketList().get(0).getLength());
        }
        byte[] bArr = new byte[7];
        randomAccessFile.read(bArr);
        if (!isVorbisSetupHeader(bArr)) {
            throw new CannotReadException("Unable to find setup header(2), unable to write ogg file");
        }
        randomAccessFile.seek(randomAccessFile.getFilePointer() - 7);
        if (oggPageHeader2.getPacketList().size() > 1) {
            byte[] bArr2 = new byte[oggPageHeader2.getPacketList().get(1).getLength()];
            randomAccessFile.read(bArr2);
            byteArrayOutputStream.write(bArr2);
        } else {
            byte[] bArr3 = new byte[oggPageHeader2.getPacketList().get(0).getLength()];
            randomAccessFile.read(bArr3);
            byteArrayOutputStream.write(bArr3);
        }
        if (!oggPageHeader2.isLastPacketIncomplete() || oggPageHeader2.getPacketList().size() > 2) {
            logger.config("Setupheader finishes on this page");
            return byteArrayOutputStream.toByteArray();
        }
        do {
            logger.config("Reading another page");
            oggPageHeader = OggPageHeader.read(randomAccessFile);
            byte[] bArr4 = new byte[oggPageHeader.getPacketList().get(0).getLength()];
            randomAccessFile.read(bArr4);
            byteArrayOutputStream.write(bArr4);
            if (oggPageHeader.getPacketList().size() > 1) {
                logger.config("Setupheader finishes on this page");
                return byteArrayOutputStream.toByteArray();
            }
        } while (oggPageHeader.isLastPacketIncomplete());
        logger.config("Setupheader finish on Page because this packet is complete");
        return byteArrayOutputStream.toByteArray();
    }

    public byte[] convertToVorbisSetupHeaderPacketAndAdditionalPackets(long j, RandomAccessFile randomAccessFile) throws CannotReadException, IOException {
        OggPageHeader oggPageHeader;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        randomAccessFile.seek(j);
        OggPageHeader oggPageHeader2 = OggPageHeader.read(randomAccessFile);
        if (oggPageHeader2.getPacketList().size() > 1) {
            randomAccessFile.skipBytes(oggPageHeader2.getPacketList().get(0).getLength());
        }
        byte[] bArr = new byte[7];
        randomAccessFile.read(bArr);
        if (!isVorbisSetupHeader(bArr)) {
            throw new CannotReadException("Unable to find setup header(2), unable to write ogg file");
        }
        randomAccessFile.seek(randomAccessFile.getFilePointer() - 7);
        if (oggPageHeader2.getPacketList().size() > 1) {
            byte[] bArr2 = new byte[oggPageHeader2.getPacketList().get(1).getLength()];
            randomAccessFile.read(bArr2);
            byteArrayOutputStream.write(bArr2);
        } else {
            byte[] bArr3 = new byte[oggPageHeader2.getPacketList().get(0).getLength()];
            randomAccessFile.read(bArr3);
            byteArrayOutputStream.write(bArr3);
        }
        if (!oggPageHeader2.isLastPacketIncomplete() || oggPageHeader2.getPacketList().size() > 2) {
            logger.config("Setupheader finishes on this page");
            if (oggPageHeader2.getPacketList().size() > 2) {
                for (int i = 2; i < oggPageHeader2.getPacketList().size(); i++) {
                    byte[] bArr4 = new byte[oggPageHeader2.getPacketList().get(i).getLength()];
                    randomAccessFile.read(bArr4);
                    byteArrayOutputStream.write(bArr4);
                }
            }
            return byteArrayOutputStream.toByteArray();
        }
        do {
            logger.config("Reading another page");
            oggPageHeader = OggPageHeader.read(randomAccessFile);
            byte[] bArr5 = new byte[oggPageHeader.getPacketList().get(0).getLength()];
            randomAccessFile.read(bArr5);
            byteArrayOutputStream.write(bArr5);
            if (oggPageHeader.getPacketList().size() > 1) {
                logger.config("Setupheader finishes on this page");
                return byteArrayOutputStream.toByteArray();
            }
        } while (oggPageHeader.isLastPacketIncomplete());
        logger.config("Setupheader finish on Page because this packet is complete");
        return byteArrayOutputStream.toByteArray();
    }

    public boolean isVorbisCommentHeader(byte[] bArr) {
        return bArr[0] == VorbisPacketType.COMMENT_HEADER.getType() && new String(bArr, 1, 6, StandardCharsets.ISO_8859_1).equals(VorbisHeader.CAPTURE_PATTERN);
    }

    public boolean isVorbisSetupHeader(byte[] bArr) {
        return bArr[0] == VorbisPacketType.SETUP_HEADER.getType() && new String(bArr, 1, 6, StandardCharsets.ISO_8859_1).equals(VorbisHeader.CAPTURE_PATTERN);
    }

    public Tag read(RandomAccessFile randomAccessFile) throws CannotReadException, IOException {
        logger.config("Starting to read ogg vorbis tag from file:");
        VorbisCommentTag vorbisCommentTag = this.vorbisCommentReader.read(readRawPacketData(randomAccessFile), true);
        logger.fine("CompletedReadCommentTag");
        return vorbisCommentTag;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x01db A[PHI: r0
      0x01db: PHI (r0v26 int) = (r0v25 int), (r0v29 int) binds: [B:32:0x0201, B:28:0x01d0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:56:0x0340 A[PHI: r0
      0x0340: PHI (r0v14 int) = (r0v13 int), (r0v17 int) binds: [B:58:0x0369, B:53:0x032f] A[DONT_GENERATE, DONT_INLINE]] */
    public OggVorbisHeaderSizes readOggVorbisHeaderSizes(RandomAccessFile randomAccessFile) throws CannotReadException, IOException {
        long j;
        long j2;
        List<OggPageHeader.PacketStartAndLength> listSubList;
        int i;
        long j3;
        List<OggPageHeader.PacketStartAndLength> list;
        List<OggPageHeader.PacketStartAndLength> listSubList2;
        logger.fine("Started to read comment and setup header sizes:");
        long filePointer = randomAccessFile.getFilePointer();
        ArrayList arrayList = new ArrayList();
        randomAccessFile.seek(randomAccessFile.getFilePointer() + ((long) OggPageHeader.read(randomAccessFile).getPageLength()));
        OggPageHeader oggPageHeader = OggPageHeader.read(randomAccessFile);
        long filePointer2 = randomAccessFile.getFilePointer() - ((long) (oggPageHeader.getSegmentTable().length + 27));
        byte[] bArr = new byte[7];
        randomAccessFile.read(bArr);
        if (!isVorbisCommentHeader(bArr)) {
            throw new CannotReadException("Cannot find comment block (no vorbiscomment header)");
        }
        randomAccessFile.seek(randomAccessFile.getFilePointer() - 7);
        logger.config("Found start of comment header at:" + randomAccessFile.getFilePointer());
        int length = 0;
        while (true) {
            List<OggPageHeader.PacketStartAndLength> packetList = oggPageHeader.getPacketList();
            length += packetList.get(0).getLength();
            randomAccessFile.skipBytes(packetList.get(0).getLength());
            if (packetList.size() > 1 || !oggPageHeader.isLastPacketIncomplete()) {
                break;
            }
            oggPageHeader = OggPageHeader.read(randomAccessFile);
        }
        logger.config("Found end of comment:size:" + length + "finishes at file position:" + randomAccessFile.getFilePointer());
        if (oggPageHeader.getPacketList().size() == 1) {
            OggPageHeader oggPageHeader2 = OggPageHeader.read(randomAccessFile);
            List<OggPageHeader.PacketStartAndLength> packetList2 = oggPageHeader2.getPacketList();
            OggPageHeader.PacketStartAndLength packetStartAndLength = oggPageHeader2.getPacketList().get(0);
            byte[] bArr2 = new byte[7];
            randomAccessFile.read(bArr2);
            if (!isVorbisSetupHeader(bArr2)) {
                throw new CannotReadException(ErrorMessage.OGG_VORBIS_NO_VORBIS_HEADER_FOUND.getMsg());
            }
            j2 = filePointer2;
            randomAccessFile.seek(randomAccessFile.getFilePointer() - 7);
            logger.config("Found start of vorbis setup header at file position:" + randomAccessFile.getFilePointer());
            j = filePointer;
            long filePointer3 = randomAccessFile.getFilePointer() - ((long) (oggPageHeader2.getSegmentTable().length + 27));
            int length2 = packetStartAndLength.getLength();
            logger.fine("Adding:" + packetStartAndLength.getLength() + " to setup header size");
            randomAccessFile.skipBytes(packetStartAndLength.getLength());
            if (packetList2.size() > 1 || !oggPageHeader2.isLastPacketIncomplete()) {
                logger.config("Found end of setupheader:size:" + length2 + "finishes at:" + randomAccessFile.getFilePointer());
                if (packetList2.size() > 1) {
                    listSubList2 = packetList2.subList(1, packetList2.size());
                } else {
                    listSubList2 = arrayList;
                }
            } else {
                OggPageHeader oggPageHeader3 = OggPageHeader.read(randomAccessFile);
                List<OggPageHeader.PacketStartAndLength> packetList3 = oggPageHeader3.getPacketList();
                while (true) {
                    length2 += packetList3.get(0).getLength();
                    logger.fine("Adding:" + packetList3.get(0).getLength() + " to setup header size");
                    randomAccessFile.skipBytes(packetList3.get(0).getLength());
                    if (packetList3.size() > 1 || !oggPageHeader3.isLastPacketIncomplete()) {
                        break;
                    }
                    oggPageHeader3 = OggPageHeader.read(randomAccessFile);
                }
                logger.fine("Found end of setupheader:size:" + length2 + "finishes at:" + randomAccessFile.getFilePointer());
                if (packetList3.size() > 1) {
                    listSubList2 = packetList3.subList(1, packetList3.size());
                } else {
                    listSubList2 = arrayList;
                }
            }
            i = length2;
            list = listSubList2;
            j3 = filePointer3;
        } else {
            j = filePointer;
            j2 = filePointer2;
            OggPageHeader.PacketStartAndLength packetStartAndLength2 = oggPageHeader.getPacketList().get(1);
            List<OggPageHeader.PacketStartAndLength> packetList4 = oggPageHeader.getPacketList();
            byte[] bArr3 = new byte[7];
            randomAccessFile.read(bArr3);
            if (!isVorbisSetupHeader(bArr3)) {
                logger.warning("Expecting but got:" + new String(bArr3) + "at " + (randomAccessFile.getFilePointer() - ((long) 7)));
                throw new CannotReadException(ErrorMessage.OGG_VORBIS_NO_VORBIS_HEADER_FOUND.getMsg());
            }
            randomAccessFile.seek(randomAccessFile.getFilePointer() - 7);
            logger.config("Found start of vorbis setup header at file position:" + randomAccessFile.getFilePointer());
            long filePointer4 = (randomAccessFile.getFilePointer() - ((long) (oggPageHeader.getSegmentTable().length + 27))) - ((long) oggPageHeader.getPacketList().get(0).getLength());
            int length3 = packetStartAndLength2.getLength();
            logger.fine("Adding:" + packetStartAndLength2.getLength() + " to setup header size");
            randomAccessFile.skipBytes(packetStartAndLength2.getLength());
            if (packetList4.size() > 2 || !oggPageHeader.isLastPacketIncomplete()) {
                logger.fine("Found end of setupheader:size:" + length3 + "finishes at:" + randomAccessFile.getFilePointer());
                if (packetList4.size() > 2) {
                    listSubList = packetList4.subList(2, packetList4.size());
                    i = length3;
                    list = listSubList;
                    j3 = filePointer4;
                } else {
                    i = length3;
                    j3 = filePointer4;
                    list = arrayList;
                }
            } else {
                OggPageHeader oggPageHeader4 = OggPageHeader.read(randomAccessFile);
                List<OggPageHeader.PacketStartAndLength> packetList5 = oggPageHeader4.getPacketList();
                while (true) {
                    length3 += packetList5.get(0).getLength();
                    logger.fine("Adding:" + packetList5.get(0).getLength() + " to setup header size");
                    randomAccessFile.skipBytes(packetList5.get(0).getLength());
                    if (packetList5.size() > 1 || !oggPageHeader4.isLastPacketIncomplete()) {
                        break;
                    }
                    oggPageHeader4 = OggPageHeader.read(randomAccessFile);
                }
                logger.fine("Found end of setupheader:size:" + length3 + "finishes at:" + randomAccessFile.getFilePointer());
                if (packetList5.size() > 1) {
                    listSubList = packetList5.subList(1, packetList5.size());
                    i = length3;
                    list = listSubList;
                    j3 = filePointer4;
                } else {
                    i = length3;
                    j3 = filePointer4;
                    list = arrayList;
                }
            }
        }
        randomAccessFile.seek(j);
        return new OggVorbisHeaderSizes(j2, j3, length, i, list);
    }

    public int readOggVorbisRawSize(RandomAccessFile randomAccessFile) throws CannotReadException, IOException {
        return readRawPacketData(randomAccessFile).length + 7;
    }

    public byte[] readRawPacketData(RandomAccessFile randomAccessFile) throws CannotReadException, IOException {
        logger.fine("Read 1st page");
        randomAccessFile.seek(randomAccessFile.getFilePointer() + ((long) OggPageHeader.read(randomAccessFile).getPageLength()));
        logger.fine("Read 2nd page");
        OggPageHeader oggPageHeader = OggPageHeader.read(randomAccessFile);
        byte[] bArr = new byte[7];
        randomAccessFile.read(bArr);
        if (isVorbisCommentHeader(bArr)) {
            return convertToVorbisCommentPacket(oggPageHeader, randomAccessFile);
        }
        throw new CannotReadException("Cannot find comment block (no vorbiscomment header)");
    }
}
