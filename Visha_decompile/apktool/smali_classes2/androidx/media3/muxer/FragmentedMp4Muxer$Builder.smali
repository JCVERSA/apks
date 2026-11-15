.class public final Landroidx/media3/muxer/FragmentedMp4Muxer$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/muxer/FragmentedMp4Muxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private fragmentDurationMs:J

.field private final outputStream:Ljava/io/OutputStream;

.field private sampleCopyEnabled:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/muxer/FragmentedMp4Muxer$Builder;->outputStream:Ljava/io/OutputStream;

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Landroidx/media3/muxer/FragmentedMp4Muxer$Builder;->fragmentDurationMs:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/muxer/FragmentedMp4Muxer$Builder;->sampleCopyEnabled:Z

    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/muxer/FragmentedMp4Muxer;
    .locals 7

    new-instance v6, Landroidx/media3/muxer/FragmentedMp4Muxer;

    iget-object v1, p0, Landroidx/media3/muxer/FragmentedMp4Muxer$Builder;->outputStream:Ljava/io/OutputStream;

    iget-wide v2, p0, Landroidx/media3/muxer/FragmentedMp4Muxer$Builder;->fragmentDurationMs:J

    iget-boolean v4, p0, Landroidx/media3/muxer/FragmentedMp4Muxer$Builder;->sampleCopyEnabled:Z

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media3/muxer/FragmentedMp4Muxer;-><init>(Ljava/io/OutputStream;JZLandroidx/media3/muxer/FragmentedMp4Muxer$1;)V

    return-object v6
.end method

.method public setFragmentDurationMs(J)Landroidx/media3/muxer/FragmentedMp4Muxer$Builder;
    .locals 0

    iput-wide p1, p0, Landroidx/media3/muxer/FragmentedMp4Muxer$Builder;->fragmentDurationMs:J

    return-object p0
.end method

.method public setSampleCopyingEnabled(Z)Landroidx/media3/muxer/FragmentedMp4Muxer$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/muxer/FragmentedMp4Muxer$Builder;->sampleCopyEnabled:Z

    return-object p0
.end method
