.class public Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvz6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;->h()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;->g()V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;->f()V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;->e()V

    return-void
.end method

.method private synthetic f()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    invoke-static {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->B0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;)Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->R0(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    invoke-static {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->C0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final synthetic e()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    invoke-static {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->z0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final synthetic g()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    invoke-static {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->B0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;)Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->R0(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic h()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    invoke-static {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->B0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;)Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->R0(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConnect(I)V
    .locals 4

    const-string v0, "onConnect"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ShortPlayerDetailActivity"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    invoke-static {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->B0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;)Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    invoke-static {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->B0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;)Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lvz6;->onConnect(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    invoke-static {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->y0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;)Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/adapter/ShortPlayerBannerAdapter;->A()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    invoke-static {v2}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->A0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->H0(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    new-instance v1, Loh9;

    invoke-direct {v1, p0}, Loh9;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    iput p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Y:I

    return-void
.end method

.method public onDisconnect()V
    .locals 2

    const-string v0, "onDisconnect"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ShortPlayerDetailActivity"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    new-instance v1, Lmh9;

    invoke-direct {v1, p0}, Lmh9;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Y:I

    return-void
.end method

.method public onMobile()V
    .locals 2

    const-string v0, "onMobile"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ShortPlayerDetailActivity"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    new-instance v1, Llh9;

    invoke-direct {v1, p0}, Llh9;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    const/4 v0, 0x4

    iput v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Y:I

    return-void
.end method

.method public onWifi()V
    .locals 2

    const-string v0, "onWifi"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ShortPlayerDetailActivity"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    new-instance v1, Lnh9;

    invoke-direct {v1, p0}, Lnh9;-><init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity$a;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->Y:I

    return-void
.end method
