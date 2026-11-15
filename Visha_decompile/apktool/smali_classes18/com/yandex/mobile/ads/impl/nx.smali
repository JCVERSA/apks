.class public final Lcom/yandex/mobile/ads/impl/nx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/xw;

.field private final b:Lcom/yandex/mobile/ads/impl/yx;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/qz0;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/ax;

.field private final e:Lcom/yandex/mobile/ads/impl/hx;

.field private final f:Lcom/yandex/mobile/ads/impl/ox;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/xw;Lcom/yandex/mobile/ads/impl/yx;Ljava/util/ArrayList;Lcom/yandex/mobile/ads/impl/ax;Lcom/yandex/mobile/ads/impl/hx;Lcom/yandex/mobile/ads/impl/ox;)V
    .locals 1

    const-string v0, "appData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkData"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationNetworksData"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentsData"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugErrorIndicatorData"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nx;->a:Lcom/yandex/mobile/ads/impl/xw;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/nx;->b:Lcom/yandex/mobile/ads/impl/yx;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/nx;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/nx;->d:Lcom/yandex/mobile/ads/impl/ax;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/nx;->e:Lcom/yandex/mobile/ads/impl/hx;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/nx;->f:Lcom/yandex/mobile/ads/impl/ox;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/xw;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nx;->a:Lcom/yandex/mobile/ads/impl/xw;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/ax;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nx;->d:Lcom/yandex/mobile/ads/impl/ax;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/hx;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nx;->e:Lcom/yandex/mobile/ads/impl/hx;

    return-object p0
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/ox;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nx;->f:Lcom/yandex/mobile/ads/impl/ox;

    return-object p0
.end method

.method public final e()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/qz0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nx;->c:Ljava/util/List;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/nx;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/nx;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nx;->a:Lcom/yandex/mobile/ads/impl/xw;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/nx;->a:Lcom/yandex/mobile/ads/impl/xw;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nx;->b:Lcom/yandex/mobile/ads/impl/yx;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/nx;->b:Lcom/yandex/mobile/ads/impl/yx;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nx;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/nx;->c:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nx;->d:Lcom/yandex/mobile/ads/impl/ax;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/nx;->d:Lcom/yandex/mobile/ads/impl/ax;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nx;->e:Lcom/yandex/mobile/ads/impl/hx;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/nx;->e:Lcom/yandex/mobile/ads/impl/hx;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nx;->f:Lcom/yandex/mobile/ads/impl/ox;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/nx;->f:Lcom/yandex/mobile/ads/impl/ox;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final f()Lcom/yandex/mobile/ads/impl/yx;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nx;->b:Lcom/yandex/mobile/ads/impl/yx;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nx;->a:Lcom/yandex/mobile/ads/impl/xw;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/xw;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/nx;->b:Lcom/yandex/mobile/ads/impl/yx;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/yx;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nx;->c:Ljava/util/List;

    invoke-static {v0, v2, v1}, Lcom/yandex/mobile/ads/impl/aa;->a(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/nx;->d:Lcom/yandex/mobile/ads/impl/ax;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ax;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nx;->e:Lcom/yandex/mobile/ads/impl/hx;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/hx;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nx;->f:Lcom/yandex/mobile/ads/impl/ox;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ox;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nx;->a:Lcom/yandex/mobile/ads/impl/xw;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nx;->b:Lcom/yandex/mobile/ads/impl/yx;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/nx;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/nx;->d:Lcom/yandex/mobile/ads/impl/ax;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/nx;->e:Lcom/yandex/mobile/ads/impl/hx;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nx;->f:Lcom/yandex/mobile/ads/impl/ox;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DebugPanelLocalData(appData="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sdkData="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mediationNetworksData="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", consentsData="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", debugErrorIndicatorData="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", logsData="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
