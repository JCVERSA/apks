.class public Lcom/transsion/magicmovie/application/VideoApplication$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/applife/AppLifecycleObserver$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicmovie/application/VideoApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicmovie/application/VideoApplication;


# direct methods
.method public constructor <init>(Lcom/transsion/magicmovie/application/VideoApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicmovie/application/VideoApplication$a;->a:Lcom/transsion/magicmovie/application/VideoApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, Lbx9;->x()V

    iget-object v0, p0, Lcom/transsion/magicmovie/application/VideoApplication$a;->a:Lcom/transsion/magicmovie/application/VideoApplication;

    invoke-static {v0}, Lcom/transsion/magicmovie/application/VideoApplication;->C(Lcom/transsion/magicmovie/application/VideoApplication;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicmovie/application/VideoApplication$a;->a:Lcom/transsion/magicmovie/application/VideoApplication;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/magicmovie/application/VideoApplication;->D(Lcom/transsion/magicmovie/application/VideoApplication;Z)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicmovie/application/VideoApplication$a;->a:Lcom/transsion/magicmovie/application/VideoApplication;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/magicmovie/application/VideoApplication;->E(Lcom/transsion/magicmovie/application/VideoApplication;Z)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicmovie/application/VideoApplication$a;->a:Lcom/transsion/magicmovie/application/VideoApplication;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/magicmovie/application/VideoApplication;->E(Lcom/transsion/magicmovie/application/VideoApplication;Z)V

    invoke-static {}, Lcom/transsion/audio/widgets/MusicHelper;->clearBitmapCache()V

    sget-boolean v0, Lpp3;->b:Z

    if-nez v0, :cond_1

    sget-object v0, Ldv9;->a:Ldv9$a;

    invoke-virtual {v0}, Ldv9$a;->a()Ldv9;

    move-result-object v0

    invoke-virtual {v0}, Ldv9;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ls45;->a:Ls45$a;

    invoke-virtual {v0}, Ls45$a;->a()Ls45;

    move-result-object v0

    invoke-virtual {v0}, Ls45;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ls45;->a()Z

    move-result v1

    iget-object p0, p0, Lcom/transsion/magicmovie/application/VideoApplication$a;->a:Lcom/transsion/magicmovie/application/VideoApplication;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Ls45;->d(Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method
