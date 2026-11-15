.class public Lcom/hunantv/media/player/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/hunantv/media/player/libnative/FFmpegApi;->remove_dns_cache(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/hunantv/media/player/libnative/FFmpegApi;->get_dns_cache_ip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
