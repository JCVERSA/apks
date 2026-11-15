.class public Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private areacode:I

.field private bSelect:Z

.field private captionCountrySimpleName:Ljava/lang/String;

.field private captionSimpleName:Ljava/lang/String;

.field private language:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->name:Ljava/lang/String;

    iput p2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->language:I

    iput-object p3, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->captionCountrySimpleName:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->captionSimpleName:Ljava/lang/String;

    return-void
.end method

.method public getAreacode()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->areacode:I

    return p0
.end method

.method public getCaptionCountrySimpleName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->captionCountrySimpleName:Ljava/lang/String;

    return-object p0
.end method

.method public getCaptionSimpleName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->captionSimpleName:Ljava/lang/String;

    return-object p0
.end method

.method public getLanguage()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->language:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->name:Ljava/lang/String;

    return-object p0
.end method

.method public isSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->bSelect:Z

    return p0
.end method

.method public setAreacode(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->areacode:I

    return-void
.end method

.method public setCaptionCountrySimpleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->captionCountrySimpleName:Ljava/lang/String;

    return-void
.end method

.method public setCaptionSimpleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->captionSimpleName:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->language:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->name:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->bSelect:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoSubtitle{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", captionCountrySimpleName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->captionCountrySimpleName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", captionSimpleName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->captionSimpleName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->language:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", areacode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->areacode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoSubtitle;->bSelect:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
