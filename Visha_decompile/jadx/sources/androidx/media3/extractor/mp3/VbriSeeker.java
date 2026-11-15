package androidx.media3.extractor.mp3;

import androidx.annotation.Nullable;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.MpegAudioUtil;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;

final class VbriSeeker implements Seeker {
    private static final String TAG = "VbriSeeker";
    private final int bitrate;
    private final long dataEndPosition;
    private final long durationUs;
    private final long[] positions;
    private final long[] timesUs;

    private VbriSeeker(long[] jArr, long[] jArr2, long j, long j2, int i) {
        this.timesUs = jArr;
        this.positions = jArr2;
        this.durationUs = j;
        this.dataEndPosition = j2;
        this.bitrate = i;
    }

    @Nullable
    public static VbriSeeker create(long j, long j2, MpegAudioUtil.Header header, ParsableByteArray parsableByteArray) {
        int unsignedByte;
        parsableByteArray.skipBytes(6);
        long jMax = j2 + ((long) header.frameSize) + ((long) parsableByteArray.readInt());
        int i = parsableByteArray.readInt();
        if (i <= 0) {
            return null;
        }
        long jSampleCountToDurationUs = Util.sampleCountToDurationUs((((long) i) * ((long) header.samplesPerFrame)) - 1, header.sampleRate);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int unsignedShort2 = parsableByteArray.readUnsignedShort();
        int unsignedShort3 = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(2);
        long j3 = j2 + ((long) header.frameSize);
        long[] jArr = new long[unsignedShort];
        long[] jArr2 = new long[unsignedShort];
        int i2 = 0;
        while (i2 < unsignedShort) {
            long j4 = jSampleCountToDurationUs;
            jArr[i2] = (((long) i2) * jSampleCountToDurationUs) / ((long) unsignedShort);
            jArr2[i2] = j3;
            if (unsignedShort3 == 1) {
                unsignedByte = parsableByteArray.readUnsignedByte();
            } else if (unsignedShort3 == 2) {
                unsignedByte = parsableByteArray.readUnsignedShort();
            } else if (unsignedShort3 == 3) {
                unsignedByte = parsableByteArray.readUnsignedInt24();
            } else {
                if (unsignedShort3 != 4) {
                    return null;
                }
                unsignedByte = parsableByteArray.readUnsignedIntToInt();
            }
            j3 += ((long) unsignedByte) * ((long) unsignedShort2);
            i2++;
            jSampleCountToDurationUs = j4;
        }
        long j5 = jSampleCountToDurationUs;
        if (j != -1 && j != jMax) {
            Log.w(TAG, "VBRI data size mismatch: " + j + ", " + jMax);
        }
        if (jMax != j3) {
            Log.w(TAG, "VBRI bytes and ToC mismatch (using max): " + jMax + ", " + j3 + "\nSeeking will be inaccurate.");
            jMax = Math.max(jMax, j3);
        }
        return new VbriSeeker(jArr, jArr2, j5, jMax, header.bitrate);
    }

    @Override
    public int getAverageBitrate() {
        return this.bitrate;
    }

    @Override
    public long getDataEndPosition() {
        return this.dataEndPosition;
    }

    @Override
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override
    public SeekMap.SeekPoints getSeekPoints(long j) {
        int iBinarySearchFloor = Util.binarySearchFloor(this.timesUs, j, true, true);
        SeekPoint seekPoint = new SeekPoint(this.timesUs[iBinarySearchFloor], this.positions[iBinarySearchFloor]);
        if (seekPoint.timeUs >= j || iBinarySearchFloor == this.timesUs.length - 1) {
            return new SeekMap.SeekPoints(seekPoint);
        }
        int i = iBinarySearchFloor + 1;
        return new SeekMap.SeekPoints(seekPoint, new SeekPoint(this.timesUs[i], this.positions[i]));
    }

    @Override
    public long getTimeUs(long j) {
        return this.timesUs[Util.binarySearchFloor(this.positions, j, true, true)];
    }

    @Override
    public boolean isSeekable() {
        return true;
    }
}
