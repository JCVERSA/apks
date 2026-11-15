.class final Lcom/yandex/mobile/ads/impl/ck$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/ck;->a(Lcom/yandex/mobile/ads/impl/p82;)V
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
    c = "com.monetization.ads.base.BaseAdLoadController$fetchRequest$1"
    f = "BaseAdLoadController.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/yandex/mobile/ads/impl/ck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/ck<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/yandex/mobile/ads/impl/p82;


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
            "Lcom/yandex/mobile/ads/impl/ck$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ck$a;->c:Lcom/yandex/mobile/ads/impl/ck;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ck$a;->d:Lcom/yandex/mobile/ads/impl/p82;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

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

    new-instance v0, Lcom/yandex/mobile/ads/impl/ck$a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ck$a;->c:Lcom/yandex/mobile/ads/impl/ck;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ck$a;->d:Lcom/yandex/mobile/ads/impl/p82;

    invoke-direct {v0, v1, p0, p2}, Lcom/yandex/mobile/ads/impl/ck$a;-><init>(Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/p82;Lwh1;)V

    iput-object p1, v0, Lcom/yandex/mobile/ads/impl/ck$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/ck$a;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/ck$a;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ck$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ck$a;->b:Ljava/lang/Object;

    check-cast p1, Lnk1;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ck$a;->c:Lcom/yandex/mobile/ads/impl/ck;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ck$a;->d:Lcom/yandex/mobile/ads/impl/p82;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ck$a;->c:Lcom/yandex/mobile/ads/impl/ck;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/p82;->a(Lcom/yandex/mobile/ads/impl/o3;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ck$a;->c:Lcom/yandex/mobile/ads/impl/ck;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ck;->i()Lcom/yandex/mobile/ads/impl/g5;

    move-result-object v1

    sget-object v2, Lcom/yandex/mobile/ads/impl/f5;->t:Lcom/yandex/mobile/ads/impl/f5;

    const-string v3, "adLoadingPhaseType"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v2, v4}, Lcom/yandex/mobile/ads/impl/bk;->a(Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/f5;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/f5;Lcom/yandex/mobile/ads/impl/ha2;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ck$a;->c:Lcom/yandex/mobile/ads/impl/ck;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ck$a;->d:Lcom/yandex/mobile/ads/impl/p82;

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/p82;->a()Lcom/yandex/mobile/ads/impl/p82$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/o3;->a(Lcom/yandex/mobile/ads/impl/p82$a;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ck$a;->c:Lcom/yandex/mobile/ads/impl/ck;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ck$a;->c:Lcom/yandex/mobile/ads/impl/ck;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/ck;->d(Lcom/yandex/mobile/ads/impl/ck;)Lcom/yandex/mobile/ads/impl/uq1;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ck$a;->c:Lcom/yandex/mobile/ads/impl/ck;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ck;->l()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "context"

    invoke-static {v3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/o3;->a(I)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ck$a;->d:Lcom/yandex/mobile/ads/impl/p82;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ck$a;->c:Lcom/yandex/mobile/ads/impl/ck;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ck;->l()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ck$a;->c:Lcom/yandex/mobile/ads/impl/ck;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/ck$a;->c:Lcom/yandex/mobile/ads/impl/ck;

    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/ck;->e(Lcom/yandex/mobile/ads/impl/ck;)Lcom/yandex/mobile/ads/impl/kx1;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/yandex/mobile/ads/impl/p82;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/kx1;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ck$a;->c:Lcom/yandex/mobile/ads/impl/ck;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/mobile/ads/impl/ck;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ak;

    move-result-object v0

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/oa;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/up1;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ck$a;->c:Lcom/yandex/mobile/ads/impl/ck;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ck;->g()Lcom/yandex/mobile/ads/impl/y3;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/y3;->a(Lcom/yandex/mobile/ads/impl/ak;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ck$a;->c:Lcom/yandex/mobile/ads/impl/ck;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/w7;->u()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ck;->b(Lcom/yandex/mobile/ads/impl/w3;)V

    :cond_2
    :goto_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
