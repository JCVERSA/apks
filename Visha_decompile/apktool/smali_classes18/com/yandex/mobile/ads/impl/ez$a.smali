.class final Lcom/yandex/mobile/ads/impl/ez$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/ez;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/i52$b;

.field private b:Lcom/yandex/mobile/ads/impl/kk0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/kk0<",
            "Lcom/yandex/mobile/ads/impl/vw0$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/yandex/mobile/ads/impl/lk0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/lk0<",
            "Lcom/yandex/mobile/ads/impl/vw0$b;",
            "Lcom/yandex/mobile/ads/impl/i52;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/yandex/mobile/ads/impl/vw0$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/yandex/mobile/ads/impl/vw0$b;

.field private f:Lcom/yandex/mobile/ads/impl/vw0$b;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/i52$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ez$a;->a:Lcom/yandex/mobile/ads/impl/i52$b;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/kk0;->h()Lcom/yandex/mobile/ads/impl/kk0;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ez$a;->b:Lcom/yandex/mobile/ads/impl/kk0;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/lk0;->g()Lcom/yandex/mobile/ads/impl/lk0;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ez$a;->c:Lcom/yandex/mobile/ads/impl/lk0;

    return-void
.end method

.method public static bridge synthetic a(Lcom/yandex/mobile/ads/impl/ez$a;)Lcom/yandex/mobile/ads/impl/i52$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ez$a;->a:Lcom/yandex/mobile/ads/impl/i52$b;

    return-object p0
.end method

.method private static a(Lcom/yandex/mobile/ads/impl/hi1;Lcom/yandex/mobile/ads/impl/kk0;Lcom/yandex/mobile/ads/impl/vw0$b;Lcom/yandex/mobile/ads/impl/i52$b;)Lcom/yandex/mobile/ads/impl/vw0$b;
    .locals 10
    .param p2    # Lcom/yandex/mobile/ads/impl/vw0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/hi1;",
            "Lcom/yandex/mobile/ads/impl/kk0<",
            "Lcom/yandex/mobile/ads/impl/vw0$b;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/vw0$b;",
            "Lcom/yandex/mobile/ads/impl/i52$b;",
            ")",
            "Lcom/yandex/mobile/ads/impl/vw0$b;"
        }
    .end annotation

    .line 6
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/hi1;->getCurrentTimeline()Lcom/yandex/mobile/ads/impl/i52;

    move-result-object v0

    .line 7
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/hi1;->getCurrentPeriodIndex()I

    move-result v1

    .line 8
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/i52;->a(I)Ljava/lang/Object;

    move-result-object v2

    .line 9
    :goto_0
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/hi1;->isPlayingAd()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v0, v1, p3}, Lcom/yandex/mobile/ads/impl/i52;->a(ILcom/yandex/mobile/ads/impl/i52$b;)Lcom/yandex/mobile/ads/impl/i52$b;

    move-result-object v0

    .line 11
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/hi1;->getCurrentPosition()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/yandex/mobile/ads/impl/f92;->a(J)J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/i52$b;->c()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 12
    invoke-virtual {v0, v4, v5}, Lcom/yandex/mobile/ads/impl/i52$b;->a(J)I

    move-result p3

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p3, -0x1

    :goto_2
    const/4 v0, 0x0

    .line 13
    :goto_3
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/vw0$b;

    .line 15
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/hi1;->isPlayingAd()Z

    move-result v6

    .line 16
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/hi1;->getCurrentAdGroupIndex()I

    move-result v7

    .line 17
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/hi1;->getCurrentAdIndexInAdGroup()I

    move-result v8

    move-object v4, v1

    move-object v5, v2

    move v9, p3

    .line 18
    invoke-static/range {v4 .. v9}, Lcom/yandex/mobile/ads/impl/ez$a;->a(Lcom/yandex/mobile/ads/impl/vw0$b;Ljava/lang/Object;ZIII)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 19
    :cond_4
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 20
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/hi1;->isPlayingAd()Z

    move-result v6

    .line 21
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/hi1;->getCurrentAdGroupIndex()I

    move-result v7

    .line 22
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/hi1;->getCurrentAdIndexInAdGroup()I

    move-result v8

    move-object v4, p2

    move-object v5, v2

    move v9, p3

    .line 23
    invoke-static/range {v4 .. v9}, Lcom/yandex/mobile/ads/impl/ez$a;->a(Lcom/yandex/mobile/ads/impl/vw0$b;Ljava/lang/Object;ZIII)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object p2

    :cond_5
    return-object v3
.end method

.method private a(Lcom/yandex/mobile/ads/impl/i52;)V
    .locals 3

    .line 26
    invoke-static {}, Lcom/yandex/mobile/ads/impl/lk0;->a()Lcom/yandex/mobile/ads/impl/lk0$a;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ez$a;->b:Lcom/yandex/mobile/ads/impl/kk0;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ez$a;->e:Lcom/yandex/mobile/ads/impl/vw0$b;

    invoke-direct {p0, v0, v1, p1}, Lcom/yandex/mobile/ads/impl/ez$a;->a(Lcom/yandex/mobile/ads/impl/lk0$a;Lcom/yandex/mobile/ads/impl/vw0$b;Lcom/yandex/mobile/ads/impl/i52;)V

    .line 29
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ez$a;->f:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ez$a;->e:Lcom/yandex/mobile/ads/impl/vw0$b;

    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/impl/zd1;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ez$a;->f:Lcom/yandex/mobile/ads/impl/vw0$b;

    invoke-direct {p0, v0, v1, p1}, Lcom/yandex/mobile/ads/impl/ez$a;->a(Lcom/yandex/mobile/ads/impl/lk0$a;Lcom/yandex/mobile/ads/impl/vw0$b;Lcom/yandex/mobile/ads/impl/i52;)V

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ez$a;->d:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ez$a;->e:Lcom/yandex/mobile/ads/impl/vw0$b;

    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/impl/zd1;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ez$a;->d:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ez$a;->f:Lcom/yandex/mobile/ads/impl/vw0$b;

    .line 32
    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/impl/zd1;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 33
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ez$a;->d:Lcom/yandex/mobile/ads/impl/vw0$b;

    invoke-direct {p0, v0, v1, p1}, Lcom/yandex/mobile/ads/impl/ez$a;->a(Lcom/yandex/mobile/ads/impl/lk0$a;Lcom/yandex/mobile/ads/impl/vw0$b;Lcom/yandex/mobile/ads/impl/i52;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 34
    :goto_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ez$a;->b:Lcom/yandex/mobile/ads/impl/kk0;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 35
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ez$a;->b:Lcom/yandex/mobile/ads/impl/kk0;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/vw0$b;

    invoke-direct {p0, v0, v2, p1}, Lcom/yandex/mobile/ads/impl/ez$a;->a(Lcom/yandex/mobile/ads/impl/lk0$a;Lcom/yandex/mobile/ads/impl/vw0$b;Lcom/yandex/mobile/ads/impl/i52;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ez$a;->b:Lcom/yandex/mobile/ads/impl/kk0;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ez$a;->d:Lcom/yandex/mobile/ads/impl/vw0$b;

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/kk0;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 37
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ez$a;->d:Lcom/yandex/mobile/ads/impl/vw0$b;

    invoke-direct {p0, v0, v1, p1}, Lcom/yandex/mobile/ads/impl/ez$a;->a(Lcom/yandex/mobile/ads/impl/lk0$a;Lcom/yandex/mobile/ads/impl/vw0$b;Lcom/yandex/mobile/ads/impl/i52;)V

    .line 38
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lk0$a;->a()Lcom/yandex/mobile/ads/impl/lk0;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ez$a;->c:Lcom/yandex/mobile/ads/impl/lk0;

    return-void
.end method

.method private a(Lcom/yandex/mobile/ads/impl/lk0$a;Lcom/yandex/mobile/ads/impl/vw0$b;Lcom/yandex/mobile/ads/impl/i52;)V
    .locals 2
    .param p2    # Lcom/yandex/mobile/ads/impl/vw0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/lk0$a<",
            "Lcom/yandex/mobile/ads/impl/vw0$b;",
            "Lcom/yandex/mobile/ads/impl/i52;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/vw0$b;",
            "Lcom/yandex/mobile/ads/impl/i52;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p2, Lcom/yandex/mobile/ads/impl/rw0;->a:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p1, p2, p3}, Lcom/yandex/mobile/ads/impl/lk0$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/lk0$a;

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ez$a;->c:Lcom/yandex/mobile/ads/impl/lk0;

    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/lk0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/i52;

    if-eqz p0, :cond_2

    .line 5
    invoke-virtual {p1, p2, p0}, Lcom/yandex/mobile/ads/impl/lk0$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/lk0$a;

    :cond_2
    :goto_0
    return-void
.end method

.method private static a(Lcom/yandex/mobile/ads/impl/vw0$b;Ljava/lang/Object;ZIII)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 24
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rw0;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    .line 25
    iget p1, p0, Lcom/yandex/mobile/ads/impl/rw0;->b:I

    if-ne p1, p3, :cond_1

    iget p1, p0, Lcom/yandex/mobile/ads/impl/rw0;->c:I

    if-eq p1, p4, :cond_2

    :cond_1
    if-nez p2, :cond_3

    iget p1, p0, Lcom/yandex/mobile/ads/impl/rw0;->b:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    iget p0, p0, Lcom/yandex/mobile/ads/impl/rw0;->e:I

    if-ne p0, p5, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static bridge synthetic b(Lcom/yandex/mobile/ads/impl/ez$a;)Lcom/yandex/mobile/ads/impl/kk0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ez$a;->b:Lcom/yandex/mobile/ads/impl/kk0;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/yandex/mobile/ads/impl/ez$a;)Lcom/yandex/mobile/ads/impl/lk0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ez$a;->c:Lcom/yandex/mobile/ads/impl/lk0;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/yandex/mobile/ads/impl/ez$a;)Lcom/yandex/mobile/ads/impl/vw0$b;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ez$a;->d:Lcom/yandex/mobile/ads/impl/vw0$b;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/yandex/mobile/ads/impl/ez$a;)Lcom/yandex/mobile/ads/impl/vw0$b;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ez$a;->e:Lcom/yandex/mobile/ads/impl/vw0$b;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/yandex/mobile/ads/impl/ez$a;)Lcom/yandex/mobile/ads/impl/vw0$b;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ez$a;->f:Lcom/yandex/mobile/ads/impl/vw0$b;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/yandex/mobile/ads/impl/ez$a;Lcom/yandex/mobile/ads/impl/kk0;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ez$a;->b:Lcom/yandex/mobile/ads/impl/kk0;

    return-void
.end method

.method public static bridge synthetic h(Lcom/yandex/mobile/ads/impl/ez$a;Lcom/yandex/mobile/ads/impl/vw0$b;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ez$a;->d:Lcom/yandex/mobile/ads/impl/vw0$b;

    return-void
.end method

.method public static bridge synthetic i(Lcom/yandex/mobile/ads/impl/ez$a;Lcom/yandex/mobile/ads/impl/vw0$b;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ez$a;->e:Lcom/yandex/mobile/ads/impl/vw0$b;

    return-void
.end method

.method public static bridge synthetic j(Lcom/yandex/mobile/ads/impl/ez$a;Lcom/yandex/mobile/ads/impl/vw0$b;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ez$a;->f:Lcom/yandex/mobile/ads/impl/vw0$b;

    return-void
.end method

.method public static bridge synthetic k(Lcom/yandex/mobile/ads/impl/ez$a;Lcom/yandex/mobile/ads/impl/i52;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/ez$a;->a(Lcom/yandex/mobile/ads/impl/i52;)V

    return-void
.end method

.method public static bridge synthetic l(Lcom/yandex/mobile/ads/impl/hi1;Lcom/yandex/mobile/ads/impl/kk0;Lcom/yandex/mobile/ads/impl/vw0$b;Lcom/yandex/mobile/ads/impl/i52$b;)Lcom/yandex/mobile/ads/impl/vw0$b;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/ez$a;->a(Lcom/yandex/mobile/ads/impl/hi1;Lcom/yandex/mobile/ads/impl/kk0;Lcom/yandex/mobile/ads/impl/vw0$b;Lcom/yandex/mobile/ads/impl/i52$b;)Lcom/yandex/mobile/ads/impl/vw0$b;

    move-result-object p0

    return-object p0
.end method
