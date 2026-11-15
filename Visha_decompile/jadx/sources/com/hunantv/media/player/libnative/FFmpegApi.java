package com.hunantv.media.player.libnative;

public class FFmpegApi {
    public static native String av_base64_encode(byte[] bArr);

    public static native boolean fftool_is_supported();

    public static native int fftool_process(String[] strArr);

    public static native int fftool_process_interrupt();

    public static native String get_dns_cache_ip(String str);

    public static native int remove_all_dns_cache();

    public static native int remove_dns_cache(String str);

    public static native int update_dns_cache(String str, String str2, int i);
}
