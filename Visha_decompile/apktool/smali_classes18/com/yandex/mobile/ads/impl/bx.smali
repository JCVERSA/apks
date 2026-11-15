.class public final Lcom/yandex/mobile/ads/impl/bx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/xw;

.field private final b:Lcom/yandex/mobile/ads/impl/yx;

.field private final c:Lcom/yandex/mobile/ads/impl/gw;

.field private final d:Lcom/yandex/mobile/ads/impl/tw;

.field private final e:Lcom/yandex/mobile/ads/impl/ax;

.field private final f:Lcom/yandex/mobile/ads/impl/hx;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/hw;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/vw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/xw;Lcom/yandex/mobile/ads/impl/yx;Lcom/yandex/mobile/ads/impl/gw;Lcom/yandex/mobile/ads/impl/tw;Lcom/yandex/mobile/ads/impl/ax;Lcom/yandex/mobile/ads/impl/hx;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/xw;",
            "Lcom/yandex/mobile/ads/impl/yx;",
            "Lcom/yandex/mobile/ads/impl/gw;",
            "Lcom/yandex/mobile/ads/impl/tw;",
            "Lcom/yandex/mobile/ads/impl/ax;",
            "Lcom/yandex/mobile/ads/impl/hx;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/hw;",
            ">;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/vw;",
            ">;)V"
        }
    .end annotation

    const-string v0, "appData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkData"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkSettingsData"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adaptersData"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentsData"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugErrorIndicatorData"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnits"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alerts"

    invoke-static {p8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/bx;->a:Lcom/yandex/mobile/ads/impl/xw;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/bx;->b:Lcom/yandex/mobile/ads/impl/yx;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/bx;->c:Lcom/yandex/mobile/ads/impl/gw;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/bx;->d:Lcom/yandex/mobile/ads/impl/tw;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/bx;->e:Lcom/yandex/mobile/ads/impl/ax;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/bx;->f:Lcom/yandex/mobile/ads/impl/hx;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/bx;->g:Ljava/util/List;

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/bx;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/hw;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bx;->g:Ljava/util/List;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/tw;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bx;->d:Lcom/yandex/mobile/ads/impl/tw;

    return-object p0
.end method

.method public final c()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/vw;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bx;->h:Ljava/util/List;

    return-object p0
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/xw;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bx;->a:Lcom/yandex/mobile/ads/impl/xw;

    return-object p0
.end method

.method public final e()Lcom/yandex/mobile/ads/impl/ax;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bx;->e:Lcom/yandex/mobile/ads/impl/ax;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/bx;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/bx;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/bx;->a:Lcom/yandex/mobile/ads/impl/xw;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/bx;->a:Lcom/yandex/mobile/ads/impl/xw;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/bx;->b:Lcom/yandex/mobile/ads/impl/yx;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/bx;->b:Lcom/yandex/mobile/ads/impl/yx;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/bx;->c:Lcom/yandex/mobile/ads/impl/gw;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/bx;->c:Lcom/yandex/mobile/ads/impl/gw;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/bx;->d:Lcom/yandex/mobile/ads/impl/tw;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/bx;->d:Lcom/yandex/mobile/ads/impl/tw;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/bx;->e:Lcom/yandex/mobile/ads/impl/ax;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/bx;->e:Lcom/yandex/mobile/ads/impl/ax;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/bx;->f:Lcom/yandex/mobile/ads/impl/hx;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/bx;->f:Lcom/yandex/mobile/ads/impl/hx;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/bx;->g:Ljava/util/List;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/bx;->g:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bx;->h:Ljava/util/List;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/bx;->h:Ljava/util/List;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final f()Lcom/yandex/mobile/ads/impl/hx;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bx;->f:Lcom/yandex/mobile/ads/impl/hx;

    return-object p0
.end method

.method public final g()Lcom/yandex/mobile/ads/impl/gw;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bx;->c:Lcom/yandex/mobile/ads/impl/gw;

    return-object p0
.end method

.method public final h()Lcom/yandex/mobile/ads/impl/yx;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bx;->b:Lcom/yandex/mobile/ads/impl/yx;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bx;->a:Lcom/yandex/mobile/ads/impl/xw;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/xw;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/bx;->b:Lcom/yandex/mobile/ads/impl/yx;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/yx;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bx;->c:Lcom/yandex/mobile/ads/impl/gw;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gw;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/bx;->d:Lcom/yandex/mobile/ads/impl/tw;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/tw;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bx;->e:Lcom/yandex/mobile/ads/impl/ax;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ax;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/bx;->f:Lcom/yandex/mobile/ads/impl/hx;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/hx;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bx;->g:Ljava/util/List;

    invoke-static {v0, v2, v1}, Lcom/yandex/mobile/ads/impl/aa;->a(Ljava/util/List;II)I

    move-result v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bx;->h:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bx;->a:Lcom/yandex/mobile/ads/impl/xw;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/bx;->b:Lcom/yandex/mobile/ads/impl/yx;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/bx;->c:Lcom/yandex/mobile/ads/impl/gw;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/bx;->d:Lcom/yandex/mobile/ads/impl/tw;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/bx;->e:Lcom/yandex/mobile/ads/impl/ax;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/bx;->f:Lcom/yandex/mobile/ads/impl/hx;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/bx;->g:Ljava/util/List;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bx;->h:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DebugPanelData(appData="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sdkData="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", networkSettingsData="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adaptersData="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", consentsData="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", debugErrorIndicatorData="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adUnits="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", alerts="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
