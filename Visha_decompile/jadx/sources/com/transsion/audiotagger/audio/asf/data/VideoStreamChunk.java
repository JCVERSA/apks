package com.transsion.audiotagger.audio.asf.data;

import com.transsion.audiotagger.audio.asf.util.Utils;
import java.math.BigInteger;

public class VideoStreamChunk extends StreamChunk {
    private byte[] codecId;
    private long pictureHeight;
    private long pictureWidth;

    public VideoStreamChunk(BigInteger bigInteger) {
        super(GUID.GUID_VIDEOSTREAM, bigInteger);
        this.codecId = new byte[0];
    }

    public byte[] getCodecId() {
        return (byte[]) this.codecId.clone();
    }

    public String getCodecIdAsString() {
        return this.codecId == null ? "Unknown" : new String(getCodecId());
    }

    public long getPictureHeight() {
        return this.pictureHeight;
    }

    public long getPictureWidth() {
        return this.pictureWidth;
    }

    @Override
    public String prettyPrint(String str) {
        StringBuilder sb = new StringBuilder(super.prettyPrint(str));
        StringBuilder sb2 = new StringBuilder();
        String str2 = Utils.LINE_SEPARATOR;
        sb2.append(str2);
        sb2.append(str);
        sb2.append("|->VideoStream");
        sb.insert(0, sb2.toString());
        sb.append(str);
        sb.append("Video info:");
        sb.append(str2);
        sb.append(str);
        sb.append("      |->Width  : ");
        sb.append(getPictureWidth());
        sb.append(str2);
        sb.append(str);
        sb.append("      |->Heigth : ");
        sb.append(getPictureHeight());
        sb.append(str2);
        sb.append(str);
        sb.append("      |->Codec  : ");
        sb.append(getCodecIdAsString());
        sb.append(str2);
        return sb.toString();
    }

    public void setCodecId(byte[] bArr) {
        this.codecId = (byte[]) bArr.clone();
    }

    public void setPictureHeight(long j) {
        this.pictureHeight = j;
    }

    public void setPictureWidth(long j) {
        this.pictureWidth = j;
    }
}
