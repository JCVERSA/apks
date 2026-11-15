.class public Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgw4;


# instance fields
.field private isCheck:Z

.field private isGroupLanguage:Z

.field private languageCode:Ljava/lang/String;

.field private languageName:Ljava/lang/String;

.field private languageStandardCode:Ljava/lang/String;

.field private subLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->languageCode:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->languageStandardCode:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->languageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->subLanguages:Ljava/util/List;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->isGroupLanguage:Z

    return-void
.end method


# virtual methods
.method public displayText()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->isGroupLanguage:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->getSubLanguages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->languageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->languageName:Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->languageCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->languageCode:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object p0, p0, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->languageStandardCode:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->languageStandardCode:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getIndex()I
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->isGroupLanguage:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->languageStandardCode:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string v0, "en"

    iget-object p0, p0, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->languageStandardCode:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->languageCode:Ljava/lang/String;

    return-object p0
.end method

.method public getLanguageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->languageName:Ljava/lang/String;

    return-object p0
.end method

.method public getLanguageStandardCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->languageStandardCode:Ljava/lang/String;

    return-object p0
.end method

.method public getSubLanguages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->subLanguages:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->languageStandardCode:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isCheck()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->isCheck:Z

    return p0
.end method

.method public isGroupLanguage()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->isGroupLanguage:Z

    return p0
.end method

.method public setCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->isCheck:Z

    return-void
.end method

.method public setLanguageCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->languageCode:Ljava/lang/String;

    return-void
.end method

.method public setLanguageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->languageName:Ljava/lang/String;

    return-void
.end method

.method public setLanguageStandardCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->languageStandardCode:Ljava/lang/String;

    return-void
.end method

.method public setSubLanguages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->subLanguages:Ljava/util/List;

    return-void
.end method
