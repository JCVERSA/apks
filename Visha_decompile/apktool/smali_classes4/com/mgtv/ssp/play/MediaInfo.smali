.class public Lcom/mgtv/ssp/play/MediaInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public contentId:Ljava/lang/String;

.field public from:Ljava/lang/String;

.field public liveId:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/mgtv/ssp/play/MediaInfo;->from:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/mgtv/ssp/play/MediaInfo;->from:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/mgtv/ssp/play/MediaInfo;->contentId:Ljava/lang/String;

    return-void
.end method
