.class public Lcom/hunantv/media/player/libnative/FFmpegApi;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native av_base64_encode([B)Ljava/lang/String;
.end method

.method public static native fftool_is_supported()Z
.end method

.method public static native fftool_process([Ljava/lang/String;)I
.end method

.method public static native fftool_process_interrupt()I
.end method

.method public static native get_dns_cache_ip(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native remove_all_dns_cache()I
.end method

.method public static native remove_dns_cache(Ljava/lang/String;)I
.end method

.method public static native update_dns_cache(Ljava/lang/String;Ljava/lang/String;I)I
.end method
