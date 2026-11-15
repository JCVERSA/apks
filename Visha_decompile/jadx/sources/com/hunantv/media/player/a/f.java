package com.hunantv.media.player.a;

import com.hunantv.media.player.libnative.FFmpegApi;

public class f {
    public static int a(String str) {
        return FFmpegApi.remove_dns_cache(str);
    }

    public static String b(String str) {
        return FFmpegApi.get_dns_cache_ip(str);
    }
}
