.class public final Landroidx/media3/transformer/DefaultMuxer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/Muxer;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/DefaultMuxer$Factory;
    }
.end annotation


# static fields
.field public static final MUXER_NAME:Ljava/lang/String;


# instance fields
.field private final muxer:Landroidx/media3/transformer/Muxer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/media3/transformer/FrameworkMuxer;->MUXER_NAME:Ljava/lang/String;

    sput-object v0, Landroidx/media3/transformer/DefaultMuxer;->MUXER_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/transformer/Muxer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/media3/transformer/DefaultMuxer;->muxer:Landroidx/media3/transformer/Muxer;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/transformer/Muxer;Landroidx/media3/transformer/DefaultMuxer$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/transformer/DefaultMuxer;-><init>(Landroidx/media3/transformer/Muxer;)V

    return-void
.end method


# virtual methods
.method public addMetadataEntry(Landroidx/media3/common/Metadata$Entry;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/DefaultMuxer;->muxer:Landroidx/media3/transformer/Muxer;

    invoke-interface {p0, p1}, Landroidx/media3/transformer/Muxer;->addMetadataEntry(Landroidx/media3/common/Metadata$Entry;)V

    return-void
.end method

.method public addTrack(Landroidx/media3/common/Format;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/transformer/DefaultMuxer;->muxer:Landroidx/media3/transformer/Muxer;

    invoke-interface {p0, p1}, Landroidx/media3/transformer/Muxer;->addTrack(Landroidx/media3/common/Format;)I

    move-result p0

    return p0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/transformer/DefaultMuxer;->muxer:Landroidx/media3/transformer/Muxer;

    invoke-interface {p0}, Landroidx/media3/transformer/Muxer;->close()V

    return-void
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/muxer/MuxerException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/transformer/DefaultMuxer;->muxer:Landroidx/media3/transformer/Muxer;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/transformer/Muxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method
