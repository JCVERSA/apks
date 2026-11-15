.class public final Lcom/yandex/mobile/ads/impl/rx0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/monetization/ads/mediation/base/a;",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/g5;

.field private final c:Lcom/yandex/mobile/ads/impl/yx0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/yx0<",
            "TT;T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/gy0;

.field private final e:Lcom/yandex/mobile/ads/impl/sx0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/sx0<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/yandex/mobile/ads/impl/ig1;

.field private final g:Lcom/yandex/mobile/ads/impl/dy0;

.field private h:Lcom/yandex/mobile/ads/impl/qx0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/qx0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/yx0;Lcom/yandex/mobile/ads/impl/gy0;Lcom/yandex/mobile/ads/impl/sx0;Lcom/yandex/mobile/ads/impl/ig1;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/yandex/mobile/ads/impl/dy0;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/dy0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/rx0;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/yx0;Lcom/yandex/mobile/ads/impl/gy0;Lcom/yandex/mobile/ads/impl/sx0;Lcom/yandex/mobile/ads/impl/ig1;Lcom/yandex/mobile/ads/impl/dy0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/yx0;Lcom/yandex/mobile/ads/impl/gy0;Lcom/yandex/mobile/ads/impl/sx0;Lcom/yandex/mobile/ads/impl/ig1;Lcom/yandex/mobile/ads/impl/dy0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/g5;",
            "Lcom/yandex/mobile/ads/impl/yx0<",
            "TT;T",
            "L;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/gy0;",
            "Lcom/yandex/mobile/ads/impl/sx0<",
            "TT;>;",
            "Lcom/yandex/mobile/ads/impl/ig1;",
            "Lcom/yandex/mobile/ads/impl/dy0;",
            ")V"
        }
    .end annotation

    .line 3
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoadingPhasesManager"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediatedAdLoader"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediatedAdapterReporter"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediatedAdCreator"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passbackAdLoader"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediatedAdapterInfoReportDataProvider"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rx0;->a:Lcom/yandex/mobile/ads/impl/o3;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/rx0;->b:Lcom/yandex/mobile/ads/impl/g5;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/rx0;->c:Lcom/yandex/mobile/ads/impl/yx0;

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/rx0;->d:Lcom/yandex/mobile/ads/impl/gy0;

    .line 9
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/rx0;->e:Lcom/yandex/mobile/ads/impl/sx0;

    .line 10
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/rx0;->f:Lcom/yandex/mobile/ads/impl/ig1;

    .line 11
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/rx0;->g:Lcom/yandex/mobile/ads/impl/dy0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/qx0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/mobile/ads/impl/qx0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rx0;->h:Lcom/yandex/mobile/ads/impl/qx0;

    return-object p0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 4

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rx0;->h:Lcom/yandex/mobile/ads/impl/qx0;

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/rx0;->c:Lcom/yandex/mobile/ads/impl/yx0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->b()Lcom/monetization/ads/mediation/base/a;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/yandex/mobile/ads/impl/yx0;->a(Lcom/monetization/ads/mediation/base/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->c()Lcom/yandex/mobile/ads/impl/lz0;

    move-result-object v2

    .line 6
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->a()Lcom/yandex/mobile/ads/impl/tx0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tx0;->b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 7
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "exception_in_adapter"

    invoke-static {v3, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 9
    const-string v3, "reason"

    invoke-static {v3, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 10
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rx0;->d:Lcom/yandex/mobile/ads/impl/gy0;

    .line 11
    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/yandex/mobile/ads/impl/gy0;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lz0;Ljava/util/Map;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 59
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rx0;->h:Lcom/yandex/mobile/ads/impl/qx0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->c()Lcom/yandex/mobile/ads/impl/lz0;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 61
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/rx0;->d:Lcom/yandex/mobile/ads/impl/gy0;

    .line 62
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rx0;->h:Lcom/yandex/mobile/ads/impl/qx0;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/qx0;->a()Lcom/yandex/mobile/ads/impl/tx0;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/tx0;->b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v1

    .line 63
    :cond_1
    invoke-virtual {v2, p1, v0, p2, v1}, Lcom/yandex/mobile/ads/impl/gy0;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lz0;Lcom/yandex/mobile/ads/impl/o8;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/w3;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/w3;",
            "T",
            "L;",
            ")V"
        }
    .end annotation

    .line 48
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFetchRequestError"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rx0;->h:Lcom/yandex/mobile/ads/impl/qx0;

    if-eqz v0, :cond_0

    .line 50
    const-string v1, "status"

    const-string v2, "error"

    invoke-static {v1, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 51
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/w3;->b()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "error_code"

    invoke-static {v2, p2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    filled-new-array {v1, p2}, [Lkotlin/Pair;

    move-result-object p2

    .line 52
    invoke-static {p2}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    .line 53
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->c()Lcom/yandex/mobile/ads/impl/lz0;

    move-result-object v1

    .line 54
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->a()Lcom/yandex/mobile/ads/impl/tx0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tx0;->b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/rx0;->d:Lcom/yandex/mobile/ads/impl/gy0;

    .line 56
    invoke-virtual {v2, p1, v1, p2, v0}, Lcom/yandex/mobile/ads/impl/gy0;->f(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lz0;Ljava/util/Map;Ljava/lang/String;)V

    .line 57
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/rx0;->a(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0, p1, p3}, Lcom/yandex/mobile/ads/impl/rx0;->a(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "T",
            "L;",
            ")V"
        }
    .end annotation

    .line 12
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rx0;->e:Lcom/yandex/mobile/ads/impl/sx0;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/sx0;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/qx0;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/rx0;->h:Lcom/yandex/mobile/ads/impl/qx0;

    if-eqz v0, :cond_1

    .line 14
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/rx0;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->c()Lcom/yandex/mobile/ads/impl/lz0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/o3;->a(Lcom/yandex/mobile/ads/impl/lz0;)V

    .line 15
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/rx0;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->a()Lcom/yandex/mobile/ads/impl/tx0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/tx0;->b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/o3;->c(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/rx0;->b:Lcom/yandex/mobile/ads/impl/g5;

    sget-object v2, Lcom/yandex/mobile/ads/impl/f5;->c:Lcom/yandex/mobile/ads/impl/f5;

    .line 17
    const-string v3, "adLoadingPhaseType"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v2, v4}, Lcom/yandex/mobile/ads/impl/bk;->a(Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/f5;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/f5;Lcom/yandex/mobile/ads/impl/ha2;)V

    .line 18
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->c()Lcom/yandex/mobile/ads/impl/lz0;

    move-result-object v1

    .line 19
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->a()Lcom/yandex/mobile/ads/impl/tx0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/tx0;->b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v2

    .line 20
    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/rx0;->d:Lcom/yandex/mobile/ads/impl/gy0;

    invoke-virtual {v5, p1, v1, v2}, Lcom/yandex/mobile/ads/impl/gy0;->b(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lz0;Ljava/lang/String;)V

    .line 21
    :try_start_0
    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/rx0;->c:Lcom/yandex/mobile/ads/impl/yx0;

    .line 22
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->b()Lcom/monetization/ads/mediation/base/a;

    move-result-object v8

    .line 23
    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/qx0;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v10

    .line 24
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->d()Ljava/util/Map;

    move-result-object v11

    move-object v7, p1

    move-object v9, p2

    .line 25
    invoke-interface/range {v6 .. v11}, Lcom/yandex/mobile/ads/impl/yx0;->a(Landroid/content/Context;Lcom/monetization/ads/mediation/base/a;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const/4 v5, 0x0

    .line 26
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v5}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "exception_in_adapter"

    invoke-static {v5, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 28
    const-string v5, "reason"

    invoke-static {v5, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 29
    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/rx0;->d:Lcom/yandex/mobile/ads/impl/gy0;

    .line 30
    invoke-virtual {v5, p1, v1, v0, v2}, Lcom/yandex/mobile/ads/impl/gy0;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lz0;Ljava/util/Map;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rx0;->h:Lcom/yandex/mobile/ads/impl/qx0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->c()Lcom/yandex/mobile/ads/impl/lz0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lz0;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v4

    .line 32
    :goto_0
    new-instance v1, Lcom/yandex/mobile/ads/impl/xa;

    sget-object v2, Lcom/yandex/mobile/ads/impl/op1$c;->d:Lcom/yandex/mobile/ads/impl/op1$c;

    invoke-direct {v1, v2, v0}, Lcom/yandex/mobile/ads/impl/xa;-><init>(Lcom/yandex/mobile/ads/impl/op1$c;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rx0;->b:Lcom/yandex/mobile/ads/impl/g5;

    sget-object v2, Lcom/yandex/mobile/ads/impl/f5;->c:Lcom/yandex/mobile/ads/impl/f5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-static {v2, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "parametersProvider"

    invoke-static {v1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, v2, v1, v4}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;Lcom/yandex/mobile/ads/impl/zg1;Lcom/yandex/mobile/ads/impl/ha2;)V

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/rx0;->a(Landroid/content/Context;Ljava/lang/Object;)V

    goto :goto_1

    .line 37
    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rx0;->f:Lcom/yandex/mobile/ads/impl/ig1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ig1;->a()V

    :goto_1
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 38
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalReportData"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rx0;->h:Lcom/yandex/mobile/ads/impl/qx0;

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->c()Lcom/yandex/mobile/ads/impl/lz0;

    move-result-object v1

    .line 41
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->a()Lcom/yandex/mobile/ads/impl/tx0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tx0;->b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/lz0;->g()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 43
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 44
    new-instance v4, Lcom/yandex/mobile/ads/impl/v9;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/rx0;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-direct {v4, p1, v5}, Lcom/yandex/mobile/ads/impl/v9;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V

    sget-object v5, Lcom/yandex/mobile/ads/impl/z62;->d:Lcom/yandex/mobile/ads/impl/z62;

    invoke-virtual {v4, v3, v5}, Lcom/yandex/mobile/ads/impl/v9;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/z62;)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {p2}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 46
    const-string v2, "click_type"

    const-string v3, "default"

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rx0;->d:Lcom/yandex/mobile/ads/impl/gy0;

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/yandex/mobile/ads/impl/gy0;->c(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lz0;Ljava/util/Map;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rx0;->h:Lcom/yandex/mobile/ads/impl/qx0;

    if-eqz v0, :cond_0

    .line 3
    const-string v1, "status"

    const-string v2, "success"

    invoke-static {v1, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->c()Lcom/yandex/mobile/ads/impl/lz0;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->a()Lcom/yandex/mobile/ads/impl/tx0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tx0;->b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rx0;->d:Lcom/yandex/mobile/ads/impl/gy0;

    .line 7
    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/yandex/mobile/ads/impl/gy0;->f(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lz0;Ljava/util/Map;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/w3;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/w3;",
            "T",
            "L;",
            ")V"
        }
    .end annotation

    .line 8
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFetchRequestError"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rx0;->h:Lcom/yandex/mobile/ads/impl/qx0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->c()Lcom/yandex/mobile/ads/impl/lz0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lz0;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 10
    :goto_0
    new-instance v2, Lcom/yandex/mobile/ads/impl/xa;

    sget-object v3, Lcom/yandex/mobile/ads/impl/op1$c;->d:Lcom/yandex/mobile/ads/impl/op1$c;

    invoke-direct {v2, v3, v0}, Lcom/yandex/mobile/ads/impl/xa;-><init>(Lcom/yandex/mobile/ads/impl/op1$c;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rx0;->b:Lcom/yandex/mobile/ads/impl/g5;

    sget-object v3, Lcom/yandex/mobile/ads/impl/f5;->c:Lcom/yandex/mobile/ads/impl/f5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    const-string v4, "adLoadingPhaseType"

    invoke-static {v3, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "parametersProvider"

    invoke-static {v2, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v3, v2, v1}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;Lcom/yandex/mobile/ads/impl/zg1;Lcom/yandex/mobile/ads/impl/ha2;)V

    .line 14
    const-string v0, "status"

    const-string v1, "error"

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 15
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/w3;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "error_code"

    invoke-static {v2, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 16
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/w3;->c()Ljava/lang/String;

    move-result-object p2

    const-string v2, "error_description"

    invoke-static {v2, p2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    filled-new-array {v0, v1, p2}, [Lkotlin/Pair;

    move-result-object p2

    .line 17
    invoke-static {p2}, Lkotlin/collections/a;->q([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    .line 18
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rx0;->h:Lcom/yandex/mobile/ads/impl/qx0;

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->a()Lcom/yandex/mobile/ads/impl/tx0;

    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/rx0;->g:Lcom/yandex/mobile/ads/impl/dy0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/dy0;->a(Lcom/yandex/mobile/ads/impl/tx0;)Ljava/util/Map;

    move-result-object v1

    .line 21
    invoke-interface {p2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 22
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->c()Lcom/yandex/mobile/ads/impl/lz0;

    move-result-object v1

    .line 23
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->a()Lcom/yandex/mobile/ads/impl/tx0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tx0;->b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    .line 24
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/rx0;->d:Lcom/yandex/mobile/ads/impl/gy0;

    .line 25
    invoke-virtual {v2, p1, v1, p2, v0}, Lcom/yandex/mobile/ads/impl/gy0;->g(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lz0;Ljava/util/Map;Ljava/lang/String;)V

    .line 26
    :cond_1
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/rx0;->a(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p0, p1, p3}, Lcom/yandex/mobile/ads/impl/rx0;->a(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 28
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalReportData"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rx0;->h:Lcom/yandex/mobile/ads/impl/qx0;

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->c()Lcom/yandex/mobile/ads/impl/lz0;

    move-result-object v1

    .line 31
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->a()Lcom/yandex/mobile/ads/impl/tx0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tx0;->b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/lz0;->h()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 33
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 34
    new-instance v4, Lcom/yandex/mobile/ads/impl/v9;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/rx0;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-direct {v4, p1, v5}, Lcom/yandex/mobile/ads/impl/v9;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V

    .line 35
    sget-object v5, Lcom/yandex/mobile/ads/impl/z62;->f:Lcom/yandex/mobile/ads/impl/z62;

    .line 36
    invoke-virtual {v4, v3, v5}, Lcom/yandex/mobile/ads/impl/v9;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/z62;)V

    goto :goto_0

    .line 37
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rx0;->d:Lcom/yandex/mobile/ads/impl/gy0;

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/yandex/mobile/ads/impl/gy0;->d(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lz0;Ljava/util/Map;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rx0;->h:Lcom/yandex/mobile/ads/impl/qx0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/qx0;->a()Lcom/yandex/mobile/ads/impl/tx0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/tx0;->c()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final c(Landroid/content/Context;)V
    .locals 3

    .line 16
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rx0;->h:Lcom/yandex/mobile/ads/impl/qx0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->c()Lcom/yandex/mobile/ads/impl/lz0;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 18
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/rx0;->d:Lcom/yandex/mobile/ads/impl/gy0;

    .line 19
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rx0;->h:Lcom/yandex/mobile/ads/impl/qx0;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/qx0;->a()Lcom/yandex/mobile/ads/impl/tx0;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/tx0;->b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v1

    .line 20
    :cond_1
    invoke-virtual {v2, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/gy0;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lz0;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final c(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediatedReportData"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rx0;->h:Lcom/yandex/mobile/ads/impl/qx0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->c()Lcom/yandex/mobile/ads/impl/lz0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lz0;->d()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    new-instance v1, Lcom/yandex/mobile/ads/impl/v9;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/rx0;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-direct {v1, p1, v2}, Lcom/yandex/mobile/ads/impl/v9;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    sget-object v3, Lcom/yandex/mobile/ads/impl/z62;->g:Lcom/yandex/mobile/ads/impl/z62;

    invoke-virtual {v1, v2, v3}, Lcom/yandex/mobile/ads/impl/v9;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/z62;)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {p2}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 7
    const-string v0, "status"

    const-string v1, "success"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rx0;->h:Lcom/yandex/mobile/ads/impl/qx0;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->a()Lcom/yandex/mobile/ads/impl/tx0;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/rx0;->g:Lcom/yandex/mobile/ads/impl/dy0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/dy0;->a(Lcom/yandex/mobile/ads/impl/tx0;)Ljava/util/Map;

    move-result-object v1

    .line 11
    invoke-interface {p2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 12
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->c()Lcom/yandex/mobile/ads/impl/lz0;

    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->a()Lcom/yandex/mobile/ads/impl/tx0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tx0;->b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    .line 14
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rx0;->d:Lcom/yandex/mobile/ads/impl/gy0;

    .line 15
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/yandex/mobile/ads/impl/gy0;->g(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lz0;Ljava/util/Map;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final d(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalReportData"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rx0;->h:Lcom/yandex/mobile/ads/impl/qx0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->c()Lcom/yandex/mobile/ads/impl/lz0;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->a()Lcom/yandex/mobile/ads/impl/tx0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tx0;->b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rx0;->d:Lcom/yandex/mobile/ads/impl/gy0;

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/yandex/mobile/ads/impl/gy0;->e(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lz0;Ljava/util/Map;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final e(Landroid/content/Context;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalReportData"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rx0;->h:Lcom/yandex/mobile/ads/impl/qx0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qx0;->c()Lcom/yandex/mobile/ads/impl/lz0;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/rx0;->d:Lcom/yandex/mobile/ads/impl/gy0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rx0;->h:Lcom/yandex/mobile/ads/impl/qx0;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/qx0;->a()Lcom/yandex/mobile/ads/impl/tx0;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/tx0;->b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v2, p1, v0, p2, v1}, Lcom/yandex/mobile/ads/impl/gy0;->b(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lz0;Ljava/util/Map;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
