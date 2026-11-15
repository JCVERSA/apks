.class public final Lcom/yandex/mobile/ads/impl/pn2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/video/playback/model/VideoAd;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/go0;

.field private final b:Lcom/yandex/mobile/ads/impl/ac2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/ac2;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdInfoConverter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pn2;->a:Lcom/yandex/mobile/ads/impl/go0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/pn2;->b:Lcom/yandex/mobile/ads/impl/ac2;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/pn2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/pn2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/pn2;->a:Lcom/yandex/mobile/ads/impl/go0;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/pn2;->a:Lcom/yandex/mobile/ads/impl/go0;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pn2;->b:Lcom/yandex/mobile/ads/impl/ac2;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/pn2;->b:Lcom/yandex/mobile/ads/impl/ac2;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAdInfo()Lcom/yandex/mobile/ads/video/playback/model/VideoAdInfo;
    .locals 8

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/pn2;->b:Lcom/yandex/mobile/ads/impl/ac2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pn2;->a:Lcom/yandex/mobile/ads/impl/go0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/go0;->a()Lcom/yandex/mobile/ads/impl/cm0;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "instreamAdInfo"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/video/playback/model/VideoAdInfo;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/cm0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/cm0;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/cm0;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/cm0;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/cm0;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/cm0;->b()Ljava/lang/String;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/video/playback/model/VideoAdInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAdPodInfo()Lcom/yandex/mobile/ads/video/playback/model/AdPodInfo;
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/kl2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pn2;->a:Lcom/yandex/mobile/ads/impl/go0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/go0;->b()Lcom/yandex/mobile/ads/impl/zc2;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/kl2;-><init>(Lcom/yandex/mobile/ads/impl/zc2;)V

    return-object v0
.end method

.method public final getDuration()J
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pn2;->a:Lcom/yandex/mobile/ads/impl/go0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/go0;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getExtensions()Lcom/yandex/mobile/ads/video/playback/model/VideoAdExtensions;
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/qn2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pn2;->a:Lcom/yandex/mobile/ads/impl/go0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/go0;->d()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/qn2;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pn2;->a:Lcom/yandex/mobile/ads/impl/go0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/go0;->a()Lcom/yandex/mobile/ads/impl/cm0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/cm0;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMediaFile()Lcom/yandex/mobile/ads/video/playback/model/MediaFile;
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/pm2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pn2;->a:Lcom/yandex/mobile/ads/impl/go0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/go0;->g()Lcom/yandex/mobile/ads/impl/xn0;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/pm2;-><init>(Lcom/yandex/mobile/ads/impl/xn0;)V

    return-object v0
.end method

.method public final getMediaFiles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/video/playback/model/MediaFile;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pn2;->a:Lcom/yandex/mobile/ads/impl/go0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/go0;->f()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/xn0;

    new-instance v2, Lcom/yandex/mobile/ads/impl/pm2;

    invoke-direct {v2, v1}, Lcom/yandex/mobile/ads/impl/pm2;-><init>(Lcom/yandex/mobile/ads/impl/xn0;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getSkipInfo()Lcom/yandex/mobile/ads/video/playback/model/SkipInfo;
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pn2;->a:Lcom/yandex/mobile/ads/impl/go0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/go0;->h()Lcom/yandex/mobile/ads/impl/od2;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/gn2;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/gn2;-><init>(Lcom/yandex/mobile/ads/impl/od2;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/pn2;->a:Lcom/yandex/mobile/ads/impl/go0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pn2;->b:Lcom/yandex/mobile/ads/impl/ac2;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/pn2;->a:Lcom/yandex/mobile/ads/impl/go0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pn2;->b:Lcom/yandex/mobile/ads/impl/ac2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "YandexVideoAd(videoAd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", videoAdInfoConverter="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
