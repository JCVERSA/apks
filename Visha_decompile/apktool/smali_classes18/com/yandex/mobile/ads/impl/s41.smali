.class public final Lcom/yandex/mobile/ads/impl/s41;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/y61;

.field private final b:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/o3;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/y61;)V
    .locals 1

    const-string v0, "nativeAdResponse"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/s41;->a:Lcom/yandex/mobile/ads/impl/y61;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/s41;->b:Lcom/yandex/mobile/ads/impl/o8;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/s41;->c:Lcom/yandex/mobile/ads/impl/o3;

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/y61;)Lcom/yandex/mobile/ads/impl/s41;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s41;->b:Lcom/yandex/mobile/ads/impl/o8;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s41;->c:Lcom/yandex/mobile/ads/impl/o3;

    .line 2
    const-string v1, "nativeAdResponse"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adResponse"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adConfiguration"

    invoke-static {p0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/s41;

    invoke-direct {v1, v0, p0, p1}, Lcom/yandex/mobile/ads/impl/s41;-><init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/y61;)V

    return-object v1
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/o3;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s41;->c:Lcom/yandex/mobile/ads/impl/o3;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/o8;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s41;->b:Lcom/yandex/mobile/ads/impl/o8;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/y61;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s41;->a:Lcom/yandex/mobile/ads/impl/y61;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/s41;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/s41;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/s41;->a:Lcom/yandex/mobile/ads/impl/y61;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/s41;->a:Lcom/yandex/mobile/ads/impl/y61;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/s41;->b:Lcom/yandex/mobile/ads/impl/o8;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/s41;->b:Lcom/yandex/mobile/ads/impl/o8;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s41;->c:Lcom/yandex/mobile/ads/impl/o3;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/s41;->c:Lcom/yandex/mobile/ads/impl/o3;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s41;->a:Lcom/yandex/mobile/ads/impl/y61;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/y61;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/s41;->b:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s41;->c:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s41;->a:Lcom/yandex/mobile/ads/impl/y61;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/s41;->b:Lcom/yandex/mobile/ads/impl/o8;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s41;->c:Lcom/yandex/mobile/ads/impl/o3;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NativeAdBlock(nativeAdResponse="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adResponse="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adConfiguration="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
