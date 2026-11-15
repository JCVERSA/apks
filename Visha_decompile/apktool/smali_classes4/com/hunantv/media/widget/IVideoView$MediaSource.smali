.class public Lcom/hunantv/media/widget/IVideoView$MediaSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/widget/IVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaSource"
.end annotation


# instance fields
.field public p2pTask:Lcom/hunantv/media/p2p/IP2pTask;

.field public proxyUrl:Ljava/lang/String;

.field public readType:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/widget/IVideoView$MediaSource;->readType:I

    return-void
.end method


# virtual methods
.method public setP2pTask(Lcom/hunantv/media/p2p/IP2pTask;)Lcom/hunantv/media/widget/IVideoView$MediaSource;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/IVideoView$MediaSource;->p2pTask:Lcom/hunantv/media/p2p/IP2pTask;

    return-object p0
.end method

.method public setProxyUrl(Ljava/lang/String;)Lcom/hunantv/media/widget/IVideoView$MediaSource;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/IVideoView$MediaSource;->proxyUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setReadType(I)Lcom/hunantv/media/widget/IVideoView$MediaSource;
    .locals 0

    iput p1, p0, Lcom/hunantv/media/widget/IVideoView$MediaSource;->readType:I

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/hunantv/media/widget/IVideoView$MediaSource;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/IVideoView$MediaSource;->url:Ljava/lang/String;

    return-object p0
.end method
