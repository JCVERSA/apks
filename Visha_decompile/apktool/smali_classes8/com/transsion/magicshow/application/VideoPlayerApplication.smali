.class public Lcom/transsion/magicshow/application/VideoPlayerApplication;
.super Lcom/transsion/magicmovie/application/VideoApplication;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicmovie/application/VideoApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VideoPlayerApplication"

    const-string v1, "Error init isIsolated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/transsion/magicmovie/application/VideoApplication;->onCreate()V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/transsion/playercommon/core/MainApp;->l(Z)V

    const-string v1, "gp"

    invoke-static {v1}, Lge;->i(Ljava/lang/String;)V

    const v1, 0x14459

    invoke-static {v1}, Lge;->j(I)V

    new-instance v1, Lgj4;

    invoke-direct {v1}, Lgj4;-><init>()V

    invoke-static {v1}, Ln54;->b(Lcv4;)V

    invoke-super {p0}, Lcom/transsion/magicmovie/application/VideoApplication;->onCreate()V

    new-instance v1, Lnw9;

    invoke-direct {v1}, Lnw9;-><init>()V

    invoke-virtual {v1, v0}, Lnw9;->b(Z)Lnw9;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnw9;->c(Z)Lnw9;

    move-result-object v1

    invoke-static {}, Lge;->e()Z

    move-result v2

    invoke-virtual {v1, v2}, Lnw9;->d(Z)Lnw9;

    move-result-object v1

    invoke-virtual {v1, p0}, Lnw9;->a(Landroid/content/Context;)V

    invoke-static {}, Lfhb;->a()Lax4;

    move-result-object v1

    invoke-static {v1}, Lghb;->b(Lax4;)V

    invoke-static {}, Lge;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lghb;->a()Lax4;

    move-result-object v1

    const-string v2, "f0801c09498ef8fea272df9ac88acd53"

    invoke-interface {v1, p0, v2, v0}, Lax4;->a(Landroid/app/Application;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
