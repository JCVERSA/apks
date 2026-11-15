.class public final Lcom/yandex/mobile/ads/impl/qx0;
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
.field private final a:Lcom/monetization/ads/mediation/base/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/lz0;

.field private final c:Lcom/yandex/mobile/ads/impl/tx0;

.field private final d:Lcom/yandex/mobile/ads/impl/e80;


# direct methods
.method public constructor <init>(Lcom/monetization/ads/mediation/base/a;Lcom/yandex/mobile/ads/impl/lz0;Lcom/yandex/mobile/ads/impl/tx0;Lcom/yandex/mobile/ads/impl/e80;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/yandex/mobile/ads/impl/lz0;",
            "Lcom/yandex/mobile/ads/impl/tx0;",
            "Lcom/yandex/mobile/ads/impl/e80;",
            ")V"
        }
    .end annotation

    const-string v0, "mediatedAdapter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationNetwork"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediatedAdData"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extrasCreator"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qx0;->a:Lcom/monetization/ads/mediation/base/a;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/qx0;->b:Lcom/yandex/mobile/ads/impl/lz0;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/qx0;->c:Lcom/yandex/mobile/ads/impl/tx0;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/qx0;->d:Lcom/yandex/mobile/ads/impl/e80;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/tx0;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qx0;->c:Lcom/yandex/mobile/ads/impl/tx0;

    return-object p0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
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
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qx0;->d:Lcom/yandex/mobile/ads/impl/e80;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/e80;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lcom/monetization/ads/mediation/base/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qx0;->a:Lcom/monetization/ads/mediation/base/a;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/lz0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qx0;->b:Lcom/yandex/mobile/ads/impl/lz0;

    return-object p0
.end method

.method public final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qx0;->d:Lcom/yandex/mobile/ads/impl/e80;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qx0;->b:Lcom/yandex/mobile/ads/impl/lz0;

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/e80;->a(Lcom/yandex/mobile/ads/impl/lz0;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
