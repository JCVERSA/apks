.class public final Lcom/yandex/mobile/ads/impl/ld2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/ld2$a;,
        Lcom/yandex/mobile/ads/impl/ld2$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/s01;

.field private final c:Lcom/yandex/mobile/ads/impl/kd2;

.field private d:Lcom/yandex/mobile/ads/impl/ld2$a;

.field private e:Lcom/yandex/mobile/ads/impl/ld2$b;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/g5;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/g5;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoadingPhasesManager"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ld2;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object p3

    invoke-interface {p3}, Lcom/yandex/mobile/ads/impl/bv1;->f()V

    sget-object p3, Lcom/yandex/mobile/ads/impl/jn2;->a:Lcom/yandex/mobile/ads/impl/jn2;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object p2

    invoke-interface {p2}, Lcom/yandex/mobile/ads/impl/bv1;->b()Lcom/yandex/mobile/ads/impl/ol2;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lcom/yandex/mobile/ads/impl/nd;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/t92;Lcom/yandex/mobile/ads/impl/ie;)Lcom/yandex/mobile/ads/impl/s01;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ld2;->b:Lcom/yandex/mobile/ads/impl/s01;

    new-instance p1, Lcom/yandex/mobile/ads/impl/kd2;

    invoke-direct {p1, p4}, Lcom/yandex/mobile/ads/impl/kd2;-><init>(Lcom/yandex/mobile/ads/impl/g5;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ld2;->c:Lcom/yandex/mobile/ads/impl/kd2;

    return-void
.end method

.method private final a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ld2;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ld2;->d:Lcom/yandex/mobile/ads/impl/ld2$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/ld2$a;->a()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v0

    :cond_2
    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 9
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ld2;->e:Lcom/yandex/mobile/ads/impl/ld2$b;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/ld2$b;->a()Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v0

    :cond_4
    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 10
    new-instance v0, Lcom/yandex/mobile/ads/impl/op1;

    sget-object v2, Lcom/yandex/mobile/ads/impl/op1$b;->O:Lcom/yandex/mobile/ads/impl/op1$b;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ld2;->a:Lcom/yandex/mobile/ads/impl/o8;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/o8;->a()Lcom/yandex/mobile/ads/impl/f;

    move-result-object v1

    .line 11
    :cond_5
    const-string v3, "reportType"

    invoke-static {v2, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "reportData"

    invoke-static {p1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, v2, p1, v1}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    .line 13
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ld2;->b:Lcom/yandex/mobile/ads/impl/s01;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/s01;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 14
    const-string v0, "status"

    const-string v1, "success"

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ld2;->c:Lcom/yandex/mobile/ads/impl/kd2;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/kd2;->a()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "durations"

    invoke-static {v2, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    filled-new-array {v0, v1}, [Lkotlin/Pair;

    move-result-object v0

    .line 16
    invoke-static {v0}, Lkotlin/collections/a;->q([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 17
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/ld2;->a(Ljava/util/Map;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ld2$a;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ld2;->d:Lcom/yandex/mobile/ads/impl/ld2$a;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ld2$b;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ld2;->e:Lcom/yandex/mobile/ads/impl/ld2$b;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "failureReason"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessage"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-string v0, "status"

    const-string v1, "error"

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 3
    const-string v1, "failure_reason"

    invoke-static {v1, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 4
    const-string v1, "error_message"

    invoke-static {v1, p2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    filled-new-array {v0, p1, p2}, [Lkotlin/Pair;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lkotlin/collections/a;->q([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/ld2;->a(Ljava/util/Map;)V

    return-void
.end method

.method public final b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ld2;->f:Ljava/util/Map;

    return-void
.end method
