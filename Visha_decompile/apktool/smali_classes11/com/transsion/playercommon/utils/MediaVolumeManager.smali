.class public Lcom/transsion/playercommon/utils/MediaVolumeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile w:Lcom/transsion/playercommon/utils/MediaVolumeManager;

.field public static x:I


# instance fields
.field public a:Landroid/media/AudioManager;

.field public b:Landroid/app/Dialog;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/widget/ImageView;

.field public g:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

.field public final h:Landroid/content/Context;

.field public i:I

.field public j:I

.field public k:I

.field public l:J

.field public m:Z

.field public n:Landroid/widget/LinearLayout;

.field public o:Z

.field public p:Z

.field public final q:Ljava/lang/Object;

.field public final r:Landroid/os/Handler;

.field public s:I

.field public final t:Ljava/lang/Runnable;

.field public final u:Landroid/content/BroadcastReceiver;

.field public final v:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->i:I

    iput v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->j:I

    iput v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->k:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->l:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->m:Z

    iput-boolean v1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->o:Z

    iput-boolean v1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->p:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->q:Ljava/lang/Object;

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->r:Landroid/os/Handler;

    iput v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->s:I

    new-instance v0, Lsm6;

    invoke-direct {v0, p0}, Lsm6;-><init>(Lcom/transsion/playercommon/utils/MediaVolumeManager;)V

    iput-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->t:Ljava/lang/Runnable;

    new-instance v0, Lcom/transsion/playercommon/utils/MediaVolumeManager$a;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/utils/MediaVolumeManager$a;-><init>(Lcom/transsion/playercommon/utils/MediaVolumeManager;)V

    iput-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->u:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/transsion/playercommon/utils/MediaVolumeManager$2;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/utils/MediaVolumeManager$2;-><init>(Lcom/transsion/playercommon/utils/MediaVolumeManager;)V

    iput-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->v:Ljava/lang/Runnable;

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->h:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->a:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->v()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/playercommon/utils/MediaVolumeManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->r()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/playercommon/utils/MediaVolumeManager;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->b:Landroid/app/Dialog;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/playercommon/utils/MediaVolumeManager;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->t:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/playercommon/utils/MediaVolumeManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->p:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/transsion/playercommon/utils/MediaVolumeManager;)I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->j:I

    return p0
.end method

.method public static bridge synthetic f(Lcom/transsion/playercommon/utils/MediaVolumeManager;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->n:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/playercommon/utils/MediaVolumeManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->q:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/transsion/playercommon/utils/MediaVolumeManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->r:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/transsion/playercommon/utils/MediaVolumeManager;)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->g:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/transsion/playercommon/utils/MediaVolumeManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->p:Z

    return-void
.end method

.method public static bridge synthetic k(Lcom/transsion/playercommon/utils/MediaVolumeManager;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->s:I

    return-void
.end method

.method public static bridge synthetic l()I
    .locals 1

    sget v0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->x:I

    return v0
.end method

.method public static s()Lcom/transsion/playercommon/utils/MediaVolumeManager;
    .locals 2

    sget-object v0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->w:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/playercommon/utils/MediaVolumeManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/playercommon/utils/MediaVolumeManager;->w:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-direct {v1}, Lcom/transsion/playercommon/utils/MediaVolumeManager;-><init>()V

    sput-object v1, Lcom/transsion/playercommon/utils/MediaVolumeManager;->w:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->w:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    return-object v0
.end method


# virtual methods
.method public A()V
    .locals 2

    const-string v0, "MediaVolumeManager"

    const-string v1, "changeVolume resetGesture"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->M([Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->i:I

    iput v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->k:I

    return-void
.end method

.method public B(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->v:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->v:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->v:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final C(IZ)V
    .locals 9

    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->g:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lpp3;->w()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_4

    invoke-static {}, Lpp3;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->g:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setProgress(F)V

    iget-object p1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->e:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->f:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->F()V

    goto/16 :goto_7

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->g:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    const/16 v2, 0x64

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setProgress(F)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    if-nez p2, :cond_5

    iget-wide v5, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->l:J

    sub-long v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v7, 0x32

    cmp-long p2, v5, v7

    if-lez p2, :cond_12

    :cond_5
    iput-wide v3, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->l:J

    const/4 p2, 0x0

    if-gt p1, v2, :cond_7

    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    const/16 v0, 0x96

    if-lt v0, p1, :cond_8

    :goto_1
    move p1, v0

    goto :goto_2

    :cond_8
    const/16 v0, 0xc8

    if-lt v0, p1, :cond_9

    goto :goto_1

    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->e:Landroid/widget/ImageView;

    const/4 v1, 0x3

    if-eqz v0, :cond_d

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->e:Landroid/widget/ImageView;

    div-int/lit8 v2, p1, 0x32

    if-lt v2, v1, :cond_c

    sget v2, Lcom/transsion/playercommon/R$drawable;->video_play_volume3:I

    goto :goto_4

    :cond_c
    sget v2, Lcom/transsion/playercommon/R$drawable;->video_play_volume2:I

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_d
    div-int/lit8 p1, p1, 0x32

    if-le p1, v1, :cond_e

    const/4 p1, 0x1

    goto :goto_5

    :cond_e
    move p1, p2

    :goto_5
    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->f:Landroid/widget/ImageView;

    if-eqz p1, :cond_f

    sget v0, Lcom/transsion/playercommon/R$drawable;->video_play_volume3:I

    goto :goto_6

    :cond_f
    sget v0, Lcom/transsion/playercommon/R$drawable;->video_play_volume2:I

    :goto_6
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_10
    if-eqz p1, :cond_11

    iget-boolean p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->o:Z

    if-nez p2, :cond_11

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Lwob;->b(J)V

    :cond_11
    iput-boolean p1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->o:Z

    :cond_12
    :goto_7
    return-void
.end method

.method public D(Landroid/content/Context;FZ)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->E(Landroid/content/Context;IZ)V

    return-void
.end method

.method public E(Landroid/content/Context;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->b:Landroid/app/Dialog;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->p(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->m:Z

    if-eq p3, p1, :cond_1

    invoke-virtual {p0, v0, p3}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->q(Landroid/app/Dialog;Z)V

    :cond_1
    :goto_0
    iput-boolean p3, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->m:Z

    iget-object p1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->d:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    if-nez p2, :cond_2

    sget v0, Lcom/transsion/playercommon/R$drawable;->video_play_volume0:I

    goto :goto_1

    :cond_2
    sget v0, Lcom/transsion/playercommon/R$drawable;->ic_public_volume:I

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    mul-int/lit8 p2, p2, 0x2

    invoke-virtual {p0, p2, p3}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->C(IZ)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->B(IZ)V

    return-void
.end method

.method public final F()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->g:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$dimen;->video_brightness_seekbar_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, 0x1

    if-ne v2, v1, :cond_3

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->g:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v3

    :goto_1
    iget-object v2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->g:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_5

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v5, v1, :cond_4

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v5, v1, :cond_5

    :cond_4
    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_5
    move v3, v0

    :goto_2
    if-eqz v3, :cond_6

    iget-object p0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->g:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_6
    return-void
.end method

.method public G(IZ)I
    .locals 7

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    sget v4, Lcom/transsion/playercommon/utils/MediaVolumeManager;->x:I

    int-to-double v4, v4

    div-double/2addr v0, v4

    const-string v4, "MediaVolumeManager"

    if-nez p2, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "volumeBigLevel isEvent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->i:I

    if-ne v5, p1, :cond_0

    iget p0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->j:I

    return p0

    :cond_0
    iput p1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->i:I

    :cond_1
    iget-boolean v5, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->p:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->j:I

    if-le p1, v5, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->a:Landroid/media/AudioManager;

    add-int/lit8 v5, v5, 0x1

    const/4 p2, 0x4

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v5, p2}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "volumeBigLevel setStreamVolume failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "volumeBigLevel setStreamVolume denied: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    :goto_2
    iget p0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->j:I

    return p0

    :cond_2
    if-ge p1, v5, :cond_3

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->p:Z

    :cond_3
    if-eqz p2, :cond_4

    iget p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->j:I

    goto :goto_3

    :cond_4
    iget p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->i:I

    :goto_3
    const/high16 v4, 0x3fc00000    # 1.5f

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    if-le p1, p2, :cond_6

    cmpl-double p2, v0, v5

    if-lez p2, :cond_5

    sget p1, Lcom/transsion/playercommon/utils/MediaVolumeManager;->x:I

    mul-int/lit8 p1, p1, 0x2

    goto :goto_5

    :cond_5
    cmpl-double p2, v0, v2

    if-lez p2, :cond_8

    sget p1, Lcom/transsion/playercommon/utils/MediaVolumeManager;->x:I

    :goto_4
    int-to-float p1, p1

    mul-float/2addr p1, v4

    float-to-int p1, p1

    goto :goto_5

    :cond_6
    cmpg-double p2, v2, v0

    if-gez p2, :cond_7

    cmpg-double p2, v0, v5

    if-gez p2, :cond_7

    sget p1, Lcom/transsion/playercommon/utils/MediaVolumeManager;->x:I

    goto :goto_5

    :cond_7
    cmpg-double p2, v5, v0

    if-gez p2, :cond_8

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpg-double p2, v0, v2

    if-gez p2, :cond_8

    sget p1, Lcom/transsion/playercommon/utils/MediaVolumeManager;->x:I

    goto :goto_4

    :cond_8
    :goto_5
    sget p2, Lcom/transsion/playercommon/utils/MediaVolumeManager;->x:I

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->m(II)V

    return p1
.end method

.method public final m(II)V
    .locals 5

    const-string v0, "MediaVolumeManager"

    const-string v1, "changeVolume"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->j:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x64

    const/16 v1, 0x48c

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-gt p1, p2, :cond_1

    :try_start_1
    iget-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->a:Landroid/media/AudioManager;

    invoke-virtual {p2, v3, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->a:Landroid/media/AudioManager;

    invoke-virtual {p2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p2

    iget-object v2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->q:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    :try_start_2
    iput-boolean p1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->p:Z

    iput p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->k:I

    iput p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->j:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iput p1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->j:I

    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lh27;->e(I[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0

    :cond_1
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v4

    mul-int/2addr p1, v0

    div-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, v1, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->a:Landroid/media/AudioManager;

    invoke-virtual {p0, v3, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    :goto_2
    const-string p1, "MediaVolumeManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changeVolume setStreamVolume failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    goto :goto_4

    :goto_3
    const-string p1, "MediaVolumeManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changeVolume setStreamVolume denied: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    :goto_4
    return-void

    :catchall_1
    move-exception p0

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method

.method public final n(I)I
    .locals 1

    invoke-static {}, Lpp3;->w()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lpp3;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->x:I

    goto :goto_1

    :cond_1
    :goto_0
    sget p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->x:I

    mul-int/lit8 p0, p0, 0x2

    :goto_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->b:Landroid/app/Dialog;

    iput-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->d:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->e:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->f:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->c:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->g:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iput-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->n:Landroid/widget/LinearLayout;

    :cond_0
    return-void
.end method

.method public final p(Landroid/content/Context;Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->b:Landroid/app/Dialog;

    sget v1, Lcom/transsion/playercommon/R$layout;->media_play_volume:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->b:Landroid/app/Dialog;

    invoke-virtual {p0, v0, p2}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->q(Landroid/app/Dialog;Z)V

    iget-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->b:Landroid/app/Dialog;

    sget v0, Lcom/transsion/playercommon/R$id;->ll_volume:I

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->n:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->b:Landroid/app/Dialog;

    sget v0, Lcom/transsion/playercommon/R$id;->volume_tip:I

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->c:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->b:Landroid/app/Dialog;

    sget v0, Lcom/transsion/playercommon/R$id;->right_volume_iv:I

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->d:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->b:Landroid/app/Dialog;

    sget v0, Lcom/transsion/playercommon/R$id;->volume_iv_left:I

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->e:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->b:Landroid/app/Dialog;

    sget v0, Lcom/transsion/playercommon/R$id;->volume_iv_right:I

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->f:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->b:Landroid/app/Dialog;

    sget v0, Lcom/transsion/playercommon/R$id;->seekbar_vertical_right:I

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    iput-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->g:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->g:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    new-instance v0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;

    invoke-direct {v0, p0, p1}, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;-><init>(Lcom/transsion/playercommon/utils/MediaVolumeManager;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->g:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    new-instance v0, Lcom/transsion/playercommon/utils/MediaVolumeManager$c;

    invoke-direct {v0, p0, p1}, Lcom/transsion/playercommon/utils/MediaVolumeManager$c;-><init>(Lcom/transsion/playercommon/utils/MediaVolumeManager;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setOnProgressChangedListener(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;)V

    return-void
.end method

.method public final q(Landroid/app/Dialog;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eqz p2, :cond_0

    const p2, 0x800005

    goto :goto_0

    :cond_0
    const p2, 0x800003

    :goto_0
    or-int/lit8 p2, p2, 0x10

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object p0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->h:Landroid/content/Context;

    const/high16 p2, 0x41c00000    # 24.0f

    invoke-static {p0, p2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 p0, 0x28

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public final r()V
    .locals 4

    iget v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->s:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->s:I

    iget-object v1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->q:Ljava/lang/Object;

    monitor-enter v1

    if-ltz v0, :cond_1

    :try_start_0
    iget v2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->j:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "MediaVolumeManager"

    const-string v3, "volumeReceiver dispatch debounced volume change"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iput v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->j:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->A()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x48c

    invoke-virtual {p0, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public t()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->z()V

    iget p0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->j:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public u()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->z()V

    sget p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->x:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final v()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->a:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    sput v0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->x:I

    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->a:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->j:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->h:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public w(F)F
    .locals 2

    iget v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->j:I

    iput v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->k:I

    :cond_0
    iget v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->k:I

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float/2addr p1, v1

    sget v1, Lcom/transsion/playercommon/utils/MediaVolumeManager;->x:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->n(I)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->G(IZ)I

    move-result p0

    int-to-float p0, p0

    sget p1, Lcom/transsion/playercommon/utils/MediaVolumeManager;->x:I

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method

.method public x(Z)F
    .locals 2

    iget v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->j:I

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->n(I)I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->G(IZ)I

    move-result p0

    int-to-float p0, p0

    sget p1, Lcom/transsion/playercommon/utils/MediaVolumeManager;->x:I

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method

.method public y(F)V
    .locals 2

    invoke-static {}, Lpp3;->w()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lpp3;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->x:I

    goto :goto_1

    :cond_1
    :goto_0
    sget v0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->x:I

    mul-int/lit8 v0, v0, 0x2

    :goto_1
    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->n(I)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->G(IZ)I

    return-void
.end method

.method public final z()V
    .locals 2

    sget v0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->x:I

    const/4 v1, 0x3

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->a:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    sput v0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->x:I

    :cond_0
    iget v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->j:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->a:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager;->j:I

    :cond_1
    return-void
.end method
