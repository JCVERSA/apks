.class public final Lcom/yandex/mobile/ads/impl/p3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/vn2;


# direct methods
.method private constructor <init>(Lcom/yandex/mobile/ads/impl/vn2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/p3;->a:Lcom/yandex/mobile/ads/impl/vn2;

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/vn2;)Lcom/yandex/mobile/ads/impl/p3;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vn2;->j()Lcom/yandex/mobile/ads/impl/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/g9;->c()Lcom/yandex/mobile/ads/impl/p3;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vn2;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/yandex/mobile/ads/impl/p3;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/p3;-><init>(Lcom/yandex/mobile/ads/impl/vn2;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vn2;->j()Lcom/yandex/mobile/ads/impl/g9;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/g9;->a(Lcom/yandex/mobile/ads/impl/p3;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AdSession is finished"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AdEvents already exists for AdSession"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p3;->a:Lcom/yandex/mobile/ads/impl/vn2;

    .line 7
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vn2;->k()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p3;->a:Lcom/yandex/mobile/ads/impl/vn2;

    .line 9
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vn2;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p3;->a:Lcom/yandex/mobile/ads/impl/vn2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vn2;->g()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p3;->a:Lcom/yandex/mobile/ads/impl/vn2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vn2;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p3;->a:Lcom/yandex/mobile/ads/impl/vn2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vn2;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p3;->a:Lcom/yandex/mobile/ads/impl/vn2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vn2;->e()V

    :cond_1
    return-void

    .line 11
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Impression event is not expected from the Native AdSession"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AdSession is finished"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ga2;)V
    .locals 1
    .param p1    # Lcom/yandex/mobile/ads/impl/ga2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 13
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p3;->a:Lcom/yandex/mobile/ads/impl/vn2;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/xo2;->a(Lcom/yandex/mobile/ads/impl/vn2;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/p3;->a:Lcom/yandex/mobile/ads/impl/vn2;

    .line 14
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vn2;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p3;->a:Lcom/yandex/mobile/ads/impl/vn2;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ga2;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/vn2;->a(Lorg/json/JSONObject;)V

    return-void

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Impression event is not expected from the Native AdSession"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
