.class public final Lcom/yandex/mobile/ads/impl/ex0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/wu0;

.field private final b:Lcom/yandex/mobile/ads/impl/lb2;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/xj0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/wu0;Lcom/yandex/mobile/ads/impl/lb2;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/wu0;",
            "Lcom/yandex/mobile/ads/impl/lb2;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/xj0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ex0;->a:Lcom/yandex/mobile/ads/impl/wu0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ex0;->b:Lcom/yandex/mobile/ads/impl/lb2;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ex0;->c:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/ex0;Lcom/yandex/mobile/ads/impl/lb2;)Lcom/yandex/mobile/ads/impl/ex0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ex0;->a:Lcom/yandex/mobile/ads/impl/wu0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ex0;->c:Ljava/util/List;

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/ex0;

    invoke-direct {v1, v0, p1, p0}, Lcom/yandex/mobile/ads/impl/ex0;-><init>(Lcom/yandex/mobile/ads/impl/wu0;Lcom/yandex/mobile/ads/impl/lb2;Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/xj0;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ex0;->c:Ljava/util/List;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/wu0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ex0;->a:Lcom/yandex/mobile/ads/impl/wu0;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/lb2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ex0;->b:Lcom/yandex/mobile/ads/impl/lb2;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/ex0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/ex0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ex0;->a:Lcom/yandex/mobile/ads/impl/wu0;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/ex0;->a:Lcom/yandex/mobile/ads/impl/wu0;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ex0;->b:Lcom/yandex/mobile/ads/impl/lb2;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/ex0;->b:Lcom/yandex/mobile/ads/impl/lb2;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ex0;->c:Ljava/util/List;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/ex0;->c:Ljava/util/List;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ex0;->a:Lcom/yandex/mobile/ads/impl/wu0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/wu0;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ex0;->b:Lcom/yandex/mobile/ads/impl/lb2;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/lb2;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ex0;->c:Ljava/util/List;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ex0;->a:Lcom/yandex/mobile/ads/impl/wu0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ex0;->b:Lcom/yandex/mobile/ads/impl/lb2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ex0;->c:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaValue(media="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", video="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", imageValues="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
