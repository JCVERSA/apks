.class public Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/dbdata/beans/subtitle/ISubtitleState;


# instance fields
.field private languageCode:Ljava/lang/String;

.field private languageName:Ljava/lang/String;

.field private movieName:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private score:Ljava/lang/Double;

.field private subDownloadLink:Ljava/lang/String;

.field private subDownloadsCnt:I

.field private subFileName:Ljava/lang/String;

.field private subId:Ljava/lang/String;

.field private subLanguageID:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private subSize:Ljava/lang/String;

.field private subtitleDownState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->subFileName:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->subFileName:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->subId:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->subId:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :cond_3
    :goto_0
    return v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->languageCode:Ljava/lang/String;

    return-object p0
.end method

.method public getLanguageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->languageName:Ljava/lang/String;

    return-object p0
.end method

.method public getMovieName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->movieName:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getScore()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->score:Ljava/lang/Double;

    return-object p0
.end method

.method public getSubDownloadLink()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->subDownloadLink:Ljava/lang/String;

    return-object p0
.end method

.method public getSubDownloadsCnt()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->subDownloadsCnt:I

    return p0
.end method

.method public getSubFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->subFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getSubId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->subId:Ljava/lang/String;

    return-object p0
.end method

.method public getSubLanguageID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->subLanguageID:Ljava/lang/String;

    return-object p0
.end method

.method public getSubSize()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->subSize:Ljava/lang/String;

    return-object p0
.end method

.method public getSubtitleDownState()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->subtitleDownState:I

    return p0
.end method

.method public getSubtitleState()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->subtitleDownState:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->subFileName:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setLanguageCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->languageCode:Ljava/lang/String;

    return-void
.end method

.method public setLanguageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->languageName:Ljava/lang/String;

    return-void
.end method

.method public setMovieName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->movieName:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->path:Ljava/lang/String;

    return-void
.end method

.method public setScore(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->score:Ljava/lang/Double;

    return-void
.end method

.method public setSubDownloadLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->subDownloadLink:Ljava/lang/String;

    return-void
.end method

.method public setSubDownloadsCnt(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->subDownloadsCnt:I

    return-void
.end method

.method public setSubFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->subFileName:Ljava/lang/String;

    return-void
.end method

.method public setSubId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->subId:Ljava/lang/String;

    return-void
.end method

.method public setSubLanguageID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->subLanguageID:Ljava/lang/String;

    return-void
.end method

.method public setSubSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->subSize:Ljava/lang/String;

    return-void
.end method

.method public setSubtitleDownState(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->subtitleDownState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openSubtitle{languageCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nlanguageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->getLanguageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
