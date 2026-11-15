.class public Lcom/transsion/dbdata/beans/adsbean/AdItemBean;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AD_SOURCE_TYPE_GIF:I = 0x3

.field public static final AD_SOURCE_TYPE_IMG:I = 0x2

.field public static final AD_SOURCE_TYPE_VIDEO:I = 0x1

.field public static final AD_TYPE_LOCAL_AUDIO_BANNER:Ljava/lang/String; = "AudioBannerLocalAD"

.field public static final AD_TYPE_LOCAL_LAUNCH:Ljava/lang/String; = "LaunchLocalAD"

.field public static final AD_TYPE_LOCAL_VIDEO_BANNER:Ljava/lang/String; = "VideoBannerLocalAD"

.field public static final AD_TYPE_ONLINE_AUDIO_BANNER:Ljava/lang/String; = "AudioBannerOnlineAD"

.field public static final AD_TYPE_ONLINE_LAUNCH:Ljava/lang/String; = "LaunchOnlineAD"

.field public static final AD_TYPE_ONLINE_VIDEO_BANNER:Ljava/lang/String; = "VideoBannerOnlineAD"


# instance fields
.field adLocalPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ad_local_path"
    .end annotation
.end field

.field adSourceType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private adType:Ljava/lang/String;

.field adUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "picUrl"
    .end annotation
.end field

.field closeButtonStatus:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "closeButtonStatus"
    .end annotation
.end field

.field duration:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field fileName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "file_name"
    .end annotation
.end field

.field id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public isLocalAd:Z

.field jumpLink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "jumpLink"
    .end annotation
.end field

.field jumpStatus:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "jumpStatus"
    .end annotation
.end field

.field public localAdResourceId:I

.field name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field onlineEndTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onlineEndTime"
    .end annotation
.end field

.field onlineStartTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onlineStartTime"
    .end annotation
.end field

.field target:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "target"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->adLocalPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->fileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdLocalPath()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->adLocalPath:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->adUrl:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lky7;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->adLocalPath:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->adLocalPath:Ljava/lang/String;

    return-object p0
.end method

.method public getAdSourceType()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->adSourceType:I

    return p0
.end method

.method public getAdType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->adType:Ljava/lang/String;

    return-object p0
.end method

.method public getAdTypeTag()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->adType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAdUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->adUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->duration:J

    return-wide v0
.end method

.method public getEndTime()J
    .locals 2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->onlineEndTime:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->onlineEndTime:Ljava/lang/String;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p0, v0}, Lvna;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lvna;->a(Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->adUrl:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->adUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/transsion/retrofit/cache/CacheManager;->encryptMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->adUrl:Ljava/lang/String;

    invoke-static {v1}, Lzu3;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->fileName:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->id:I

    return p0
.end method

.method public getJumpLink()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->jumpLink:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getStartTime()J
    .locals 2

    iget-object v0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->onlineStartTime:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->onlineStartTime:Ljava/lang/String;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p0, v0}, Lvna;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lvna;->a(Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTarget()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->target:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    return-object p0
.end method

.method public isLocalFileExists()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getAdLocalPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lzu3;->y(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOnlineTime(J)Z
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getStartTime()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getEndTime()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportJump()Z
    .locals 1

    iget p0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->jumpStatus:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAdLocalPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->adLocalPath:Ljava/lang/String;

    return-void
.end method

.method public setAdSourceType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->adSourceType:I

    return-void
.end method

.method public setAdType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->adType:Ljava/lang/String;

    return-void
.end method

.method public setAdUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->adUrl:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->duration:J

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setJumpLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->jumpLink:Ljava/lang/String;

    return-void
.end method

.method public setJumpStatus(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->jumpStatus:I

    return-void
.end method

.method public setTarget(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->target:Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdItem{adtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->adType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isLocalAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->isLocalAd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", adSourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->adSourceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", picUrl="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->adUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", duration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->duration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", jumpStatus=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->jumpStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", jumpLink="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->jumpLink:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", closeButtonStatus=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->closeButtonStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", onlineStartTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->onlineStartTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", onlineEndTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->onlineEndTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", adLocalPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getAdLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", target="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getTarget()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getFileName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
