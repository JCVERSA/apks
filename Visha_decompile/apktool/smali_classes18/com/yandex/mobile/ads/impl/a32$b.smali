.class final Lcom/yandex/mobile/ads/impl/a32$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/a32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/a32;


# direct methods
.method private constructor <init>(Lcom/yandex/mobile/ads/impl/a32;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/a32$b;->a:Lcom/yandex/mobile/ads/impl/a32;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/a32;Lr2d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/a32$b;-><init>(Lcom/yandex/mobile/ads/impl/a32;)V

    return-void
.end method

.method private static a(Lcom/yandex/mobile/ads/impl/a32;)V
    .locals 3

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/a32;->c(Lcom/yandex/mobile/ads/impl/a32;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/a32;->d(Lcom/yandex/mobile/ads/impl/a32;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/a32;->j(Landroid/media/AudioManager;I)I

    move-result v0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/a32;->c(Lcom/yandex/mobile/ads/impl/a32;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/a32;->d(Lcom/yandex/mobile/ads/impl/a32;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/impl/a32;->i(Landroid/media/AudioManager;I)Z

    move-result v1

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/a32;->e(Lcom/yandex/mobile/ads/impl/a32;)I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/a32;->f(Lcom/yandex/mobile/ads/impl/a32;)Z

    move-result v2

    if-eq v2, v1, :cond_1

    :cond_0
    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/a32;->g(Lcom/yandex/mobile/ads/impl/a32;I)V

    invoke-static {p0, v1}, Lcom/yandex/mobile/ads/impl/a32;->h(Lcom/yandex/mobile/ads/impl/a32;Z)V

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/a32;->b(Lcom/yandex/mobile/ads/impl/a32;)Lcom/yandex/mobile/ads/impl/a32$a;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/r60$b;

    invoke-virtual {p0, v1, v0}, Lcom/yandex/mobile/ads/impl/r60$b;->a(ZI)V

    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/a32;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/a32$b;->a(Lcom/yandex/mobile/ads/impl/a32;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/a32$b;->a:Lcom/yandex/mobile/ads/impl/a32;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/a32;->a(Lcom/yandex/mobile/ads/impl/a32;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/yandex/mobile/ads/impl/dp2;

    invoke-direct {p2, p0}, Lcom/yandex/mobile/ads/impl/dp2;-><init>(Lcom/yandex/mobile/ads/impl/a32;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
