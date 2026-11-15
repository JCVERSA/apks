.class final Lcom/yandex/mobile/ads/impl/p91$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/p91;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.monetization.ads.nativeads.creator.NativeMediaLoader$loadMedia$2$imagesLoadJob$1"
    f = "NativeMediaLoader.kt"
    l = {
        0x22
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field b:I

.field final synthetic c:Lcom/yandex/mobile/ads/impl/q91;

.field final synthetic d:Lcom/yandex/mobile/ads/impl/s41;

.field final synthetic e:Lcom/yandex/mobile/ads/impl/sj0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/q91;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/sj0;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/q91;",
            "Lcom/yandex/mobile/ads/impl/s41;",
            "Lcom/yandex/mobile/ads/impl/sj0;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/p91$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/p91$a;->c:Lcom/yandex/mobile/ads/impl/q91;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/p91$a;->d:Lcom/yandex/mobile/ads/impl/s41;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/p91$a;->e:Lcom/yandex/mobile/ads/impl/sj0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 2
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

    new-instance p1, Lcom/yandex/mobile/ads/impl/p91$a;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p91$a;->c:Lcom/yandex/mobile/ads/impl/q91;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/p91$a;->d:Lcom/yandex/mobile/ads/impl/s41;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p91$a;->e:Lcom/yandex/mobile/ads/impl/sj0;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/yandex/mobile/ads/impl/p91$a;-><init>(Lcom/yandex/mobile/ads/impl/q91;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/sj0;Lwh1;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/p91$a;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/p91$a;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/p91$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/impl/p91$a;->b:I

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

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/p91$a;->c:Lcom/yandex/mobile/ads/impl/q91;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/q91;->a(Lcom/yandex/mobile/ads/impl/q91;)Lcom/yandex/mobile/ads/impl/i91;

    move-result-object p1

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/p91$a;->d:Lcom/yandex/mobile/ads/impl/s41;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/p91$a;->e:Lcom/yandex/mobile/ads/impl/sj0;

    iput v2, p0, Lcom/yandex/mobile/ads/impl/p91$a;->b:I

    invoke-virtual {p1, v1, v3, p0}, Lcom/yandex/mobile/ads/impl/i91;->a(Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/sj0;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
