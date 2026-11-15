package com.transsion.audiotagger.audio.asf.data;

import com.transsion.audiotagger.audio.asf.util.Utils;
import java.math.BigInteger;
import java.util.Date;

public class FileHeader extends Chunk {
    private final BigInteger duration;
    private final Date fileCreationTime;
    private final BigInteger fileSize;
    private final long flags;
    private final long maxPackageSize;
    private final long minPackageSize;
    private final BigInteger packageCount;
    private final BigInteger timeEndPos;
    private final BigInteger timeStartPos;
    private final long uncompressedFrameSize;

    public FileHeader(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, BigInteger bigInteger6, BigInteger bigInteger7, long j, long j2, long j3, long j4) {
        super(GUID.GUID_FILE, bigInteger);
        this.fileSize = bigInteger2;
        this.packageCount = bigInteger4;
        this.duration = bigInteger5;
        this.timeStartPos = bigInteger6;
        this.timeEndPos = bigInteger7;
        this.flags = j;
        this.minPackageSize = j2;
        this.maxPackageSize = j3;
        this.uncompressedFrameSize = j4;
        this.fileCreationTime = Utils.getDateOf(bigInteger3).getTime();
    }

    public BigInteger getDuration() {
        return this.duration;
    }

    public int getDurationInSeconds() {
        return this.duration.divide(new BigInteger("10000000")).intValue();
    }

    public Date getFileCreationTime() {
        return new Date(this.fileCreationTime.getTime());
    }

    public BigInteger getFileSize() {
        return this.fileSize;
    }

    public long getFlags() {
        return this.flags;
    }

    public long getMaxPackageSize() {
        return this.maxPackageSize;
    }

    public long getMinPackageSize() {
        return this.minPackageSize;
    }

    public BigInteger getPackageCount() {
        return this.packageCount;
    }

    public float getPreciseDuration() {
        return (float) (getDuration().doubleValue() / 1.0E7d);
    }

    public BigInteger getTimeEndPos() {
        return this.timeEndPos;
    }

    public BigInteger getTimeStartPos() {
        return this.timeStartPos;
    }

    public long getUncompressedFrameSize() {
        return this.uncompressedFrameSize;
    }

    @Override
    public String prettyPrint(String str) {
        StringBuilder sb = new StringBuilder(super.prettyPrint(str));
        sb.append(str);
        sb.append("  |-> Filesize      = ");
        sb.append(getFileSize().toString());
        sb.append(" Bytes");
        String str2 = Utils.LINE_SEPARATOR;
        sb.append(str2);
        sb.append(str);
        sb.append("  |-> Media duration= ");
        sb.append(getDuration().divide(new BigInteger("10000")).toString());
        sb.append(" ms");
        sb.append(str2);
        sb.append(str);
        sb.append("  |-> Created at    = ");
        sb.append(getFileCreationTime());
        sb.append(str2);
        return sb.toString();
    }
}
