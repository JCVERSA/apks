.class final Lcom/yandex/mobile/ads/impl/i51$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/i51;->a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/y61;Lcom/yandex/mobile/ads/impl/s51;Lcom/yandex/mobile/ads/impl/g51;)V
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
    c = "com.monetization.ads.nativeads.creator.NativeAdCreationManager$createNativeAd$1"
    f = "NativeAdCreationManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/i51;

.field final synthetic c:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/yandex/mobile/ads/impl/y61;

.field final synthetic e:Lcom/yandex/mobile/ads/impl/s51;

.field final synthetic f:Lcom/yandex/mobile/ads/impl/g51;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/i51;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/y61;Lcom/yandex/mobile/ads/impl/s51;Lcom/yandex/mobile/ads/impl/g51;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/i51;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/y61;",
            "Lcom/yandex/mobile/ads/impl/s51;",
            "Lcom/yandex/mobile/ads/impl/g51;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/i51$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/i51$b;->b:Lcom/yandex/mobile/ads/impl/i51;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/i51$b;->c:Lcom/yandex/mobile/ads/impl/o8;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/i51$b;->d:Lcom/yandex/mobile/ads/impl/y61;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/i51$b;->e:Lcom/yandex/mobile/ads/impl/s51;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/i51$b;->f:Lcom/yandex/mobile/ads/impl/g51;

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

    new-instance p1, Lcom/yandex/mobile/ads/impl/i51$b;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i51$b;->b:Lcom/yandex/mobile/ads/impl/i51;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/i51$b;->c:Lcom/yandex/mobile/ads/impl/o8;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/i51$b;->d:Lcom/yandex/mobile/ads/impl/y61;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/i51$b;->e:Lcom/yandex/mobile/ads/impl/s51;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/i51$b;->f:Lcom/yandex/mobile/ads/impl/g51;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/i51$b;-><init>(Lcom/yandex/mobile/ads/impl/i51;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/y61;Lcom/yandex/mobile/ads/impl/s51;Lcom/yandex/mobile/ads/impl/g51;Lwh1;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/i51$b;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/i51$b;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/i51$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    new-instance p1, Lcom/yandex/mobile/ads/impl/i51$a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i51$b;->b:Lcom/yandex/mobile/ads/impl/i51;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/i51$b;->c:Lcom/yandex/mobile/ads/impl/o8;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/i51$b;->d:Lcom/yandex/mobile/ads/impl/y61;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/i51$b;->e:Lcom/yandex/mobile/ads/impl/s51;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/i51$b;->f:Lcom/yandex/mobile/ads/impl/g51;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/i51$a;-><init>(Lcom/yandex/mobile/ads/impl/i51;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/y61;Lcom/yandex/mobile/ads/impl/s51;Lcom/yandex/mobile/ads/impl/g51;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/i51$a;->run()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
