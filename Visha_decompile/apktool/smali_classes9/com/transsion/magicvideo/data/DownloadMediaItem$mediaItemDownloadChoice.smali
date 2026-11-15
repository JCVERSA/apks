.class public Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/data/DownloadMediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "mediaItemDownloadChoice"
.end annotation


# instance fields
.field private mMimeType:Ljava/lang/String;

.field private mResolutionRadio:Ljava/lang/String;

.field private mSize:J

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->mResolutionRadio:Ljava/lang/String;

    iput-wide p2, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->mSize:J

    iput-object p4, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->mMimeType:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->mMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public getResolutionRadio()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->mResolutionRadio:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->mSize:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method public setResolutionRadio(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->mResolutionRadio:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->mSize:J

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/data/DownloadMediaItem$mediaItemDownloadChoice;->mUrl:Ljava/lang/String;

    return-void
.end method
