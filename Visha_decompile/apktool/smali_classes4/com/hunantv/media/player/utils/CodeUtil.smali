.class public Lcom/hunantv/media/player/utils/CodeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isHttp403(II)Z
    .locals 2

    const v0, 0x61c13

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0, p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->isP2pDirectHttp403(II)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isHttp410(II)Z
    .locals 2

    const v0, 0x61c1a

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0, p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->isP2pDirectHttp410(II)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isHttp4XX(II)Z
    .locals 2

    const v0, 0x61c10

    const/4 v1, 0x1

    if-lt p0, v0, :cond_0

    const v0, 0x61c73

    if-gt p0, v0, :cond_0

    return v1

    :cond_0
    const v0, 0x49570

    if-lt p1, v0, :cond_1

    const v0, 0x495d3

    if-le p1, v0, :cond_2

    :cond_1
    const v0, 0x49958

    if-lt p1, v0, :cond_3

    const v0, 0x499bb

    if-gt p1, v0, :cond_3

    :cond_2
    return v1

    :cond_3
    invoke-static {p0, p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->isP2pDirectHttp4XX(II)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static isHttp5XX(II)Z
    .locals 2

    const v0, 0x61c74

    const/4 v1, 0x1

    if-lt p0, v0, :cond_0

    const v0, 0x61cd7

    if-gt p0, v0, :cond_0

    return v1

    :cond_0
    const v0, 0x495d4

    if-lt p1, v0, :cond_1

    const v0, 0x49637

    if-le p1, v0, :cond_2

    :cond_1
    const v0, 0x499bc

    if-lt p1, v0, :cond_3

    const v0, 0x49a1f

    if-gt p1, v0, :cond_3

    :cond_2
    return v1

    :cond_3
    invoke-static {p0, p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->isP2pDirectHttp5XX(II)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
