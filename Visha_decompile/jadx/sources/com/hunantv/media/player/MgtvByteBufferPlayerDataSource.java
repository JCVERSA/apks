package com.hunantv.media.player;

import com.transsion.videodownloader.model.Video;
import java.util.HashMap;
import java.util.Map;

public class MgtvByteBufferPlayerDataSource extends MgtvPlayerDataSource {
    private Map<String, byte[]> mBufferMap = new HashMap();
    private byte[] mM3u8;
    private String mM3u8Path;
    private Map<String, byte[]> mSegments;

    public MgtvByteBufferPlayerDataSource(byte[] bArr) {
        this.mM3u8 = bArr;
        init();
    }

    private void fillMap() {
        this.mBufferMap.put(this.mM3u8Path, this.mM3u8);
        Map<String, byte[]> map = this.mSegments;
        if (map != null) {
            for (Map.Entry<String, byte[]> entry : map.entrySet()) {
                this.mBufferMap.put(entry.getKey(), entry.getValue());
            }
        }
    }

    private void genData() {
        this.mM3u8Path = "iobuff://" + hashCode() + Video.SUFFIX.SUFFIX_M3U8;
    }

    private void init() {
        genData();
        fillMap();
    }

    public Map<String, byte[]> getBufferMap() {
        return this.mBufferMap;
    }

    @Override
    public String getPath() {
        return this.mM3u8Path;
    }

    public MgtvByteBufferPlayerDataSource(byte[] bArr, Map<String, byte[]> map) {
        this.mM3u8 = bArr;
        this.mSegments = map;
        init();
    }
}
