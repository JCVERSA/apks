package com.transsion.audiotagger.audio.asf.data;

import com.transsion.audiotagger.audio.asf.util.Utils;
import java.math.BigInteger;

public class Chunk {
    protected final BigInteger chunkLength;
    protected final GUID guid;
    protected long position;

    public Chunk(GUID guid, BigInteger bigInteger) {
        if (guid == null) {
            throw new IllegalArgumentException("GUID must not be null.");
        }
        if (bigInteger == null || bigInteger.compareTo(BigInteger.ZERO) < 0) {
            throw new IllegalArgumentException("chunkLen must not be null nor negative.");
        }
        this.guid = guid;
        this.chunkLength = bigInteger;
    }

    @Deprecated
    public long getChunckEnd() {
        return this.position + this.chunkLength.longValue();
    }

    public long getChunkEnd() {
        return this.position + this.chunkLength.longValue();
    }

    public BigInteger getChunkLength() {
        return this.chunkLength;
    }

    public GUID getGuid() {
        return this.guid;
    }

    public long getPosition() {
        return this.position;
    }

    public String prettyPrint(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("-> GUID: ");
        sb.append(GUID.getGuidDescription(this.guid));
        String str2 = Utils.LINE_SEPARATOR;
        sb.append(str2);
        sb.append(str);
        sb.append("  | : Starts at position: ");
        sb.append(getPosition());
        sb.append(str2);
        sb.append(str);
        sb.append("  | : Last byte at: ");
        sb.append(getChunkEnd() - 1);
        sb.append(str2);
        return sb.toString();
    }

    public void setPosition(long j) {
        this.position = j;
    }

    public String toString() {
        return prettyPrint("");
    }

    public Chunk(GUID guid, long j, BigInteger bigInteger) {
        if (guid == null) {
            throw new IllegalArgumentException("GUID must not be null");
        }
        if (j >= 0) {
            if (bigInteger != null && bigInteger.compareTo(BigInteger.ZERO) >= 0) {
                this.guid = guid;
                this.position = j;
                this.chunkLength = bigInteger;
                return;
            }
            throw new IllegalArgumentException("chunkLen must not be null nor negative.");
        }
        throw new IllegalArgumentException("Position of header can't be negative.");
    }
}
