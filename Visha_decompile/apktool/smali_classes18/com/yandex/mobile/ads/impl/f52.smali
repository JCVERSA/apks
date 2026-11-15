.class public final Lcom/yandex/mobile/ads/impl/f52;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/xl1;

.field private final b:Lcom/yandex/mobile/ads/impl/z1;

.field private final c:Lcom/yandex/mobile/ads/impl/mz;

.field private final d:Lcom/yandex/mobile/ads/impl/kp;

.field private final e:Lcom/yandex/mobile/ads/impl/aq;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/xl1;Lcom/yandex/mobile/ads/impl/z1;Lcom/yandex/mobile/ads/impl/mz;Lcom/yandex/mobile/ads/impl/kp;)V
    .locals 6

    .line 1
    new-instance v5, Lcom/yandex/mobile/ads/impl/aq;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/aq;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/f52;-><init>(Lcom/yandex/mobile/ads/impl/xl1;Lcom/yandex/mobile/ads/impl/z1;Lcom/yandex/mobile/ads/impl/mz;Lcom/yandex/mobile/ads/impl/kp;Lcom/yandex/mobile/ads/impl/aq;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/xl1;Lcom/yandex/mobile/ads/impl/z1;Lcom/yandex/mobile/ads/impl/mz;Lcom/yandex/mobile/ads/impl/kp;Lcom/yandex/mobile/ads/impl/aq;)V
    .locals 1

    .line 3
    const-string v0, "progressIncrementer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adBlockDurationProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultContentDelayProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closableAdChecker"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeTimerProgressIncrementer"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/f52;->a:Lcom/yandex/mobile/ads/impl/xl1;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/f52;->b:Lcom/yandex/mobile/ads/impl/z1;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/f52;->c:Lcom/yandex/mobile/ads/impl/mz;

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/f52;->d:Lcom/yandex/mobile/ads/impl/kp;

    .line 9
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/f52;->e:Lcom/yandex/mobile/ads/impl/aq;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/z1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/f52;->b:Lcom/yandex/mobile/ads/impl/z1;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/kp;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/f52;->d:Lcom/yandex/mobile/ads/impl/kp;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/aq;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/f52;->e:Lcom/yandex/mobile/ads/impl/aq;

    return-object p0
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/mz;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/f52;->c:Lcom/yandex/mobile/ads/impl/mz;

    return-object p0
.end method

.method public final e()Lcom/yandex/mobile/ads/impl/xl1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/f52;->a:Lcom/yandex/mobile/ads/impl/xl1;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/f52;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/f52;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/f52;->a:Lcom/yandex/mobile/ads/impl/xl1;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/f52;->a:Lcom/yandex/mobile/ads/impl/xl1;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/f52;->b:Lcom/yandex/mobile/ads/impl/z1;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/f52;->b:Lcom/yandex/mobile/ads/impl/z1;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/f52;->c:Lcom/yandex/mobile/ads/impl/mz;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/f52;->c:Lcom/yandex/mobile/ads/impl/mz;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/f52;->d:Lcom/yandex/mobile/ads/impl/kp;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/f52;->d:Lcom/yandex/mobile/ads/impl/kp;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/f52;->e:Lcom/yandex/mobile/ads/impl/aq;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/f52;->e:Lcom/yandex/mobile/ads/impl/aq;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/f52;->a:Lcom/yandex/mobile/ads/impl/xl1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/f52;->b:Lcom/yandex/mobile/ads/impl/z1;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/f52;->c:Lcom/yandex/mobile/ads/impl/mz;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/f52;->d:Lcom/yandex/mobile/ads/impl/kp;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/f52;->e:Lcom/yandex/mobile/ads/impl/aq;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/f52;->a:Lcom/yandex/mobile/ads/impl/xl1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/f52;->b:Lcom/yandex/mobile/ads/impl/z1;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/f52;->c:Lcom/yandex/mobile/ads/impl/mz;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/f52;->d:Lcom/yandex/mobile/ads/impl/kp;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/f52;->e:Lcom/yandex/mobile/ads/impl/aq;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TimeProviderContainer(progressIncrementer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adBlockDurationProvider="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", defaultContentDelayProvider="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", closableAdChecker="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", closeTimerProgressIncrementer="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
