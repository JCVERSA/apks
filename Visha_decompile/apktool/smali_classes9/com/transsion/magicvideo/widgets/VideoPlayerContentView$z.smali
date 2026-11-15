.class public Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->deleteVideo(Lcom/transsion/dbdata/beans/media/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$z;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$z;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerContentView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x430

    invoke-virtual {v0, v3, v2}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$z;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isUserDeleted:Z

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$z;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isPrivate:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$z;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v2

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/PlayVideoData;->path:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x474

    invoke-virtual {v0, v3, v2}, Lh27;->e(I[Ljava/lang/Object;)V

    const-string v0, "deleteSuccess"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$z;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->d1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$z;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->d1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
