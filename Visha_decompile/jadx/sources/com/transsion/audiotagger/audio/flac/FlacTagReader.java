package com.transsion.audiotagger.audio.flac;

import com.transsion.audiotagger.audio.AudioFileIO;
import com.transsion.audiotagger.audio.flac.metadatablock.BlockType;
import com.transsion.audiotagger.audio.flac.metadatablock.MetadataBlockDataPicture;
import com.transsion.audiotagger.audio.flac.metadatablock.MetadataBlockHeader;
import com.transsion.audiotagger.logging.Hex;
import com.transsion.audiotagger.tag.InvalidFrameException;
import com.transsion.audiotagger.tag.flac.FlacTag;
import com.transsion.audiotagger.tag.vorbiscomment.VorbisCommentReader;
import com.transsion.audiotagger.tag.vorbiscomment.VorbisCommentTag;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class FlacTagReader {
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.flac");
    private VorbisCommentReader vorbisCommentReader = new VorbisCommentReader();

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$transsion$audiotagger$audio$flac$metadatablock$BlockType;

        static {
            int[] iArr = new int[BlockType.values().length];
            $SwitchMap$com$transsion$audiotagger$audio$flac$metadatablock$BlockType = iArr;
            try {
                iArr[BlockType.VORBIS_COMMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$flac$metadatablock$BlockType[BlockType.PICTURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public FlacTag read(File file) throws Throwable {
        Closeable closeable = null;
        VorbisCommentTag vorbisCommentTagCreateNewTag = null;
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
            try {
                FileChannel channel = randomAccessFile.getChannel();
                new FlacStreamReader(channel, file.getPath()).findStream();
                ArrayList arrayList = new ArrayList();
                boolean zIsLastBlock = false;
                while (!zIsLastBlock) {
                    Logger logger2 = logger;
                    Level level = Level.CONFIG;
                    if (logger2.isLoggable(level)) {
                        logger.config(file.getPath() + " Looking for MetaBlockHeader at:" + channel.position());
                    }
                    MetadataBlockHeader header = MetadataBlockHeader.readHeader(channel);
                    if (header == null) {
                        break;
                    }
                    if (logger.isLoggable(level)) {
                        logger.config(file.getPath() + " Reading MetadataBlockHeader:" + header.toString() + " ending at " + channel.position());
                    }
                    if (header.getBlockType() != null) {
                        int i = AnonymousClass1.$SwitchMap$com$transsion$audiotagger$audio$flac$metadatablock$BlockType[header.getBlockType().ordinal()];
                        if (i == 1) {
                            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(header.getDataLength());
                            channel.read(byteBufferAllocate);
                            vorbisCommentTagCreateNewTag = this.vorbisCommentReader.read(byteBufferAllocate.array(), false);
                        } else if (i != 2) {
                            if (logger.isLoggable(level)) {
                                logger.config(file.getPath() + "Ignoring MetadataBlock:" + header.getBlockType());
                            }
                            channel.position(channel.position() + ((long) header.getDataLength()));
                        } else {
                            try {
                                arrayList.add(new MetadataBlockDataPicture(header, channel));
                            } catch (InvalidFrameException e) {
                                logger.warning(file.getPath() + "Unable to read picture metablock, ignoring" + e.getMessage());
                            } catch (IOException e2) {
                                logger.warning(file.getPath() + "Unable to read picture metablock, ignoring:" + e2.getMessage());
                            }
                        }
                    }
                    zIsLastBlock = header.isLastBlock();
                    th = th;
                    closeable = randomAccessFile;
                    AudioFileIO.closeQuietly(closeable);
                    throw th;
                }
                logger.config("Audio should start at:" + Hex.asHex(channel.position()));
                if (vorbisCommentTagCreateNewTag == null) {
                    vorbisCommentTagCreateNewTag = VorbisCommentTag.createNewTag();
                }
                FlacTag flacTag = new FlacTag(vorbisCommentTagCreateNewTag, arrayList);
                AudioFileIO.closeQuietly(randomAccessFile);
                return flacTag;
            } catch (Throwable th) {
                th = th;
                closeable = randomAccessFile;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
