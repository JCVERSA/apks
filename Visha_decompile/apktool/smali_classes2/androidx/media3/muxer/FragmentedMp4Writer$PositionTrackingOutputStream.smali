.class Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/muxer/FragmentedMp4Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionTrackingOutputStream"
.end annotation


# instance fields
.field private final outputStream:Ljava/io/OutputStream;

.field private position:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputStream;->outputStream:Ljava/io/OutputStream;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputStream;->position:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public getPosition()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputStream;->position:J

    return-wide v0
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputStream;->position:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputStream;->position:J

    .line 2
    iget-object p0, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-wide v0, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputStream;->position:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputStream;->position:J

    .line 4
    iget-object p0, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-wide v0, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputStream;->position:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputStream;->position:J

    .line 6
    iget-object p0, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
