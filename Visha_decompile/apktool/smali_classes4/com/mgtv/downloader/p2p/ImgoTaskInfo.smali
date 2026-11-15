.class public Lcom/mgtv/downloader/p2p/ImgoTaskInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cdnDownloadBytes:J

.field public cdnIp:Ljava/lang/String;

.field public downloadlen:J

.field public downloadspeed:I

.field public filelen:J

.field public filepath:Ljava/lang/String;

.field public hash:[B

.field public numPeers:I

.field public p2pDownloadBytes:J

.field public p2pUploadBytes:J

.field public sdkVersion:I

.field public status:B

.field public uploadspeed:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x29

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mgtv/downloader/p2p/ImgoTaskInfo;->hash:[B

    return-void
.end method
