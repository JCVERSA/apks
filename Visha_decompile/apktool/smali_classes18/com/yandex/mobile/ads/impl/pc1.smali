.class public final Lcom/yandex/mobile/ads/impl/pc1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/dc2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/dc2<",
            "Lcom/yandex/mobile/ads/impl/kb1;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/be2;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/dc2;

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/lb1;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/lb1;-><init>()V

    .line 3
    invoke-direct {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/dc2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sc2;)V

    .line 4
    new-instance v1, Lcom/yandex/mobile/ads/impl/be2;

    .line 5
    new-instance v2, Lcom/yandex/mobile/ads/impl/ya1;

    invoke-direct {v2, p2}, Lcom/yandex/mobile/ads/impl/ya1;-><init>(Lcom/yandex/mobile/ads/impl/o3;)V

    .line 6
    new-instance v3, Lcom/yandex/mobile/ads/impl/qf1;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/qf1;-><init>()V

    .line 7
    invoke-direct {v1, p1, p2, v2, v3}, Lcom/yandex/mobile/ads/impl/be2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ya1;Lcom/yandex/mobile/ads/impl/qf1;)V

    .line 8
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yandex/mobile/ads/impl/pc1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/dc2;Lcom/yandex/mobile/ads/impl/be2;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/dc2;Lcom/yandex/mobile/ads/impl/be2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/dc2<",
            "Lcom/yandex/mobile/ads/impl/kb1;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/be2;",
            ")V"
        }
    .end annotation

    .line 9
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoAdInfoListCreator"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoAdsResponseHandler"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/pc1;->a:Lcom/yandex/mobile/ads/impl/dc2;

    .line 12
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/pc1;->b:Lcom/yandex/mobile/ads/impl/be2;

    return-void
.end method

.method public static final a(Lcom/yandex/mobile/ads/impl/pc1;Ljava/util/List;Lwh1;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lcom/yandex/mobile/ads/impl/nc1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/yandex/mobile/ads/impl/nc1;

    iget v1, v0, Lcom/yandex/mobile/ads/impl/nc1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/yandex/mobile/ads/impl/nc1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/nc1;

    invoke-direct {v0, p0, p2}, Lcom/yandex/mobile/ads/impl/nc1;-><init>(Lcom/yandex/mobile/ads/impl/pc1;Lwh1;)V

    :goto_0
    iget-object p2, v0, Lcom/yandex/mobile/ads/impl/nc1;->c:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/yandex/mobile/ads/impl/nc1;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/yandex/mobile/ads/impl/nc1;->b:Lcom/yandex/mobile/ads/impl/pc1;

    invoke-static {p2}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/pc1;->b:Lcom/yandex/mobile/ads/impl/be2;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/mobile/ads/impl/zb2;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/zb2;->g()Lcom/yandex/mobile/ads/impl/mb2;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iput-object p0, v0, Lcom/yandex/mobile/ads/impl/nc1;->b:Lcom/yandex/mobile/ads/impl/pc1;

    iput v3, v0, Lcom/yandex/mobile/ads/impl/nc1;->e:I

    invoke-virtual {p2, v2, v0}, Lcom/yandex/mobile/ads/impl/be2;->a(Ljava/util/ArrayList;Lwh1;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    check-cast p2, Lcom/yandex/mobile/ads/impl/zd2;

    instance-of p1, p2, Lcom/yandex/mobile/ads/impl/zd2$a;

    if-eqz p1, :cond_5

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v1

    goto :goto_3

    :cond_5
    instance-of p1, p2, Lcom/yandex/mobile/ads/impl/zd2$b;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pc1;->a:Lcom/yandex/mobile/ads/impl/dc2;

    check-cast p2, Lcom/yandex/mobile/ads/impl/zd2$b;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/zd2$b;->a()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/dc2;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_3
    return-object v1

    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
