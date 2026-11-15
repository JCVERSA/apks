.class public final Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MgtvPlayerInitConfigBuilder"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adsid:Ljava/lang/String;

.field private areacode:I

.field private bOpenRecommondAd:Z

.field private bOpenRecommondContent:Z

.field private contentid:Ljava/lang/String;

.field private context:Landroid/app/Application;

.field private gaid:Ljava/lang/String;

.field private mid:Ljava/lang/String;

.field private oaid:Ljava/lang/String;

.field private playerInitConfig:Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

.field private renderType:Ljava/lang/String;

.field private startPosition:I

.field private token:Ljava/lang/String;

.field private videoid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_playersdk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aMgtvPlayerInitConfig()Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;
    .locals 1

    new-instance v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;
    .locals 2

    new-instance v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;-><init>()V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->adsid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->a(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->context:Landroid/app/Application;

    iput-object v1, v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->context:Landroid/app/Application;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->oaid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->h(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->token:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->k(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->mid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->g(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->bOpenRecommondContent:Z

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->d(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;Z)V

    iget-boolean v1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->bOpenRecommondAd:Z

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->c(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;Z)V

    iget v1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->areacode:I

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->b(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;I)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->gaid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->f(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->contentid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->e(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->videoid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->l(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;Ljava/lang/String;)V

    iget v1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->startPosition:I

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->j(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;I)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->renderType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->i(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->playerInitConfig:Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    iput-object p0, v0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig;->playerInitConfig:Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    return-object v0
.end method

.method public withAdsid(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->adsid:Ljava/lang/String;

    return-object p0
.end method

.method public withAreaCode(I)Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->areacode:I

    return-object p0
.end method

.method public withContentid(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->contentid:Ljava/lang/String;

    return-object p0
.end method

.method public withContext(Landroid/app/Application;)Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->context:Landroid/app/Application;

    return-object p0
.end method

.method public withGaid(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->gaid:Ljava/lang/String;

    return-object p0
.end method

.method public withMid(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->mid:Ljava/lang/String;

    return-object p0
.end method

.method public withOaid(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->oaid:Ljava/lang/String;

    return-object p0
.end method

.method public withOpenAdFlag(Z)Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->bOpenRecommondAd:Z

    return-object p0
.end method

.method public withOpenContentFlag(Z)Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->bOpenRecommondContent:Z

    return-object p0
.end method

.method public withPlayerInitConfig(Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;)Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->playerInitConfig:Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    return-object p0
.end method

.method public withRenderType(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->renderType:Ljava/lang/String;

    return-object p0
.end method

.method public withStartPosition(I)Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->startPosition:I

    return-object p0
.end method

.method public withToken(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->token:Ljava/lang/String;

    return-object p0
.end method

.method public withVideoId(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerConfig$MgtvPlayerInitConfigBuilder;->videoid:Ljava/lang/String;

    return-object p0
.end method
