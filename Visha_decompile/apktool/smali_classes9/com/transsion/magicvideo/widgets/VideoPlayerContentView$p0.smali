.class public Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;
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

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p0;->c()V

    return-void
.end method

.method public static synthetic c()V
    .locals 3

    invoke-static {}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->s()Lcom/transsion/playercommon/utils/MediaVolumeManager;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->B(IZ)V

    return-void
.end method


# virtual methods
.method public a(IFZ)V
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/transsion/magicvideo/widgets/PlayerViewController;->K(Z)V

    :cond_0
    if-nez p3, :cond_1

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v2

    iget-object v2, v2, Lcom/transsion/magicvideo/player/VideoPlayManager;->H:Lcom/transsion/magicvideo/data/VideoOpStatus;

    invoke-virtual {v2}, Lcom/transsion/magicvideo/data/VideoOpStatus;->initMusicVolumeForDrag()V

    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/high16 v4, 0x42c80000    # 100.0f

    if-eqz p3, :cond_2

    iget-object v5, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v6}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v6

    iget-object v6, v6, Lcom/transsion/magicvideo/player/VideoPlayManager;->H:Lcom/transsion/magicvideo/data/VideoOpStatus;

    invoke-static {v5, v6, p2, v3}, Lrtb;->q(Landroid/content/Context;Lcom/transsion/magicvideo/data/VideoOpStatus;FZ)F

    move-result p2

    mul-float/2addr p2, v4

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->s()Lcom/transsion/playercommon/utils/MediaVolumeManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->w(F)F

    move-result p2

    mul-float/2addr p2, v4

    div-float/2addr p2, v2

    :goto_0
    invoke-static {}, Lge;->e()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "controlVolumeAndBrightness progress:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ",isMoveLeft:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VideoPlayerContentView"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v5, 0x10

    if-ne p1, v5, :cond_8

    if-eqz p3, :cond_5

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object p1, p1, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->s0:Landroid/widget/LinearLayout;

    invoke-static {p1, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->H3(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->resetSystemUiFlag()V

    :cond_4
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->e1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lrtb;->h(Landroid/content/Context;)F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->w2(F)V

    goto/16 :goto_3

    :cond_5
    invoke-static {}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->s()Lcom/transsion/playercommon/utils/MediaVolumeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->A()V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    mul-float/2addr v2, p2

    div-float/2addr v2, v4

    invoke-static {p1, v2, v3}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->y3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;FZ)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->W2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object p1

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->syncMuteWithSystemVolume()V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/magicvideo/player/VideoPlayManager;->O:Z

    if-nez p1, :cond_7

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->P1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->updateVolumeIcon(Z)V

    :cond_7
    :goto_1
    invoke-static {}, Lse;->b()Landroid/os/Handler;

    move-result-object p0

    new-instance p1, Lf2c;

    invoke-direct {p1}, Lf2c;-><init>()V

    const-wide/16 p2, 0x32

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_8
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->w2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object p2, p2, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->s0:Landroid/widget/LinearLayout;

    invoke-static {p2, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->H3(Landroid/view/View;I)V

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object p2, p2, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->q0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-eqz p2, :cond_9

    int-to-float p3, p1

    invoke-virtual {p2, p3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setProgress(F)V

    :cond_9
    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object p2, p2, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->r0:Landroid/widget/ImageView;

    if-eqz p2, :cond_b

    if-nez p1, :cond_a

    sget p1, Lcom/transsion/magicvideo/R$drawable;->video_play_brightness_0:I

    goto :goto_2

    :cond_a
    sget p1, Lcom/transsion/magicvideo/R$drawable;->video_play_brightness:I

    :goto_2
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_b
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->F1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->hideScaleStateView()V

    goto :goto_3

    :cond_c
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-virtual {p0, p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->showVolumeDialog(F)V

    :goto_3
    return-void
.end method
