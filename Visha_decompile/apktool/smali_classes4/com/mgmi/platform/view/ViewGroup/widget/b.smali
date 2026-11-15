.class public abstract Lcom/mgmi/platform/view/ViewGroup/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/platform/view/ViewGroup/widget/b$b;,
        Lcom/mgmi/platform/view/ViewGroup/widget/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/mgmi/platform/view/ViewGroup/widget/g;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Timer;

.field private b:I

.field private c:I

.field private d:Landroid/os/Handler;

.field private e:I

.field private f:Lcom/mgmi/platform/view/ViewGroup/widget/b$a;

.field private volatile g:Z

.field protected i:Landroid/view/ViewGroup;

.field protected j:Landroid/content/Context;

.field protected k:Landroid/view/View;

.field protected l:Lcom/mgmi/platform/view/ViewGroup/widget/CreativeWidgetShadow;

.field protected m:Lcom/mgmi/platform/view/ViewGroup/widget/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected n:Lcom/mgmi/model/i;

.field protected o:Lcom/mgmi/model/VASTAd;


# direct methods
.method public static synthetic a(Lcom/mgmi/platform/view/ViewGroup/widget/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    iget v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->b:I

    iget v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->c:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->d()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->w()V

    :goto_0
    return-void
.end method

.method private w()V
    .locals 1

    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->d:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const v0, 0xb307

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/mgmi/platform/view/ViewGroup/widget/g;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public a()V
    .locals 1

    .line 2
    const-string p0, "CreativeWidget"

    const-string v0, "onLandScape"

    invoke-static {p0, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->f:Lcom/mgmi/platform/view/ViewGroup/widget/b$a;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/mgmi/platform/view/ViewGroup/widget/b$a;->a(Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    const-string p0, "CreativeWidget"

    const-string v0, "onPort"

    invoke-static {p0, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->g:Z

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const v1, 0xb307

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->d:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const v1, 0xb308

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    invoke-virtual {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->m()V

    invoke-virtual {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->u()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->d:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const v0, 0xb308

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public declared-synchronized f()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->a:Ljava/util/Timer;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Ljava/util/Timer;

    const-string v1, "mgmiad"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->a:Ljava/util/Timer;

    new-instance v3, Lcom/mgmi/platform/view/ViewGroup/widget/b$b;

    invoke-direct {v3, p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b$b;-><init>(Lcom/mgmi/platform/view/ViewGroup/widget/b;)V

    iget-object v2, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->a:Ljava/util/Timer;

    const-wide/16 v4, 0x1f4

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->a:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized h()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->a:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public i()V
    .locals 1

    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->d:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const v0, 0xb309

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public j()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const-string v0, "CreativeWidget"

    const-string v1, "pauseCreative"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->e:I

    invoke-virtual {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->h()V

    return-void
.end method

.method public k()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const-string v0, "CreativeWidget"

    const-string v1, "resumeCreative"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->e:I

    invoke-virtual {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->f()V

    return-void
.end method

.method public l()Landroid/view/View;
    .locals 2

    const-string v0, "CreativeWidget"

    const-string v1, "showAllView"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->m:Lcom/mgmi/platform/view/ViewGroup/widget/g;

    invoke-virtual {p0, v0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->a(Lcom/mgmi/platform/view/ViewGroup/widget/g;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public m()V
    .locals 2

    const-string v0, "CreativeWidget"

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->g()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->b:I

    iput v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->e:I

    return-void
.end method

.method public n()V
    .locals 1

    invoke-virtual {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->l()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->k:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->i()V

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public p()Z
    .locals 1

    iget p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->e:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public q()Z
    .locals 1

    iget p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->e:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public r()Z
    .locals 2

    iget p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->e:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->f:Lcom/mgmi/platform/view/ViewGroup/widget/b$a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->m:Lcom/mgmi/platform/view/ViewGroup/widget/g;

    invoke-virtual {v0, p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b$a;->a(Lcom/mgmi/platform/view/ViewGroup/widget/g;)V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->f:Lcom/mgmi/platform/view/ViewGroup/widget/b$a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->m:Lcom/mgmi/platform/view/ViewGroup/widget/g;

    invoke-virtual {v0, p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b$a;->b(Lcom/mgmi/platform/view/ViewGroup/widget/g;)V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->f:Lcom/mgmi/platform/view/ViewGroup/widget/b$a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->m:Lcom/mgmi/platform/view/ViewGroup/widget/g;

    invoke-virtual {v0, p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b$a;->c(Lcom/mgmi/platform/view/ViewGroup/widget/g;)V

    :cond_0
    return-void
.end method

.method public v()V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->f:Lcom/mgmi/platform/view/ViewGroup/widget/b$a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->m:Lcom/mgmi/platform/view/ViewGroup/widget/g;

    invoke-virtual {v0, p0}, Lcom/mgmi/platform/view/ViewGroup/widget/b$a;->d(Lcom/mgmi/platform/view/ViewGroup/widget/g;)V

    :cond_0
    return-void
.end method
