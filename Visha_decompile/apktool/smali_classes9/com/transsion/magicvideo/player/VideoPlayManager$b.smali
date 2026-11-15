.class public Lcom/transsion/magicvideo/player/VideoPlayManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/player/VideoPlayManager;->K1(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;Lcom/transsion/dbdata/beans/media/MediaItem;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/dbdata/beans/media/MediaItem;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Lcom/transsion/magicvideo/player/VideoPlayManager;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/player/VideoPlayManager;Lcom/transsion/dbdata/beans/media/MediaItem;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$b;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    iput-object p2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$b;->a:Lcom/transsion/dbdata/beans/media/MediaItem;

    iput-boolean p3, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$b;->b:Z

    iput-boolean p4, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$b;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestMIMediaVideoPlayInfo onSuccess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$b;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$b;->a:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$b;->b:Z

    iget-boolean p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$b;->c:Z

    invoke-static {v0, p1, v1, v2, p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->y(Lcom/transsion/magicvideo/player/VideoPlayManager;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;Lcom/transsion/dbdata/beans/media/MediaItem;ZZ)V

    return-void
.end method

.method public onFailed(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$b;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    iget-object v1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$b;->a:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$b;->b:Z

    iget-boolean p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$b;->c:Z

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->y(Lcom/transsion/magicvideo/player/VideoPlayManager;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;Lcom/transsion/dbdata/beans/media/MediaItem;ZZ)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestMIMediaVideoPlayInfo onFailed "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoPlayManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
