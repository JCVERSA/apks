.class public Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/magicvideo/player/VideoPlayManager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$8;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowError(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShowError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoPlayerContentView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$8;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->q1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$8;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$8;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->S1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$8;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    new-instance p2, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$8$1;

    invoke-direct {p2, p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$8$1;-><init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$8;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$8;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0, p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->k3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;I)V

    :goto_0
    return-void
.end method
