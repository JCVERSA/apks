.class public final Lcom/yandex/mobile/ads/impl/ix;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/vw;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/xw;

.field private final c:Lcom/yandex/mobile/ads/impl/zx;

.field private final d:Lcom/yandex/mobile/ads/impl/gw;

.field private final e:Lcom/yandex/mobile/ads/impl/tw;

.field private final f:Lcom/yandex/mobile/ads/impl/ax;

.field private final g:Lcom/yandex/mobile/ads/impl/hx;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/yandex/mobile/ads/impl/xw;Lcom/yandex/mobile/ads/impl/zx;Lcom/yandex/mobile/ads/impl/gw;Lcom/yandex/mobile/ads/impl/tw;Lcom/yandex/mobile/ads/impl/ax;Lcom/yandex/mobile/ads/impl/hx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/vw;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/xw;",
            "Lcom/yandex/mobile/ads/impl/zx;",
            "Lcom/yandex/mobile/ads/impl/gw;",
            "Lcom/yandex/mobile/ads/impl/tw;",
            "Lcom/yandex/mobile/ads/impl/ax;",
            "Lcom/yandex/mobile/ads/impl/hx;",
            ")V"
        }
    .end annotation

    const-string v0, "alertsData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appData"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkIntegrationData"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adNetworkSettingsData"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adaptersData"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentsData"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugErrorIndicatorData"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ix;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ix;->b:Lcom/yandex/mobile/ads/impl/xw;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ix;->c:Lcom/yandex/mobile/ads/impl/zx;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ix;->d:Lcom/yandex/mobile/ads/impl/gw;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/ix;->e:Lcom/yandex/mobile/ads/impl/tw;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/ix;->f:Lcom/yandex/mobile/ads/impl/ax;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/ix;->g:Lcom/yandex/mobile/ads/impl/hx;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/gw;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ix;->d:Lcom/yandex/mobile/ads/impl/gw;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/tw;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ix;->e:Lcom/yandex/mobile/ads/impl/tw;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/xw;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ix;->b:Lcom/yandex/mobile/ads/impl/xw;

    return-object p0
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/ax;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ix;->f:Lcom/yandex/mobile/ads/impl/ax;

    return-object p0
.end method

.method public final e()Lcom/yandex/mobile/ads/impl/hx;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ix;->g:Lcom/yandex/mobile/ads/impl/hx;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/ix;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/ix;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ix;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/ix;->a:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ix;->b:Lcom/yandex/mobile/ads/impl/xw;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/ix;->b:Lcom/yandex/mobile/ads/impl/xw;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ix;->c:Lcom/yandex/mobile/ads/impl/zx;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/ix;->c:Lcom/yandex/mobile/ads/impl/zx;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ix;->d:Lcom/yandex/mobile/ads/impl/gw;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/ix;->d:Lcom/yandex/mobile/ads/impl/gw;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ix;->e:Lcom/yandex/mobile/ads/impl/tw;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/ix;->e:Lcom/yandex/mobile/ads/impl/tw;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ix;->f:Lcom/yandex/mobile/ads/impl/ax;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/ix;->f:Lcom/yandex/mobile/ads/impl/ax;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ix;->g:Lcom/yandex/mobile/ads/impl/hx;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/ix;->g:Lcom/yandex/mobile/ads/impl/hx;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final f()Lcom/yandex/mobile/ads/impl/zx;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ix;->c:Lcom/yandex/mobile/ads/impl/zx;

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ix;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ix;->b:Lcom/yandex/mobile/ads/impl/xw;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/xw;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ix;->c:Lcom/yandex/mobile/ads/impl/zx;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/zx;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ix;->d:Lcom/yandex/mobile/ads/impl/gw;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/gw;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ix;->e:Lcom/yandex/mobile/ads/impl/tw;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tw;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ix;->f:Lcom/yandex/mobile/ads/impl/ax;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ax;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ix;->g:Lcom/yandex/mobile/ads/impl/hx;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/hx;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ix;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ix;->b:Lcom/yandex/mobile/ads/impl/xw;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ix;->c:Lcom/yandex/mobile/ads/impl/zx;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ix;->d:Lcom/yandex/mobile/ads/impl/gw;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/ix;->e:Lcom/yandex/mobile/ads/impl/tw;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/ix;->f:Lcom/yandex/mobile/ads/impl/ax;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ix;->g:Lcom/yandex/mobile/ads/impl/hx;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DebugPanelFeedData(alertsData="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", appData="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sdkIntegrationData="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adNetworkSettingsData="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adaptersData="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", consentsData="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", debugErrorIndicatorData="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
