package com.hunantv.media.player.datasource;

import com.hunantv.media.player.libnative.IMGTVMediaDataSource;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.utils.ByteUtil;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.IOException;
import java.util.Map;

public class b implements IMGTVMediaDataSource {
    private Map<String, byte[]> a;
    private String b = "";
    private String c;

    public b(Map<String, byte[]> map, String str) {
        this.a = map;
        this.c = str;
    }

    public String a() {
        return "ByteBuffer-" + hashCode() + "-" + this.b;
    }

    @Override
    public void close(String str) throws IOException {
    }

    @Override
    public String getDataSourceUrl() {
        return this.c;
    }

    @Override
    public long getSize(String str) throws IOException {
        DebugLog.d(a(), "getSize in url:" + str);
        byte[] bArrA = a(str);
        if (bArrA == null || bArrA.length <= 0) {
            DebugLog.e(a(), "getSize out IMGTVJS_IOBUFFER_NO_EXIST");
            return -2019071501L;
        }
        int length = bArrA.length;
        DebugLog.d(a(), "getSize out size:" + length);
        return length;
    }

    @Override
    public int getVideoSourceType() {
        return 0;
    }

    @Override
    public long readAt(String str, byte[] bArr, long j, long j2) throws IOException {
        DebugLog.d(a(), "readAt in url:" + str + StringUtils.COMMA + j + "-" + j2);
        try {
            if (ByteUtil.isEmpty(bArr)) {
                DebugLog.e(a(), "readAt params buffer empty");
                return 0L;
            }
            DebugLog.d(a(), "readAt buffer.length:" + bArr.length);
            byte[] bArrA = a(str);
            if (bArrA != null) {
                int i = (int) j;
                int length = bArrA.length - i;
                if (length <= 0) {
                    DebugLog.d(a(), "readAt IMGTVMDS_ERROR_EOF");
                    return -2018102641L;
                }
                int iMin = Math.min(length, bArr.length);
                System.arraycopy(bArrA, i, bArr, 0, iMin);
                DebugLog.d(a(), "readAt out size:" + j2);
                return iMin;
            }
            return 0L;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void release() {
    }

    @Override
    public void setInfoListener(IMGTVMediaDataSource.IInfoListener iInfoListener) {
    }

    @Override
    public void setLogTag(String str) {
        this.b = str;
    }

    private byte[] a(String str) {
        Map<String, byte[]> map = this.a;
        if (map == null || !map.containsKey(str)) {
            return null;
        }
        return this.a.get(str);
    }
}
