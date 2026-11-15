.class public final Lcom/yandex/mobile/ads/impl/jv1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/j9;

.field private final c:Lcom/yandex/mobile/ads/impl/iv1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/iv1<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/j9;Lcom/yandex/mobile/ads/impl/iv1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/j9;",
            "Lcom/yandex/mobile/ads/impl/iv1<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sizeValidator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkHtmlAdCreateController"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jv1;->a:Lcom/yandex/mobile/ads/impl/o3;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/jv1;->b:Lcom/yandex/mobile/ads/impl/j9;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/jv1;->c:Lcom/yandex/mobile/ads/impl/iv1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jv1;->c:Lcom/yandex/mobile/ads/impl/iv1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/iv1;->a()V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/kv1;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/kv1<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creationListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o8;->I()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o8;->M()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/jv1;->b:Lcom/yandex/mobile/ads/impl/j9;

    invoke-interface {v2, p1, v1}, Lcom/yandex/mobile/ads/impl/j9;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;)Z

    move-result v2

    .line 6
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/jv1;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/o3;->r()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object v3

    if-nez v2, :cond_0

    .line 7
    invoke-static {}, Lcom/yandex/mobile/ads/impl/w7;->k()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/yandex/mobile/ads/impl/kv1;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    goto :goto_1

    :cond_0
    if-nez v3, :cond_1

    .line 8
    invoke-static {}, Lcom/yandex/mobile/ads/impl/w7;->m()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/yandex/mobile/ads/impl/kv1;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/jv1;->b:Lcom/yandex/mobile/ads/impl/j9;

    .line 10
    invoke-static {p1, p2, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/iz1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/gz1;Lcom/yandex/mobile/ads/impl/j9;Lcom/yandex/mobile/ads/impl/gz1;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 11
    invoke-interface {v3, p1}, Lcom/yandex/mobile/ads/impl/gz1;->c(Landroid/content/Context;)I

    move-result v4

    .line 12
    invoke-interface {v3, p1}, Lcom/yandex/mobile/ads/impl/gz1;->a(Landroid/content/Context;)I

    move-result v5

    .line 13
    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/gz1;->getWidth()I

    move-result v6

    .line 14
    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/gz1;->getHeight()I

    move-result v7

    .line 15
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/wh2;->c(Landroid/content/Context;)I

    move-result v8

    .line 16
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/wh2;->b(Landroid/content/Context;)I

    move-result v9

    .line 17
    invoke-static/range {v4 .. v9}, Lcom/yandex/mobile/ads/impl/w7;->a(IIIIII)Lcom/yandex/mobile/ads/impl/w3;

    move-result-object p0

    .line 18
    invoke-interface {p3, p0}, Lcom/yandex/mobile/ads/impl/kv1;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_5

    .line 19
    invoke-static {v0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 20
    :cond_3
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/oa;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 21
    invoke-static {}, Lcom/yandex/mobile/ads/impl/w7;->z()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/yandex/mobile/ads/impl/kv1;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    goto :goto_1

    .line 22
    :cond_4
    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jv1;->c:Lcom/yandex/mobile/ads/impl/iv1;

    invoke-interface {p0, p2, v3, v0, p3}, Lcom/yandex/mobile/ads/impl/iv1;->a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/gz1;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/kv1;)V
    :try_end_0
    .catch Lcom/yandex/mobile/ads/impl/tj2; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 23
    :catch_0
    invoke-static {}, Lcom/yandex/mobile/ads/impl/w7;->y()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/yandex/mobile/ads/impl/kv1;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    goto :goto_1

    .line 24
    :cond_5
    :goto_0
    invoke-static {}, Lcom/yandex/mobile/ads/impl/w7;->k()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/yandex/mobile/ads/impl/kv1;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    :goto_1
    return-void
.end method
