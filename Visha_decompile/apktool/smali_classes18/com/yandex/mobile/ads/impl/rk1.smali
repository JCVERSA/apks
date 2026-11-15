.class public final Lcom/yandex/mobile/ads/impl/rk1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/cy0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/cy0<",
            "Lcom/monetization/ads/mediation/base/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/jk1;

.field private final c:Lcom/yandex/mobile/ads/impl/kk1;

.field private final d:Lcom/yandex/mobile/ads/impl/ik1;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/gy0;)V
    .locals 6

    .line 1
    new-instance v2, Lcom/yandex/mobile/ads/impl/cy0;

    invoke-direct {v2, p1}, Lcom/yandex/mobile/ads/impl/cy0;-><init>(Lcom/yandex/mobile/ads/impl/gy0;)V

    .line 2
    new-instance v3, Lcom/yandex/mobile/ads/impl/jk1;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/jk1;-><init>()V

    .line 3
    new-instance v4, Lcom/yandex/mobile/ads/impl/kk1;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/kk1;-><init>()V

    .line 4
    new-instance v5, Lcom/yandex/mobile/ads/impl/ik1;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/ik1;-><init>()V

    move-object v0, p0

    move-object v1, p1

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/rk1;-><init>(Lcom/yandex/mobile/ads/impl/gy0;Lcom/yandex/mobile/ads/impl/cy0;Lcom/yandex/mobile/ads/impl/jk1;Lcom/yandex/mobile/ads/impl/kk1;Lcom/yandex/mobile/ads/impl/ik1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/gy0;Lcom/yandex/mobile/ads/impl/cy0;Lcom/yandex/mobile/ads/impl/jk1;Lcom/yandex/mobile/ads/impl/kk1;Lcom/yandex/mobile/ads/impl/ik1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/gy0;",
            "Lcom/yandex/mobile/ads/impl/cy0<",
            "Lcom/monetization/ads/mediation/base/a;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/jk1;",
            "Lcom/yandex/mobile/ads/impl/kk1;",
            "Lcom/yandex/mobile/ads/impl/ik1;",
            ")V"
        }
    .end annotation

    .line 6
    const-string v0, "mediatedAdapterReporter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mediatedAdapterCreator"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "prefetchedMediationNetworkDataLoader"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "prefetchedMediationNetworkMapper"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "prefetchedMediationInfoFactory"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/rk1;->a:Lcom/yandex/mobile/ads/impl/cy0;

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/rk1;->b:Lcom/yandex/mobile/ads/impl/jk1;

    .line 10
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/rk1;->c:Lcom/yandex/mobile/ads/impl/kk1;

    .line 11
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/rk1;->d:Lcom/yandex/mobile/ads/impl/ik1;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/rk1;)Lcom/yandex/mobile/ads/impl/cy0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rk1;->a:Lcom/yandex/mobile/ads/impl/cy0;

    return-object p0
.end method

.method public static final a(JLandroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;Lcom/yandex/mobile/ads/impl/rk1;Ljava/util/List;Lwh1;)Ljava/lang/Object;
    .locals 13

    move-object/from16 v0, p6

    .line 2
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    instance-of v1, v0, Lcom/yandex/mobile/ads/impl/ok1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/yandex/mobile/ads/impl/ok1;

    iget v2, v1, Lcom/yandex/mobile/ads/impl/ok1;->d:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/yandex/mobile/ads/impl/ok1;->d:I

    move-object/from16 v7, p4

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yandex/mobile/ads/impl/ok1;

    move-object/from16 v7, p4

    invoke-direct {v1, v7, v0}, Lcom/yandex/mobile/ads/impl/ok1;-><init>(Lcom/yandex/mobile/ads/impl/rk1;Lwh1;)V

    :goto_0
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/ok1;->b:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v10

    .line 4
    iget v2, v1, Lcom/yandex/mobile/ads/impl/ok1;->d:I

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v12, :cond_2

    if-ne v2, v11, :cond_1

    invoke-static {v0}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lkotlin/c;->b(Ljava/lang/Object;)V

    .line 5
    new-instance v0, Lcom/yandex/mobile/ads/impl/pk1;

    const/4 v9, 0x0

    move-object v2, v0

    move-wide v3, p0

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/yandex/mobile/ads/impl/pk1;-><init>(JLandroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;Lcom/yandex/mobile/ads/impl/rk1;Ljava/util/List;Lwh1;)V

    iput v12, v1, Lcom/yandex/mobile/ads/impl/ok1;->d:I

    invoke-static {v0, v1}, Lkotlinx/coroutines/d;->g(Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_4

    goto :goto_3

    .line 6
    :cond_4
    :goto_1
    check-cast v0, Ljava/util/List;

    .line 7
    invoke-static {}, Lcom/yandex/mobile/ads/impl/qu;->a()Lkotlinx/coroutines/c;

    move-result-object v2

    new-instance v3, Lcom/yandex/mobile/ads/impl/qk1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/yandex/mobile/ads/impl/qk1;-><init>(Ljava/util/List;Lwh1;)V

    iput v11, v1, Lcom/yandex/mobile/ads/impl/ok1;->d:I

    invoke-static {v2, v3, v1}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_5

    goto :goto_3

    .line 8
    :cond_5
    :goto_2
    check-cast v0, Ljava/util/List;

    .line 9
    new-instance v10, Lcom/yandex/mobile/ads/impl/fk1;

    invoke-direct {v10, v0}, Lcom/yandex/mobile/ads/impl/fk1;-><init>(Ljava/util/List;)V

    :goto_3
    return-object v10
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/rk1;)Lcom/yandex/mobile/ads/impl/ik1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rk1;->d:Lcom/yandex/mobile/ads/impl/ik1;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/rk1;)Lcom/yandex/mobile/ads/impl/jk1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rk1;->b:Lcom/yandex/mobile/ads/impl/jk1;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/mobile/ads/impl/rk1;)Lcom/yandex/mobile/ads/impl/kk1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rk1;->c:Lcom/yandex/mobile/ads/impl/kk1;

    return-object p0
.end method
