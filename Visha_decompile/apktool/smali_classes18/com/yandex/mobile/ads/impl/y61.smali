.class public final Lcom/yandex/mobile/ads/impl/y61;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/g41;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;>;"
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

.field private final d:Lcom/yandex/mobile/ads/impl/t4;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/b30;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ey1;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/String;

.field private final i:Lcom/yandex/mobile/ads/impl/yx1;

.field private final j:Lcom/yandex/mobile/ads/impl/g6;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/mobile/ads/impl/t4;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/yx1;Lcom/yandex/mobile/ads/impl/g6;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/g41;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/t4;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/b30;",
            ">;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ey1;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/impl/yx1;",
            "Lcom/yandex/mobile/ads/impl/g6;",
            ")V"
        }
    .end annotation

    const-string v0, "nativeAds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assets"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderTrackingUrls"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "properties"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divKitDesigns"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showNotices"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/y61;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/y61;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/y61;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/y61;->d:Lcom/yandex/mobile/ads/impl/t4;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/y61;->e:Ljava/util/Map;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/y61;->f:Ljava/util/List;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/y61;->g:Ljava/util/List;

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/y61;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/y61;->i:Lcom/yandex/mobile/ads/impl/yx1;

    iput-object p10, p0, Lcom/yandex/mobile/ads/impl/y61;->j:Lcom/yandex/mobile/ads/impl/g6;

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/y61;Ljava/util/List;)Lcom/yandex/mobile/ads/impl/y61;
    .locals 11

    .line 1
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/y61;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/y61;->c:Ljava/util/List;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/y61;->d:Lcom/yandex/mobile/ads/impl/t4;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/y61;->e:Ljava/util/Map;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/y61;->f:Ljava/util/List;

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/y61;->g:Ljava/util/List;

    iget-object v8, p0, Lcom/yandex/mobile/ads/impl/y61;->h:Ljava/lang/String;

    iget-object v9, p0, Lcom/yandex/mobile/ads/impl/y61;->i:Lcom/yandex/mobile/ads/impl/yx1;

    iget-object v10, p0, Lcom/yandex/mobile/ads/impl/y61;->j:Lcom/yandex/mobile/ads/impl/g6;

    .line 2
    const-string p0, "nativeAds"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "assets"

    invoke-static {v2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "renderTrackingUrls"

    invoke-static {v3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "properties"

    invoke-static {v5, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "divKitDesigns"

    invoke-static {v6, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "showNotices"

    invoke-static {v7, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/y61;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/yandex/mobile/ads/impl/y61;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/mobile/ads/impl/t4;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/yx1;Lcom/yandex/mobile/ads/impl/g6;)V

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/g6;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y61;->j:Lcom/yandex/mobile/ads/impl/g6;

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

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y61;->b:Ljava/util/List;

    return-object p0
.end method

.method public final c()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/b30;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y61;->f:Ljava/util/List;

    return-object p0
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/t4;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y61;->d:Lcom/yandex/mobile/ads/impl/t4;

    return-object p0
.end method

.method public final e()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/g41;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y61;->a:Ljava/util/List;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/y61;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/y61;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/y61;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/y61;->a:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/y61;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/y61;->b:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/y61;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/y61;->c:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/y61;->d:Lcom/yandex/mobile/ads/impl/t4;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/y61;->d:Lcom/yandex/mobile/ads/impl/t4;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/y61;->e:Ljava/util/Map;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/y61;->e:Ljava/util/Map;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/y61;->f:Ljava/util/List;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/y61;->f:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/y61;->g:Ljava/util/List;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/y61;->g:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/y61;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/y61;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/y61;->i:Lcom/yandex/mobile/ads/impl/yx1;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/y61;->i:Lcom/yandex/mobile/ads/impl/yx1;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y61;->j:Lcom/yandex/mobile/ads/impl/g6;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/y61;->j:Lcom/yandex/mobile/ads/impl/g6;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final f()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y61;->e:Ljava/util/Map;

    return-object p0
.end method

.method public final g()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y61;->c:Ljava/util/List;

    return-object p0
.end method

.method public final h()Lcom/yandex/mobile/ads/impl/yx1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y61;->i:Lcom/yandex/mobile/ads/impl/yx1;

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/y61;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/y61;->b:Ljava/util/List;

    invoke-static {v2, v0, v1}, Lcom/yandex/mobile/ads/impl/aa;->a(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/y61;->c:Ljava/util/List;

    invoke-static {v2, v0, v1}, Lcom/yandex/mobile/ads/impl/aa;->a(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/y61;->d:Lcom/yandex/mobile/ads/impl/t4;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/t4;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/y61;->e:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/y61;->f:Ljava/util/List;

    invoke-static {v0, v2, v1}, Lcom/yandex/mobile/ads/impl/aa;->a(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/y61;->g:Ljava/util/List;

    invoke-static {v2, v0, v1}, Lcom/yandex/mobile/ads/impl/aa;->a(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/y61;->h:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/y61;->i:Lcom/yandex/mobile/ads/impl/yx1;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/yx1;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y61;->j:Lcom/yandex/mobile/ads/impl/g6;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/g6;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    return v0
.end method

.method public final i()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ey1;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y61;->g:Ljava/util/List;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/y61;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/y61;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/y61;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/y61;->d:Lcom/yandex/mobile/ads/impl/t4;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/y61;->e:Ljava/util/Map;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/y61;->f:Ljava/util/List;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/y61;->g:Ljava/util/List;

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/y61;->h:Ljava/lang/String;

    iget-object v8, p0, Lcom/yandex/mobile/ads/impl/y61;->i:Lcom/yandex/mobile/ads/impl/yx1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y61;->j:Lcom/yandex/mobile/ads/impl/g6;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NativeAdResponse(nativeAds="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", assets="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", renderTrackingUrls="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", impressionData="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", properties="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", divKitDesigns="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", showNotices="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", version="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", settings="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adPod="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
