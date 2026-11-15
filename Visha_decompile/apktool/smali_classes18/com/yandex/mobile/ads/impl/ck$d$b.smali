.class final Lcom/yandex/mobile/ads/impl/ck$d$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/ck$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.monetization.ads.base.BaseAdLoadController$onUnverifiedMediatedAdLoaded$1$2$1"
    f = "BaseAdLoadController.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic b:Le74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le74;"
        }
    .end annotation
.end field

.field final synthetic c:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Le74;Ljava/lang/Throwable;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le74;",
            "Ljava/lang/Throwable;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/ck$d$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ck$d$b;->b:Le74;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ck$d$b;->c:Ljava/lang/Throwable;

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

    new-instance p1, Lcom/yandex/mobile/ads/impl/ck$d$b;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ck$d$b;->b:Le74;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ck$d$b;->c:Ljava/lang/Throwable;

    invoke-direct {p1, v0, p0, p2}, Lcom/yandex/mobile/ads/impl/ck$d$b;-><init>(Le74;Ljava/lang/Throwable;Lwh1;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/ck$d$b;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ck$d$b;->b:Le74;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ck$d$b;->c:Ljava/lang/Throwable;

    invoke-direct {p1, v0, p0, p2}, Lcom/yandex/mobile/ads/impl/ck$d$b;-><init>(Le74;Ljava/lang/Throwable;Lwh1;)V

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/ck$d$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ck$d$b;->b:Le74;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ck$d$b;->c:Ljava/lang/Throwable;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
