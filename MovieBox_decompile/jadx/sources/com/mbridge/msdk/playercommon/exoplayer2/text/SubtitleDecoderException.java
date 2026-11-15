package com.mbridge.msdk.playercommon.exoplayer2.text;

public class SubtitleDecoderException extends Exception {
    public SubtitleDecoderException(String str) {
        super(str);
    }

    public SubtitleDecoderException(String str, Throwable th2) {
        super(str, th2);
    }
}
