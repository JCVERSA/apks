.class public Lcom/yandex/mobile/ads/impl/ly0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/e80;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/kx1;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/kx1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/kx1;-><init>()V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/ly0;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/kx1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/kx1;)V
    .locals 1

    .line 3
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sensitiveModeChecker"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ly0;->a:Lcom/yandex/mobile/ads/impl/o3;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ly0;->b:Lcom/yandex/mobile/ads/impl/kx1;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/o3;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ly0;->a:Lcom/yandex/mobile/ads/impl/o3;

    return-object p0
.end method

.method public a(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ly0;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o3;->a()Lcom/yandex/mobile/ads/impl/v7;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 4
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/v7;->h()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/v7;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    const-string v3, "age"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/v7;->d()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 9
    const-string v3, "context_tags"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/v7;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11
    const-string v2, "gender"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_3
    sget v1, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/pw1;->f()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 13
    const-string v2, "age_restricted_user"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_4
    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 15
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ju1;->o0()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    .line 16
    const-string v2, "user_consent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_6
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ly0;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o3;->e()Lcom/yandex/mobile/ads/impl/jc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/jc;->a()Lcom/yandex/mobile/ads/impl/lc;

    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ly0;->b:Lcom/yandex/mobile/ads/impl/kx1;

    invoke-virtual {v2, p1}, Lcom/yandex/mobile/ads/impl/kx1;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz v1, :cond_7

    .line 19
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/lc;->b()Z

    move-result v2

    .line 20
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/lc;->a()Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_7

    if-nez v2, :cond_7

    if-eqz v1, :cond_7

    .line 21
    const-string p1, "google_aid"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ly0;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o3;->k()Lcom/yandex/mobile/ads/impl/o50;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o50;->c()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "gms_available"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/lz0;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/lz0;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    const-string p0, "mediationNetwork"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/lz0;->i()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
