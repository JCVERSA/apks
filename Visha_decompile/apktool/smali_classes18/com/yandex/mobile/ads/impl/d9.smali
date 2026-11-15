.class public final Lcom/yandex/mobile/ads/impl/d9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/fg1;

.field private final b:Landroid/webkit/WebView;

.field private final c:Ljava/util/ArrayList;

.field private final d:Ljava/util/HashMap;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final h:Lcom/yandex/mobile/ads/impl/e9;


# direct methods
.method private constructor <init>(Lcom/yandex/mobile/ads/impl/fg1;Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    sget-object v0, Lcom/yandex/mobile/ads/impl/e9;->d:Lcom/yandex/mobile/ads/impl/e9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/d9;->c:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/d9;->d:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/d9;->a:Lcom/yandex/mobile/ads/impl/fg1;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/d9;->b:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/d9;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/d9;->h:Lcom/yandex/mobile/ads/impl/e9;

    if-eqz p3, :cond_0

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yandex/mobile/ads/impl/eb2;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/d9;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/d9;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/d9;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/fg1;Ljava/lang/String;Ljava/util/List;)Lcom/yandex/mobile/ads/impl/d9;
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/d9;

    invoke-direct {v0, p0, p1, p2}, Lcom/yandex/mobile/ads/impl/d9;-><init>(Lcom/yandex/mobile/ads/impl/fg1;Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "VerificationScriptResources is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/e9;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d9;->h:Lcom/yandex/mobile/ads/impl/e9;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d9;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d9;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/impl/eb2;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d9;->d:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d9;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final f()Lcom/yandex/mobile/ads/impl/fg1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d9;->a:Lcom/yandex/mobile/ads/impl/fg1;

    return-object p0
.end method

.method public final g()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/eb2;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d9;->c:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final h()Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d9;->b:Landroid/webkit/WebView;

    return-object p0
.end method
