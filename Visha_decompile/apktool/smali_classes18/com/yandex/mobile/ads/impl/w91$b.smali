.class final Lcom/yandex/mobile/ads/impl/w91$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/w91;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.monetization.ads.nativeads.creator.NativeResourcesLoader$load$1$updatedNativeAdBlockTask$1"
    f = "NativeResourcesLoader.kt"
    l = {
        0x31
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field b:I

.field final synthetic c:Lcom/yandex/mobile/ads/impl/v91;

.field final synthetic d:Lcom/yandex/mobile/ads/impl/o3;

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Lcom/yandex/mobile/ads/impl/s41;

.field final synthetic g:Lcom/yandex/mobile/ads/impl/yk1;

.field final synthetic h:Lcom/yandex/mobile/ads/impl/dw;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/v91;Lcom/yandex/mobile/ads/impl/o3;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/yk1;Lcom/yandex/mobile/ads/impl/dw;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/v91;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/s41;",
            "Lcom/yandex/mobile/ads/impl/yk1;",
            "Lcom/yandex/mobile/ads/impl/dw;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/w91$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/w91$b;->c:Lcom/yandex/mobile/ads/impl/v91;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/w91$b;->d:Lcom/yandex/mobile/ads/impl/o3;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/w91$b;->e:Landroid/content/Context;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/w91$b;->f:Lcom/yandex/mobile/ads/impl/s41;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/w91$b;->g:Lcom/yandex/mobile/ads/impl/yk1;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/w91$b;->h:Lcom/yandex/mobile/ads/impl/dw;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 8
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

    new-instance p1, Lcom/yandex/mobile/ads/impl/w91$b;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/w91$b;->c:Lcom/yandex/mobile/ads/impl/v91;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/w91$b;->d:Lcom/yandex/mobile/ads/impl/o3;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/w91$b;->e:Landroid/content/Context;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/w91$b;->f:Lcom/yandex/mobile/ads/impl/s41;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/w91$b;->g:Lcom/yandex/mobile/ads/impl/yk1;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/w91$b;->h:Lcom/yandex/mobile/ads/impl/dw;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/w91$b;-><init>(Lcom/yandex/mobile/ads/impl/v91;Lcom/yandex/mobile/ads/impl/o3;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/yk1;Lcom/yandex/mobile/ads/impl/dw;Lwh1;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/w91$b;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/w91$b;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/w91$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/impl/w91$b;->b:I

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

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/w91$b;->c:Lcom/yandex/mobile/ads/impl/v91;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/v91;->a(Lcom/yandex/mobile/ads/impl/v91;)Lcom/yandex/mobile/ads/impl/q91;

    move-result-object v5

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/w91$b;->d:Lcom/yandex/mobile/ads/impl/o3;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/w91$b;->e:Landroid/content/Context;

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/w91$b;->f:Lcom/yandex/mobile/ads/impl/s41;

    iget-object v9, p0, Lcom/yandex/mobile/ads/impl/w91$b;->g:Lcom/yandex/mobile/ads/impl/yk1;

    iget-object v8, p0, Lcom/yandex/mobile/ads/impl/w91$b;->h:Lcom/yandex/mobile/ads/impl/dw;

    iput v2, p0, Lcom/yandex/mobile/ads/impl/w91$b;->b:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/qu;->a()Lkotlinx/coroutines/c;

    move-result-object p1

    new-instance v1, Lcom/yandex/mobile/ads/impl/p91;

    const/4 v10, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/yandex/mobile/ads/impl/p91;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/q91;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/dw;Lcom/yandex/mobile/ads/impl/sj0;Lwh1;)V

    invoke-static {p1, v1, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
