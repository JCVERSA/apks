package com.transsion.audiotagger.audio.asf.data;

import com.transsion.audiotagger.audio.asf.util.Utils;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

public class StreamBitratePropertiesChunk extends Chunk {
    private final List<Long> bitRates;
    private final List<Integer> streamNumbers;

    public StreamBitratePropertiesChunk(BigInteger bigInteger) {
        super(GUID.GUID_STREAM_BITRATE_PROPERTIES, bigInteger);
        this.bitRates = new ArrayList();
        this.streamNumbers = new ArrayList();
    }

    public void addBitrateRecord(int i, long j) {
        this.streamNumbers.add(Integer.valueOf(i));
        this.bitRates.add(Long.valueOf(j));
    }

    public long getAvgBitrate(int i) {
        int iIndexOf = this.streamNumbers.indexOf(Integer.valueOf(i));
        if (iIndexOf == -1) {
            return -1L;
        }
        return this.bitRates.get(iIndexOf).longValue();
    }

    @Override
    public String prettyPrint(String str) {
        StringBuilder sb = new StringBuilder(super.prettyPrint(str));
        for (int i = 0; i < this.bitRates.size(); i++) {
            sb.append(str);
            sb.append("  |-> Stream no. \"");
            sb.append(this.streamNumbers.get(i));
            sb.append("\" has an average bitrate of \"");
            sb.append(this.bitRates.get(i));
            sb.append('\"');
            sb.append(Utils.LINE_SEPARATOR);
        }
        return sb.toString();
    }
}
