.class public final Lcom/yandex/mobile/ads/impl/nh2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/mh2;

.field private final b:Lcom/yandex/mobile/ads/impl/nr0;

.field private final c:Lcom/yandex/mobile/ads/impl/tu0;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/mh2;Lcom/yandex/mobile/ads/impl/nr0;Lcom/yandex/mobile/ads/impl/tu0;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/mh2;",
            "Lcom/yandex/mobile/ads/impl/nr0;",
            "Lcom/yandex/mobile/ads/impl/tu0;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutParams"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measured"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalInfo"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nh2;->a:Lcom/yandex/mobile/ads/impl/mh2;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/nh2;->b:Lcom/yandex/mobile/ads/impl/nr0;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/nh2;->c:Lcom/yandex/mobile/ads/impl/tu0;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/nh2;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nh2;->d:Ljava/util/Map;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/nr0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nh2;->b:Lcom/yandex/mobile/ads/impl/nr0;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/tu0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nh2;->c:Lcom/yandex/mobile/ads/impl/tu0;

    return-object p0
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/mh2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nh2;->a:Lcom/yandex/mobile/ads/impl/mh2;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/nh2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/nh2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nh2;->a:Lcom/yandex/mobile/ads/impl/mh2;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/nh2;->a:Lcom/yandex/mobile/ads/impl/mh2;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nh2;->b:Lcom/yandex/mobile/ads/impl/nr0;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/nh2;->b:Lcom/yandex/mobile/ads/impl/nr0;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nh2;->c:Lcom/yandex/mobile/ads/impl/tu0;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/nh2;->c:Lcom/yandex/mobile/ads/impl/tu0;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nh2;->d:Ljava/util/Map;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/nh2;->d:Ljava/util/Map;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nh2;->a:Lcom/yandex/mobile/ads/impl/mh2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/mh2;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nh2;->b:Lcom/yandex/mobile/ads/impl/nr0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/nr0;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nh2;->c:Lcom/yandex/mobile/ads/impl/tu0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tu0;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nh2;->d:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/nh2;->a:Lcom/yandex/mobile/ads/impl/mh2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/nh2;->b:Lcom/yandex/mobile/ads/impl/nr0;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/nh2;->c:Lcom/yandex/mobile/ads/impl/tu0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nh2;->d:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ViewSizeInfo(view="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", layoutParams="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", measured="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", additionalInfo="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
