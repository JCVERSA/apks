.class final Lcom/yandex/mobile/ads/impl/ck$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/ck;->b(Lcom/yandex/mobile/ads/impl/p82;)V
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
    c = "com.monetization.ads.base.BaseAdLoadController$loadAutograb$1"
    f = "BaseAdLoadController.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/ck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/ck<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/yandex/mobile/ads/impl/p82;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/p82;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ck<",
            "TT;>;",
            "Lcom/yandex/mobile/ads/impl/p82;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/ck$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ck$b;->b:Lcom/yandex/mobile/ads/impl/ck;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ck$b;->c:Lcom/yandex/mobile/ads/impl/p82;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/p82;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ck;->i()Lcom/yandex/mobile/ads/impl/g5;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/impl/f5;->g:Lcom/yandex/mobile/ads/impl/f5;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yandex/mobile/ads/impl/o3;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ck;->c(Lcom/yandex/mobile/ads/impl/p82;)V

    return-void
.end method

.method public static synthetic g(Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/p82;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/ck$b;->a(Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/p82;Ljava/lang/String;)V

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

    new-instance p1, Lcom/yandex/mobile/ads/impl/ck$b;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ck$b;->b:Lcom/yandex/mobile/ads/impl/ck;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ck$b;->c:Lcom/yandex/mobile/ads/impl/p82;

    invoke-direct {p1, v0, p0, p2}, Lcom/yandex/mobile/ads/impl/ck$b;-><init>(Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/p82;Lwh1;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/ck$b;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ck$b;->b:Lcom/yandex/mobile/ads/impl/ck;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ck$b;->c:Lcom/yandex/mobile/ads/impl/p82;

    invoke-direct {p1, v0, p0, p2}, Lcom/yandex/mobile/ads/impl/ck$b;-><init>(Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/p82;Lwh1;)V

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/ck$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ck$b;->b:Lcom/yandex/mobile/ads/impl/ck;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ck;->a(Lcom/yandex/mobile/ads/impl/ck;)Lcom/yandex/mobile/ads/impl/ei;

    move-result-object p1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ck$b;->b:Lcom/yandex/mobile/ads/impl/ck;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->l()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ck$b;->b:Lcom/yandex/mobile/ads/impl/ck;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ck$b;->c:Lcom/yandex/mobile/ads/impl/p82;

    new-instance v2, Lcom/yandex/mobile/ads/impl/hp2;

    invoke-direct {v2, v1, p0}, Lcom/yandex/mobile/ads/impl/hp2;-><init>(Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/p82;)V

    invoke-interface {p1, v0, v2}, Lcom/yandex/mobile/ads/impl/ei;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/ii;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
