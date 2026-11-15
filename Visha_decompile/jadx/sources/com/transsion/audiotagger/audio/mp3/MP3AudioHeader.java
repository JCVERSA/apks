package com.transsion.audiotagger.audio.mp3;

import com.transsion.audiotagger.audio.AudioHeader;
import com.transsion.audiotagger.audio.exceptions.InvalidAudioFrameException;
import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.logging.Hex;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MP3AudioHeader implements AudioHeader {
    private static final int CONVERTS_BYTE_TO_BITS = 8;
    private static final int CONVERT_TO_KILOBITS = 1000;
    private static final int FILE_BUFFER_SIZE = 5000;
    private static final char IS_VBR_IDENTIFIER = '~';
    private static final int MIN_BUFFER_REMAINING_REQUIRED = 196;
    private static final int NO_SECONDS_IN_HOUR = 3600;
    private static final String TYPE_MP3 = "mp3";
    public static Logger logger;
    private static final SimpleDateFormat timeInFormat;
    private static final SimpleDateFormat timeOutFormat;
    private static final SimpleDateFormat timeOutOverAnHourFormat;
    private Long audioDataEndPosition;
    private Long audioDataStartPosition;
    private long bitrate;
    private String encoder = "";
    private long fileSize;
    protected MPEGFrameHeader mp3FrameHeader;
    protected VbriFrame mp3VbriFrame;
    protected XingFrame mp3XingFrame;
    private long numberOfFrames;
    private long numberOfFramesEstimate;
    private long startByte;
    private double timePerFrame;
    private double trackLength;

    static {
        Locale locale = Locale.UK;
        timeInFormat = new SimpleDateFormat("ss", locale);
        timeOutFormat = new SimpleDateFormat("mm:ss", locale);
        timeOutOverAnHourFormat = new SimpleDateFormat("kk:mm:ss", locale);
        logger = Logger.getLogger("com.transsion.audiotagger.audio.mp3");
    }

    public MP3AudioHeader() {
    }

    private double getTimePerFrame() {
        return this.timePerFrame;
    }

    private boolean isNextFrameValid(File file, long j, ByteBuffer byteBuffer, FileChannel fileChannel) throws IOException {
        if (logger.isLoggable(Level.FINEST)) {
            logger.finer("Checking next frame" + file.getName() + ":fpc:" + j + "skipping to:" + (((long) this.mp3FrameHeader.getFrameLength()) + j));
        }
        int iPosition = byteBuffer.position();
        boolean z = false;
        if (this.mp3FrameHeader.getFrameLength() > 4804) {
            logger.finer("Frame size is too large to be a frame:" + this.mp3FrameHeader.getFrameLength());
            return false;
        }
        if (byteBuffer.remaining() <= this.mp3FrameHeader.getFrameLength() + 196) {
            logger.finer("Buffer too small, need to reload, buffer size:" + byteBuffer.remaining());
            byteBuffer.clear();
            fileChannel.position(j);
            fileChannel.read(byteBuffer, fileChannel.position());
            byteBuffer.flip();
            if (byteBuffer.limit() <= 196) {
                logger.finer("Nearly at end of file, no header found:");
                return false;
            }
            if (byteBuffer.limit() <= this.mp3FrameHeader.getFrameLength() + 196) {
                logger.finer("Nearly at end of file, no room for next frame, no header found:");
                return false;
            }
            iPosition = 0;
        }
        byteBuffer.position(byteBuffer.position() + this.mp3FrameHeader.getFrameLength());
        if (MPEGFrameHeader.isMPEGFrame(byteBuffer)) {
            try {
                MPEGFrameHeader.parseMPEGHeader(byteBuffer);
                logger.finer("Check next frame confirms is an audio header ");
                z = true;
            } catch (InvalidAudioFrameException unused) {
                logger.finer("Check next frame has identified this is not an audio header");
            }
        } else {
            logger.finer("isMPEGFrame has identified this is not an audio header");
        }
        byteBuffer.position(iPosition);
        return z;
    }

    @Override
    public Long getAudioDataEndPosition() {
        return this.audioDataEndPosition;
    }

    @Override
    public Long getAudioDataLength() {
        return 0L;
    }

    @Override
    public Long getAudioDataStartPosition() {
        return this.audioDataStartPosition;
    }

    @Override
    public String getBitRate() {
        XingFrame xingFrame = this.mp3XingFrame;
        if (xingFrame != null && xingFrame.isVbr()) {
            return IS_VBR_IDENTIFIER + String.valueOf(this.bitrate);
        }
        if (this.mp3VbriFrame == null) {
            return String.valueOf(this.bitrate);
        }
        return IS_VBR_IDENTIFIER + String.valueOf(this.bitrate);
    }

    @Override
    public long getBitRateAsNumber() {
        return this.bitrate;
    }

    @Override
    public int getBitsPerSample() {
        return 16;
    }

    @Override
    public Integer getByteRate() {
        return null;
    }

    @Override
    public String getChannels() {
        return this.mp3FrameHeader.getChannelModeAsString();
    }

    public String getEmphasis() {
        return this.mp3FrameHeader.getEmphasisAsString();
    }

    public String getEncoder() {
        return this.encoder;
    }

    @Override
    public String getEncodingType() {
        return TYPE_MP3;
    }

    @Override
    public String getFormat() {
        return this.mp3FrameHeader.getVersionAsString() + " " + this.mp3FrameHeader.getLayerAsString();
    }

    public long getMp3StartByte() {
        return this.startByte;
    }

    public String getMpegLayer() {
        return this.mp3FrameHeader.getLayerAsString();
    }

    public String getMpegVersion() {
        return this.mp3FrameHeader.getVersionAsString();
    }

    @Override
    public Long getNoOfSamples() {
        return Long.valueOf(this.numberOfFrames);
    }

    public long getNumberOfFrames() {
        return this.numberOfFrames;
    }

    public long getNumberOfFramesEstimate() {
        return this.numberOfFramesEstimate;
    }

    @Override
    public double getPreciseTrackLength() {
        return this.trackLength;
    }

    @Override
    public String getSampleRate() {
        return String.valueOf(this.mp3FrameHeader.getSamplingRate());
    }

    @Override
    public int getSampleRateAsNumber() {
        return this.mp3FrameHeader.getSamplingRate().intValue();
    }

    @Override
    public int getTrackLength() {
        return (int) getPreciseTrackLength();
    }

    public String getTrackLengthAsString() {
        Date date;
        String str;
        String str2;
        try {
            long trackLength = getTrackLength();
            SimpleDateFormat simpleDateFormat = timeInFormat;
            synchronized (simpleDateFormat) {
                date = simpleDateFormat.parse(String.valueOf(trackLength));
            }
            if (trackLength < 3600) {
                SimpleDateFormat simpleDateFormat2 = timeOutFormat;
                synchronized (simpleDateFormat2) {
                    str2 = simpleDateFormat2.format(date);
                }
                return str2;
            }
            SimpleDateFormat simpleDateFormat3 = timeOutOverAnHourFormat;
            synchronized (simpleDateFormat3) {
                str = simpleDateFormat3.format(date);
            }
            return str;
        } catch (ParseException e) {
            logger.warning("Unable to parse:" + getPreciseTrackLength() + " failed with ParseException:" + e.getMessage());
            return "";
        }
        logger.warning("Unable to parse:" + getPreciseTrackLength() + " failed with ParseException:" + e.getMessage());
        return "";
    }

    public boolean isCopyrighted() {
        return this.mp3FrameHeader.isCopyrighted();
    }

    @Override
    public boolean isLossless() {
        return false;
    }

    public boolean isOriginal() {
        return this.mp3FrameHeader.isOriginal();
    }

    public boolean isPadding() {
        return this.mp3FrameHeader.isPadding();
    }

    public boolean isPrivate() {
        return this.mp3FrameHeader.isPrivate();
    }

    public boolean isProtected() {
        return this.mp3FrameHeader.isProtected();
    }

    @Override
    public boolean isVariableBitRate() {
        XingFrame xingFrame = this.mp3XingFrame;
        if (xingFrame != null) {
            return xingFrame.isVbr();
        }
        VbriFrame vbriFrame = this.mp3VbriFrame;
        return vbriFrame != null ? vbriFrame.isVbr() : this.mp3FrameHeader.isVariableBitRate();
    }

    /* JADX WARN: Code duplicated, block: B:119:0x00ce A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:120:? A[LOOP:0: B:107:0x0022->B:120:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x00d0 A[Catch: all -> 0x0053, PHI: r1
      0x00d0: PHI (r1v21 boolean) = (r1v13 boolean), (r1v13 boolean), (r1v14 boolean), (r1v19 boolean) binds: [B:28:0x005c, B:92:0x00d0, B:39:0x009a, B:51:0x00cc] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #9 {all -> 0x0053, blocks: (B:11:0x0022, B:13:0x002a, B:26:0x0057, B:29:0x005e, B:31:0x0068, B:32:0x007e, B:33:0x0084, B:35:0x008a, B:37:0x0092, B:40:0x009c, B:42:0x00a3, B:44:0x00ab, B:46:0x00b3, B:47:0x00ba, B:50:0x00c8, B:53:0x00d0), top: B:107:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x0128  */
    /* JADX WARN: Instruction removed from duplicated block: B:88:0x0128, please report this as an issue */
    public boolean seek(File file, long j) throws Throwable {
        Throwable th;
        Throwable th2;
        long j2;
        boolean z = false;
        long j3 = 0;
        try {
            try {
                try {
                    FileInputStream fileInputStream = new FileInputStream(file);
                    try {
                        FileChannel channel = fileInputStream.getChannel();
                        try {
                            try {
                                ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(5000);
                                channel.position(j);
                                try {
                                    channel.read(byteBufferAllocateDirect, j);
                                    byteBufferAllocateDirect.flip();
                                    j2 = j;
                                    boolean zIsNextFrameValid = false;
                                    while (true) {
                                        try {
                                            if (byteBufferAllocateDirect.remaining() <= 196) {
                                                byteBufferAllocateDirect.clear();
                                                channel.position(j2);
                                                channel.read(byteBufferAllocateDirect, channel.position());
                                                byteBufferAllocateDirect.flip();
                                                if (byteBufferAllocateDirect.limit() <= 196) {
                                                    channel.close();
                                                    try {
                                                        fileInputStream.close();
                                                        return false;
                                                    } catch (EOFException e) {
                                                        e = e;
                                                        j3 = j2;
                                                        logger.log(Level.WARNING, "Reached end of file without finding sync match", (Throwable) e);
                                                        if (logger.isLoggable(Level.FINEST)) {
                                                            logger.finer("Return found matching mp3 header starting at" + j3);
                                                        }
                                                        setFileSize(file.length());
                                                        setMp3StartByte(j3);
                                                        setTimePerFrame();
                                                        setNumberOfFrames();
                                                        setTrackLength();
                                                        setBitRate();
                                                        setEncoder();
                                                        return z;
                                                    }
                                                }
                                            }
                                            boolean z2 = true;
                                            if (MPEGFrameHeader.isMPEGFrame(byteBufferAllocateDirect)) {
                                                try {
                                                    Logger logger2 = logger;
                                                    Level level = Level.FINEST;
                                                    if (logger2.isLoggable(level)) {
                                                        logger.finest("Found Possible header at:" + j2);
                                                    }
                                                    MPEGFrameHeader mPEGHeader = MPEGFrameHeader.parseMPEGHeader(byteBufferAllocateDirect);
                                                    this.mp3FrameHeader = mPEGHeader;
                                                    try {
                                                        ByteBuffer byteBufferIsXingFrame = XingFrame.isXingFrame(byteBufferAllocateDirect, mPEGHeader);
                                                        try {
                                                            if (byteBufferIsXingFrame != null) {
                                                                if (logger.isLoggable(level)) {
                                                                    logger.finest("Found Possible XingHeader");
                                                                }
                                                                this.mp3XingFrame = XingFrame.parseXingFrame(byteBufferIsXingFrame);
                                                            } else {
                                                                ByteBuffer byteBufferIsVbriFrame = VbriFrame.isVbriFrame(byteBufferAllocateDirect, this.mp3FrameHeader);
                                                                if (byteBufferIsVbriFrame != null) {
                                                                    if (logger.isLoggable(level)) {
                                                                        logger.finest("Found Possible VbriHeader");
                                                                    }
                                                                    this.mp3VbriFrame = VbriFrame.parseVBRIFrame(byteBufferIsVbriFrame);
                                                                } else {
                                                                    zIsNextFrameValid = isNextFrameValid(file, j2, byteBufferAllocateDirect, channel);
                                                                    if (!zIsNextFrameValid) {
                                                                        byteBufferAllocateDirect.position(byteBufferAllocateDirect.position() + 1);
                                                                        j2++;
                                                                        if (zIsNextFrameValid) {
                                                                        }
                                                                    }
                                                                    z2 = zIsNextFrameValid;
                                                                }
                                                            }
                                                        } catch (InvalidAudioFrameException unused) {
                                                        }
                                                    } catch (InvalidAudioFrameException unused2) {
                                                        zIsNextFrameValid = true;
                                                    }
                                                } catch (InvalidAudioFrameException unused3) {
                                                }
                                            } else {
                                                byteBufferAllocateDirect.position(byteBufferAllocateDirect.position() + 1);
                                                j2++;
                                                if (zIsNextFrameValid) {
                                                    z2 = zIsNextFrameValid;
                                                }
                                            }
                                            j3 = j2;
                                            channel.close();
                                            fileInputStream.close();
                                            z = z2;
                                            if (logger.isLoggable(Level.FINEST)) {
                                                logger.finer("Return found matching mp3 header starting at" + j3);
                                            }
                                            setFileSize(file.length());
                                            setMp3StartByte(j3);
                                            setTimePerFrame();
                                            setNumberOfFrames();
                                            setTrackLength();
                                            setBitRate();
                                            setEncoder();
                                            return z;
                                        } catch (Throwable th3) {
                                            th = th3;
                                            th2 = th;
                                            if (channel == null) {
                                                throw th2;
                                            }
                                            try {
                                                channel.close();
                                                throw th2;
                                            } catch (Throwable th4) {
                                                th2.addSuppressed(th4);
                                                throw th2;
                                            }
                                        }
                                    }
                                } catch (Throwable th5) {
                                    th = th5;
                                    j2 = j;
                                }
                            } catch (Throwable th6) {
                                th = th6;
                                try {
                                    fileInputStream.close();
                                    throw th;
                                } catch (Throwable th7) {
                                    th.addSuppressed(th7);
                                    throw th;
                                }
                            }
                        } catch (Throwable th8) {
                            th2 = th8;
                            j2 = 0;
                        }
                    } catch (Throwable th9) {
                        th = th9;
                    }
                } catch (EOFException e2) {
                    e = e2;
                }
            } catch (IOException e3) {
                logger.log(Level.SEVERE, "IOException occurred whilst trying to find sync", (Throwable) e3);
                throw e3;
            }
        } catch (EOFException e4) {
            e = e4;
        }
    }

    public void setAudioDataEndPosition(Long l) {
        this.audioDataEndPosition = l;
    }

    public void setAudioDataStartPosition(Long l) {
        this.audioDataStartPosition = l;
    }

    public void setBitRate() {
        XingFrame xingFrame = this.mp3XingFrame;
        if (xingFrame != null && xingFrame.isVbr()) {
            if (!this.mp3XingFrame.isAudioSizeEnabled() || this.mp3XingFrame.getAudioSize() <= 0) {
                this.bitrate = (long) (((this.fileSize - this.startByte) * 8) / ((this.timePerFrame * getNumberOfFrames()) * 1000.0d));
                return;
            } else {
                this.bitrate = (long) (((double) (this.mp3XingFrame.getAudioSize() * 8)) / ((this.timePerFrame * getNumberOfFrames()) * 1000.0d));
                return;
            }
        }
        VbriFrame vbriFrame = this.mp3VbriFrame;
        if (vbriFrame == null) {
            this.bitrate = this.mp3FrameHeader.getBitRate().intValue();
        } else if (vbriFrame.getAudioSize() > 0) {
            this.bitrate = (long) (((double) (this.mp3VbriFrame.getAudioSize() * 8)) / ((this.timePerFrame * getNumberOfFrames()) * 1000.0d));
        } else {
            this.bitrate = (long) (((this.fileSize - this.startByte) * 8) / ((this.timePerFrame * getNumberOfFrames()) * 1000.0d));
        }
    }

    public void setEncoder() {
        XingFrame xingFrame = this.mp3XingFrame;
        if (xingFrame != null) {
            if (xingFrame.getLameFrame() != null) {
                this.encoder = this.mp3XingFrame.getLameFrame().getEncoder();
            }
        } else {
            VbriFrame vbriFrame = this.mp3VbriFrame;
            if (vbriFrame != null) {
                this.encoder = vbriFrame.getEncoder();
            }
        }
    }

    public void setFileSize(long j) {
        this.fileSize = j;
    }

    public void setMp3StartByte(long j) {
        this.startByte = j;
    }

    public void setNumberOfFrames() {
        this.numberOfFramesEstimate = (this.fileSize - this.startByte) / ((long) this.mp3FrameHeader.getFrameLength());
        XingFrame xingFrame = this.mp3XingFrame;
        if (xingFrame != null && xingFrame.isFrameCountEnabled()) {
            this.numberOfFrames = this.mp3XingFrame.getFrameCount();
            return;
        }
        VbriFrame vbriFrame = this.mp3VbriFrame;
        if (vbriFrame != null) {
            this.numberOfFrames = vbriFrame.getFrameCount();
        } else {
            this.numberOfFrames = this.numberOfFramesEstimate;
        }
    }

    public void setTimePerFrame() {
        this.timePerFrame = ((double) this.mp3FrameHeader.getNoOfSamples()) / this.mp3FrameHeader.getSamplingRate().doubleValue();
        if (this.mp3FrameHeader.getVersion() == 2 || this.mp3FrameHeader.getVersion() == 0) {
            if ((this.mp3FrameHeader.getLayer() == 2 || this.mp3FrameHeader.getLayer() == 1) && this.mp3FrameHeader.getNumberOfChannels() == 1) {
                this.timePerFrame /= 2.0d;
            }
        }
    }

    public void setTrackLength() {
        this.trackLength = this.numberOfFrames * getTimePerFrame();
    }

    public String toString() {
        String str;
        String str2;
        String str3 = "fileSize:" + this.fileSize + " encoder:" + this.encoder + " startByte:" + Hex.asHex(this.startByte) + " numberOfFrames:" + this.numberOfFrames + " numberOfFramesEst:" + this.numberOfFramesEstimate + " timePerFrame:" + this.timePerFrame + " bitrate:" + this.bitrate + " trackLength:" + getTrackLengthAsString();
        if (this.mp3FrameHeader != null) {
            str = str3 + this.mp3FrameHeader.toString();
        } else {
            str = str3 + " mpegframeheader:false";
        }
        if (this.mp3XingFrame != null) {
            str2 = str + this.mp3XingFrame.toString();
        } else {
            str2 = str + " mp3XingFrame:false";
        }
        if (this.mp3VbriFrame != null) {
            return str2 + this.mp3VbriFrame.toString();
        }
        return str2 + " mp3VbriFrame:false";
    }

    public MP3AudioHeader(File file) throws InvalidAudioFrameException, IOException {
        if (seek(file, 0L)) {
            return;
        }
        throw new InvalidAudioFrameException("No audio header found within" + file.getName());
    }

    public MP3AudioHeader(File file, long j) throws InvalidAudioFrameException, IOException {
        if (!seek(file, j)) {
            throw new InvalidAudioFrameException(ErrorMessage.NO_AUDIO_HEADER_FOUND.getMsg(file.getName()));
        }
    }
}
