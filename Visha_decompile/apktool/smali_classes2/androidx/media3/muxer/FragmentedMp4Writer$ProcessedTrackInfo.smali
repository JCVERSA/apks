.class Landroidx/media3/muxer/FragmentedMp4Writer$ProcessedTrackInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/muxer/FragmentedMp4Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessedTrackInfo"
.end annotation


# instance fields
.field public final hasBFrame:Z

.field public final pendingSamplesByteBuffer:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public final pendingSamplesMetadata:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/muxer/FragmentedMp4Writer$SampleMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public final totalSamplesSize:I

.field public final trackId:I


# direct methods
.method public constructor <init>(IIZLcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/muxer/FragmentedMp4Writer$SampleMetadata;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/muxer/FragmentedMp4Writer$ProcessedTrackInfo;->trackId:I

    iput p2, p0, Landroidx/media3/muxer/FragmentedMp4Writer$ProcessedTrackInfo;->totalSamplesSize:I

    iput-boolean p3, p0, Landroidx/media3/muxer/FragmentedMp4Writer$ProcessedTrackInfo;->hasBFrame:Z

    iput-object p4, p0, Landroidx/media3/muxer/FragmentedMp4Writer$ProcessedTrackInfo;->pendingSamplesByteBuffer:Lcom/google/common/collect/ImmutableList;

    iput-object p5, p0, Landroidx/media3/muxer/FragmentedMp4Writer$ProcessedTrackInfo;->pendingSamplesMetadata:Lcom/google/common/collect/ImmutableList;

    return-void
.end method
