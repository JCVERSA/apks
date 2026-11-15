.class public Lcom/yandex/mobile/ads/impl/ih2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lnk1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/ru;->a()Lnk1;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ih2;->a:Lnk1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ih2;->a:Lnk1;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lkotlinx/coroutines/d;->f(Lnk1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public final b()Lnk1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ih2;->a:Lnk1;

    return-object p0
.end method
