.class public Lcom/transsion/audio/player/MusicPlayManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/player/MusicPlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/audio/player/MusicPlayManager;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/player/MusicPlayManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager$a;->b:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager$a;->b:Lcom/transsion/audio/player/MusicPlayManager;

    check-cast p2, Lcom/transsion/audio/service/MusicService$ServiceBinder;

    invoke-virtual {p2}, Lcom/transsion/audio/service/MusicService$ServiceBinder;->getService()Lcom/transsion/audio/service/MusicService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/audio/player/MusicPlayManager;->w(Lcom/transsion/audio/player/MusicPlayManager;Lcom/transsion/audio/service/MusicService;)V

    const-string p1, "MusicPlayManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceConnected "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager$a;->b:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-static {v0}, Lcom/transsion/audio/player/MusicPlayManager;->t(Lcom/transsion/audio/player/MusicPlayManager;)Lcom/transsion/audio/service/MusicService;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsPlaying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager$a;->b:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-static {v1}, Lcom/transsion/audio/player/MusicPlayManager;->s(Lcom/transsion/audio/player/MusicPlayManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager$a;->b:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-static {p1}, Lcom/transsion/audio/player/MusicPlayManager;->q(Lcom/transsion/audio/player/MusicPlayManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lvf;->f(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager$a;->b:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-static {p1}, Lcom/transsion/audio/player/MusicPlayManager;->r(Lcom/transsion/audio/player/MusicPlayManager;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "fromwidget"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object p2, p0, Lcom/transsion/audio/player/MusicPlayManager$a;->b:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-static {p2}, Lcom/transsion/audio/player/MusicPlayManager;->r(Lcom/transsion/audio/player/MusicPlayManager;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "fromwidgetType"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager$a;->b:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-static {p1}, Lcom/transsion/audio/player/MusicPlayManager;->s(Lcom/transsion/audio/player/MusicPlayManager;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager$a;->b:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-static {p1}, Lcom/transsion/audio/player/MusicPlayManager;->t(Lcom/transsion/audio/player/MusicPlayManager;)Lcom/transsion/audio/service/MusicService;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/transsion/audio/service/MusicService;->D(ZI)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager$a;->b:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-static {p1}, Lcom/transsion/audio/player/MusicPlayManager;->s(Lcom/transsion/audio/player/MusicPlayManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager$a;->b:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->y1()V

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager$a;->b:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->N()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "MusicPlayManager"

    const-string v0, "onServiceDisconnected "

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/audio/player/MusicPlayManager$a;->b:Lcom/transsion/audio/player/MusicPlayManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->w(Lcom/transsion/audio/player/MusicPlayManager;Lcom/transsion/audio/service/MusicService;)V

    return-void
.end method
