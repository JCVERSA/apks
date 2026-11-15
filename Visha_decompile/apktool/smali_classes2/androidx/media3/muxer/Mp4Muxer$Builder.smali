.class public final Landroidx/media3/muxer/Mp4Muxer$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/muxer/Mp4Muxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private annexBToAvccConverter:Landroidx/media3/muxer/AnnexBToAvccConverter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private attemptStreamableOutputEnabled:Z

.field private lastSampleDurationBehavior:I

.field private mp4AtFileParameters:Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private outputFileFormat:I

.field private final outputStream:Ljava/io/FileOutputStream;

.field private sampleBatchingEnabled:Z

.field private sampleCopyEnabled:Z


# direct methods
.method public constructor <init>(Ljava/io/FileOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->outputStream:Ljava/io/FileOutputStream;

    const/4 p1, 0x1

    iput p1, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->lastSampleDurationBehavior:I

    iput-boolean p1, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->attemptStreamableOutputEnabled:Z

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->outputFileFormat:I

    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/muxer/Mp4Muxer;
    .locals 12

    iget v0, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->outputFileFormat:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->mp4AtFileParameters:Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;

    if-eqz v0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->mp4AtFileParameters:Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "Mp4AtFileParameters must be set for FILE_FORMAT_MP4_WITH_AUXILIARY_TRACKS_EXTENSION"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    new-instance v0, Landroidx/media3/muxer/Mp4Muxer;

    iget-object v3, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->outputStream:Ljava/io/FileOutputStream;

    iget v4, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->lastSampleDurationBehavior:I

    iget-object v1, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->annexBToAvccConverter:Landroidx/media3/muxer/AnnexBToAvccConverter;

    if-nez v1, :cond_2

    sget-object v1, Landroidx/media3/muxer/AnnexBToAvccConverter;->DEFAULT:Landroidx/media3/muxer/AnnexBToAvccConverter;

    :cond_2
    move-object v5, v1

    iget-boolean v6, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->sampleCopyEnabled:Z

    iget-boolean v7, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->sampleBatchingEnabled:Z

    iget-boolean v8, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->attemptStreamableOutputEnabled:Z

    iget v9, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->outputFileFormat:I

    iget-object v10, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->mp4AtFileParameters:Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;

    const/4 v11, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Landroidx/media3/muxer/Mp4Muxer;-><init>(Ljava/io/FileOutputStream;ILandroidx/media3/muxer/AnnexBToAvccConverter;ZZZILandroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;Landroidx/media3/muxer/Mp4Muxer$1;)V

    return-object v0
.end method

.method public setAnnexBToAvccConverter(Landroidx/media3/muxer/AnnexBToAvccConverter;)Landroidx/media3/muxer/Mp4Muxer$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->annexBToAvccConverter:Landroidx/media3/muxer/AnnexBToAvccConverter;

    return-object p0
.end method

.method public setAttemptStreamableOutputEnabled(Z)Landroidx/media3/muxer/Mp4Muxer$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->attemptStreamableOutputEnabled:Z

    return-object p0
.end method

.method public setLastSampleDurationBehavior(I)Landroidx/media3/muxer/Mp4Muxer$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->lastSampleDurationBehavior:I

    return-object p0
.end method

.method public setMp4AtFileParameters(Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;)Landroidx/media3/muxer/Mp4Muxer$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->mp4AtFileParameters:Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;

    return-object p0
.end method

.method public setOutputFileFormat(I)Landroidx/media3/muxer/Mp4Muxer$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->outputFileFormat:I

    return-object p0
.end method

.method public setSampleBatchingEnabled(Z)Landroidx/media3/muxer/Mp4Muxer$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->sampleBatchingEnabled:Z

    return-object p0
.end method

.method public setSampleCopyingEnabled(Z)Landroidx/media3/muxer/Mp4Muxer$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/muxer/Mp4Muxer$Builder;->sampleCopyEnabled:Z

    return-object p0
.end method
