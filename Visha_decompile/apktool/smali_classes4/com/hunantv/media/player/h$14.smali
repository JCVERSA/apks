.class Lcom/hunantv/media/player/h$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource$IInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/smooth/SmoothMediaSource;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/media/player/h;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/h;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/h$14;->a:Lcom/hunantv/media/player/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSourceInfoUpdate(Ljava/lang/Object;)V
    .locals 3

    invoke-static {p1}, Lcom/hunantv/media/p2p/P2pMgr;->getCdnIpFromSourceInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/hunantv/media/player/h$14;->a:Lcom/hunantv/media/player/h;

    invoke-static {v0}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/h$14;->a:Lcom/hunantv/media/player/h;

    invoke-static {v0}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSource onSourceInfoUpdate cdnip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/player/h$14;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvMediaPlayer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setLastIP(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
