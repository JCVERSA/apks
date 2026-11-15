.class public Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "visha_playersdk_MgtvPlayerConfig"


# instance fields
.field private adsid:Ljava/lang/String;

.field private areacode:I

.field private bOpenRecommondAd:Z

.field private bOpenRecommondContent:Z

.field private contentid:Ljava/lang/String;

.field protected context:Landroid/app/Application;

.field private gaid:Ljava/lang/String;

.field private mid:Ljava/lang/String;

.field private oaid:Ljava/lang/String;

.field protected playerInitConfig:Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

.field private renderType:Ljava/lang/String;

.field private startPosition:I

.field private token:Ljava/lang/String;

.field private videoid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1"

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->renderType:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->adsid:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->areacode:I

    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->bOpenRecommondAd:Z

    return-void
.end method

.method public static bridge synthetic d(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->bOpenRecommondContent:Z

    return-void
.end method

.method public static bridge synthetic e(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->contentid:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic f(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->gaid:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic g(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->mid:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic h(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->oaid:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic i(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->renderType:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic j(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->startPosition:I

    return-void
.end method

.method public static bridge synthetic k(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->token:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic l(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->videoid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdsid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->adsid:Ljava/lang/String;

    return-object p0
.end method

.method public getAreacode()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->areacode:I

    return p0
.end method

.method public getContentid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->contentid:Ljava/lang/String;

    return-object p0
.end method

.method public getContext()Landroid/app/Application;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->context:Landroid/app/Application;

    return-object p0
.end method

.method public getGaid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->gaid:Ljava/lang/String;

    return-object p0
.end method

.method public getMid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->mid:Ljava/lang/String;

    return-object p0
.end method

.method public getOaid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->oaid:Ljava/lang/String;

    return-object p0
.end method

.method public getPlayerInitConfig()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->playerInitConfig:Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    return-object p0
.end method

.method public getRenderType()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRenderType :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->renderType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_playersdk_MgtvPlayerConfig"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->renderType:Ljava/lang/String;

    return-object p0
.end method

.method public getStartPosition()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->startPosition:I

    return p0
.end method

.method public getToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->token:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->videoid:Ljava/lang/String;

    return-object p0
.end method

.method public isValidConfig()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->token:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "visha_playersdk_MgtvPlayerConfig"

    if-eqz v0, :cond_0

    const-string p0, "token must set"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->mid:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "mid must set"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->videoid:Ljava/lang/String;

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "video must set"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public isbOpenRecommondAd()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->bOpenRecommondAd:Z

    return p0
.end method

.method public isbOpenRecommondContent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->bOpenRecommondContent:Z

    return p0
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->playerInitConfig:Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->reset()V

    :cond_0
    return-void
.end method

.method public setRenderType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->renderType:Ljava/lang/String;

    return-void
.end method

.method public setStartPosition(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->startPosition:I

    return-void
.end method

.method public setVideoid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->videoid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MgtvPlayerInitConfig{context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->context:Landroid/app/Application;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", token=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->mid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", adsid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->adsid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", oaid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->oaid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bOpenRecommondContent=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->bOpenRecommondContent:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bOpenRecommondAd=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->bOpenRecommondAd:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", areacode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->areacode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->videoid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", startPosition=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->startPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", renderType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->renderType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", PlayerInitConfig=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->playerInitConfig:Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
