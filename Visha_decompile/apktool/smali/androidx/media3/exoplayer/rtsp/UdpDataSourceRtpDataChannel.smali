.class final Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/rtsp/RtpDataChannel;


# static fields
.field private static final DEFAULT_UDP_TRANSPORT_FORMAT:Ljava/lang/String; = "RTP/AVP;unicast;client_port=%d-%d"


# instance fields
.field private final dataSource:Landroidx/media3/datasource/UdpDataSource;

.field private rtcpChannel:Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/datasource/UdpDataSource;

    const/16 v1, 0x7d0

    invoke-static {p1, p2}, Lcom/google/common/primitives/Ints;->d(J)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroidx/media3/datasource/UdpDataSource;-><init>(II)V

    iput-object v0, p0, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;->dataSource:Landroidx/media3/datasource/UdpDataSource;

    return-void
.end method


# virtual methods
.method public addTransferListener(Landroidx/media3/datasource/TransferListener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;->dataSource:Landroidx/media3/datasource/UdpDataSource;

    invoke-virtual {p0, p1}, Landroidx/media3/datasource/BaseDataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;->dataSource:Landroidx/media3/datasource/UdpDataSource;

    invoke-virtual {v0}, Landroidx/media3/datasource/UdpDataSource;->close()V

    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;->rtcpChannel:Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;->close()V

    :cond_0
    return-void
.end method

.method public getInterleavedBinaryDataListener()Landroidx/media3/exoplayer/rtsp/RtspMessageChannel$InterleavedBinaryDataListener;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocalPort()I
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;->dataSource:Landroidx/media3/datasource/UdpDataSource;

    invoke-virtual {p0}, Landroidx/media3/datasource/UdpDataSource;->getLocalPort()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    move p0, v0

    :cond_0
    return p0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;->getLocalPort()I

    move-result p0

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p0, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    add-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "RTP/AVP;unicast;client_port=%d-%d"

    invoke-static {v0, p0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;->dataSource:Landroidx/media3/datasource/UdpDataSource;

    invoke-virtual {p0}, Landroidx/media3/datasource/UdpDataSource;->getUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public needsClosingOnLoadCompletion()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;->dataSource:Landroidx/media3/datasource/UdpDataSource;

    invoke-virtual {p0, p1}, Landroidx/media3/datasource/UdpDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide p0

    return-wide p0
.end method

.method public read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;->dataSource:Landroidx/media3/datasource/UdpDataSource;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/datasource/UdpDataSource;->read([BII)I

    move-result p0
    :try_end_0
    .catch Landroidx/media3/datasource/UdpDataSource$UdpDataSourceException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    iget p1, p0, Landroidx/media3/datasource/DataSourceException;->reason:I

    const/16 p2, 0x7d2

    if-ne p1, p2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    throw p0
.end method

.method public setRtcpChannel(Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;)V
    .locals 1

    if-eq p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;->rtcpChannel:Landroidx/media3/exoplayer/rtsp/UdpDataSourceRtpDataChannel;

    return-void
.end method
