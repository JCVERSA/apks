.class public final Lcom/yandex/mobile/ads/impl/gy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/gy;

.field private final b:Lcom/yandex/mobile/ads/impl/fx;

.field private final c:Z

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/iy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/gy;Lcom/yandex/mobile/ads/impl/fx;ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/gy;",
            "Lcom/yandex/mobile/ads/impl/fx;",
            "Z",
            "Ljava/util/List<",
            "+",
            "Lcom/yandex/mobile/ads/impl/iy;",
            ">;)V"
        }
    .end annotation

    const-string v0, "destination"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiData"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gy;->a:Lcom/yandex/mobile/ads/impl/gy;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/gy;->b:Lcom/yandex/mobile/ads/impl/fx;

    iput-boolean p3, p0, Lcom/yandex/mobile/ads/impl/gy;->c:Z

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/gy;->d:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/gy;Lcom/yandex/mobile/ads/impl/gy;Lcom/yandex/mobile/ads/impl/fx;ZLjava/util/List;I)Lcom/yandex/mobile/ads/impl/gy;
    .locals 1

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/gy;->a:Lcom/yandex/mobile/ads/impl/gy;

    :cond_0
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/gy;->b:Lcom/yandex/mobile/ads/impl/fx;

    :cond_1
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_2

    iget-boolean p3, p0, Lcom/yandex/mobile/ads/impl/gy;->c:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/yandex/mobile/ads/impl/gy;->d:Ljava/util/List;

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const-string p0, "destination"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "uiData"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/gy;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yandex/mobile/ads/impl/gy;-><init>(Lcom/yandex/mobile/ads/impl/gy;Lcom/yandex/mobile/ads/impl/fx;ZLjava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/fx;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gy;->b:Lcom/yandex/mobile/ads/impl/fx;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/gy;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gy;->a:Lcom/yandex/mobile/ads/impl/gy;

    return-object p0
.end method

.method public final c()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/iy;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gy;->d:Ljava/util/List;

    return-object p0
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/gy;->c:Z

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/gy;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/gy;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/gy;->a:Lcom/yandex/mobile/ads/impl/gy;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/gy;->a:Lcom/yandex/mobile/ads/impl/gy;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/gy;->b:Lcom/yandex/mobile/ads/impl/fx;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/gy;->b:Lcom/yandex/mobile/ads/impl/fx;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/gy;->c:Z

    iget-boolean v3, p1, Lcom/yandex/mobile/ads/impl/gy;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gy;->d:Ljava/util/List;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/gy;->d:Ljava/util/List;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gy;->a:Lcom/yandex/mobile/ads/impl/gy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gy;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/gy;->b:Lcom/yandex/mobile/ads/impl/fx;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/gy;->c:Z

    invoke-static {v0, v2, v1}, Lcom/yandex/mobile/ads/impl/a7;->a(ZII)I

    move-result v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gy;->d:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gy;->a:Lcom/yandex/mobile/ads/impl/gy;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/gy;->b:Lcom/yandex/mobile/ads/impl/fx;

    iget-boolean v2, p0, Lcom/yandex/mobile/ads/impl/gy;->c:Z

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gy;->d:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DebugPanelUiState(prevState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", destination="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isLoading="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", uiData="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
