.class final Lcom/yandex/mobile/ads/impl/ck$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/ck;->a(Ljava/lang/Object;Lcom/monetization/ads/mediation/base/model/MediatedAdObjectInfo;Lc74;Le74;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.monetization.ads.base.BaseAdLoadController$onUnverifiedMediatedAdLoaded$1"
    f = "BaseAdLoadController.kt"
    l = {
        0x10a,
        0x10c,
        0x110
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field b:Ljava/lang/Object;

.field c:I

.field final synthetic d:Lcom/yandex/mobile/ads/impl/ck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/ck<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:Lcom/monetization/ads/mediation/base/model/MediatedAdObjectInfo;

.field final synthetic g:Lc74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc74;"
        }
    .end annotation
.end field

.field final synthetic h:Le74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le74;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ck;Ljava/lang/Object;Lcom/monetization/ads/mediation/base/model/MediatedAdObjectInfo;Lc74;Le74;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ck<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Lcom/monetization/ads/mediation/base/model/MediatedAdObjectInfo;",
            "Lc74;",
            "Le74;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/ck$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ck$d;->d:Lcom/yandex/mobile/ads/impl/ck;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ck$d;->e:Ljava/lang/Object;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ck$d;->f:Lcom/monetization/ads/mediation/base/model/MediatedAdObjectInfo;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ck$d;->g:Lc74;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/ck$d;->h:Le74;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lwh1<",
            "*>;)",
            "Lwh1<",
            "Lzfb;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/yandex/mobile/ads/impl/ck$d;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ck$d;->d:Lcom/yandex/mobile/ads/impl/ck;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ck$d;->e:Ljava/lang/Object;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ck$d;->f:Lcom/monetization/ads/mediation/base/model/MediatedAdObjectInfo;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/ck$d;->g:Lc74;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/ck$d;->h:Le74;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/ck$d;-><init>(Lcom/yandex/mobile/ads/impl/ck;Ljava/lang/Object;Lcom/monetization/ads/mediation/base/model/MediatedAdObjectInfo;Lc74;Le74;Lwh1;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/ck$d;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/ck$d;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ck$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/impl/ck$d;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ck$d;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    :cond_3
    move-object v1, p1

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ck$d;->d:Lcom/yandex/mobile/ads/impl/ck;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ck;->j()Lcom/yandex/mobile/ads/impl/l7;

    move-result-object p1

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ck$d;->e:Ljava/lang/Object;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/ck$d;->d:Lcom/yandex/mobile/ads/impl/ck;

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ck;->k()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object v6

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/ck$d;->f:Lcom/monetization/ads/mediation/base/model/MediatedAdObjectInfo;

    iput v5, p0, Lcom/yandex/mobile/ads/impl/ck$d;->c:I

    invoke-virtual {p1, v1, v6, v7, p0}, Lcom/yandex/mobile/ads/impl/l7;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/o8;Lcom/monetization/ads/mediation/base/model/MediatedAdObjectInfo;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :goto_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ck$d;->g:Lc74;

    invoke-static {v1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v1

    check-cast v5, Lzfb;

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object v5

    new-instance v6, Lcom/yandex/mobile/ads/impl/ck$d$a;

    invoke-direct {v6, p1, v2}, Lcom/yandex/mobile/ads/impl/ck$d$a;-><init>(Lc74;Lwh1;)V

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/ck$d;->b:Ljava/lang/Object;

    iput v4, p0, Lcom/yandex/mobile/ads/impl/ck$d;->c:I

    invoke-static {v5, v6, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ck$d;->h:Le74;

    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object v5

    new-instance v6, Lcom/yandex/mobile/ads/impl/ck$d$b;

    invoke-direct {v6, p1, v4, v2}, Lcom/yandex/mobile/ads/impl/ck$d$b;-><init>(Le74;Ljava/lang/Throwable;Lwh1;)V

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/ck$d;->b:Ljava/lang/Object;

    iput v3, p0, Lcom/yandex/mobile/ads/impl/ck$d;->c:I

    invoke-static {v5, v6, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    return-object v0

    :cond_6
    :goto_2
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
