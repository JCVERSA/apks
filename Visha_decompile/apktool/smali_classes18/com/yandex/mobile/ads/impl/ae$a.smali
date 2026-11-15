.class final Lcom/yandex/mobile/ads/impl/ae$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/ae;->a(JLwh1;)Ljava/lang/Object;
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
    c = "com.monetization.ads.core.anr.AnrChecker$isAlive$2"
    f = "AnrChecker.kt"
    l = {
        0x14
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field b:I

.field final synthetic c:Lcom/yandex/mobile/ads/impl/ae;

.field final synthetic d:J


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ae;JLwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ae;",
            "J",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/ae$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ae$a;->c:Lcom/yandex/mobile/ads/impl/ae;

    iput-wide p2, p0, Lcom/yandex/mobile/ads/impl/ae$a;->d:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method

.method private static final a(Lib1;)V
    .locals 1

    sget-object v0, Lzfb;->a:Lzfb;

    invoke-interface {p0, v0}, Lib1;->h(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic g(Lib1;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/ae$a;->a(Lib1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 3
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

    new-instance p1, Lcom/yandex/mobile/ads/impl/ae$a;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ae$a;->c:Lcom/yandex/mobile/ads/impl/ae;

    iget-wide v1, p0, Lcom/yandex/mobile/ads/impl/ae$a;->d:J

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/yandex/mobile/ads/impl/ae$a;-><init>(Lcom/yandex/mobile/ads/impl/ae;JLwh1;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/ae$a;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ae$a;->c:Lcom/yandex/mobile/ads/impl/ae;

    iget-wide v1, p0, Lcom/yandex/mobile/ads/impl/ae$a;->d:J

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/yandex/mobile/ads/impl/ae$a;-><init>(Lcom/yandex/mobile/ads/impl/ae;JLwh1;)V

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/ae$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/yandex/mobile/ads/impl/ae$a;->b:I

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

    const/4 p1, 0x0

    invoke-static {p1, v2, p1}, Lkb1;->c(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lib1;

    move-result-object v1

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ae$a;->c:Lcom/yandex/mobile/ads/impl/ae;

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/ae;->a(Lcom/yandex/mobile/ads/impl/ae;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/yandex/mobile/ads/impl/ep2;

    invoke-direct {v4, v1}, Lcom/yandex/mobile/ads/impl/ep2;-><init>(Lib1;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-wide v3, p0, Lcom/yandex/mobile/ads/impl/ae$a;->d:J

    new-instance v5, Lcom/yandex/mobile/ads/impl/ae$a$a;

    invoke-direct {v5, v1, p1}, Lcom/yandex/mobile/ads/impl/ae$a$a;-><init>(Lib1;Lwh1;)V

    iput v2, p0, Lcom/yandex/mobile/ads/impl/ae$a;->b:I

    invoke-static {v3, v4, v5, p0}, Lkotlinx/coroutines/TimeoutKt;->d(JLs74;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lmk0;->a(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
