.class public Lcom/transsion/sniffer_load/data/DownloadHistory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "DownloadHistory"
.end annotation


# instance fields
.field public mediaId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "mediaId"
        typeAffinity = 0x2
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
    .end annotation
.end field

.field public originSite:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "originSite"
        typeAffinity = 0x2
    .end annotation
.end field

.field public timeStamp:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "timeStamp"
        typeAffinity = 0x3
    .end annotation
.end field

.field public videoSite:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "videoSite"
        typeAffinity = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMediaId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/data/DownloadHistory;->mediaId:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginSite()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/data/DownloadHistory;->originSite:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/sniffer_load/data/DownloadHistory;->timeStamp:J

    return-wide v0
.end method

.method public getVideoSite()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/data/DownloadHistory;->videoSite:Ljava/lang/String;

    return-object p0
.end method

.method public setMediaId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/data/DownloadHistory;->mediaId:Ljava/lang/String;

    return-void
.end method

.method public setOriginSite(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/data/DownloadHistory;->originSite:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/sniffer_load/data/DownloadHistory;->timeStamp:J

    return-void
.end method

.method public setVideoSite(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/data/DownloadHistory;->videoSite:Ljava/lang/String;

    return-void
.end method
