.class public final Lcom/yandex/mobile/ads/impl/wb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ch0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/wb$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/gf1;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/zb;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/yandex/mobile/ads/impl/xb;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/gf1;)V
    .locals 1

    const-string v0, "optOutRepository"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wb;->a:Lcom/yandex/mobile/ads/impl/gf1;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/wb;->a()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wb;->b:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/wb;)Lcom/yandex/mobile/ads/impl/gf1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wb;->a:Lcom/yandex/mobile/ads/impl/gf1;

    return-object p0
.end method

.method private final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/zb;",
            ">;"
        }
    .end annotation

    .line 12
    new-instance v0, Lcom/yandex/mobile/ads/impl/fc;

    new-instance v1, Lcom/yandex/mobile/ads/impl/wb$a;

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/impl/wb$a;-><init>(Lcom/yandex/mobile/ads/impl/wb;)V

    const-string p0, "noInterestAd"

    invoke-direct {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/fc;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 13
    invoke-static {v0}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 14
    new-instance v0, Lcom/yandex/mobile/ads/impl/dc;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/dc;-><init>()V

    .line 15
    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/dc;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 16
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wb;->c:Lcom/yandex/mobile/ads/impl/xb;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/xb;->a()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/xb;)V
    .locals 1

    .line 10
    const-string v0, "adtuneOptOutWebViewListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wb;->c:Lcom/yandex/mobile/ads/impl/xb;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 2
    const-string v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wb;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/zb;

    .line 7
    invoke-interface {v1, p1, v0}, Lcom/yandex/mobile/ads/impl/zb;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/zb;->a()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p0, 0x0

    .line 9
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->f([Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
