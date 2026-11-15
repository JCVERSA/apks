.class public final Lcom/yandex/mobile/ads/impl/iy$f;
.super Lcom/yandex/mobile/ads/impl/iy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/iy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yandex/mobile/ads/impl/cy;

.field private final c:Lcom/yandex/mobile/ads/impl/zw;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/cy;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/impl/iy$f;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/cy;Lcom/yandex/mobile/ads/impl/zw;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/cy;Lcom/yandex/mobile/ads/impl/zw;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/iy;-><init>(I)V

    .line 3
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/iy$f;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/iy$f;->b:Lcom/yandex/mobile/ads/impl/cy;

    .line 5
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/iy$f;->c:Lcom/yandex/mobile/ads/impl/zw;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 6
    const-string v0, "title"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/yandex/mobile/ads/impl/cy;

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/cy;-><init>(Ljava/lang/String;ILjava/lang/Integer;II)V

    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/iy$f;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/cy;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/iy$f;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/cy;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/iy$f;->b:Lcom/yandex/mobile/ads/impl/cy;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/zw;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/iy$f;->c:Lcom/yandex/mobile/ads/impl/zw;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/iy$f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/iy$f;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/iy$f;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/iy$f;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/iy$f;->b:Lcom/yandex/mobile/ads/impl/cy;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/iy$f;->b:Lcom/yandex/mobile/ads/impl/cy;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/iy$f;->c:Lcom/yandex/mobile/ads/impl/zw;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/iy$f;->c:Lcom/yandex/mobile/ads/impl/zw;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/iy$f;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/iy$f;->b:Lcom/yandex/mobile/ads/impl/cy;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/cy;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/iy$f;->c:Lcom/yandex/mobile/ads/impl/zw;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zw;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/iy$f;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/iy$f;->b:Lcom/yandex/mobile/ads/impl/cy;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/iy$f;->c:Lcom/yandex/mobile/ads/impl/zw;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyValue(title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", subtitle="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", text="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
