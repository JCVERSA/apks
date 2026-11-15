.class public final Lcom/yandex/mobile/ads/impl/vp1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/vp1$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/gi0;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/yandex/mobile/ads/impl/qf0;

.field private final d:Lcom/yandex/mobile/ads/impl/yp1;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/yandex/mobile/ads/impl/um;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/gi0;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/qf0;Lcom/yandex/mobile/ads/impl/yp1;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/gi0;",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/impl/qf0;",
            "Lcom/yandex/mobile/ads/impl/yp1;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vp1;->a:Lcom/yandex/mobile/ads/impl/gi0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/vp1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/vp1;->c:Lcom/yandex/mobile/ads/impl/qf0;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/vp1;->d:Lcom/yandex/mobile/ads/impl/yp1;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/vp1;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/yp1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vp1;->d:Lcom/yandex/mobile/ads/impl/yp1;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vp1;->c:Lcom/yandex/mobile/ads/impl/qf0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/qf0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/um;
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vp1;->f:Lcom/yandex/mobile/ads/impl/um;

    if-nez v0, :cond_0

    sget v0, Lcom/yandex/mobile/ads/impl/um;->n:I

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/vp1;->c:Lcom/yandex/mobile/ads/impl/qf0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/um$b;->a(Lcom/yandex/mobile/ads/impl/qf0;)Lcom/yandex/mobile/ads/impl/um;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/vp1;->f:Lcom/yandex/mobile/ads/impl/um;

    :cond_0
    return-object v0
.end method

.method public final c()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vp1;->e:Ljava/util/Map;

    return-object p0
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/qf0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vp1;->c:Lcom/yandex/mobile/ads/impl/qf0;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vp1;->a:Lcom/yandex/mobile/ads/impl/gi0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gi0;->h()Z

    move-result p0

    return p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vp1;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final g()Lcom/yandex/mobile/ads/impl/gi0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vp1;->a:Lcom/yandex/mobile/ads/impl/gi0;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request{method="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/vp1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/vp1;->a:Lcom/yandex/mobile/ads/impl/gi0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/vp1;->c:Lcom/yandex/mobile/ads/impl/qf0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/qf0;->size()I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ", headers=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/vp1;->c:Lcom/yandex/mobile/ads/impl/qf0;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Ly71;->u()V

    :cond_0
    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-lez v2, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v4

    goto :goto_0

    :cond_2
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/vp1;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vp1;->e:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
