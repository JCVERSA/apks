.class public final Lcom/yandex/mobile/ads/impl/ht0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/it0;

.field private final b:Lcom/yandex/mobile/ads/impl/y42;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/it0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/it0;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ht0;->a:Lcom/yandex/mobile/ads/impl/it0;

    new-instance v0, Lcom/yandex/mobile/ads/impl/y42;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/y42;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ht0;->b:Lcom/yandex/mobile/ads/impl/y42;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ht0;->a:Lcom/yandex/mobile/ads/impl/it0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/it0;->a()V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    const-string v0, "runnable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ht0;->b:Lcom/yandex/mobile/ads/impl/y42;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/y42;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ht0;->a:Lcom/yandex/mobile/ads/impl/it0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/it0;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
