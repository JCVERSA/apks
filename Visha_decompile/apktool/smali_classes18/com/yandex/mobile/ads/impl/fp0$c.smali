.class final Lcom/yandex/mobile/ads/impl/fp0$c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/fp0;->a(Ljava/lang/String;)V
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
    c = "com.yandex.mobile.ads.features.debugpanel.ui.viewmodel.IntegrationInspectorViewModel$showMessage$1"
    f = "IntegrationInspectorViewModel.kt"
    l = {
        0x90
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field b:I

.field final synthetic c:Lcom/yandex/mobile/ads/impl/fp0;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/fp0;Ljava/lang/String;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/fp0;",
            "Ljava/lang/String;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/fp0$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fp0$c;->c:Lcom/yandex/mobile/ads/impl/fp0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/fp0$c;->d:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 1
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

    new-instance p1, Lcom/yandex/mobile/ads/impl/fp0$c;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fp0$c;->c:Lcom/yandex/mobile/ads/impl/fp0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fp0$c;->d:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/yandex/mobile/ads/impl/fp0$c;-><init>(Lcom/yandex/mobile/ads/impl/fp0;Ljava/lang/String;Lwh1;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/fp0$c;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fp0$c;->c:Lcom/yandex/mobile/ads/impl/fp0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fp0$c;->d:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/yandex/mobile/ads/impl/fp0$c;-><init>(Lcom/yandex/mobile/ads/impl/fp0;Ljava/lang/String;Lwh1;)V

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/fp0$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/impl/fp0$c;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/fp0$c;->c:Lcom/yandex/mobile/ads/impl/fp0;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/fp0;->k(Lcom/yandex/mobile/ads/impl/fp0;)Lps0;

    move-result-object p1

    new-instance v1, Lcom/yandex/mobile/ads/impl/ey$e;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/fp0$c;->d:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/yandex/mobile/ads/impl/ey$e;-><init>(Ljava/lang/String;)V

    iput v2, p0, Lcom/yandex/mobile/ads/impl/fp0$c;->b:I

    invoke-interface {p1, v1, p0}, Lbc9;->l(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
