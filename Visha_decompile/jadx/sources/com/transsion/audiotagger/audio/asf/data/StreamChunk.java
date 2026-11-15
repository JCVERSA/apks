package com.transsion.audiotagger.audio.asf.data;

import com.transsion.audiotagger.audio.asf.util.Utils;
import java.math.BigInteger;

public abstract class StreamChunk extends Chunk {
    static final boolean $assertionsDisabled = false;
    private boolean contentEncrypted;
    private int streamNumber;
    private long streamSpecificDataSize;
    private long timeOffset;
    private final GUID type;
    private long typeSpecificDataSize;

    public StreamChunk(GUID guid, BigInteger bigInteger) {
        super(GUID.GUID_STREAM, bigInteger);
        this.type = guid;
    }

    public int getStreamNumber() {
        return this.streamNumber;
    }

    public long getStreamSpecificDataSize() {
        return this.streamSpecificDataSize;
    }

    public GUID getStreamType() {
        return this.type;
    }

    public long getTimeOffset() {
        return this.timeOffset;
    }

    public long getTypeSpecificDataSize() {
        return this.typeSpecificDataSize;
    }

    public boolean isContentEncrypted() {
        return this.contentEncrypted;
    }

    @Override
    public String prettyPrint(String str) {
        StringBuilder sb = new StringBuilder(super.prettyPrint(str));
        sb.append(str);
        sb.append("  |-> Stream number: ");
        sb.append(getStreamNumber());
        String str2 = Utils.LINE_SEPARATOR;
        sb.append(str2);
        sb.append(str);
        sb.append("  |-> Type specific data size  : ");
        sb.append(getTypeSpecificDataSize());
        sb.append(str2);
        sb.append(str);
        sb.append("  |-> Stream specific data size: ");
        sb.append(getStreamSpecificDataSize());
        sb.append(str2);
        sb.append(str);
        sb.append("  |-> Time Offset              : ");
        sb.append(getTimeOffset());
        sb.append(str2);
        sb.append(str);
        sb.append("  |-> Content Encryption       : ");
        sb.append(isContentEncrypted());
        sb.append(str2);
        return sb.toString();
    }

    public void setContentEncrypted(boolean z) {
        this.contentEncrypted = z;
    }

    public void setStreamNumber(int i) {
        this.streamNumber = i;
    }

    public void setStreamSpecificDataSize(long j) {
        this.streamSpecificDataSize = j;
    }

    public void setTimeOffset(long j) {
        this.timeOffset = j;
    }

    public void setTypeSpecificDataSize(long j) {
        this.typeSpecificDataSize = j;
    }
}
