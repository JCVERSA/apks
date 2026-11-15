.class public final Lcom/yandex/mobile/ads/impl/zx0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/monetization/ads/mediation/base/a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/lz0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/e80;

.field private final c:Lcom/yandex/mobile/ads/impl/cy0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/cy0<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/ux0;

.field private e:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/yandex/mobile/ads/impl/ly0;Lcom/yandex/mobile/ads/impl/gy0;)V
    .locals 6

    .line 1
    new-instance v4, Lcom/yandex/mobile/ads/impl/cy0;

    invoke-direct {v4, p3}, Lcom/yandex/mobile/ads/impl/cy0;-><init>(Lcom/yandex/mobile/ads/impl/gy0;)V

    .line 2
    new-instance v5, Lcom/yandex/mobile/ads/impl/ux0;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/ux0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/zx0;-><init>(Ljava/util/List;Lcom/yandex/mobile/ads/impl/ly0;Lcom/yandex/mobile/ads/impl/gy0;Lcom/yandex/mobile/ads/impl/cy0;Lcom/yandex/mobile/ads/impl/ux0;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/yandex/mobile/ads/impl/ly0;Lcom/yandex/mobile/ads/impl/gy0;Lcom/yandex/mobile/ads/impl/cy0;Lcom/yandex/mobile/ads/impl/ux0;)V
    .locals 1

    .line 4
    const-string v0, "mediationNetworks"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extrasCreator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediatedAdapterReporter"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "mediatedAdapterCreator"

    invoke-static {p4, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "mediatedAdDataFactory"

    invoke-static {p5, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zx0;->a:Ljava/util/List;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/zx0;->b:Lcom/yandex/mobile/ads/impl/e80;

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/zx0;->c:Lcom/yandex/mobile/ads/impl/cy0;

    .line 9
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/zx0;->d:Lcom/yandex/mobile/ads/impl/ux0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/Class;)Lcom/yandex/mobile/ads/impl/qx0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/yandex/mobile/ads/impl/qx0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/yandex/mobile/ads/impl/zx0;->e:I

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zx0;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zx0;->a:Ljava/util/List;

    iget v1, p0, Lcom/yandex/mobile/ads/impl/zx0;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/yandex/mobile/ads/impl/zx0;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/lz0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/zx0;->c:Lcom/yandex/mobile/ads/impl/cy0;

    invoke-virtual {v1, p1, v0, p2}, Lcom/yandex/mobile/ads/impl/cy0;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/lz0;Ljava/lang/Class;)Lcom/monetization/ads/mediation/base/a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/zx0;->d:Lcom/yandex/mobile/ads/impl/ux0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "mediatedAdapter"

    invoke-static {v1, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/yandex/mobile/ads/impl/tx0;

    invoke-direct {p1, v1}, Lcom/yandex/mobile/ads/impl/tx0;-><init>(Lcom/monetization/ads/mediation/base/a;)V

    new-instance p2, Lcom/yandex/mobile/ads/impl/qx0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zx0;->b:Lcom/yandex/mobile/ads/impl/e80;

    invoke-direct {p2, v1, v0, p1, p0}, Lcom/yandex/mobile/ads/impl/qx0;-><init>(Lcom/monetization/ads/mediation/base/a;Lcom/yandex/mobile/ads/impl/lz0;Lcom/yandex/mobile/ads/impl/tx0;Lcom/yandex/mobile/ads/impl/e80;)V

    return-object p2

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
