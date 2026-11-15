.class public final Lcom/yandex/mobile/ads/impl/lb2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/kb1;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/ag2;

.field private final c:Lcom/yandex/mobile/ads/impl/xj0;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/yandex/mobile/ads/impl/ag2;Lcom/yandex/mobile/ads/impl/xj0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/kb1;",
            ">;>;",
            "Lcom/yandex/mobile/ads/impl/ag2;",
            "Lcom/yandex/mobile/ads/impl/xj0;",
            ")V"
        }
    .end annotation

    const-string v0, "videoAdsInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/lb2;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/lb2;->b:Lcom/yandex/mobile/ads/impl/ag2;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/lb2;->c:Lcom/yandex/mobile/ads/impl/xj0;

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/lb2;Ljava/util/List;)Lcom/yandex/mobile/ads/impl/lb2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lb2;->b:Lcom/yandex/mobile/ads/impl/ag2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lb2;->c:Lcom/yandex/mobile/ads/impl/xj0;

    .line 2
    const-string v1, "videoAdsInfo"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/lb2;

    invoke-direct {v1, p1, v0, p0}, Lcom/yandex/mobile/ads/impl/lb2;-><init>(Ljava/util/List;Lcom/yandex/mobile/ads/impl/ag2;Lcom/yandex/mobile/ads/impl/xj0;)V

    return-object v1
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/xj0;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lb2;->c:Lcom/yandex/mobile/ads/impl/xj0;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/zb2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/kb1;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lb2;->a:Ljava/util/List;

    invoke-static {p0}, Li81;->o0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/zb2;

    return-object p0
.end method

.method public final c()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/kb1;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lb2;->a:Ljava/util/List;

    return-object p0
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/ag2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lb2;->b:Lcom/yandex/mobile/ads/impl/ag2;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/lb2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/lb2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/lb2;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/lb2;->a:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/lb2;->b:Lcom/yandex/mobile/ads/impl/ag2;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/lb2;->b:Lcom/yandex/mobile/ads/impl/ag2;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lb2;->c:Lcom/yandex/mobile/ads/impl/xj0;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/lb2;->c:Lcom/yandex/mobile/ads/impl/xj0;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lb2;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/lb2;->b:Lcom/yandex/mobile/ads/impl/ag2;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lb2;->c:Lcom/yandex/mobile/ads/impl/xj0;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/xj0;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lb2;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/lb2;->b:Lcom/yandex/mobile/ads/impl/ag2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lb2;->c:Lcom/yandex/mobile/ads/impl/xj0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video(videoAdsInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", videoSettings="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", preview="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
