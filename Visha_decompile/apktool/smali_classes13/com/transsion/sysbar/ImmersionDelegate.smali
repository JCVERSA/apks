.class Lcom/transsion/sysbar/ImmersionDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mBarProperties:Ld80;

.field private mImmersionBar:Lcom/transsion/sysbar/ImmersionBar;

.field private mNotchHeight:I

.field private mOnBarListener:Lme7;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iget-object v0, p0, Lcom/transsion/sysbar/ImmersionDelegate;->mImmersionBar:Lcom/transsion/sysbar/ImmersionBar;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/transsion/sysbar/ImmersionBar;

    invoke-direct {v0, p1, p2}, Lcom/transsion/sysbar/ImmersionBar;-><init>(Landroid/app/Activity;Landroid/app/Dialog;)V

    iput-object v0, p0, Lcom/transsion/sysbar/ImmersionDelegate;->mImmersionBar:Lcom/transsion/sysbar/ImmersionBar;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/transsion/sysbar/ImmersionDelegate;->mImmersionBar:Lcom/transsion/sysbar/ImmersionBar;

    if-nez v0, :cond_4

    .line 4
    new-instance v0, Lcom/transsion/sysbar/ImmersionBar;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Lcom/transsion/sysbar/ImmersionBar;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/transsion/sysbar/ImmersionDelegate;->mImmersionBar:Lcom/transsion/sysbar/ImmersionBar;

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/transsion/sysbar/ImmersionDelegate;->mImmersionBar:Lcom/transsion/sysbar/ImmersionBar;

    if-nez v0, :cond_4

    .line 7
    instance-of v0, p1, Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Lcom/transsion/sysbar/ImmersionBar;

    check-cast p1, Landroidx/fragment/app/DialogFragment;

    invoke-direct {v0, p1}, Lcom/transsion/sysbar/ImmersionBar;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object v0, p0, Lcom/transsion/sysbar/ImmersionDelegate;->mImmersionBar:Lcom/transsion/sysbar/ImmersionBar;

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Lcom/transsion/sysbar/ImmersionBar;

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-direct {v0, p1}, Lcom/transsion/sysbar/ImmersionBar;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/transsion/sysbar/ImmersionDelegate;->mImmersionBar:Lcom/transsion/sysbar/ImmersionBar;

    goto :goto_0

    .line 10
    :cond_2
    instance-of v0, p1, Landroid/app/Fragment;

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/transsion/sysbar/ImmersionDelegate;->mImmersionBar:Lcom/transsion/sysbar/ImmersionBar;

    if-nez v0, :cond_4

    .line 12
    instance-of v0, p1, Landroid/app/DialogFragment;

    if-eqz v0, :cond_3

    .line 13
    new-instance v0, Lcom/transsion/sysbar/ImmersionBar;

    check-cast p1, Landroid/app/DialogFragment;

    invoke-direct {v0, p1}, Lcom/transsion/sysbar/ImmersionBar;-><init>(Landroid/app/DialogFragment;)V

    iput-object v0, p0, Lcom/transsion/sysbar/ImmersionDelegate;->mImmersionBar:Lcom/transsion/sysbar/ImmersionBar;

    goto :goto_0

    .line 14
    :cond_3
    new-instance v0, Lcom/transsion/sysbar/ImmersionBar;

    check-cast p1, Landroid/app/Fragment;

    invoke-direct {v0, p1}, Lcom/transsion/sysbar/ImmersionBar;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/transsion/sysbar/ImmersionDelegate;->mImmersionBar:Lcom/transsion/sysbar/ImmersionBar;

    :cond_4
    :goto_0
    return-void
.end method

.method private barChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/sysbar/ImmersionDelegate;->mImmersionBar:Lcom/transsion/sysbar/ImmersionBar;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/sysbar/ImmersionBar;->initialized()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/sysbar/ImmersionDelegate;->mImmersionBar:Lcom/transsion/sysbar/ImmersionBar;

    invoke-virtual {p0}, Lcom/transsion/sysbar/ImmersionBar;->getBarParams()Lc80;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method


# virtual methods
.method public get()Lcom/transsion/sysbar/ImmersionBar;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sysbar/ImmersionDelegate;->mImmersionBar:Lcom/transsion/sysbar/ImmersionBar;

    return-object p0
.end method

.method public onActivityCreated(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sysbar/ImmersionDelegate;->barChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/sysbar/ImmersionDelegate;->mImmersionBar:Lcom/transsion/sysbar/ImmersionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/sysbar/ImmersionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/transsion/sysbar/ImmersionDelegate;->barChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/transsion/sysbar/ImmersionDelegate;->mImmersionBar:Lcom/transsion/sysbar/ImmersionBar;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/sysbar/ImmersionBar;->onDestroy()V

    iput-object v0, p0, Lcom/transsion/sysbar/ImmersionDelegate;->mImmersionBar:Lcom/transsion/sysbar/ImmersionBar;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sysbar/ImmersionDelegate;->mImmersionBar:Lcom/transsion/sysbar/ImmersionBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/sysbar/ImmersionBar;->onResume()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/sysbar/ImmersionDelegate;->mImmersionBar:Lcom/transsion/sysbar/ImmersionBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/sysbar/ImmersionBar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/sysbar/ImmersionDelegate;->mImmersionBar:Lcom/transsion/sysbar/ImmersionBar;

    invoke-virtual {v0}, Lcom/transsion/sysbar/ImmersionBar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/transsion/sysbar/a;

    invoke-direct {v1, v0}, Lcom/transsion/sysbar/a;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/transsion/sysbar/ImmersionDelegate;->mBarProperties:Ld80;

    invoke-virtual {v1}, Lcom/transsion/sysbar/a;->k()I

    move-result v3

    invoke-virtual {v2, v3}, Ld80;->g(I)V

    iget-object v2, p0, Lcom/transsion/sysbar/ImmersionDelegate;->mBarProperties:Ld80;

    invoke-virtual {v1}, Lcom/transsion/sysbar/a;->m()Z

    move-result v3

    invoke-virtual {v2, v3}, Ld80;->b(Z)V

    iget-object v2, p0, Lcom/transsion/sysbar/ImmersionDelegate;->mBarProperties:Ld80;

    invoke-virtual {v1}, Lcom/transsion/sysbar/a;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ld80;->c(I)V

    iget-object v2, p0, Lcom/transsion/sysbar/ImmersionDelegate;->mBarProperties:Ld80;

    invoke-virtual {v1}, Lcom/transsion/sysbar/a;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Ld80;->d(I)V

    iget-object v2, p0, Lcom/transsion/sysbar/ImmersionDelegate;->mBarProperties:Ld80;

    invoke-virtual {v1}, Lcom/transsion/sysbar/a;->a()I

    move-result v1

    invoke-virtual {v2, v1}, Ld80;->a(I)V

    invoke-static {v0}, Lcom/transsion/sysbar/NotchUtils;->r(Landroid/app/Activity;)Z

    move-result v1

    iget-object v2, p0, Lcom/transsion/sysbar/ImmersionDelegate;->mBarProperties:Ld80;

    invoke-virtual {v2, v1}, Ld80;->f(Z)V

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/transsion/sysbar/ImmersionDelegate;->mNotchHeight:I

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/transsion/sysbar/NotchUtils;->g(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/transsion/sysbar/ImmersionDelegate;->mNotchHeight:I

    iget-object p0, p0, Lcom/transsion/sysbar/ImmersionDelegate;->mBarProperties:Ld80;

    invoke-virtual {p0, v0}, Ld80;->e(I)V

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    return-void
.end method
