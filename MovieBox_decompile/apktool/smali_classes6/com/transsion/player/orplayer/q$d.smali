.class public final Lcom/transsion/player/orplayer/q$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/orplayer/q;-><init>(Landroid/content/Context;Lhn/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/player/orplayer/q;


# direct methods
.method constructor <init>(Lcom/transsion/player/orplayer/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/player/orplayer/q$d;->a:Lcom/transsion/player/orplayer/q;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Landroid/view/SurfaceHolder;Lcom/transsion/player/orplayer/q;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/q$d;->e(Landroid/view/SurfaceHolder;Lcom/transsion/player/orplayer/q;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/transsion/player/orplayer/q;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/q$d;->d(Lcom/transsion/player/orplayer/q;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/player/orplayer/q;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/q$d;->f(Lcom/transsion/player/orplayer/q;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final d(Lcom/transsion/player/orplayer/q;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/q;->m(Lcom/transsion/player/orplayer/q;)Lcom/aliyun/player/AliPlayer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/aliyun/player/IPlayer;->surfaceChanged()V

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method private static final e(Landroid/view/SurfaceHolder;Lcom/transsion/player/orplayer/q;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lcom/transsion/player/orplayer/q;->m(Lcom/transsion/player/orplayer/q;)Lcom/aliyun/player/AliPlayer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-interface {p1, p0}, Lcom/aliyun/player/IPlayer;->setSurface(Landroid/view/Surface;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private static final f(Lcom/transsion/player/orplayer/q;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/q;->m(Lcom/transsion/player/orplayer/q;)Lcom/aliyun/player/AliPlayer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-interface {p0, v0}, Lcom/aliyun/player/IPlayer;->setSurface(Landroid/view/Surface;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    const-string p2, "holder"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/player/orplayer/q$d;->a:Lcom/transsion/player/orplayer/q;

    .line 7
    .line 8
    new-instance p2, Lcom/transsion/player/orplayer/t;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Lcom/transsion/player/orplayer/t;-><init>(Lcom/transsion/player/orplayer/q;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/transsion/player/orplayer/q;->t(Lcom/transsion/player/orplayer/q;Lkotlin/jvm/functions/Function0;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/player/orplayer/q$d;->a:Lcom/transsion/player/orplayer/q;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsion/player/orplayer/q;->n(Lcom/transsion/player/orplayer/q;)Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/transsion/player/orplayer/q$d;->a:Lcom/transsion/player/orplayer/q;

    .line 15
    .line 16
    new-instance v2, Lcom/transsion/player/orplayer/r;

    .line 17
    .line 18
    invoke-direct {v2, p1, v1}, Lcom/transsion/player/orplayer/r;-><init>(Landroid/view/SurfaceHolder;Lcom/transsion/player/orplayer/q;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/player/orplayer/q$d;->a:Lcom/transsion/player/orplayer/q;

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/player/orplayer/s;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/transsion/player/orplayer/s;-><init>(Lcom/transsion/player/orplayer/q;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/transsion/player/orplayer/q;->t(Lcom/transsion/player/orplayer/q;Lkotlin/jvm/functions/Function0;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
