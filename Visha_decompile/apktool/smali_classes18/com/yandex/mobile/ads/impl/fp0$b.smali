.class final Lcom/yandex/mobile/ads/impl/fp0$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/fp0;->e()V
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
    c = "com.yandex.mobile.ads.features.debugpanel.ui.viewmodel.IntegrationInspectorViewModel$shareReport$1"
    f = "IntegrationInspectorViewModel.kt"
    l = {
        0x83
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field b:I

.field final synthetic c:Lcom/yandex/mobile/ads/impl/fp0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/fp0;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/fp0;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/fp0$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fp0$b;->c:Lcom/yandex/mobile/ads/impl/fp0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 0
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

    new-instance p1, Lcom/yandex/mobile/ads/impl/fp0$b;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fp0$b;->c:Lcom/yandex/mobile/ads/impl/fp0;

    invoke-direct {p1, p0, p2}, Lcom/yandex/mobile/ads/impl/fp0$b;-><init>(Lcom/yandex/mobile/ads/impl/fp0;Lwh1;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/fp0$b;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fp0$b;->c:Lcom/yandex/mobile/ads/impl/fp0;

    invoke-direct {p1, p0, p2}, Lcom/yandex/mobile/ads/impl/fp0$b;-><init>(Lcom/yandex/mobile/ads/impl/fp0;Lwh1;)V

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/fp0$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/impl/fp0$b;->b:I

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

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/fp0$b;->c:Lcom/yandex/mobile/ads/impl/fp0;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/fp0;->h(Lcom/yandex/mobile/ads/impl/fp0;)Lcom/yandex/mobile/ads/impl/ne0;

    move-result-object p1

    iput v2, p0, Lcom/yandex/mobile/ads/impl/fp0$b;->b:I

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/ne0;->a(Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/yandex/mobile/ads/impl/ll0;

    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/ll0$c;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/yandex/mobile/ads/impl/ey$d;

    check-cast p1, Lcom/yandex/mobile/ads/impl/ll0$c;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ll0$c;->a()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/ey$d;-><init>(Landroid/net/Uri;)V

    goto :goto_1

    :cond_3
    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/ll0$a;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/yandex/mobile/ads/impl/ey$c;

    check-cast p1, Lcom/yandex/mobile/ads/impl/ll0$a;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ll0$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/ey$c;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    instance-of p1, p1, Lcom/yandex/mobile/ads/impl/ll0$b;

    if-eqz p1, :cond_5

    sget-object v0, Lcom/yandex/mobile/ads/impl/ey$b;->a:Lcom/yandex/mobile/ads/impl/ey$b;

    :goto_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fp0$b;->c:Lcom/yandex/mobile/ads/impl/fp0;

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/fp0;->a(Lcom/yandex/mobile/ads/impl/fp0;Lcom/yandex/mobile/ads/impl/ey;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
