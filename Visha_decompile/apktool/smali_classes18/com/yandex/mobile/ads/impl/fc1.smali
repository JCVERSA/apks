.class public final Lcom/yandex/mobile/ads/impl/fc1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ey1;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final e:Lcom/yandex/mobile/ads/impl/t4;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/t4;)V
    .locals 1

    const-string v0, "assets"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showNotices"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderTrackingUrls"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fc1;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/fc1;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/fc1;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/fc1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/fc1;->e:Lcom/yandex/mobile/ads/impl/t4;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fc1;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fc1;->a:Ljava/util/List;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/t4;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fc1;->e:Lcom/yandex/mobile/ads/impl/t4;

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

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fc1;->c:Ljava/util/List;

    return-object p0
.end method

.method public final e()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ey1;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fc1;->b:Ljava/util/List;

    return-object p0
.end method
