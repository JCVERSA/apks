.class public final Lcom/yandex/mobile/ads/impl/p2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/jg2;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/k9;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/yandex/mobile/ads/impl/a52;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Lcom/yandex/mobile/ads/impl/r2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/k9;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/a52;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1

    const-string v0, "adSource"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeOffset"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "breakTypes"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extensions"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "trackingEvents"

    invoke-static {p6, p5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/p2;->a:Lcom/yandex/mobile/ads/impl/k9;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/p2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/p2;->c:Lcom/yandex/mobile/ads/impl/a52;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/p2;->d:Ljava/util/List;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/p2;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p2;->e:Ljava/util/Map;

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/r2;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/p2;->f:Lcom/yandex/mobile/ads/impl/r2;

    return-void
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/k9;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p2;->a:Lcom/yandex/mobile/ads/impl/k9;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p2;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p2;->d:Ljava/util/List;

    return-object p0
.end method

.method public final e()Lcom/yandex/mobile/ads/impl/r2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p2;->f:Lcom/yandex/mobile/ads/impl/r2;

    return-object p0
.end method

.method public final f()Lcom/yandex/mobile/ads/impl/a52;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p2;->c:Lcom/yandex/mobile/ads/impl/a52;

    return-object p0
.end method
