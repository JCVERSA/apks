package com.transsion.audiotagger.audio.mp3;

import com.transsion.audiotagger.audio.exceptions.InvalidAudioFrameException;
import java.nio.ByteBuffer;

public class ByteArrayMP3AudioHeader extends MP3AudioHeader {
    /* JADX WARN: Code duplicated, block: B:14:0x002c A[PHI: r3
      0x002c: PHI (r3v6 boolean) = (r3v1 boolean), (r3v1 boolean), (r3v2 boolean), (r3v4 boolean) binds: [B:4:0x000f, B:19:0x002c, B:13:0x002b, B:11:0x0028] A[DONT_GENERATE, DONT_INLINE]] */
    public ByteArrayMP3AudioHeader(byte[] bArr) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        long j = 0;
        boolean zIsNextFrameValid = false;
        do {
            if (MPEGFrameHeader.isMPEGFrame(byteBufferWrap)) {
                try {
                    MPEGFrameHeader mPEGHeader = MPEGFrameHeader.parseMPEGHeader(byteBufferWrap);
                    this.mp3FrameHeader = mPEGHeader;
                    try {
                        ByteBuffer byteBufferIsXingFrame = XingFrame.isXingFrame(byteBufferWrap, mPEGHeader);
                        if (byteBufferIsXingFrame != null) {
                            try {
                                this.mp3XingFrame = XingFrame.parseXingFrame(byteBufferIsXingFrame);
                                break;
                            } catch (InvalidAudioFrameException unused) {
                            }
                        } else {
                            zIsNextFrameValid = isNextFrameValid(byteBufferWrap);
                            if (zIsNextFrameValid) {
                                break;
                            }
                            byteBufferWrap.position(byteBufferWrap.position() + 1);
                            j++;
                        }
                    } catch (InvalidAudioFrameException unused2) {
                        zIsNextFrameValid = true;
                    }
                } catch (InvalidAudioFrameException unused3) {
                }
            } else {
                byteBufferWrap.position(byteBufferWrap.position() + 1);
                j++;
            }
        } while (!zIsNextFrameValid);
        setFileSize(bArr.length);
        setMp3StartByte(j);
        setTimePerFrame();
        setNumberOfFrames();
        setTrackLength();
        setBitRate();
        setEncoder();
    }

    private boolean isNextFrameValid(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        byteBuffer.position(byteBuffer.position() + this.mp3FrameHeader.getFrameLength());
        boolean z = false;
        if (MPEGFrameHeader.isMPEGFrame(byteBuffer)) {
            try {
                MPEGFrameHeader.parseMPEGHeader(byteBuffer);
                MP3AudioHeader.logger.finer("Check next frame confirms is an audio header ");
                z = true;
            } catch (InvalidAudioFrameException unused) {
                MP3AudioHeader.logger.finer("Check next frame has identified this is not an audio header");
            }
        }
        byteBuffer.position(iPosition);
        return z;
    }
}
