.class final Landroidx/media3/common/util/z$e;
.super Landroid/content/BroadcastReceiver;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media3/common/util/z;


# direct methods
.method private constructor <init>(Landroidx/media3/common/util/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/util/z$e;->a:Landroidx/media3/common/util/z;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/util/z;Landroidx/media3/common/util/z$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/common/util/z$e;-><init>(Landroidx/media3/common/util/z;)V

    return-void
.end method

.method public static synthetic a(Landroidx/media3/common/util/z$e;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/common/util/z$e;->b(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic b(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/z$e;->a:Landroidx/media3/common/util/z;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/media3/common/util/z;->c(Landroidx/media3/common/util/z;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p2, p0, Landroidx/media3/common/util/z$e;->a:Landroidx/media3/common/util/z;

    .line 2
    .line 3
    invoke-static {p2}, Landroidx/media3/common/util/z;->b(Landroidx/media3/common/util/z;)Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    new-instance v0, Landroidx/media3/common/util/e0;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Landroidx/media3/common/util/e0;-><init>(Landroidx/media3/common/util/z$e;Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
