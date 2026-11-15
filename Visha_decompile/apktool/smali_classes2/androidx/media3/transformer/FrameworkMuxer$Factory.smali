.class public final Landroidx/media3/transformer/FrameworkMuxer$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/Muxer$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/FrameworkMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private videoDurationUs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/transformer/FrameworkMuxer$Factory;->videoDurationUs:J

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Landroidx/media3/transformer/FrameworkMuxer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    .line 2
    :try_start_0
    new-instance v0, Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    new-instance p1, Landroidx/media3/transformer/FrameworkMuxer;

    iget-wide v1, p0, Landroidx/media3/transformer/FrameworkMuxer$Factory;->videoDurationUs:J

    const/4 p0, 0x0

    invoke-direct {p1, v0, v1, v2, p0}, Landroidx/media3/transformer/FrameworkMuxer;-><init>(Landroid/media/MediaMuxer;JLandroidx/media3/transformer/FrameworkMuxer$1;)V

    return-object p1

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Landroidx/media3/muxer/MuxerException;

    const-string v0, "Error creating muxer"

    invoke-direct {p1, v0, p0}, Landroidx/media3/muxer/MuxerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic create(Ljava/lang/String;)Landroidx/media3/transformer/Muxer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/transformer/FrameworkMuxer$Factory;->create(Ljava/lang/String;)Landroidx/media3/transformer/FrameworkMuxer;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedSampleMimeTypes(I)Lcom/google/common/collect/ImmutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    invoke-static {}, Landroidx/media3/transformer/FrameworkMuxer;->access$100()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x1

    if-ne p1, p0, :cond_1

    invoke-static {}, Landroidx/media3/transformer/FrameworkMuxer;->access$200()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public setVideoDurationUs(J)Landroidx/media3/transformer/FrameworkMuxer$Factory;
    .locals 0

    iput-wide p1, p0, Landroidx/media3/transformer/FrameworkMuxer$Factory;->videoDurationUs:J

    return-object p0
.end method
