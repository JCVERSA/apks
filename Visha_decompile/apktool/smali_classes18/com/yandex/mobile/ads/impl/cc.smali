.class public final Lcom/yandex/mobile/ads/impl/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ch0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/cc$a;,
        Lcom/yandex/mobile/ads/impl/cc$b;,
        Lcom/yandex/mobile/ads/impl/cc$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ub;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/zb;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/yandex/mobile/ads/impl/ec;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ub;)V
    .locals 1

    const-string v0, "optOutRenderer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cc;->a:Lcom/yandex/mobile/ads/impl/ub;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/cc;->a()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cc;->b:Ljava/util/List;

    return-void
.end method

.method private final a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/zb;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Lcom/yandex/mobile/ads/impl/fc;

    new-instance v1, Lcom/yandex/mobile/ads/impl/cc$c;

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/impl/cc$c;-><init>(Lcom/yandex/mobile/ads/impl/cc;)V

    const-string v2, "adtuneRendered"

    invoke-direct {v0, v2, v1}, Lcom/yandex/mobile/ads/impl/fc;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 19
    new-instance v1, Lcom/yandex/mobile/ads/impl/fc;

    new-instance v2, Lcom/yandex/mobile/ads/impl/cc$a;

    invoke-direct {v2, p0}, Lcom/yandex/mobile/ads/impl/cc$a;-><init>(Lcom/yandex/mobile/ads/impl/cc;)V

    const-string v3, "adtuneClosed"

    invoke-direct {v1, v3, v2}, Lcom/yandex/mobile/ads/impl/fc;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 20
    new-instance v2, Lcom/yandex/mobile/ads/impl/fc;

    new-instance v3, Lcom/yandex/mobile/ads/impl/cc$b;

    invoke-direct {v3, p0}, Lcom/yandex/mobile/ads/impl/cc$b;-><init>(Lcom/yandex/mobile/ads/impl/cc;)V

    const-string p0, "openOptOut"

    invoke-direct {v2, p0, v3}, Lcom/yandex/mobile/ads/impl/fc;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    filled-new-array {v0, v1, v2}, [Lcom/yandex/mobile/ads/impl/fc;

    move-result-object p0

    .line 21
    invoke-static {p0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lcom/yandex/mobile/ads/impl/cc;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cc;->c:Lcom/yandex/mobile/ads/impl/ec;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/ec;->b()V

    :cond_0
    return-void
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/cc;)Lcom/yandex/mobile/ads/impl/ec;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cc;->c:Lcom/yandex/mobile/ads/impl/ec;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/cc;)Lcom/yandex/mobile/ads/impl/ub;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cc;->a:Lcom/yandex/mobile/ads/impl/ub;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/mobile/ads/impl/cc;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cc;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 15
    new-instance v0, Lcom/yandex/mobile/ads/impl/dc;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/dc;-><init>()V

    .line 16
    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/dc;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 17
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cc;->c:Lcom/yandex/mobile/ads/impl/ec;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/ec;->b()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ec;)V
    .locals 1

    .line 13
    const-string v0, "adtuneWebViewListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cc;->c:Lcom/yandex/mobile/ads/impl/ec;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    .line 3
    const-string v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/cc;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/mobile/ads/impl/zb;

    .line 8
    invoke-interface {v3, v1, v0}, Lcom/yandex/mobile/ads/impl/zb;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    invoke-interface {v3}, Lcom/yandex/mobile/ads/impl/zb;->a()V

    return-void

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/cc;->c:Lcom/yandex/mobile/ads/impl/ec;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/ec;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 11
    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/sp0;->f([Ljava/lang/Object;)V

    .line 12
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cc;->c:Lcom/yandex/mobile/ads/impl/ec;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/ec;->b()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cc;->d:Ljava/lang/String;

    return-void
.end method
