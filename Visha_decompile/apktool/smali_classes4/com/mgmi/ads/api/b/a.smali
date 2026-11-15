.class public abstract Lcom/mgmi/ads/api/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/ads/api/b/a$b;,
        Lcom/mgmi/ads/api/b/a$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:J

.field private g:Ljava/util/Timer;

.field private h:Lcom/mgmi/ads/api/a;

.field private i:Z

.field private j:Z

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 3
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mgmi/ads/api/b/a;->f:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgmi/ads/api/b/a;->i:Z

    iput-boolean v0, p0, Lcom/mgmi/ads/api/b/a;->j:Z

    new-instance v1, Lcom/mgmi/ads/api/b/a$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/mgmi/ads/api/b/a$a;-><init>(Landroid/os/Looper;Lcom/mgmi/ads/api/b/a;)V

    iput-object v1, p0, Lcom/mgmi/ads/api/b/a;->k:Landroid/os/Handler;

    iput-object p2, p0, Lcom/mgmi/ads/api/b/a;->b:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mgmi/ads/api/b/a;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/mgmi/ads/api/b/a;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/mgmi/R$layout;->mgmi_pacth_ad_prepare_layout:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/ads/api/b/a;->e:Landroid/view/View;

    sget p2, Lcom/mgmi/R$id;->prepare_ad_countdown:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mgmi/ads/api/b/a;->d:Landroid/widget/TextView;

    iput-boolean v0, p0, Lcom/mgmi/ads/api/b/a;->j:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mgmi/ads/api/b/a;->i:Z

    return-void
.end method

.method public static synthetic a(Lcom/mgmi/ads/api/b/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgmi/ads/api/b/a;->i()V

    return-void
.end method

.method public static synthetic b(Lcom/mgmi/ads/api/b/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mgmi/ads/api/b/a;->i:Z

    return p0
.end method

.method public static synthetic c(Lcom/mgmi/ads/api/b/a;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/ads/api/b/a;->b:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic d(Lcom/mgmi/ads/api/b/a;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/ads/api/b/a;->e:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic e(Lcom/mgmi/ads/api/b/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgmi/ads/api/b/a;->j()V

    return-void
.end method

.method private i()V
    .locals 4

    iget-boolean v0, p0, Lcom/mgmi/ads/api/b/a;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/ads/api/b/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mgmi/R$string;->mgmi_ad_mid_wait:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    iget-object v0, p0, Lcom/mgmi/ads/api/b/a;->d:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/mgmi/ads/api/b/a;->f:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-wide v0, p0, Lcom/mgmi/ads/api/b/a;->f:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mgmi/ads/api/b/a;->f:J

    return-void
.end method

.method private j()V
    .locals 4

    iget-wide v0, p0, Lcom/mgmi/ads/api/b/a;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgmi/ads/api/b/a;->j:Z

    invoke-virtual {p0}, Lcom/mgmi/ads/api/b/a;->f()V

    iget-object v0, p0, Lcom/mgmi/ads/api/b/a;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/mgmi/ads/api/b/a$3;

    invoke-direct {v1, p0}, Lcom/mgmi/ads/api/b/a$3;-><init>(Lcom/mgmi/ads/api/b/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgmi/ads/api/b/a;->k:Landroid/os/Handler;

    const/16 v0, 0x12d

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 3
    iget-object p0, p0, Lcom/mgmi/ads/api/b/a;->e:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 7

    .line 6
    iget-boolean v0, p0, Lcom/mgmi/ads/api/b/a;->j:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 7
    :cond_0
    const-string v0, "MidVideoCountDownView"

    const-string v2, "MidVideoCountDownView start"

    invoke-static {v0, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iput-boolean v1, p0, Lcom/mgmi/ads/api/b/a;->j:Z

    int-to-long v0, p1

    .line 9
    iput-wide v0, p0, Lcom/mgmi/ads/api/b/a;->f:J

    .line 10
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x35

    .line 11
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 12
    iget-object v0, p0, Lcom/mgmi/ads/api/b/a;->c:Landroid/content/Context;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lw3d;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 13
    iget-object v0, p0, Lcom/mgmi/ads/api/b/a;->d:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/mgmi/ads/api/b/a;->f:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/mgmi/ads/api/b/a;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 15
    new-instance v1, Lcom/mgmi/ads/api/b/a$1;

    invoke-direct {v1, p0, p1}, Lcom/mgmi/ads/api/b/a$1;-><init>(Lcom/mgmi/ads/api/b/a;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 16
    iget-object p1, p0, Lcom/mgmi/ads/api/b/a;->g:Ljava/util/Timer;

    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 18
    iget-object p1, p0, Lcom/mgmi/ads/api/b/a;->g:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->purge()I

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/mgmi/ads/api/b/a;->g:Ljava/util/Timer;

    .line 20
    :cond_1
    new-instance p1, Ljava/util/Timer;

    const-string v0, "mgmiad"

    invoke-direct {p1, v0}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mgmi/ads/api/b/a;->g:Ljava/util/Timer;

    .line 21
    new-instance v2, Lcom/mgmi/ads/api/b/a$b;

    invoke-direct {v2, p0}, Lcom/mgmi/ads/api/b/a$b;-><init>(Lcom/mgmi/ads/api/b/a;)V

    .line 22
    iget-object v1, p0, Lcom/mgmi/ads/api/b/a;->g:Ljava/util/Timer;

    const-wide/16 v3, 0x1f4

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 23
    iget-object p1, p0, Lcom/mgmi/ads/api/b/a;->h:Lcom/mgmi/ads/api/a;

    if-eqz p1, :cond_2

    .line 24
    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_COUNTDOWN_NOTIFY:Lcom/mgmi/ads/api/a$a;

    .line 25
    new-instance v1, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    iget-object p0, p0, Lcom/mgmi/ads/api/b/a;->a:Ljava/lang/String;

    invoke-direct {v1, p0}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/mgmi/ads/api/a;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/ads/api/b/a;->h:Lcom/mgmi/ads/api/a;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/mgmi/ads/api/b/a;->i:Z

    return-void
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/mgmi/ads/api/b/a;->e:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public abstract c()V
.end method

.method public d()Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/mgmi/ads/api/b/a;->j:Z

    return p0
.end method

.method public e()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mgmi/ads/api/b/a;->g:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4
    iget-object v0, p0, Lcom/mgmi/ads/api/b/a;->g:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mgmi/ads/api/b/a;->g:Ljava/util/Timer;

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/mgmi/ads/api/b/a;->j:Z

    .line 7
    iget-object p0, p0, Lcom/mgmi/ads/api/b/a;->k:Landroid/os/Handler;

    const/16 v0, 0x12d

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public f()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mgmi/ads/api/b/a;->g:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/mgmi/ads/api/b/a;->g:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgmi/ads/api/b/a;->g:Ljava/util/Timer;

    :cond_0
    iget-object p0, p0, Lcom/mgmi/ads/api/b/a;->k:Landroid/os/Handler;

    const/16 v0, 0x12d

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public g()V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/mgmi/ads/api/b/a$2;

    invoke-direct {v0, p0}, Lcom/mgmi/ads/api/b/a$2;-><init>(Lcom/mgmi/ads/api/b/a;)V

    invoke-static {v0}, Lj4d;->b(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public h()V
    .locals 8

    iget-object v0, p0, Lcom/mgmi/ads/api/b/a;->g:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/mgmi/ads/api/b/a;->g:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgmi/ads/api/b/a;->g:Ljava/util/Timer;

    :cond_0
    new-instance v0, Ljava/util/Timer;

    const-string v1, "mgmiad"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mgmi/ads/api/b/a;->g:Ljava/util/Timer;

    new-instance v3, Lcom/mgmi/ads/api/b/a$b;

    invoke-direct {v3, p0}, Lcom/mgmi/ads/api/b/a$b;-><init>(Lcom/mgmi/ads/api/b/a;)V

    iget-object v2, p0, Lcom/mgmi/ads/api/b/a;->g:Ljava/util/Timer;

    const-wide/16 v4, 0x1f4

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
