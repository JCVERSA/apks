package uz;

import com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.CacheDataSink;

public class s extends y {

    static int[] f73374a;

    static int[] f73375b;

    static int f73376c;

    static String f73377d;

    public s() {
        f73374a = new int[]{2, 0, 0, 4096, 196608, 64, 0, 0, CacheDataSink.DEFAULT_BUFFER_SIZE, 0, 0, 0, 0, 0, 0, 0, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306};
        f73375b = new int[]{285212976, 572657937, 289476898, 286593297, 8465};
        f73377d = "ISO-2022-KR";
        f73376c = 6;
    }

    @Override
    public int[] a() {
        return f73374a;
    }

    @Override
    public String b() {
        return f73377d;
    }

    @Override
    public boolean d() {
        return false;
    }

    @Override
    public int e() {
        return f73376c;
    }

    @Override
    public int[] f() {
        return f73375b;
    }
}
