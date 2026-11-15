.class final Lcom/yandex/mobile/ads/impl/hz$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/hz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "l"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroid/media/AudioTrack$StreamEventCallback;

.field final synthetic c:Lcom/yandex/mobile/ads/impl/hz;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/hz;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hz$l;->c:Lcom/yandex/mobile/ads/impl/hz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hz$l;->a:Landroid/os/Handler;

    new-instance p1, Lcom/yandex/mobile/ads/impl/hz$l$a;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/hz$l$a;-><init>(Lcom/yandex/mobile/ads/impl/hz$l;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hz$l;->b:Landroid/media/AudioTrack$StreamEventCallback;

    return-void
.end method


# virtual methods
.method public final a(Landroid/media/AudioTrack;)V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hz$l;->a:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lde1;

    invoke-direct {v1, v0}, Lde1;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hz$l;->b:Landroid/media/AudioTrack$StreamEventCallback;

    invoke-virtual {p1, v1, p0}, Landroid/media/AudioTrack;->registerStreamEventCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V

    return-void
.end method

.method public final b(Landroid/media/AudioTrack;)V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hz$l;->b:Landroid/media/AudioTrack$StreamEventCallback;

    invoke-virtual {p1, v0}, Landroid/media/AudioTrack;->unregisterStreamEventCallback(Landroid/media/AudioTrack$StreamEventCallback;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hz$l;->a:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
