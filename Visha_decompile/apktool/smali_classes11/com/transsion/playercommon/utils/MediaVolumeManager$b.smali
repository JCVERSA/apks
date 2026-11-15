.class public Lcom/transsion/playercommon/utils/MediaVolumeManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/utils/MediaVolumeManager;->p(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:F

.field public c:Z

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lcom/transsion/playercommon/utils/MediaVolumeManager;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/utils/MediaVolumeManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->e:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    iput-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->c:Z

    return-void
.end method

.method public static synthetic a(Lcom/transsion/playercommon/utils/MediaVolumeManager$b;FLandroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->b(FLandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final synthetic b(FLandroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->e:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-static {v0}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->i(Lcom/transsion/playercommon/utils/MediaVolumeManager;)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->e:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-static {p0, v1}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->j(Lcom/transsion/playercommon/utils/MediaVolumeManager;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->e:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-static {v0}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->i(Lcom/transsion/playercommon/utils/MediaVolumeManager;)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setProgress(F)V

    iget-object v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->e:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    const/4 v2, 0x1

    invoke-virtual {v0, p2, p1, v2}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->D(Landroid/content/Context;FZ)V

    iget-object p0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->e:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-static {p0, v1}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->j(Lcom/transsion/playercommon/utils/MediaVolumeManager;Z)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_7

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->e:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-static {p1}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->i(Lcom/transsion/playercommon/utils/MediaVolumeManager;)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgressFloat()F

    move-result p1

    cmpl-float v4, p1, v1

    const/high16 v5, 0x40000000    # 2.0f

    if-ltz v4, :cond_5

    iget-boolean p1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->c:Z

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->b:F

    iput-boolean v0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->c:Z

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->b:F

    sub-float/2addr p2, p1

    iget-object p1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/utils/a;->l(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    div-float p1, p2, p1

    cmpl-float v4, p2, v2

    if-lez v4, :cond_2

    iget v4, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->b:F

    iget-object v6, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->e:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-static {v6}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->f(Lcom/transsion/playercommon/utils/MediaVolumeManager;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    :goto_0
    sub-float/2addr v4, v6

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->e:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-static {v4}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->f(Lcom/transsion/playercommon/utils/MediaVolumeManager;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    iget v6, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->b:F

    goto :goto_0

    :goto_1
    iget-object v6, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->d:Landroid/content/Context;

    const/high16 v7, 0x43480000    # 200.0f

    invoke-static {v6, v7}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_3

    iget-object v4, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->d:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    :cond_3
    cmpl-float v2, v4, v2

    if-eqz v2, :cond_4

    div-float p1, p2, v4

    :cond_4
    iget-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->e:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-virtual {p2, p1}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->w(F)F

    move-result p1

    mul-float/2addr p1, v1

    iget-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->e:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    iget-object v1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->d:Landroid/content/Context;

    div-float/2addr p1, v5

    invoke-virtual {p2, v1, p1, v3}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->D(Landroid/content/Context;FZ)V

    goto :goto_2

    :cond_5
    cmpl-float p2, p1, v2

    if-ltz p2, :cond_6

    iget-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->e:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-virtual {p2, p1}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->y(F)V

    iget-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->e:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    iget-object v1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->d:Landroid/content/Context;

    div-float/2addr p1, v5

    invoke-virtual {p2, v1, p1, v3}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->D(Landroid/content/Context;FZ)V

    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->e:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-virtual {p0, v0, v0}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->B(IZ)V

    goto/16 :goto_3

    :cond_7
    iput v2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->b:F

    iput-boolean v3, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->c:Z

    iget-object p1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->e:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-virtual {p1, v0, v3}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->B(IZ)V

    iget-object p1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->e:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-virtual {p1}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->A()V

    iget-object p1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->e:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-static {p1}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->d(Lcom/transsion/playercommon/utils/MediaVolumeManager;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->e:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-static {p1}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->e(Lcom/transsion/playercommon/utils/MediaVolumeManager;)I

    move-result p1

    int-to-float p1, p1

    invoke-static {}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->l()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    mul-float/2addr p1, v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_UP: snap back to safe volume="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->e:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-static {v1}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->e(Lcom/transsion/playercommon/utils/MediaVolumeManager;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", safeProgress="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "MediaVolumeManager"

    invoke-static {v1, p2}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->e:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-static {p2}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->i(Lcom/transsion/playercommon/utils/MediaVolumeManager;)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    move-result-object p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->e:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-static {p2}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->i(Lcom/transsion/playercommon/utils/MediaVolumeManager;)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    move-result-object p2

    iget-object v1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->d:Landroid/content/Context;

    new-instance v2, Ltm6;

    invoke-direct {v2, p0, p1, v1}, Ltm6;-><init>(Lcom/transsion/playercommon/utils/MediaVolumeManager$b;FLandroid/content/Context;)V

    const-wide/16 p0, 0x15e

    invoke-virtual {p2, v2, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_8
    iget-object p0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->e:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-static {p0, v0}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->j(Lcom/transsion/playercommon/utils/MediaVolumeManager;Z)V

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->e:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-virtual {p1, v0, v0}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->B(IZ)V

    iget-object p0, p0, Lcom/transsion/playercommon/utils/MediaVolumeManager$b;->e:Lcom/transsion/playercommon/utils/MediaVolumeManager;

    invoke-static {p0, v0}, Lcom/transsion/playercommon/utils/MediaVolumeManager;->j(Lcom/transsion/playercommon/utils/MediaVolumeManager;Z)V

    :cond_a
    :goto_3
    return v0
.end method
