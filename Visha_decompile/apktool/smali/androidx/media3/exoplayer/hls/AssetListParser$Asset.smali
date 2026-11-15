.class public final Landroidx/media3/exoplayer/hls/AssetListParser$Asset;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/AssetListParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Asset"
.end annotation


# instance fields
.field public final durationUs:J

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/AssetListParser$Asset;->uri:Landroid/net/Uri;

    iput-wide p2, p0, Landroidx/media3/exoplayer/hls/AssetListParser$Asset;->durationUs:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media3/exoplayer/hls/AssetListParser$Asset;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/hls/AssetListParser$Asset;

    iget-wide v3, p0, Landroidx/media3/exoplayer/hls/AssetListParser$Asset;->durationUs:J

    iget-wide v5, p1, Landroidx/media3/exoplayer/hls/AssetListParser$Asset;->durationUs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/AssetListParser$Asset;->uri:Landroid/net/Uri;

    iget-object p1, p1, Landroidx/media3/exoplayer/hls/AssetListParser$Asset;->uri:Landroid/net/Uri;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/AssetListParser$Asset;->uri:Landroid/net/Uri;

    iget-wide v1, p0, Landroidx/media3/exoplayer/hls/AssetListParser$Asset;->durationUs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
