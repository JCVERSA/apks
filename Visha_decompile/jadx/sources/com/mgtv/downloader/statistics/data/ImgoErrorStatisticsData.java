package com.mgtv.downloader.statistics.data;

import com.hunantv.imgo.util.f;
import java.net.URLEncoder;

public class ImgoErrorStatisticsData extends ImgoBaseStatisticsData {
    public static final String C_AD = "08.";
    public static final String C_AD_RESOURCE = "09.";
    public static final String C_API = "01.";
    public static final String C_CATCH_EXCEPTION = "03";
    public static final String C_DOWNLOAD = "05.";
    public static final String C_LIVE_PLAYER = "06.";
    public static final String C_LOCAL_PLAYER = "07.";
    public static final String C_PIC_DOWNLOAD = "10.";
    public static final String C_PUSH = "04.";
    public static final String C_SO_UPDATE = "11.";
    public static final String C_VOD_PLAYER = "02.";
    public static final String D_VIDEO = "05.100001";
    public String error_code;
    public String error_detail;
    public String error_time = f.a(System.currentTimeMillis());

    public static class a {
        private String a;
        private StringBuilder b;
    }

    public ImgoErrorStatisticsData(a aVar) {
        this.error_code = aVar.a;
        this.error_detail = URLEncoder.encode(aVar.b.toString());
        setData_type("error");
    }
}
