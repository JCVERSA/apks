.class final Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/AudioBecomingNoisyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioBecomingNoisyReceiver"
.end annotation


# instance fields
.field private final eventHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private final listener:Landroidx/media3/exoplayer/AudioBecomingNoisyManager$EventListener;

.field final synthetic this$0:Landroidx/media3/exoplayer/AudioBecomingNoisyManager;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/AudioBecomingNoisyManager;Landroidx/media3/common/util/HandlerWrapper;Landroidx/media3/exoplayer/AudioBecomingNoisyManager$EventListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->this$0:Landroidx/media3/exoplayer/AudioBecomingNoisyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->eventHandler:Landroidx/media3/common/util/HandlerWrapper;

    iput-object p3, p0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->listener:Landroidx/media3/exoplayer/AudioBecomingNoisyManager$EventListener;

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->callListenerIfEnabled()V

    return-void
.end method

.method private callListenerIfEnabled()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->this$0:Landroidx/media3/exoplayer/AudioBecomingNoisyManager;

    invoke-static {v0}, Landroidx/media3/exoplayer/AudioBecomingNoisyManager;->access$000(Landroidx/media3/exoplayer/AudioBecomingNoisyManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->listener:Landroidx/media3/exoplayer/AudioBecomingNoisyManager$EventListener;

    invoke-interface {p0}, Landroidx/media3/exoplayer/AudioBecomingNoisyManager$EventListener;->onAudioBecomingNoisy()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->eventHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance p2, Landroidx/media3/exoplayer/c;

    invoke-direct {p2, p0}, Landroidx/media3/exoplayer/c;-><init>(Landroidx/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;)V

    invoke-interface {p1, p2}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
