.class public final Lcom/yandex/mobile/ads/impl/n80;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ts;

.field private final b:J

.field private final c:Lcom/yandex/mobile/ads/impl/o0$a;

.field private final d:Lcom/yandex/mobile/ads/impl/m80;

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

.field private final f:Lcom/yandex/mobile/ads/impl/f;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ts;JLcom/yandex/mobile/ads/impl/o0$a;Lcom/yandex/mobile/ads/impl/m80;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ts;",
            "J",
            "Lcom/yandex/mobile/ads/impl/o0$a;",
            "Lcom/yandex/mobile/ads/impl/m80;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/f;",
            ")V"
        }
    .end annotation

    const-string v0, "adType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityInteractionType"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportData"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/n80;->a:Lcom/yandex/mobile/ads/impl/ts;

    iput-wide p2, p0, Lcom/yandex/mobile/ads/impl/n80;->b:J

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/n80;->c:Lcom/yandex/mobile/ads/impl/o0$a;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/n80;->d:Lcom/yandex/mobile/ads/impl/m80;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/n80;->e:Ljava/util/Map;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/n80;->f:Lcom/yandex/mobile/ads/impl/f;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/f;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/n80;->f:Lcom/yandex/mobile/ads/impl/f;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/o0$a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/n80;->c:Lcom/yandex/mobile/ads/impl/o0$a;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/ts;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/n80;->a:Lcom/yandex/mobile/ads/impl/ts;

    return-object p0
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/m80;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/n80;->d:Lcom/yandex/mobile/ads/impl/m80;

    return-object p0
.end method

.method public final e()Ljava/util/Map;
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

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/n80;->e:Ljava/util/Map;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/n80;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/n80;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/n80;->a:Lcom/yandex/mobile/ads/impl/ts;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/n80;->a:Lcom/yandex/mobile/ads/impl/ts;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/yandex/mobile/ads/impl/n80;->b:J

    iget-wide v5, p1, Lcom/yandex/mobile/ads/impl/n80;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/n80;->c:Lcom/yandex/mobile/ads/impl/o0$a;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/n80;->c:Lcom/yandex/mobile/ads/impl/o0$a;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/n80;->d:Lcom/yandex/mobile/ads/impl/m80;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/n80;->d:Lcom/yandex/mobile/ads/impl/m80;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/n80;->e:Ljava/util/Map;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/n80;->e:Ljava/util/Map;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/n80;->f:Lcom/yandex/mobile/ads/impl/f;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/n80;->f:Lcom/yandex/mobile/ads/impl/f;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/n80;->b:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/n80;->a:Lcom/yandex/mobile/ads/impl/ts;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/yandex/mobile/ads/impl/n80;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/n80;->c:Lcom/yandex/mobile/ads/impl/o0$a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/n80;->d:Lcom/yandex/mobile/ads/impl/m80;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/m80;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/n80;->e:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/n80;->f:Lcom/yandex/mobile/ads/impl/f;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/f;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/n80;->a:Lcom/yandex/mobile/ads/impl/ts;

    iget-wide v1, p0, Lcom/yandex/mobile/ads/impl/n80;->b:J

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/n80;->c:Lcom/yandex/mobile/ads/impl/o0$a;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/n80;->d:Lcom/yandex/mobile/ads/impl/m80;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/n80;->e:Ljava/util/Map;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/n80;->f:Lcom/yandex/mobile/ads/impl/f;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FalseClickData(adType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", startTime="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", activityInteractionType="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", falseClick="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", reportData="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", abExperiments="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
