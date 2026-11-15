.class public Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bHardwareAccelerated:Z

.field isCache:Z

.field looping:Z

.field mCachePath:Ljava/io/File;

.field mPlayerInitConfig:Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

.field mapHeadData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field overrideExtension:Ljava/lang/String;

.field speed:F

.field startPosition:I

.field url:Ljava/lang/String;

.field videoContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZFZ",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->bHardwareAccelerated:Z

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->mapHeadData:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->looping:Z

    iput p4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->speed:F

    iput-boolean p5, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->isCache:Z

    iput-object p6, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->mCachePath:Ljava/io/File;

    iput-object p7, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->overrideExtension:Ljava/lang/String;

    iput p8, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->startPosition:I

    return-void
.end method


# virtual methods
.method public getCachePath()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->mCachePath:Ljava/io/File;

    return-object p0
.end method

.method public getInitConfig()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->mPlayerInitConfig:Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    return-object p0
.end method

.method public getMapHeadData()Ljava/util/Map;
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

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->mapHeadData:Ljava/util/Map;

    return-object p0
.end method

.method public getOverrideExtension()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->overrideExtension:Ljava/lang/String;

    return-object p0
.end method

.method public getSpeed()F
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->speed:F

    return p0
.end method

.method public getStartPosition()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->startPosition:I

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->url:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->videoContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public isCache()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->isCache:Z

    return p0
.end method

.method public isHardwareAccelerated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->bHardwareAccelerated:Z

    return p0
.end method

.method public isLooping()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->looping:Z

    return p0
.end method

.method public isPlaySourceValid()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->url:Ljava/lang/String;

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setCache(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->isCache:Z

    return-void
.end method

.method public setCachePath(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->mCachePath:Ljava/io/File;

    return-void
.end method

.method public setHardwareAccelerated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->bHardwareAccelerated:Z

    return-void
.end method

.method public setInitConfig(Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->mPlayerInitConfig:Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->looping:Z

    return-void
.end method

.method public setMapHeadData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->mapHeadData:Ljava/util/Map;

    return-void
.end method

.method public setOverrideExtension(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->overrideExtension:Ljava/lang/String;

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->speed:F

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->url:Ljava/lang/String;

    return-void
.end method

.method public setVideoContainer(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->videoContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSYModel{speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->speed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", startPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->startPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", looping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->looping:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->isCache:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bHardwareAccelerated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->bHardwareAccelerated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", overrideExtension=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->overrideExtension:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mCachePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->mCachePath:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mapHeadData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->mapHeadData:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->videoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPlayerInitConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/GSYModel;->mPlayerInitConfig:Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
