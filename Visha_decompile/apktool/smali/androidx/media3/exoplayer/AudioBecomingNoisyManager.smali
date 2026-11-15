.class final Landroidx/media3/exoplayer/AudioBecomingNoisyManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;,
        Landroidx/media3/exoplayer/AudioBecomingNoisyManager$EventListener;
    }
.end annotation


# instance fields
.field private final backgroundHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private final context:Landroid/content/Context;

.field private isEnabled:Z

.field private final receiver:Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/exoplayer/AudioBecomingNoisyManager$EventListener;Landroidx/media3/common/util/Clock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager;->context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-interface {p5, p2, p1}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager;->backgroundHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance p2, Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    invoke-interface {p5, p3, p1}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p1

    invoke-direct {p2, p0, p1, p4}, Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;-><init>(Landroidx/media3/exoplayer/AudioBecomingNoisyManager;Landroidx/media3/common/util/HandlerWrapper;Landroidx/media3/exoplayer/AudioBecomingNoisyManager$EventListener;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager;->receiver:Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/AudioBecomingNoisyManager;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/AudioBecomingNoisyManager;->lambda$setEnabled$0()V

    return-void
.end method

.method public static synthetic access$000(Landroidx/media3/exoplayer/AudioBecomingNoisyManager;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager;->isEnabled:Z

    return p0
.end method

.method public static synthetic b(Landroidx/media3/exoplayer/AudioBecomingNoisyManager;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/AudioBecomingNoisyManager;->lambda$setEnabled$1()V

    return-void
.end method

.method private synthetic lambda$setEnabled$0()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager;->context:Landroid/content/Context;

    iget-object p0, p0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager;->receiver:Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private synthetic lambda$setEnabled$1()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager;->context:Landroid/content/Context;

    iget-object p0, p0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager;->receiver:Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnprotectedReceiver"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager;->isEnabled:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager;->backgroundHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v0, Landroidx/media3/exoplayer/a;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/a;-><init>(Landroidx/media3/exoplayer/AudioBecomingNoisyManager;)V

    invoke-interface {p1, v0}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager;->isEnabled:Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager;->backgroundHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v0, Landroidx/media3/exoplayer/b;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/b;-><init>(Landroidx/media3/exoplayer/AudioBecomingNoisyManager;)V

    invoke-interface {p1, v0}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager;->isEnabled:Z

    :goto_0
    return-void
.end method
