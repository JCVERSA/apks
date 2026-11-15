.class final Lcom/yandex/mobile/ads/impl/sq1$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/sq1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/sq1;


# direct methods
.method private constructor <init>(Lcom/yandex/mobile/ads/impl/sq1;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sq1$a;->a:Lcom/yandex/mobile/ads/impl/sq1;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/sq1;Lotd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/sq1$a;-><init>(Lcom/yandex/mobile/ads/impl/sq1;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sq1$a;->a:Lcom/yandex/mobile/ads/impl/sq1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sq1;->c(Lcom/yandex/mobile/ads/impl/sq1;)Lcom/yandex/mobile/ads/impl/rq1;

    move-result-object p1

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sq1;->a(Lcom/yandex/mobile/ads/impl/sq1;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yandex/mobile/ads/impl/rq1;->a(Landroid/content/Context;)I

    move-result p1

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sq1;->e(Lcom/yandex/mobile/ads/impl/sq1;)I

    move-result p2

    if-eq p2, p1, :cond_0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/sq1;->g(Lcom/yandex/mobile/ads/impl/sq1;I)V

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sq1;->b(Lcom/yandex/mobile/ads/impl/sq1;)Lcom/yandex/mobile/ads/impl/sq1$b;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Lcom/yandex/mobile/ads/impl/sq1$b;->a(Lcom/yandex/mobile/ads/impl/sq1;I)V

    :cond_0
    return-void
.end method
