.class public Lcom/yandex/mobile/ads/impl/o41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/a81;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/w71;

.field private c:Ljava/lang/String;

.field private d:Lcom/yandex/mobile/ads/impl/g71;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/yandex/mobile/ads/impl/w71;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;>;",
            "Lcom/yandex/mobile/ads/impl/w71;",
            ")V"
        }
    .end annotation

    const-string v0, "assets"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdsConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o41;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/o41;->b:Lcom/yandex/mobile/ads/impl/w71;

    return-void
.end method

.method private final a(Lcom/yandex/mobile/ads/impl/a81$a;)Z
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o41;->d:Lcom/yandex/mobile/ads/impl/g71;

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o41;->a:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/o41;->a(Lcom/yandex/mobile/ads/impl/a81$a;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/o41;Ljava/util/List;)Z
    .locals 3

    .line 1
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assets"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/yandex/mobile/ads/impl/ig;

    .line 4
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ig;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/ig;

    .line 8
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/o41;->d:Lcom/yandex/mobile/ads/impl/g71;

    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/g71;->a(Lcom/yandex/mobile/ads/impl/ig;)Lcom/yandex/mobile/ads/impl/jg;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 10
    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/jg;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x1

    goto :goto_3

    :cond_5
    :goto_2
    const/4 p0, 0x0

    :goto_3
    return p0
.end method

.method private static final b(Lcom/yandex/mobile/ads/impl/o41;Ljava/util/List;)Z
    .locals 4

    .line 1
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assets"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/yandex/mobile/ads/impl/ig;

    .line 4
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ig;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/yandex/mobile/ads/impl/ig;

    .line 7
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/o41;->d:Lcom/yandex/mobile/ads/impl/g71;

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {v3, v2}, Lcom/yandex/mobile/ads/impl/g71;->a(Lcom/yandex/mobile/ads/impl/ig;)Lcom/yandex/mobile/ads/impl/jg;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_6

    .line 9
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ig;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/yandex/mobile/ads/impl/jg;->a(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_5
    move-object v0, v1

    .line 10
    :cond_6
    :goto_3
    check-cast v0, Lcom/yandex/mobile/ads/impl/ig;

    if-eqz v0, :cond_7

    .line 11
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ig;->b()Ljava/lang/String;

    move-result-object v1

    :cond_7
    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/o41;->c:Ljava/lang/String;

    if-nez v0, :cond_8

    const/4 p0, 0x1

    goto :goto_4

    :cond_8
    const/4 p0, 0x0

    :goto_4
    return p0
.end method

.method private static final c(Lcom/yandex/mobile/ads/impl/o41;Ljava/util/List;)Z
    .locals 4

    .line 1
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assets"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/yandex/mobile/ads/impl/ig;

    .line 4
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ig;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/yandex/mobile/ads/impl/ig;

    .line 7
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/o41;->d:Lcom/yandex/mobile/ads/impl/g71;

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {v3, v2}, Lcom/yandex/mobile/ads/impl/g71;->a(Lcom/yandex/mobile/ads/impl/ig;)Lcom/yandex/mobile/ads/impl/jg;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_5

    .line 9
    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/jg;->e()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 10
    :cond_5
    :goto_2
    check-cast v0, Lcom/yandex/mobile/ads/impl/ig;

    if-eqz v0, :cond_6

    .line 11
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ig;->b()Ljava/lang/String;

    move-result-object v1

    :cond_6
    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/o41;->c:Ljava/lang/String;

    if-nez v0, :cond_7

    const/4 p0, 0x1

    goto :goto_3

    :cond_7
    const/4 p0, 0x0

    :goto_3
    return p0
.end method

.method private static final d(Lcom/yandex/mobile/ads/impl/o41;Ljava/util/List;)Z
    .locals 4

    .line 2
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assets"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/yandex/mobile/ads/impl/ig;

    .line 5
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ig;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/yandex/mobile/ads/impl/ig;

    .line 8
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/o41;->d:Lcom/yandex/mobile/ads/impl/g71;

    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {v3, v2}, Lcom/yandex/mobile/ads/impl/g71;->a(Lcom/yandex/mobile/ads/impl/ig;)Lcom/yandex/mobile/ads/impl/jg;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_5

    .line 10
    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/jg;->b()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 11
    :cond_5
    :goto_2
    check-cast v0, Lcom/yandex/mobile/ads/impl/ig;

    if-eqz v0, :cond_6

    .line 12
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ig;->b()Ljava/lang/String;

    move-result-object v1

    :cond_6
    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/o41;->c:Ljava/lang/String;

    if-nez v0, :cond_7

    const/4 p0, 0x1

    goto :goto_3

    :cond_7
    const/4 p0, 0x0

    :goto_3
    return p0
.end method

.method public static synthetic e(Lcom/yandex/mobile/ads/impl/o41;Ljava/util/List;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/o41;->c(Lcom/yandex/mobile/ads/impl/o41;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/yandex/mobile/ads/impl/o41;Ljava/util/List;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/o41;->a(Lcom/yandex/mobile/ads/impl/o41;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/yandex/mobile/ads/impl/o41;Ljava/util/List;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/o41;->d(Lcom/yandex/mobile/ads/impl/o41;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/yandex/mobile/ads/impl/o41;Ljava/util/List;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/o41;->b(Lcom/yandex/mobile/ads/impl/o41;Ljava/util/List;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/qq1;
    .locals 2

    .line 17
    new-instance v0, Luod;

    invoke-direct {v0, p0}, Luod;-><init>(Lcom/yandex/mobile/ads/impl/o41;)V

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/o41;->a(Lcom/yandex/mobile/ads/impl/a81$a;)Z

    move-result v0

    .line 18
    new-instance v1, Lcom/yandex/mobile/ads/impl/qq1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o41;->c:Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Lcom/yandex/mobile/ads/impl/qq1;-><init>(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public final a(Z)Lcom/yandex/mobile/ads/impl/z71;
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o41;->a:Ljava/util/List;

    .line 20
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 21
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/ig;

    .line 22
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ig;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-gez v1, :cond_1

    .line 23
    invoke-static {}, Ly71;->t()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-lt v1, v0, :cond_3

    .line 24
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o41;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    .line 25
    sget-object p1, Lcom/yandex/mobile/ads/impl/n92$a;->h:Lcom/yandex/mobile/ads/impl/n92$a;

    goto :goto_2

    .line 26
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o41;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/yandex/mobile/ads/impl/n92$a;->k:Lcom/yandex/mobile/ads/impl/n92$a;

    goto :goto_2

    .line 27
    :cond_4
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o41;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/yandex/mobile/ads/impl/n92$a;->e:Lcom/yandex/mobile/ads/impl/n92$a;

    goto :goto_2

    .line 28
    :cond_5
    sget-object p1, Lcom/yandex/mobile/ads/impl/n92$a;->c:Lcom/yandex/mobile/ads/impl/n92$a;

    .line 29
    :goto_2
    new-instance v0, Lcom/yandex/mobile/ads/impl/z71;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o41;->c:Ljava/lang/String;

    invoke-direct {v0, p1, p0}, Lcom/yandex/mobile/ads/impl/z71;-><init>(Lcom/yandex/mobile/ads/impl/n92$a;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/g71;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o41;->d:Lcom/yandex/mobile/ads/impl/g71;

    return-void
.end method

.method public a(Lcom/yandex/mobile/ads/impl/a81$a;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/a81$a;",
            "Ljava/util/List<",
            "+",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;>;)Z"
        }
    .end annotation

    .line 11
    const-string v0, "validator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assets"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o41;->b:Lcom/yandex/mobile/ads/impl/w71;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/w71;->c()Z

    .line 13
    invoke-interface {p1, p2}, Lcom/yandex/mobile/ads/impl/a81$a;->a(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/w71;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o41;->b:Lcom/yandex/mobile/ads/impl/w71;

    return-object p0
.end method

.method public final c()Z
    .locals 1

    .line 12
    new-instance v0, Lwod;

    invoke-direct {v0, p0}, Lwod;-><init>(Lcom/yandex/mobile/ads/impl/o41;)V

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/o41;->a(Lcom/yandex/mobile/ads/impl/a81$a;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final d()Z
    .locals 1

    .line 1
    new-instance v0, Lvod;

    invoke-direct {v0, p0}, Lvod;-><init>(Lcom/yandex/mobile/ads/impl/o41;)V

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/o41;->a(Lcom/yandex/mobile/ads/impl/a81$a;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final e()Z
    .locals 1

    .line 2
    new-instance v0, Lxod;

    invoke-direct {v0, p0}, Lxod;-><init>(Lcom/yandex/mobile/ads/impl/o41;)V

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/o41;->a(Lcom/yandex/mobile/ads/impl/a81$a;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
