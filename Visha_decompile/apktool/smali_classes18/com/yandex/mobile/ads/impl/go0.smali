.class public final Lcom/yandex/mobile/ads/impl/go0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yandex/mobile/ads/impl/xn0;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/xn0;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/zc2;

.field private final e:Lcom/yandex/mobile/ads/impl/od2;

.field private final f:Lcom/yandex/mobile/ads/impl/cm0;

.field private final g:Lorg/json/JSONObject;

.field private final h:J

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/u70;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/xn0;Ljava/util/ArrayList;Lcom/yandex/mobile/ads/impl/zc2;Lcom/yandex/mobile/ads/impl/od2;Lcom/yandex/mobile/ads/impl/cm0;Lorg/json/JSONObject;JLjava/util/List;)V
    .locals 1

    const-string v0, "videoAdId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recommendedMediaFile"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaFiles"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adPodInfo"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adInfo"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extensions"

    invoke-static {p10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/go0;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/go0;->b:Lcom/yandex/mobile/ads/impl/xn0;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/go0;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/go0;->d:Lcom/yandex/mobile/ads/impl/zc2;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/go0;->e:Lcom/yandex/mobile/ads/impl/od2;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/go0;->f:Lcom/yandex/mobile/ads/impl/cm0;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/go0;->g:Lorg/json/JSONObject;

    iput-wide p8, p0, Lcom/yandex/mobile/ads/impl/go0;->h:J

    iput-object p10, p0, Lcom/yandex/mobile/ads/impl/go0;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/cm0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/go0;->f:Lcom/yandex/mobile/ads/impl/cm0;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/zc2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/go0;->d:Lcom/yandex/mobile/ads/impl/zc2;

    return-object p0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/go0;->h:J

    return-wide v0
.end method

.method public final d()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/u70;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/go0;->i:Ljava/util/List;

    return-object p0
.end method

.method public final e()Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/go0;->g:Lorg/json/JSONObject;

    return-object p0
.end method

.method public final f()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/xn0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/go0;->c:Ljava/util/List;

    return-object p0
.end method

.method public final g()Lcom/yandex/mobile/ads/impl/xn0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/go0;->b:Lcom/yandex/mobile/ads/impl/xn0;

    return-object p0
.end method

.method public final h()Lcom/yandex/mobile/ads/impl/od2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/go0;->e:Lcom/yandex/mobile/ads/impl/od2;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/go0;->a:Ljava/lang/String;

    return-object p0
.end method
