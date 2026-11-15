.class public final Lcom/yandex/mobile/ads/impl/ae2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/dq1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/dq1<",
        "Ljava/util/List<",
        "+",
        "Lcom/yandex/mobile/ads/impl/mb2;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcr0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcr0;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ae2;->a:Lcr0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/sb2;)V
    .locals 1

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ae2;->a:Lcr0;

    invoke-interface {v0}, Lcr0;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ae2;->a:Lcr0;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    new-instance v0, Lcom/yandex/mobile/ads/impl/zd2$a;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/zd2$a;-><init>(Lcom/yandex/mobile/ads/impl/sb2;)V

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 4
    check-cast p1, Ljava/util/List;

    .line 5
    const-string v0, "result"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ae2;->a:Lcr0;

    invoke-interface {v0}, Lcr0;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ae2;->a:Lcr0;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    new-instance v0, Lcom/yandex/mobile/ads/impl/zd2$b;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/zd2$b;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
