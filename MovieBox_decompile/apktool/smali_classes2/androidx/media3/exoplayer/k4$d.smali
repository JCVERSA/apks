.class final Landroidx/media3/exoplayer/k4$d;
.super Landroid/content/BroadcastReceiver;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/k4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media3/exoplayer/k4;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/k4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/k4$d;->a:Landroidx/media3/exoplayer/k4;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/k4;Landroidx/media3/exoplayer/k4$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/k4$d;-><init>(Landroidx/media3/exoplayer/k4;)V

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/k4$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/k4$d;->b()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic b()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/k4$d;->a:Landroidx/media3/exoplayer/k4;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/k4;->h(Landroidx/media3/exoplayer/k4;)Landroidx/media3/exoplayer/k4$d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/k4$d;->a:Landroidx/media3/exoplayer/k4;

    .line 11
    .line 12
    invoke-static {v0}, Landroidx/media3/exoplayer/k4;->g(Landroidx/media3/exoplayer/k4;)Landroidx/media3/common/util/g;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroidx/media3/common/util/g;->d()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroidx/media3/exoplayer/k4$c;

    .line 21
    .line 22
    iget v0, v0, Landroidx/media3/exoplayer/k4$c;->a:I

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/media3/exoplayer/k4$d;->a:Landroidx/media3/exoplayer/k4;

    .line 25
    .line 26
    invoke-static {v1}, Landroidx/media3/exoplayer/k4;->g(Landroidx/media3/exoplayer/k4;)Landroidx/media3/common/util/g;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Landroidx/media3/exoplayer/k4$d;->a:Landroidx/media3/exoplayer/k4;

    .line 31
    .line 32
    invoke-static {v2, v0}, Landroidx/media3/exoplayer/k4;->i(Landroidx/media3/exoplayer/k4;I)Landroidx/media3/exoplayer/k4$c;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Landroidx/media3/common/util/g;->i(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/k4$d;->a:Landroidx/media3/exoplayer/k4;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/exoplayer/k4;->g(Landroidx/media3/exoplayer/k4;)Landroidx/media3/common/util/g;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance p2, Landroidx/media3/exoplayer/l4;

    .line 8
    .line 9
    invoke-direct {p2, p0}, Landroidx/media3/exoplayer/l4;-><init>(Landroidx/media3/exoplayer/k4$d;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/g;->h(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
