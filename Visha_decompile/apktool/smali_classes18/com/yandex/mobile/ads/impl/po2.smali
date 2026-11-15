.class public final Lcom/yandex/mobile/ads/impl/po2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/lo2$a;


# instance fields
.field private final a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/yandex/mobile/ads/impl/lo2;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/yandex/mobile/ads/impl/lo2;


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/po2;->b:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/po2;->c:Lcom/yandex/mobile/ads/impl/lo2;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v3, 0x1

    const-wide/16 v4, 0x1

    const/4 v2, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/po2;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/po2;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/lo2;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/po2;->c:Lcom/yandex/mobile/ads/impl/lo2;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/po2;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/lo2;->a(Ljava/util/concurrent/ThreadPoolExecutor;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/po2;->c:Lcom/yandex/mobile/ads/impl/lo2;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/po2;->b()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/lo2;)V
    .locals 1

    .line 2
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/lo2;->a(Lcom/yandex/mobile/ads/impl/lo2$a;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/po2;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/po2;->c:Lcom/yandex/mobile/ads/impl/lo2;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/po2;->b()V

    :cond_0
    return-void
.end method
