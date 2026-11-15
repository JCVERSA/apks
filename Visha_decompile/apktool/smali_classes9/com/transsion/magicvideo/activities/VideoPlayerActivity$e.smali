.class public Lcom/transsion/magicvideo/activities/VideoPlayerActivity$e;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->A2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$e;->a:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    iget-object v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$e;->a:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-static {v1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->Z0(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$e;->a:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 v1, 0x154

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge p1, v1, :cond_5

    const/16 v1, 0x14

    if-gt p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0xfa

    if-lt p1, v1, :cond_2

    const/16 v1, 0x122

    if-gt p1, v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    const/16 v1, 0xa0

    if-lt p1, v1, :cond_3

    const/16 v1, 0xc8

    if-gt p1, v1, :cond_3

    const/16 v1, 0x9

    goto :goto_1

    :cond_3
    const/16 v1, 0x46

    if-lt p1, v1, :cond_4

    const/16 v1, 0x6e

    if-gt p1, v1, :cond_4

    const/16 v1, 0x8

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_1

    :cond_5
    :goto_0
    move v1, v2

    :goto_1
    if-eq v1, v0, :cond_6

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$e;->a:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-static {v0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->b1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)I

    move-result v0

    if-eq v1, v0, :cond_6

    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v3

    :goto_2
    iget-object v4, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$e;->a:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-static {v4}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->i1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$e;->a:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-static {v4}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->j1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/magicvideo/player/VideoPlayManager;->y0()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    iget-object v4, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$e;->a:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-static {v4}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->h1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_3

    :cond_8
    move v2, v3

    :goto_3
    if-eqz v0, :cond_9

    if-eqz v2, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Orientation changed ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "). Cache orientation request: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "VideoPlayer_Activity"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$e;->a:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-static {p1, v1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->d1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$e;->a:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-static {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->m1(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V

    :cond_9
    :goto_4
    return-void
.end method
