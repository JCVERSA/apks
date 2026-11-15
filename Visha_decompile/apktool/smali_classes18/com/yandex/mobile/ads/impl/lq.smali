.class public final Lcom/yandex/mobile/ads/impl/lq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/f72;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Lcom/yandex/mobile/ads/impl/ps0;Lcom/yandex/mobile/ads/impl/gq;)Lcom/yandex/mobile/ads/impl/nq;
    .locals 3

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gq;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 p0, 0x5

    if-ne p1, p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    new-instance p1, Lcom/yandex/mobile/ads/impl/nq$f;

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/ps0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/nq$f;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/yandex/mobile/ads/impl/nq$e;

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/ps0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/nq$e;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/yandex/mobile/ads/impl/nq$b;

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2}, Lcom/yandex/mobile/ads/impl/ps0;->a(Ljava/lang/String;Z)Z

    move-result p0

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/nq$b;-><init>(Z)V

    goto :goto_0

    :cond_5
    new-instance p1, Lcom/yandex/mobile/ads/impl/nq$d;

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/ps0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/nq$d;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    new-instance p1, Lcom/yandex/mobile/ads/impl/nq$c;

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/ps0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/nq$c;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :goto_1
    return-object v1
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ps0;Lcom/yandex/mobile/ads/impl/gq;)Lcom/yandex/mobile/ads/impl/nq;
    .locals 1

    .line 1
    const-string p0, "localStorage"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "type"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/gq;->a()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/gq;->a()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/ps0;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-static {p1, p2}, Lcom/yandex/mobile/ads/impl/lq;->b(Lcom/yandex/mobile/ads/impl/ps0;Lcom/yandex/mobile/ads/impl/gq;)Lcom/yandex/mobile/ads/impl/nq;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ps0;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/nq;
    .locals 5

    .line 3
    const-string p0, "localStorage"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "key"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {p1, p2}, Lcom/yandex/mobile/ads/impl/ps0;->c(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_2

    sget-object p0, Lcom/yandex/mobile/ads/impl/gq;->d:Lcom/yandex/mobile/ads/impl/gq$a;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string p0, "v1"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/yandex/mobile/ads/impl/gq;->values()[Lcom/yandex/mobile/ads/impl/gq;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/gq;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_3

    .line 8
    invoke-static {p1, v3}, Lcom/yandex/mobile/ads/impl/lq;->b(Lcom/yandex/mobile/ads/impl/ps0;Lcom/yandex/mobile/ads/impl/gq;)Lcom/yandex/mobile/ads/impl/nq;

    move-result-object v0

    :cond_3
    return-object v0
.end method
