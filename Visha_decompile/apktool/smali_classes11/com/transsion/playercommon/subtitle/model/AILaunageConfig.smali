.class public Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fromLang:Ljava/lang/String;

.field private lookahead:I

.field private lookback:I

.field private subConfigJson:Ljava/lang/String;

.field private toLang:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->lookahead:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->lookback:I

    iput-object p1, p0, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->fromLang:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->toLang:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFromLang()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->fromLang:Ljava/lang/String;

    return-object p0
.end method

.method public getLookahead()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->lookahead:I

    return p0
.end method

.method public getLookback()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->lookback:I

    return p0
.end method

.method public getSubConfigJson()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->subConfigJson:Ljava/lang/String;

    return-object p0
.end method

.method public getToLang()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->toLang:Ljava/lang/String;

    return-object p0
.end method

.method public setFromLang(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->fromLang:Ljava/lang/String;

    return-void
.end method

.method public setLookahead(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->lookahead:I

    return-void
.end method

.method public setLookback(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->lookback:I

    return-void
.end method

.method public setSubConfigJson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->subConfigJson:Ljava/lang/String;

    return-void
.end method

.method public setToLang(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->toLang:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AILaunageConfig{fromLang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->fromLang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", toLang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;->toLang:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
