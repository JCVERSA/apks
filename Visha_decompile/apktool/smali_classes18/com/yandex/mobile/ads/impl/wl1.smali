.class public final Lcom/yandex/mobile/ads/impl/wl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/cd2;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/vl1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdInfo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wl1;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/wl1;->a(Lcom/yandex/mobile/ads/impl/zb2;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wl1;->b:Ljava/util/List;

    return-void
.end method

.method private static a(Lcom/yandex/mobile/ads/impl/zb2;)Ljava/util/List;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zb2;->b()Lcom/yandex/mobile/ads/impl/uu;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/uu;->e()I

    move-result v0

    int-to-long v0, v0

    .line 3
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/uu;->j()Ljava/util/List;

    move-result-object p0

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/yandex/mobile/ads/impl/l62;

    .line 6
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/l62;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "progress"

    invoke-static {v5, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 10
    check-cast v3, Lcom/yandex/mobile/ads/impl/l62;

    .line 11
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/l62;->b()Lcom/yandex/mobile/ads/impl/na2;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 12
    sget-object v6, Lcom/yandex/mobile/ads/impl/na2$b;->b:Lcom/yandex/mobile/ads/impl/na2$b;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/na2;->c()Lcom/yandex/mobile/ads/impl/na2$b;

    move-result-object v7

    if-ne v6, v7, :cond_3

    .line 13
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/na2;->d()F

    move-result v4

    float-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_2

    .line 14
    :cond_3
    sget-object v6, Lcom/yandex/mobile/ads/impl/na2$b;->c:Lcom/yandex/mobile/ads/impl/na2$b;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/na2;->c()Lcom/yandex/mobile/ads/impl/na2$b;

    move-result-object v7

    if-ne v6, v7, :cond_4

    .line 15
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/na2;->d()F

    move-result v4

    const/16 v6, 0x64

    int-to-float v6, v6

    div-float/2addr v4, v6

    long-to-float v6, v0

    mul-float/2addr v4, v6

    float-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v5

    :goto_2
    if-eqz v4, :cond_5

    .line 16
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 17
    new-instance v6, Lcom/yandex/mobile/ads/impl/vl1;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/l62;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3, v4, v5}, Lcom/yandex/mobile/ads/impl/vl1;-><init>(Ljava/lang/String;J)V

    move-object v5, v6

    :cond_5
    if-eqz v5, :cond_2

    .line 18
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_6
    invoke-static {p0}, Li81;->e1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(JJ)V
    .locals 3

    .line 20
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/wl1;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 21
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yandex/mobile/ads/impl/vl1;

    .line 23
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/vl1;->a()J

    move-result-wide v0

    cmp-long v0, v0, p3

    if-gtz v0, :cond_0

    .line 24
    sget-object v0, Lcom/yandex/mobile/ads/impl/ze2;->c:Lcom/yandex/mobile/ads/impl/ze2$a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/wl1;->a:Landroid/content/Context;

    const-string v2, "context"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/ze2$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ze2;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/vl1;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/yandex/mobile/ads/impl/ze2;->a(Ljava/lang/String;)V

    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method
