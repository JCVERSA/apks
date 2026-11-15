.class public final Landroidx/media3/transformer/InAppMp4Muxer$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/Muxer$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/InAppMp4Muxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final metadataProvider:Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private videoDurationUs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/media3/transformer/InAppMp4Muxer$Factory;-><init>(Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;)V
    .locals 2
    .param p1    # Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/media3/transformer/InAppMp4Muxer$Factory;->metadataProvider:Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Landroidx/media3/transformer/InAppMp4Muxer$Factory;->videoDurationUs:J

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Landroidx/media3/transformer/InAppMp4Muxer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    new-instance p1, Landroidx/media3/muxer/Mp4Muxer$Builder;

    invoke-direct {p1, v0}, Landroidx/media3/muxer/Mp4Muxer$Builder;-><init>(Ljava/io/FileOutputStream;)V

    .line 4
    invoke-virtual {p1}, Landroidx/media3/muxer/Mp4Muxer$Builder;->build()Landroidx/media3/muxer/Mp4Muxer;

    move-result-object v2

    .line 5
    new-instance p1, Landroidx/media3/transformer/InAppMp4Muxer;

    iget-object v3, p0, Landroidx/media3/transformer/InAppMp4Muxer$Factory;->metadataProvider:Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;

    iget-wide v4, p0, Landroidx/media3/transformer/InAppMp4Muxer$Factory;->videoDurationUs:J

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Landroidx/media3/transformer/InAppMp4Muxer;-><init>(Landroidx/media3/muxer/Mp4Muxer;Landroidx/media3/transformer/InAppMp4Muxer$MetadataProvider;JLandroidx/media3/transformer/InAppMp4Muxer$1;)V

    return-object p1

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Landroidx/media3/muxer/MuxerException;

    const-string v0, "Error creating file output stream"

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
    invoke-virtual {p0, p1}, Landroidx/media3/transformer/InAppMp4Muxer$Factory;->create(Ljava/lang/String;)Landroidx/media3/transformer/InAppMp4Muxer;

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

    sget-object p0, Landroidx/media3/muxer/Mp4Muxer;->SUPPORTED_VIDEO_SAMPLE_MIME_TYPES:Lcom/google/common/collect/ImmutableList;

    return-object p0

    :cond_0
    const/4 p0, 0x1

    if-ne p1, p0, :cond_1

    sget-object p0, Landroidx/media3/muxer/Mp4Muxer;->SUPPORTED_AUDIO_SAMPLE_MIME_TYPES:Lcom/google/common/collect/ImmutableList;

    return-object p0

    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public setVideoDurationUs(J)Landroidx/media3/transformer/InAppMp4Muxer$Factory;
    .locals 0

    iput-wide p1, p0, Landroidx/media3/transformer/InAppMp4Muxer$Factory;->videoDurationUs:J

    return-object p0
.end method
