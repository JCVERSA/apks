.class Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SourceLockedOrientationActivity"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->a(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->a(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->g(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->h(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->h(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->h(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->isVerticalFullByVideoSize()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->f(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    if-ltz p1, :cond_5

    const/16 v0, 0x1e

    if-le p1, v0, :cond_6

    :cond_5
    const/16 v0, 0x14a

    if-lt p1, v0, :cond_b

    :cond_6
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->b(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->e(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)I

    move-result p1

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->c(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_2

    :cond_7
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->k(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;Z)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->i(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;Z)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->l(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;I)V

    goto/16 :goto_2

    :cond_8
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->e(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)I

    move-result p1

    if-lez p1, :cond_13

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->m(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->a(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->h(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getShrinkImageRes()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getEnlargeImageRes()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_a
    :goto_1
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->l(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;I)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->i(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;Z)V

    goto/16 :goto_2

    :cond_b
    const/16 v0, 0xf0

    if-lt p1, v0, :cond_f

    const/16 v0, 0x12c

    if-gt p1, v0, :cond_f

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->b(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->e(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)I

    move-result p1

    if-eq p1, v1, :cond_c

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->d(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    :cond_c
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->j(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;Z)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->i(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;Z)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->l(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;I)V

    goto/16 :goto_2

    :cond_d
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->e(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)I

    move-result p1

    if-eq p1, v1, :cond_13

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->m(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->a(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->h(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getShrinkImageRes()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_e
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->l(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;I)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->i(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;Z)V

    goto/16 :goto_2

    :cond_f
    const/16 v0, 0x46

    if-le p1, v0, :cond_13

    const/16 v0, 0x5f

    if-ge p1, v0, :cond_13

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->b(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->e(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)I

    move-result p1

    if-eq p1, v0, :cond_10

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->d(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)Z

    move-result p1

    if-nez p1, :cond_10

    return-void

    :cond_10
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->j(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;Z)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->i(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;Z)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->l(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;I)V

    goto :goto_2

    :cond_11
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->e(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)I

    move-result p1

    if-eq p1, v0, :cond_13

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->m(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->a(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->h(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->h(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->h(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getShrinkImageRes()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_12
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->l(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;I)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-static {p0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->i(Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;Z)V

    :cond_13
    :goto_2
    return-void
.end method
