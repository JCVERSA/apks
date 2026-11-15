.class public final Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VariantInfo"
.end annotation


# instance fields
.field public final audioGroupId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final averageBitrate:I

.field public final captionGroupId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final peakBitrate:I

.field public final subtitleGroupId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final videoGroupId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->averageBitrate:I

    iput p2, p0, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->peakBitrate:I

    iput-object p3, p0, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->videoGroupId:Ljava/lang/String;

    iput-object p4, p0, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->audioGroupId:Ljava/lang/String;

    iput-object p5, p0, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->subtitleGroupId:Ljava/lang/String;

    iput-object p6, p0, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->captionGroupId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;

    iget v2, p0, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->averageBitrate:I

    iget v3, p1, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->averageBitrate:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->peakBitrate:I

    iget v3, p1, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->peakBitrate:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->videoGroupId:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->videoGroupId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->audioGroupId:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->audioGroupId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->subtitleGroupId:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->subtitleGroupId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->captionGroupId:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->captionGroupId:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->averageBitrate:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->peakBitrate:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->videoGroupId:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->audioGroupId:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->subtitleGroupId:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;->captionGroupId:Ljava/lang/String;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    return v0
.end method
