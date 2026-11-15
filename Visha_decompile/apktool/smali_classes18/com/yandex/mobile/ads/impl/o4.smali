.class public final Lcom/yandex/mobile/ads/impl/o4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/r4;

.field private final b:Lcom/yandex/mobile/ads/impl/p4;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    sget v0, Lcom/yandex/mobile/ads/impl/r4;->e:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/r4$a;->a()Lcom/yandex/mobile/ads/impl/r4;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/p4;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/p4;-><init>()V

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/o4;-><init>(Lcom/yandex/mobile/ads/impl/r4;Lcom/yandex/mobile/ads/impl/p4;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/r4;Lcom/yandex/mobile/ads/impl/p4;)V
    .locals 1

    .line 4
    const-string v0, "adIdStorage"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adIdHeaderSizeProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o4;->a:Lcom/yandex/mobile/ads/impl/r4;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/o4;->b:Lcom/yandex/mobile/ads/impl/p4;

    return-void
.end method

.method private final a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o4;->b:Lcom/yandex/mobile/ads/impl/p4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget p0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ju1;->e()I

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ju1;->e()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    .line 8
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0, p1}, Lwn8;->g(II)I

    move-result p0

    .line 9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, p0

    .line 10
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p2, p1, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    .line 11
    const-string v1, ","

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o4;->a:Lcom/yandex/mobile/ads/impl/r4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/r4;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/o4;->a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o4;->a:Lcom/yandex/mobile/ads/impl/r4;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/r4;->d()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/o4;->a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
