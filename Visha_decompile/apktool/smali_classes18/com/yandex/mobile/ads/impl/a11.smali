.class public final Lcom/yandex/mobile/ads/impl/a11;
.super Lcom/yandex/mobile/ads/impl/h11;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:Lcom/yandex/mobile/ads/impl/ib2;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/ib2;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ib2;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/a11;-><init>(Lcom/yandex/mobile/ads/impl/ib2;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ib2;)V
    .locals 1

    .line 3
    const-string v0, "versionNameParser"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/h11;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/a11;->a:Z

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/a11;->b:Lcom/yandex/mobile/ads/impl/ib2;

    return-void
.end method


# virtual methods
.method public final a(Le74;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le74;",
            ")V"
        }
    .end annotation

    const-string v0, "format(...)"

    const-string v1, "onValidationFailed"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/a11;->b:Lcom/yandex/mobile/ads/impl/ib2;

    sget-object v3, Lcom/yandex/div/core/b;->b:Lcom/yandex/div/core/b$a;

    invoke-virtual {v3}, Lcom/yandex/div/core/b$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/ib2;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/hb2;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/a11;->b:Lcom/yandex/mobile/ads/impl/ib2;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "31.13.0"

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/ib2;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/hb2;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/hb2;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v2, :cond_2

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/a11;->a:Z

    if-nez p0, :cond_1

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/hb2;->a()I

    move-result p0

    if-eq p0, v4, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    new-instance p0, Lcom/yandex/mobile/ads/impl/bp0;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/hb2;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    const-string v4, "Unsupported DivKit major version. Expected: %s. Actual: %s"

    invoke-static {v2, v3, v4, v0}, Lcom/yandex/mobile/ads/impl/z0;->a([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v0}, Lcom/yandex/mobile/ads/impl/bp0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    throw v1

    :cond_4
    return-void

    :catch_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/bp0;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "DivKit is unavailable. Please check your buildscripts for exclusion rules for \'com.yandex.div:div\'"

    invoke-static {v3, v2, v4, v0}, Lcom/yandex/mobile/ads/impl/z0;->a([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v0}, Lcom/yandex/mobile/ads/impl/bp0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    throw v1
.end method
