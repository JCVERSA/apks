.class public final Lcom/yandex/mobile/ads/impl/pr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/co1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/pr;-><init>(Ljava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/co1;)V
    .locals 1

    .line 2
    const-string v0, "delegate"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pr;->a:Lcom/yandex/mobile/ads/impl/co1;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 5
    const-string v0, "timeUnit"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/yandex/mobile/ads/impl/co1;

    .line 7
    sget-object v1, Lcom/yandex/mobile/ads/impl/l42;->h:Lcom/yandex/mobile/ads/impl/l42;

    .line 8
    invoke-direct {v0, v1, p1}, Lcom/yandex/mobile/ads/impl/co1;-><init>(Lcom/yandex/mobile/ads/impl/l42;Ljava/util/concurrent/TimeUnit;)V

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/pr;-><init>(Lcom/yandex/mobile/ads/impl/co1;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/co1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pr;->a:Lcom/yandex/mobile/ads/impl/co1;

    return-object p0
.end method
